import pandas as pd
import numpy as np
import jieba
import sklearn
from sqlalchemy import create_engine
import pymysql
import joblib
import wordcloud
import PIL
import matplotlib.pyplot as plt
import seaborn
import matplotlib.pyplot as plt
from wordcloud import WordCloud#词云包
import matplotlib
import matplotlib.pyplot as plt
import math




def get_predata():
    connect = create_engine('mysql+pymysql://root:123456@localhost:3306/douban?charset=utf8')
    predata= pd.read_sql_table(table_name='movie_comment',con=connect)#读出所有内容
    predata['Vote']=predata['Vote'].astype('int')#类型转换
    predata['Comment_Time']= pd.to_datetime(predata['Comment_Time'],format='%Y-%m-%d',errors='coerce')#时间类型转换,
    return predata

def get_comment(predata):
    data_comment=predata['Comment_Text']
    return data_comment

def plot_score(predata):
    #显示score的分布情况
    predata.Score.hist(grid=False,color='orange')
    plt.xlabel('评分')
    plt.xlabel('个数')
    plt.title('评分分布图')
    plt.rcParams['font.sans-serif']=['SimHei'] #用来正常显示中文标签
    # plt.savefig('../static/img/Score.jpg')
    plt.savefig('C:\\Users\\13174\\Desktop\\my_flask\\flask_01_mysql_Css\\static\\img\\Score.jpg')
    plt.show()



# print(predata['Comment_Time'].head())

def plot_vote(predata):
    #画出点赞的折现图
    predata1=predata.copy()
    print(predata1.info())
    predata1['Vote']=np.log(predata1['Vote'])

    predata1.plot(x='IndexID', y='Vote', kind='line')
    plt.xlabel('评论ID号')
    plt.ylabel('点赞数')
    plt.title('点赞数趋势')
    plt.yticks([0,2,4,6,8,10])
    plt.legend=False
    # plt.fill_between(predata1['Vote'].index, predata1['Vote'] - 2 * predata1['Vote'], predata1['Vote'] + 2 * predata1['Vote'], color='b', alpha=0.2)
    # plt.savefig('../static/img/Vote.jpg')
    plt.savefig('C:\\Users\\13174\\Desktop\\my_flask\\flask_01_mysql_Css\\static\\img\\Vote.jpg')

    plt.show()

def plot_comment_year(predata):
    #画出评论的年份图
    predata['Comment_Time'].dt.year.hist(grid=False,color='turquoise')
    plt.xlabel('评论年份')
    plt.xlabel('数量')
    plt.title('评论年份分布图')
    plt.rcParams['font.sans-serif']=['SimHei'] #用来正常显示中文标签
    # plt.savefig('../static/img/Year.jpg')
    plt.savefig('C:\\Users\\13174\\Desktop\\my_flask\\flask_01_mysql_Css\\static\\img\\Year.jpg')
    plt.show()

# print(predata.dtypes)

def plot_word_cloud(predata):
    #词云图 根据词频
    word_df=predata['Comment_Text'].copy()
    wordlist=word_df.values.tolist()
    wordlist1=','.join(wordlist)
    segment=jieba.lcut(wordlist1)
    words_df=pd.DataFrame({'segment':segment})
    # print(words_df.head())

    stopwords=pd.read_csv("C:\\Users\\13174\\Desktop\\my_flask\\flask_01_mysql_Css\\MLmodel\\hit_stopwords.txt",index_col=False,quoting=3,sep="\t",names=['stopword'], encoding='utf-8')#quoting=3全不引用
    # stopwords=pd.read_csv("..\MLmodel\hit_stopwords.txt",index_col=False,quoting=3,sep="\t",names=['stopword'], encoding='utf-8')#quoting=3全不引用
    # print(stopwords)
    word_df1=words_df[~words_df.segment.isin(stopwords.stopword)]

    #词频统计
    words_stat = word_df1.groupby('segment').agg(计数=pd.NamedAgg(column='segment', aggfunc='size')).reset_index().sort_values(
        by='计数', ascending=False)

    # print(words_stat.head())

    matplotlib.rcParams['figure.figsize'] = (10.0, 5.0)

    wordcloud=WordCloud(font_path="simhei.ttf",background_color="white",max_font_size=80) #指定字体类型、字体大小和字体颜色
    word_frequence = {x[0]:x[1] for x in words_stat.head(1000).values}
    word_frequence_list = []
    for key in word_frequence:
        temp = (key,word_frequence[key])
        word_frequence_list.append(temp)

    word_frequence_list1=dict(word_frequence_list)
    wordcloud=wordcloud.fit_words(word_frequence_list1)
    plt.imshow(wordcloud)
    plt.xticks([])#去除x坐标
    plt.yticks([])#去除y坐标
    # plt.savefig('../static/img/WordCloud.jpg')
    plt.savefig('C:\\Users\\13174\\Desktop\\my_flask\\flask_01_mysql_Css\\static\\img\\WordCloud.jpg')
    plt.show()

def plot_predict(data_comment):

    # model=joblib.load('C:\\Users\\13174\\Desktop\\my_flask\\flask_01_mysql_Css\\MLmodel\\tf-idf_logistic.pkl')
    model=joblib.load('C:\\Users\\13174\\Desktop\\my_flask\\flask_01_mysql_Css\\MLmodel\\ml270.pkl')

    #建立一个辅助函数,把结巴分词的结果用空格连接,
    #分词后的结果就如同一个英文句子一样，单次之间依靠空格分割
    # def chinese_word_cut(mytext):
    #     return " ".join(jieba.cut(mytext))
    # #对每一行评论数据进行分词
    # data_comment['Comment_Text']=data_comment.Comment_Text.apply(chinese_word_cut)

    y=model.predict(data_comment)
    good=0
    bad=0
    for i in y:
        if i==1:
            # print('好评')
            good=good+1
        else:
            # print('差评')
            bad=bad+1
    # print(y)
    y1=np.array(y)
    # print(y1)
    counts=np.array([int(good),int(bad)])
    # labels=np.array(['好评','差评'])
    labels = np.array(['差评', '好评'])

    result=pd.Series(counts,index=labels,name='情感预测')
    exp=[0,0.1]
    result.plot.pie(figsize=(6, 6),autopct='%1.1f%%',shadow=True,startangle=150,pctdistance=0.4,explode=exp)
    plt.rcParams['font.sans-serif']=['SimHei'] #用来正常显示中文标签
    plt.legend()
    # plt.savefig('../static/img/predict_result.jpg')
    plt.savefig('C:\\Users\\13174\\Desktop\\my_flask\\flask_01_mysql_Css\\static\\img\\predict_result.jpg')
    plt.show()



    # a=predata.groupby('Score').sum()

def plot_all():
    predata=get_predata()
    data_comment=get_comment(predata)
    plot_score(predata)
    plot_vote(predata)
    plot_comment_year(predata)
    plot_word_cloud(predata)
    plot_predict(data_comment)

def plot_vote1():
    predata = get_predata()
    plot_vote(predata)

if __name__ == '__main__':
    # plot_data=plot_data()
    # predata=plot_data.get_predata()
    # data_comment=plot_data.get_comment(predata=predata)
    # # plot_data.plot_score(predata=predata)
    # # plot_data.plot_vote(predata=predata)
    # # plot_data.plot_comment_year(predata=predata)
    # # plot_data.plot_word_cloud(predata=predata)
    # plot_data.plot_predict(data_comment=data_comment)
    plot_all()
    plot_vote1()


