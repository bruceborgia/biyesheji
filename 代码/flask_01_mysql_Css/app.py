# -*- encoding: utf-8 -*-
from flask import Flask
from flask import render_template
from flask import request
from flask import redirect
from flask import session
from flask import url_for
# 导入第三方连接库
from flask_sqlalchemy import SQLAlchemy
# 导入自写python文件
import models
from models import User
from models import Movie_Comment
from rear.spider import spider_movie_comment
from rear.analysis import plot_all



# 建立对象
app = Flask(__name__)
app.secret_key = 'comeon'

# 载入配置文件
app.config.from_pyfile('config.py')

# #指定数据库连接还有库名
# app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root:123456@localhost:3306/douban'

# #指定配置用来省略提交操作
# app.config['SQLALCHEMY_COMMIT_ON_TEARDOWN'] = True

# 建立数据库对象
db = SQLAlchemy(app)


@app.route('/')
def hello_world():
    return redirect(url_for('li'))


# 登录路由
@app.route('/login/', methods=['GET', 'POST'], endpoint='li')
def login():
    if request.method == 'GET':
        return render_template('login.html')
    else:
        # 从网页session中取得用户输入的账户密码
        user_id_from_html = request.form.get('User_ID')
        user_password_from_html = request.form.get('User_PassWord')
        # 查询用户输入的ID的数量,即是否存在
        user_name_from_mysql_count = models.User.query.filter(User.User_ID == user_id_from_html).count()
        # print(type(user_name_from_mysql_count))
        # print(user_name_from_mysql_count)
        if user_name_from_mysql_count == 0:
            return render_template('login.html', error='用户不存在,,请注册用户')
        else:
            user_info_from_mysql = models.User.query.filter(User.User_ID == user_id_from_html).first()
            # print('user信息为')
            # print(user_info_from_mysql)
            if user_password_from_html == user_info_from_mysql.User_PassWord:
                # 设置session的user_info
                session['User_ID'] = user_id_from_html
                # 重定向
                return redirect('/index')
            else:
                return render_template('login.html', error='用户名或密码错误')
    return render_template('login.html')


@app.route('/register/', methods=['GET,POST'])
def register():
    render_template('register.html')


@app.route('/index', methods=['GET', 'POST'])
def index():  # 用户输入电影名页面
    # 用户id
    user_id = session.get('User_ID')
    if request.method == 'GET':
        if not user_id:  # 如果未登录,则返回login页面
            url_login = url_for('li')
            return redirect(url_login)  # 如果未登录,则返回登陆界面
        return render_template('index.html')  # 如果请求是get并且已经登录,则返回index.html
    else:
        movie_name = request.form.get('Movie_Name')
        spider_movie_comment_instance = spider_movie_comment()  # 实例化爬虫类
        spider_movie_comment_instance.transfer_get_comment_by_movie_name(movie_name)  # 调用爬虫,爬到数据库

        db.session.flush()
        db.session.commit()

        # data1 = Movie_Comment.query.all()
        # print(data1)
        # return render_template('comment_data.html', movie_comment=data1)
        url_comment_data = url_for('cd')
        return redirect(url_comment_data)
        # return redirect('comment_data.html', movie_comment=data1)
        # return render_template('comment_data.html')

    # return render_template('index.html')


@app.route('/comment_data', methods=['GET', 'POST'], endpoint='cd')
def comment_data():
    user_id = session.get('User_ID')
    if request.method == 'GET':
        if not user_id:  # 如果未登录,则返回login页面
            url_login = url_for('li')
            return redirect(url_login)  # 如果未登录,则返回登陆界面
        # data1 = Movie_Comment.query.all()
        data1 = Movie_Comment.query.filter(Movie_Comment.IndexID<15).all()
        # print(data1)
        # for i in data1:
        #     print(i.Commenter_Name)
        return render_template('comment_data.html', movie_comment=data1)
    else:
        url_analysis = url_for('al')
        return redirect(url_analysis)

# plot_data=rear.analysis.plot_data()
# predata = plot_data.get_predata()
# print('wohaole')
# data_comment = plot_data.get_comment(predata=predata)
# print('wohaole')
# plot_data.plot_score(predata=predata)
# print('wohaole')
# plot_data.plot_vote(predata=predata)
# print('wohaole')
# plot_data.plot_comment_year(predata=predata)
# print('wohaole')
# plot_data.plot_word_cloud(predata=predata)
# print('wohaole')
# plot_data.plot_predict(data_comment=data_comment)
# print('wohaole')
@app.route('/analysis', methods=['GET', 'POST'], endpoint='al')
def analysis():
    user_id = session.get('User_ID')
    if request.method == 'GET':
        if not user_id:  # 如果未登录,则返回login页面
            url_login = url_for('li')
            return redirect(url_login)  # 如果未登录,则返回登陆界面
        plot_all()
        return render_template('analysis.html')
    else:

        return render_template('index.html')


if __name__ == "__main__":
    app.run(DEBUG=True)

# @app.route('/index')
# def index():
#     # 增，入库逻辑
#     # 生命对象
#     # user1 = User(User_ID=1006,User_Name='tom1', User_PassWord='456456',User_Email='123456@qq.com')
#     user1 = models.User(User_ID=1006, User_Name='tom1', User_PassWord='456456', User_Email='123456@qq.com')
#     # 调用添加方法
#     # db.session.add(user1)
#     # 提交入库，上面已经导入了提交配置，所以不需要在提交了
#     # db.session.commit()
#     user_info1 = models.User.query.filter_by(User_ID='1001').first()
#     # user_info1_count = models.User.query.filter(User.User_ID == 1009).count()
#     # print(type(user_info1.User_PassWord))
#     # print(type(user_info1_count))
#     print(user_info1)
#     return user_info1.User_Name
