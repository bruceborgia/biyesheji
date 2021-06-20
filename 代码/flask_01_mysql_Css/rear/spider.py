# 根据用户输入电影名爬取


import requests
import re
import pandas as pd
from lxml import etree
import random
import logging
import time

import models
from models import Movie_Index
from sqlalchemy import create_engine
import pymysql

# 打印日志
logging.basicConfig(level=logging.WARNING,  # 控制台打印的日志级别
                    filename='movie_review.log',
                    filemode='a',  ##模式，有w和a，w就是写模式，每次都会重新写日志，覆盖之前的日志
                    # a是追加模式，默认如果不写的话，就是追加模式
                    format=
                    '%(asctime)s - %(pathname)s[line:%(lineno)d] - %(levelname)s: %(message)s'
                    # 日志格式
                    )

# 定义常量
parse_page = 10
info_table = pd.DataFrame(columns=['Commenter_Name', 'Score', 'Comment_Time', 'Vote', 'Comment_Text'])
row = 0


# 使用随机函数取得user_agent
def get_user_agent():
    first_num = random.randint(55, 62)
    third_num = random.randint(0, 3200)
    fourth_num = random.randint(0, 140)
    os_type = [
        '(Windows NT 6.1; WOW64)',
        '(Windows NT 10.0; WOW64)',
        '(X11; Linux x86_64)',
        '(Macintosh; Intel Mac OS X 10_12_6)'
    ]
    chrome_version = 'Chrome/{}.0.{}.{}'.format(first_num, third_num, fourth_num)

    user_agent = ''.join(['Mozilla/5.0',
                          random.choice(os_type),
                          'AppleWebKit/537.36',
                          '(KHTML, like Gecko)',
                          chrome_version,
                          'Safari/537.36'
                          ])
    return user_agent


# 使用随机函数取得cookie
def get_cookie():
    rd_cookie = [
        'douban-fav-remind=1; __yadk_uid=isGZY6vQdjVDxbbwejWEmuKPVtq6zGwd; viewed="6754128"; gr_user_id=f49c856f-c3b9-4236-b3e6-4ee88817c3c5; _vwo_uuid_v2=D6ACF9FB9E1490CC8D4BBBA7A604BB9CC|d113ff425237a2da40856559ada44baa; __gads=ID=2b268171d0424f08:T=1560129294:S=ALNI_MY2nLg0qNnMfJDTRFSDnw7UB7ZbVQ; trc_cookie_storage=taboola%2520global%253Auser-id%3Df63ca18f-f677-47c4-8270-4137ae57b376-tuct3605055; bid="470V5gw5kWg"; ll="118297"; __utmz=30149280.1587081791.11.7.utmcsr=so.com|utmccn=(referral)|utmcmd=referral|utmcct=/link; __utmz=223695111.1587081791.9.6.utmcsr=so.com|utmccn=(referral)|utmcmd=referral|utmcct=/link; _pk_ref.100001.4cf6=%5B%22%22%2C%22%22%2C1587089665%2C%22https%3A%2F%2Fwww.so.com%2Flink%3Fm%3Da0qqhtm3tfgq%252BP0xxAx2uDUfmSdUJ7bOzRkIi4MTKuM4mRTkjP8LG%252B6bBeDLCAVaH0DH7cHFi7SY%252FMEpeZ9rAHAPIGbi7MnAo4rIQuPKUysBeyCUR7406tyNGPKK6zWnO%252FYdAHhRDbzctRcfYpPJjFg%253D%253D%22%5D; _pk_ses.100001.4cf6=*; ap_v=0,6.0; __utma=30149280.338267752.1557321436.1587081791.1587089676.12; __utmb=30149280.0.10.1587089676; __utma=223695111.1710677451.1553649194.1587081791.1587089676.10; __utmb=223695111.0.10.1587089676; __utmc=30149280; __utmc=223695111; _pk_id.100001.4cf6=70181354a45c90da.1553649194.11.1587090669.1587081824.',
        'll="108302"; bid=0UsYbeC_acg; _vwo_uuid_v2=D640396CAC119AE62CBF0F30DBBC93D79|712ab2a0be1195f9e37410938122cd44; douban-fav-remind=1; _vwo_uuid_v2=D640396CAC119AE62CBF0F30DBBC93D79|712ab2a0be1195f9e37410938122cd44; dbcl2="217989644:BbRr7IynpzA"; push_noty_num=0; push_doumail_num=0; ck=Spj9; ap_v=0,6.0; __utma=30149280.1243102284.1617672753.1617672753.1617672753.1; __utmc=30149280; __utmz=30149280.1617672753.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); __utma=223695111.589933485.1617672753.1617672753.1617672753.1; __utmc=223695111; __utmz=223695111.1617672753.1.1.utmcsr=(direct)|utmccn=(direct)|utmcmd=(none); _pk_id.100001.4cf6=652e35f8593f65e3.1617672752.1.1617674310.1617672752.; RT=s=1617677098700&r=https%3A%2F%2Fmovie.douban.com%2Fsubject%2F26794435%2Fcomments%3Fstart%3D0%26limit%3D20%26sort%3Dnew_score%26status%3DP',
        'll="118226"; bid=PE061MRkOMw; ap_v=0,6.0; __utma=30149280.376175493.1617676788.1617676788.1617676788.1; __utmz=30149280.1617676788.1.1.utmcsr=so.com|utmccn=(referral)|utmcmd=referral|utmcct=/link; __utmc=30149280; ct=y; dbcl2="235757615:DW/XUGe+OFs"; ck=j4Ju; _pk_ref.100001.8cb4=%5B%22%22%2C%22%22%2C1617676837%2C%22https%3A%2F%2Faccounts.douban.com%2F%22%5D; _pk_id.100001.8cb4=197e9ca5887881f4.1617676837.1.1617676837.1617676837.; _pk_ses.100001.8cb4=*; push_noty_num=0; push_doumail_num=0; __utmt=1; __utmv=30149280.23575; __utmb=30149280.2.10.1617676788; __yadk_uid=j0CxDZfRzWyB6dQa7wHWLoGAyJeowgwT'
    ]
    cookie = random.choice(rd_cookie)
    return cookie


def get_movie_id_by_movie_name(movie_name):  # 从表movie_index中中取得movie_id
    movie_info = models.Movie_Index.query.filter(Movie_Index.Movie_Name == movie_name).first()
    movie_id = movie_info.Movie_ID
    # df = pd.read_csv('data/index.csv', names=['movie_id', 'movie_name'], encoding='utf-8-sig')
    # movie_id = df[df['movie_name'] == movie_name]['movie_id'].values
    # movie_id = str(movie_id)
    # movie_id=movie_id.lstrip('[')
    # movie_id = movie_id.rstrip(']')
    # print(movie_id)
    return movie_id


def get_movie_comment_url_by_movie_name(movie_name):  # 返回电影短评的url
    movie_comment_url = 'https://movie.douban.com/subject/' + get_movie_id_by_movie_name(
        movie_name) + '/comments?start='
    return movie_comment_url


def get_movie_Referer_by_movie_name(movie_name):
    movie_Referer = 'https://movie.douban.com/subject/' + get_movie_id_by_movie_name(
        movie_name) + '/?tag=%E8%B1%86%E7%93%A3%E9%AB%98%E5%88%86&from=gaia_video'
    return movie_Referer


def get_host():
    host = 'movie.douban.com'
    return host


def get_movie_html_by_url(url, header):  # 返回网页的源代码
    res = requests.get(url, headers=header,allow_redirects=False)#11111111111111111111
    # print(res.text)#网页源代码
    return res.text


def get_data(text):  # 爬取评论
    global row

    html = etree.HTML(text)
    pre = '//*[@id="comments"]/div['
    for i in range(1, 21):
        name_xpath = pre + str(i) + ']/div[2]/h3/span[2]/a'
        star_xpath = pre + str(i) + ']/div[2]/h3/span[2]/span[2]/@class'
        time_xpath = pre + str(i) + ']/div[2]/h3/span[2]/span[3]'
        vote_xpath = pre + str(i) + ']/div[2]/h3/span[1]/span'
        comment_xpath = pre + str(i) + ']/div[2]/p/span'

        name = html.xpath(name_xpath)
        star = html.xpath(star_xpath)
        time = html.xpath(time_xpath)
        vote = html.xpath(vote_xpath)
        comment = html.xpath(comment_xpath)

        # 昵称处理
        if (len(name) == 0):
            name = 'none'
        else:
            name = re.findall('[\u4e00-\u9fa5]+', name[0].text)
            name = str(name).replace('[', '').replace(']', '').replace('\'', '')

        # 评分处理
        cstar = 0
        if (star[0] == 'allstar50 rating'):
            cstar = 50
        elif (star[0] == 'allstar40 rating'):
            cstar = 40
        elif (star[0] == 'allstar30 rating'):
            cstar = 30
        elif (star[0] == 'allstar20 rating'):
            cstar = 20
        else:
            cstar = 10

        # 时间处理
        if (len(time) > 0):
            time = str(time[0].text).replace(' ', '').replace('\n', '')
        else:
            time = 'none'

        # 投票处理
        if (len(vote) > 0):
            vote = vote[0].text
        else:
            vote = 0
        # 评论处理
        if (len(comment) > 0):
            comment = re.findall('[\u4e00-\u9fa5]+', comment[0].text)
            comment = str(comment).replace('[', '').replace(']', '').replace('\'', '')
        else:
            comment = 'none'

        alist = []
        alist.append(name)  # 昵称
        alist.append(cstar)  # 评分
        alist.append(time)  # 评论时间
        alist.append(vote)  # 点赞
        alist.append(comment)  # 评论内容
        info_table.loc[row] = alist
        row += 1
        # print('   已完成' + str(i) + '个')

def delete_original_comment_from_mysql():
    conn = pymysql.connect(host='localhost', port=3306, user='root', password='123456', db='douban')
    cursor = conn.cursor()
    sql = 'delete from movie_comment where movie_comment.IndexID<1000;'
    try:
        cursor.execute(sql)
        conn.commit()
        print('删除成功')

    except:
        #发生错误回滚
        conn.rollback()
    cursor.close()
    conn.close()


def get_comment_by_movie_name(movie_name):
    # pre_url = 'https://movie.douban.com/subject/26794435/comments?start='
    movie_comment_url = get_movie_comment_url_by_movie_name(movie_name)
    header = {
        # 'Cookie': 'douban-fav-remind=1; __yadk_uid=isGZY6vQdjVDxbbwejWEmuKPVtq6zGwd; viewed="6754128"; gr_user_id=f49c856f-c3b9-4236-b3e6-4ee88817c3c5; _vwo_uuid_v2=D6ACF9FB9E1490CC8D4BBBA7A604BB9CC|d113ff425237a2da40856559ada44baa; __gads=ID=2b268171d0424f08:T=1560129294:S=ALNI_MY2nLg0qNnMfJDTRFSDnw7UB7ZbVQ; trc_cookie_storage=taboola%2520global%253Auser-id%3Df63ca18f-f677-47c4-8270-4137ae57b376-tuct3605055; bid="470V5gw5kWg"; ll="118297"; __utmz=30149280.1587081791.11.7.utmcsr=so.com|utmccn=(referral)|utmcmd=referral|utmcct=/link; __utmz=223695111.1587081791.9.6.utmcsr=so.com|utmccn=(referral)|utmcmd=referral|utmcct=/link; _pk_ref.100001.4cf6=%5B%22%22%2C%22%22%2C1587089665%2C%22https%3A%2F%2Fwww.so.com%2Flink%3Fm%3Da0qqhtm3tfgq%252BP0xxAx2uDUfmSdUJ7bOzRkIi4MTKuM4mRTkjP8LG%252B6bBeDLCAVaH0DH7cHFi7SY%252FMEpeZ9rAHAPIGbi7MnAo4rIQuPKUysBeyCUR7406tyNGPKK6zWnO%252FYdAHhRDbzctRcfYpPJjFg%253D%253D%22%5D; _pk_ses.100001.4cf6=*; ap_v=0,6.0; __utma=30149280.338267752.1557321436.1587081791.1587089676.12; __utmb=30149280.0.10.1587089676; __utma=223695111.1710677451.1553649194.1587081791.1587089676.10; __utmb=223695111.0.10.1587089676; __utmc=30149280; __utmc=223695111; _pk_id.100001.4cf6=70181354a45c90da.1553649194.11.1587090669.1587081824.',
        'Cookie': get_cookie(),
        # 'Host': 'movie.douban.com',
        'Host': get_host(),
        # 'Referer': 'https://movie.douban.com/subject/26794435/?tag=%E8%B1%86%E7%93%A3%E9%AB%98%E5%88%86&from=gaia_video',#告诉服务器是从哪个网页链接过来的
        'Referer': get_movie_Referer_by_movie_name(movie_name),
        # 'User-Agent': 'Mozilla/5.0 (Windows NT 6.3; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36'
        'User-Agent': get_user_agent()
    }
    # url = 'https://movie.douban.com/subject/26794435/comments?start=0&limit=20&sort=new_score&status=P'
    # t = requests.get(url, headers = header)
    # print(t.text)
    for page in range(0, parse_page):
        url = movie_comment_url + str(page * 20) + '&limit=20&sort=new_score&status=P'  # 通过修改url中 page来实现翻页
        # print(movie_comment_url) #movie_comment_url中只有page改变,实现翻页效果
        text = get_movie_html_by_url(url, header)  # 源代码
        get_data(text)
        print('已完成' + str(page) + '页')

    delete_original_comment_from_mysql()
    connect = create_engine('mysql+pymysql://root:123456@localhost:3306/douban?charset=utf8')
    info_table.to_sql('movie_comment', con=connect, if_exists='append', index=True, index_label='IndexID')

    print('success to mysql')
    # info_table.to_csv('result.csv', encoding='gbk')


class spider_movie_comment():
    def transfer_get_comment_by_movie_name(self, movie_name):
        get_comment_by_movie_name(movie_name)

# if __name__ == '__main__':
#     movie_name = '决斗'
#     get_comment_by_movie_name(movie_name)
