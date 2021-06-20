from flask_sqlalchemy import SQLAlchemy

db = SQLAlchemy()

# 建立数据库对象
class User(db.Model):
    # 声明表明
    __tablename__ = 'user'
    # 建立字段函数
    User_ID = db.Column(db.Integer, primary_key=True, nullable=False, autoincrement=True)
    User_Name = db.Column(db.String(100), unique=True, nullable=False)
    User_PassWord = db.Column(db.String(100), nullable=False)
    User_Email = db.Column(db.String(100))

class Movie_Index(db.Model):
    __tablename__='movie_index'
    #建立字段
    Movie_ID = db.Column(db.String(20), primary_key=True, nullable=False)
    Movie_Name = db.Column(db.String(20))

class Movie_Comment(db.Model):
    __tablename__='movie_comment'
    #建立字段
    IndexID = db.Column(db.Integer, primary_key=True)
    Commenter_Name = db.Column(db.String(50))
    Score = db.Column(db.Integer)
    Comment_Time = db.Column(db.String(50))
    Vote = db.Column(db.String(20))
    Comment_Text = db.Column(db.Text)

    def __init__(self,IndexID,Commenter_Name,Score,Comment_Time,Vote,Comment_Text):
        self.IndexID=IndexID
        self.Commenter_Name=Commenter_Name
        self.Score=Score
        self.Comment_Time=Comment_Time
        self.Vote=Vote
        self.Comment_Text=Comment_Text




