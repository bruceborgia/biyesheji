/*
 Navicat Premium Data Transfer

 Source Server         : na_fof
 Source Server Type    : MySQL
 Source Server Version : 80023
 Source Host           : localhost:3306
 Source Schema         : douban

 Target Server Type    : MySQL
 Target Server Version : 80023
 File Encoding         : 65001

 Date: 23/05/2021 15:40:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for movie_comment
-- ----------------------------
DROP TABLE IF EXISTS `movie_comment`;
CREATE TABLE `movie_comment`  (
  `IndexID` int NOT NULL,
  `Commenter_Name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Score` int NULL DEFAULT NULL,
  `Comment_Time` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Vote` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `Comment_Text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`IndexID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of movie_comment
-- ----------------------------
INSERT INTO `movie_comment` VALUES (0, '对方正在输入', 40, '2014-11-27', '4332', '看完之后才理解为什么学校的数学楼叫, 为什么工程学院的咖啡馆叫');
INSERT INTO `movie_comment` VALUES (1, '李小饼', 40, '2014-11-15', '1595', '最佳, 是去掉性吸引力, 你仍是完美伴侣, 唯一爱你的方式, 是建造一部解决人类所有问题的机器, 冠以你名, 卷福又上升了一个新高度, 演绎淋漓尽致, 结巴天才四星半');
INSERT INTO `movie_comment` VALUES (2, '同志亦凡人中文站', 50, '2014-12-25', '11425', '他给机器起名, 克里斯托弗, 因为这是他初恋的名字, 他同意接受化学阉割, 因为这样政府才不会把它带走, 这大概是今年大银幕上最含蓄和悲伤的一段同性恋情了, 全世界的恐同者都该知道, 他们用来敲出每个仇恨字眼的电脑在很多年前曾有一个名字, 克里斯托弗');
INSERT INTO `movie_comment` VALUES (3, '匡甚如', 50, '2015-01-09', '10096', '借用一个木心的句式, 别再提图灵了吧, 他的死, 使我们感到大家都是对不起他的, 天才总天真, 坦荡, 毫不设防地迎向这个庸人占领的世界, 一腔热诚付与世界, 世界待他们, 往往却是一盆脏水兜头浇下, 有人说, 人类社会进步得还是太慢了, 嗯, 或许吧, 人类社会大约是进步了, 但人性从未进步过');
INSERT INTO `movie_comment` VALUES (4, '毛豆吐蜜', 50, '2014-11-15', '3563', '太惨了, 做人怎么能这么惨, 惨得我和女士看完电影坐在椅子上一边擦眼泪一边思考了五分钟人生, 上一次哭成狗的, 电影还是断背山, 现在终于感觉, 一个很厉害的人过得很惨, 比一个很惨的正常人丧多了');
INSERT INTO `movie_comment` VALUES (5, '影志', 50, '2015-01-14', '3512', '无人所念之人, 方能成就无人感想之事, 工整却依然好看, 我们用自己的方式爱着对方, 我们能一起过我们想要的生活, 你成不了完美丈夫, 我也不想做什么完美的妻子, 我不会整天给你做羊排, 等你从办公室下班回家, 我们享受互相的陪伴, 我们享受互相的思想, 因为我在乎你, 我们彼此相知, 胜过任何人');
INSERT INTO `movie_comment` VALUES (6, '', 50, '2015-01-10', '1142', '重度虐伤, 我承受不了图灵所承受的这种委屈, 這個世界亏欠他太多太多');
INSERT INTO `movie_comment` VALUES (7, '', 40, '2014-12-02', '440', '天才之觞, 的这台, 如今安静地站在曼城的科学工业博物馆一角, 看电影之前我刚去看了它, 机器不能思考, 但天才倾注于它的所有心血和情感, 也许是他孤独短暂的一生唯一可宝贵的珍藏');
INSERT INTO `movie_comment` VALUES (8, '', 50, '2014-11-09', '835', '真的很好看, 最后简单冷静的几行叙述文字本来我有一种欣慰的感动但准备会心一笑又觉得一种莫名的委屈, 然后, 噗哧, 一声我就哭了出来, 真的是五味陈杂啊');
INSERT INTO `movie_comment` VALUES (9, '翻滚吧, 蛋堡', 40, '2015-01-13', '268', '再被图灵的守护感动前竟然先被, 感动了, 那又如何, 我们和一般人不一样, 我们用自己的方式爱着对方');
INSERT INTO `movie_comment` VALUES (10, '有病要读书', 50, '2015-01-18', '709', '这个世界由阳光, 空气, 偏见组成, 我们歧视不同种族的人, 我们歧视不同信仰的人, 我们歧视不同性向的人, 我们歧视任何观念与我们不合的人, 我们甚歧视仅仅是出生地不同的人, 如果技术进步可以忽略不计, 这个世界千万年来没任何改变, 偏见是人类心灵的巨大鸿沟, 原因再简单不过, 仅仅是我们都渺小的相似');
INSERT INTO `movie_comment` VALUES (11, '小肥啾', 50, '2014-12-07', '457', '电影院看的时候哭成狗, 图灵一边颤抖一边哽咽着说, 我不能进监狱, 他们会把我的, 抢走, 他们会再一次抢走他, 看到这里我已经哭的泪流满面, 一个英雄, 他拯救了整个世界, 但是看看这个世界给他的回报是什么');
INSERT INTO `movie_comment` VALUES (12, '已注销', 40, '2015-01-18', '241', '自古大神多是');
INSERT INTO `movie_comment` VALUES (13, '丶', 50, '2017-07-01', '254', '你看缺爷, 你继霍金梵高福尔摩斯之后, 又接了个高智商神经病, 集齐七个就可以召唤神龙让自己变得不那么二缺, 或是更二缺, 了, 听说这片打算冲击奥斯卡, 那就坐等缺爷封帝, 淡泊明志当然不是问题但是封帝也是件很美好的事啊, 就可以叫你缺帝了不是, 乳房发育, 卧槽那画面太美我不敢看');
INSERT INTO `movie_comment` VALUES (14, '洛伦佐', 50, '2014-12-27', '168', '一定要打五星表示支持, 丰满而感人, 剧情编排很聪明, 时间线打乱留足了悬念且增强了感情冲突, 图灵的一生被完美诠释, 这是对所有同志或仅是不同的人的献礼, 伟大的人多是与众不同的, 小男主隐忍的特写表演很好, 也终于感动到我了, 有奥卡相, 唯独如今的电影都超宽屏要装下, 的长脸还真不容易');
INSERT INTO `movie_comment` VALUES (15, '蕭查某', 40, '2014-11-25', '179', '看完图灵隐形眼镜都哭掉了, 倒不是, 演的有多好, 说实话还是没有突破自己固有的银幕形象, 能入围的话就已经很不错了, 但图灵的一生真的很有泪点, 影片结束能听到后排抽泣的声音, 因为真实存在过, 所以让人心更为他疼');
INSERT INTO `movie_comment` VALUES (16, '玑衡', 50, '2014-12-28', '151', '是为这个角色而生的, 聪明, 孤独, 神经质的天才, 导演对于情节的安排和取舍很克制, 没有为了夺人眼球而刻意强调, 的同性恋, 同性恋情节只是轻轻点过, 错落有致地讲到了, 生命中的所有其他维度, 希尔伯特猜想, 图灵机, 人工智能, 对长跑的热爱, 人物很丰满');
INSERT INTO `movie_comment` VALUES (17, '米粒', 30, '2014-11-20', '1323', '在图灵这样一个传奇, 天才的身上, 只能说我想看到的比这部电影说得要多得多, 它说的是一个智商超高的人的故事和悲剧, 却把观众的智力水平放到了最低的位置, 许多如同琼瑶剧一般的矛盾制造把我是看呆了, 当然各方面都太讨好奥斯卡了, 英国演员, 欧洲导演, 配乐, 摄影, 领奖标配');
INSERT INTO `movie_comment` VALUES (18, '亵渎电影', 30, '2015-01-08', '600', '什么片子配上, 这种学院派的煽情配乐都能让你感动, 更别提这片子还有讨人喜欢的腐国文艺片气质, 还有男女主角优秀的表演和一群熟脸配戏, 背后还隐藏着一个伟大的男同爱情故事, 不过将图灵的一生编排进这样的颁奖季类型片, 时代背景, 无名英雄, 天才与自闭, 没什么惊喜');
INSERT INTO `movie_comment` VALUES (19, '岛上的夏奈', 40, '2015-01-20', '187', '电脑之父是基这件事, 相信会让很多, 男的三观坍塌');
INSERT INTO `movie_comment` VALUES (20, '陀螺凡达可', 40, '2015-01-29', '71', '抱着又一部, 万物理论, 的低期待走进影院, 结果当然是比预想的要好, 毕竟要比, 万物理论, 还差还能提名奥斯卡也不太可能了吧, 马脸前半段一直在演夏洛克, 后半段才入戏, 就这样也足够完爆雀斑, 配乐煽啊煽, 撑同志反歧视的主题被放在哪么中心的位置还挺惊喜');
INSERT INTO `movie_comment` VALUES (21, '哪吒男', 50, '2015-01-16', '156', '编剧的奥斯卡获奖感言, 图灵从没有站在这样的舞台上接受褒奖的机会, 而我却得到了, 这是最不公平的事, 我想和那些同样觉得自己是个怪胎, 觉得自己不同, 与周遭格格不入的人一起分享, 是的, 你是怪异是不同是格格不入, 但请你保持怪异, 请你与从不同, 当下一次你站在聚光灯下, 也请你把同样信息继续传递');
INSERT INTO `movie_comment` VALUES (22, '香槟塔', 30, '2014-12-12', '509', '拍的太平庸了, 本片的主题, 德国人被任性害死了, 我们英国人真厉害, 我们破解了密码, 我们击败了敌人, 我们发现了间谍, 我们真伟大, 英国人你们还记得剑桥五杰怎么拼嘛, 马脸充满着, 我就是一个天才, 的气质, 演技是很好, 但剧本的刻画太单薄, 即便如此, 征战美帝没问题, 美国人不是喜欢英国的文化嘛');
INSERT INTO `movie_comment` VALUES (23, '桃桃林林', 30, '2015-01-24', '408', '现在这种精致的人物传记都大同小异, 尤其是天才式的人物, 他们大多呈现出同样的性格特质, 不过过程中设置的层层障碍, 让解谜成功的激动还是很振奋人心的, 而影片最终还是把重心落在了同性这个话题上, 一个伟大的天才, 终究才是要毁在那个时代对同性的迫害上, 确实非常可惜, 表演确实不错, 不过影帝难');
INSERT INTO `movie_comment` VALUES (24, '苗儿', 30, '2014-11-17', '244', '没特别期待也没大失望, 人物脸谱化, 故事简单化, 好莱坞, 高大全, 然而若不是这电影我也不会了解那故事的细节和其他人物, 卡司非常好, 我觉得最喜欢的表演反倒是, 和, 在那角色里都发挥不出来, 可惜');
INSERT INTO `movie_comment` VALUES (25, '宋小君', 50, '2015-08-04', '73', '人类会扼杀他们所不能理解的天才, 正是那些人们认为的无用之人, 成就了没有人能成就的事');
INSERT INTO `movie_comment` VALUES (26, '朝阳区陆依萍', 40, '2015-01-13', '57', '又一部四平八稳安全着陆的冲奥电影, 天才就这么被一群自以为是的庸才耽搁了, 同样是传记类, 万物理论, 就像可笑的过家家偶像剧, 但说句真心话, 卷福和, 的表现是意料之中的好, 整体没什么太大的惊喜, 相比之下, 配乐真的是太抢耳了');
INSERT INTO `movie_comment` VALUES (27, '已注销', 30, '2014-11-23', '194', '顶多三星, 韦恩斯坦想模仿国王的演讲, 砸了');
INSERT INTO `movie_comment` VALUES (28, '英恩', 50, '2015-01-15', '52', '他大脑那么迅速地运转, 他的双手却那么愚钝地触摸世界, 他用聪明保护世界, 却被事件的愚钝所迫害, 愿所有的伟大都得到应许的赞誉, 在图灵做出, 考文垂事件, 的选择时, 我在想如果政府在破解时就得知他的同性恋身份, 还会用牺牲战争胜利来做出对他的审判吗');
INSERT INTO `movie_comment` VALUES (29, '明安', 50, '2015-03-05', '71', '不一样并不代表是错的, 电影真是好看, 棒到什么程度, 看完后我想把之前打五星的电影都改成四星就留这一个满分的程度');
INSERT INTO `movie_comment` VALUES (30, '隆咚锵', 50, '2015-01-11', '35', '真实的故事常常让人流下无可辩驳的泪水');
INSERT INTO `movie_comment` VALUES (31, '', 30, '2015-01-07', '146', '又名, 我要奥斯卡');
INSERT INTO `movie_comment` VALUES (32, '前田椿', 40, '2018-02-09', '56', '遗憾天才的陨落, 也遗憾与小金人失之交臂, 可能, 命运注定要两部史诗级人物传记相遇, 当图灵碰撞霍金, 他们都是为推动人类进步做出不可磨灭功绩的智者, 你无法把他们摆在一个天秤上较量孰轻孰重, 许是粉丝滤镜吧, 让我终究因为卷福更偏爱图灵, 偏爱这个战火纷飞的年代里, 压抑的, 激情的故事');
INSERT INTO `movie_comment` VALUES (33, '芦哲峰', 30, '2015-09-07', '168', '砸在牛顿头上的苹果, 被图灵咬了一口, 掉进乔布斯的手里');
INSERT INTO `movie_comment` VALUES (34, '大盗米', 30, '2015-01-06', '124', '真的只是还行吧');
INSERT INTO `movie_comment` VALUES (35, '', 50, '2015-04-20', '34', '马修, 古迪无论怎么看都太迷人了');
INSERT INTO `movie_comment` VALUES (36, '', 20, '2014-11-29', '640', '一部未来的人显然不会想起, 刚出影院的观众也讲不清楚的电影');
INSERT INTO `movie_comment` VALUES (37, '夜猫猫', 50, '2014-11-29', '14', '卷福的演技加分, 故事开篇让我想到听风者, 整张下来尽是温情, 以为是悬疑片结果人性和温情才是故事的基调, 题材赞');
INSERT INTO `movie_comment` VALUES (38, '裴', 40, '2015-01-14', '48', '故事本身便动人, 跌宕起伏, 看得难过, 看到木心谈图灵的一句话, 已经贴切地说出我所想的, 别再提图灵了吧, 他的死, 使我们感到大家都是对不起他的, 天才总天真, 坦荡, 毫不设防地迎向这个庸人占领的世界, 一腔热诚付与世界, 世界待他们, 往往却是一盆脏水兜头浇下');
INSERT INTO `movie_comment` VALUES (39, '艾小柯', 30, '2015-02-03', '99', '剧本工整太过, 所有桥段和戏剧效果几乎都按照写作, 来的, 无任何意外, 脱离现实明显, 好看自然还是好看, 尤其对结尾那个巨大的不公正处理优雅, 悲情效果良好, 若从传记角度出发, 电影则十分肤浅娱乐化');
INSERT INTO `movie_comment` VALUES (40, '明明', 30, '2015-01-08', '56', '毫无亮点的片子, 剧本幼稚, 想想类似这种传记片一抓一大堆');
INSERT INTO `movie_comment` VALUES (41, '', 40, '2014-11-17', '24', '每年年底标准的颁奖季命题作文, 典型的笑点泪点刚刚好, 主角无限飚戏空间观众, 和奥斯卡评委, 要什么就给什么的韦斯坦恩式好莱坞商业片');
INSERT INTO `movie_comment` VALUES (42, '', 50, '2015-01-08', '8', '拍摄, 故事都没的说, 如果, 的角色换成抖森来演, 就舔屏了');
INSERT INTO `movie_comment` VALUES (43, '熊阿姨', 30, '2015-03-13', '30', '电影的匠气太重了, 什么时候插入同性恋话题, 什么时候追忆, 捋顺了逻辑后, 插入一个挫折, 再安置酒吧的转折戏, 过于工整, 每一个情节碎片的意图太明显, 完全能猜到下一张牌是什么, 无甚惊喜, 但为什么还得了奥斯卡最佳改编剧本奖');
INSERT INTO `movie_comment` VALUES (44, '', 10, '2015-01-13', '61', '导演不造怎么继续就开始音乐抒情, 剧本超烂, 铺垫非常刻意, 少年线完全没用好, 卷福的演技真的称不上一流, 不够投入也就不够迷人, 但是, 图灵本身的故事还是让人深为一叹的');
INSERT INTO `movie_comment` VALUES (45, '仿真男孩哪吒', 30, '2015-01-11', '29', '以学院奖的标准配置, 工整, 流畅, 单调, 冲奥气质浓郁, 二战, 天才, 同志题材本就是万金油, 加上大把优秀演员, 煽情的配乐, 精细的摄影和美工, 本应该会非常好看才对, 最后把图灵拍成这样, 还是太小看人家');
INSERT INTO `movie_comment` VALUES (46, '喷子', 10, '2015-01-20', '28', '每年颁奖季必备的跪舔申奥片, 去年是为奴今年是这部, 招招算计好了对准评奖口味, 能力欠缺原创力匮乏先放一边, 这种功利主义态度着实让人恶心, 浑身上下一股子绿茶婊气味儿, 有点阅片量号称影迷的人要还能容忍甚至鼓励这种投机电影的存在, 那之前那些电影也真是白看了, 以后也别再浪费时间接着看了');
INSERT INTO `movie_comment` VALUES (47, '美乐蒂', 50, '2014-11-15', '17', '这原来真的是一部, 电影, 他妈的古蒂子一出来感觉全世界都排卵了, 小司机已经胖成一坨大气球了, 但是太惨了真是他妈太惨了, 看哭了, 是真的字面意思的哭了, 他妈的然后, 的形婚宣言怎么能那么屌, 又要哭了, 最后, 我们爱尔兰人就是那么屌, 呵呵');
INSERT INTO `movie_comment` VALUES (48, '', 20, '2014-12-19', '452', '在一部高度浓缩的传记片里, 我只能看到一个浑身贴满标签的孤僻, 偏执, 交流障碍的同性恋天才, 看到他的经历和思想奇迹般的被剧情串联在一起, 看到防空洞里的全民填字游戏, 以及在战争和解密的夹缝中拼命挤出的一丝性向与性别平等的声音, 如果只能以这种电影纪念的话, 多年后他大概还会长出一张长脸吧');
INSERT INTO `movie_comment` VALUES (49, '羚羊的灵魂', 40, '2015-01-13', '36', '本质是爱情片, 图灵这么拼都是为了初恋');
INSERT INTO `movie_comment` VALUES (50, '网瘾少女', 50, '2014-12-08', '12', '看完电影感慨很多, 但最希望的是我的同性恋朋友都能被这世界温柔对待, 过了几十年, 同性恋, 罪, 终于得到平反, 因为这, 罪, 牺牲了多少有才的, 啊, 图灵是当中杰出的一个, 无法想象他生平遭遇了多大的痛苦和委屈, 感觉他的成就, 后世人对他的平反都弥补不了他所承受的痛苦');
INSERT INTO `movie_comment` VALUES (51, '', 50, '2015-01-11', '9', '可以把它看作传记片剧情片爱情片, 科学, 爱情, 友情, 战争, 人性, 可解读的方面很多, 而且各方面表现都令人满意, 一直都认为对用心佳作吹毛求疵蛋里挑骨的人一定不是宽容温厚的人');
INSERT INTO `movie_comment` VALUES (52, '北方的南瓜', 50, '2020-08-09', '23', '非常震撼, 泪流满面, 有当初看完, 美丽心灵, 以后的感觉, 有时候看看这些堪称人类之光们的传记电影, 觉得这等伟大的头脑和精神尚且命途多舛, 我等平庸之辈遇到点挫折简直不值一提, 还有, 是个伟大的女人');
INSERT INTO `movie_comment` VALUES (53, '黄小毛', 40, '2015-01-14', '16', '感谢祖师爷赏饭');
INSERT INTO `movie_comment` VALUES (54, '花岗岩', 40, '2015-01-09', '12', '一个传奇式的天才英雄故事, 虽是一位悲剧人物, 但是影片着力表现图灵对战争所做的贡献以及自身的纠结点, 三线叙事让情节变的丰满, 也让图灵这个人物变的更立体, 卷福的表演大赞, 奈特莉也是可圈可点');
INSERT INTO `movie_comment` VALUES (55, '着朱佩紫皮狮虎', 40, '2015-07-24', '16', '其实觉得三星半最适合, 政治正确, 节奏准确, 分镜合格, 叙述圆满, 可还是少了一点什么我们称之为点睛之笔或泪点或精髓的地方, 情绪一直悬在那里, 未能宣泄, 是不是如此憋屈而隐忍, 是腐国所崇尚的高贵');
INSERT INTO `movie_comment` VALUES (56, '木偶', 50, '2015-01-16', '11', '无人所念之人, 方能成就无人感想之事');
INSERT INTO `movie_comment` VALUES (57, '赫恩曼尼', 50, '2015-02-09', '20', '无人所念之人, 方能成就无人敢想之事, 向图灵致敬');
INSERT INTO `movie_comment` VALUES (58, '', 40, '2015-07-27', '16', '多重道德困境包裹的图灵, 人物命运令人唏嘘, 是上帝还是怪胎, 谍战类型嵌入传记核, 紧扣巧妙, 解决了三段并行的冗慢, 说到底, 奥斯卡种子是靠价值观押宝, 职业操守与身份秘密, 国家集体和私人欲望, 明处交锋, 暗夜见芒, 熊熊大火, 幕幕戳心');
INSERT INTO `movie_comment` VALUES (59, '西西', 50, '2014-12-05', '7', '一部电影, 两条主线, 讲了很多层面的东西, 关于正常与反常, 理性和道德, 历史的转折点往往是由于一两个人的存在而出现的');
INSERT INTO `movie_comment` VALUES (60, '好姑娘老妖', 50, '2015-08-06', '16', '看完电影走回家, 差点哭出来, 非常好的一部电影, 趁着还没下映, 去看看吧, 天才总是被伤害, 因为他们不是普通人, 也无法被普通人接纳, 可是, 正是因为他们这个世界才会变得更好, 人是多么自私愚蠢的动物, 固执的认为他们本身的智慧和经验理解不了的, 都是怪物');
INSERT INTO `movie_comment` VALUES (61, '荞麦', 30, '2015-01-17', '30', '一切都太过显而易见了, 包括里面那种悲伤都如此的显而易见, 不好看');
INSERT INTO `movie_comment` VALUES (62, '鼓腹游', 50, '2015-01-27', '7', '改变世界的还有第三颗苹果, 在牛顿之后乔布斯之前, 如果没有他, 也许现在意义的电子计算机就不会产生了, 也许现在信息技术和人类文明要改写, 年, 月, 日, 艾伦, 麦席森, 图灵因食用浸染过氰化物溶液的苹果死亡, 据说乔布斯的苹果, 概念源自于此');
INSERT INTO `movie_comment` VALUES (63, '', 50, '2015-01-23', '14', '求婚前一抬头的小眼神瞬间萌化了, 对又高冷又呆萌的技术理科男简直没有免疫力好嘛');
INSERT INTO `movie_comment` VALUES (64, '王大根', 30, '2015-01-19', '31', '可能是这两年影视剧里这种类型的天才出现得多了, 看起来并没有觉得是会让人有所触动的故事, 还是不要演什么同性恋了, 真的, 直男气都要喷出屏幕了');
INSERT INTO `movie_comment` VALUES (65, '', 30, '2015-01-12', '22', '在结尾打上一行又一行陈述史实的字, 这已经成了冲奥传记片的标配, 让你混淆历史和片子本身, 双双敬畏起来, 其实这是春风化雨的绑架, 传颂历史的电影跟创造历史的人关系很大, 我给图灵牛逼的贡献真真诚诚地打五星, 给距离, 美丽心灵, 十万条街的本片打三星');
INSERT INTO `movie_comment` VALUES (66, '', 40, '2015-01-15', '11', '');
INSERT INTO `movie_comment` VALUES (67, '小小鱼', 50, '2015-01-18', '5', '真的是很工整的作品, 能结结实实让你看出冲奥的野心, 可是我无法不打高分, 感觉这个世界欠图灵的, 这个世界亏欠, 枉负了太多天才, 当缺对着, 吐露真情飙演技时我真的要哭了, 可当我看着他那么长一张脸扭成那个样子时, 我居然他妈笑出来了');
INSERT INTO `movie_comment` VALUES (68, '远慕', 30, '2015-01-18', '18', '夸张的标签化的电影只是为了告诉观者有过图灵, 谢谢额');
INSERT INTO `movie_comment` VALUES (69, '年逝', 40, '2015-01-10', '7', '光是这卡司阵容就看的舒心, 和想象中不一样, 没有过度去追求大气的效果, 倒是细节上人与人之间的细腻情感很感人, 影片结局的处理也是淡淡的, 整体节奏和氛围包括配乐都可圈可点, 原以为很多情节会更为激烈, 燃点却都来自日常, 来自内心欲望的张力, 卷福演, 还是不太像, 理性天才的劲倒是很到位');
INSERT INTO `movie_comment` VALUES (70, '柴斯卡', 10, 'none', '28', '人们说话时表里不一, 费尽心思也猜不出他们究竟是什么意思, 孤独症患者孤独地成长, 无人看好之人成就无可匹敌之事, 走在前沿势必承受无尽的诽谤与压力, 世上分明有很多种思考方式, 极致的浪漫莫过于将我毕生的心血以你命名, 在颓败的暮年拥着你哭泣, 不要丢下我啊, 你说我是人还是机器');
INSERT INTO `movie_comment` VALUES (71, '王', 40, '2015-01-09', '5', '工整的传记片, 不乏看点, 流畅有序, 表演很出色, 但是整体缺少升华的价值, 剧本显得过于保守, 最后把电影的落脚点放在同性恋问题上是一大败笔, 结尾戏也显得托大做作, 很像, 国王的演讲, 但没有前者干净利落, 和, 美丽心灵, 还差的很多');
INSERT INTO `movie_comment` VALUES (72, '团小纸', 30, '2015-01-12', '18', '尽管对本尼的表演以及图灵的传记都很肝心, 但关于图灵有三个要讲的内容, 二战的密码工作, 同性恋者身份, 计算机的诞生以及关于图灵假设, 内容组合呆板以至有些拙劣, 弹幕里一句话得记下来, 恐同的最好就不要用计算机了');
INSERT INTO `movie_comment` VALUES (73, '兮称', 30, '2015-01-18', '18', '每一个学术, 都有一个叫科研的男盆友, 电影有些用力过火, 工整到刻意, 二缺时而谢耳朵时而本喵喵傻傻分不清楚, 演太多天才迷失自我了, 小图灵是一大萌点, 结果如此凄惨, 后妈编剧虐心指数五颗星');
INSERT INTO `movie_comment` VALUES (74, '五色全味', 40, '2015-03-02', '10', '怎會料到是部愛情電影呢, 去到結尾他摸著那款叫著他一生中最愛的人名字的機器, 說著自己的孤獨時, 才知曉他那麼深沉的愛與思念, 最後在他痛不欲生時和他說, 不起眼的人往往能做出超乎想像的事, 這句話就是他最愛的人告訴過他的, 一下子眼淚没止住');
INSERT INTO `movie_comment` VALUES (75, '大王叫我来巡山', 40, '2015-01-16', '6', '一个天才式的人却过着无比悲催的生活, 数学狗在电影院里竟然听明白了真是激动到飙泪, 而快到结尾突然出现的政治斗争才发现智商快不够用了, 最厉害的其实是政客啊');
INSERT INTO `movie_comment` VALUES (76, '文泽尔', 30, '2015-01-29', '18', '毕竟熟悉图灵生平, 也毕竟是传记片, 两个小时下来, 没有任何激烈戏剧冲突, 取得项目主导权, 改善同事关系, 谁是间谍, 同性恋疑案, 破解, 时间过长等等, 均是旋即破解, 或者分阶解决, 进一步削弱冲突感, 主体插叙框架外的破案悬疑, 不足以支撑全片, 少少几个战争或战残场面, 割裂于主体之外, 次要角色刻画也欠佳');
INSERT INTO `movie_comment` VALUES (77, '孬爷爷', 40, '2015-02-14', '9', '我们用自己的方式爱着对方, 我们能一起过我们想要的生活, 你成不了完美的丈夫, 好吧, 跟你说, 我也不想做什么完美的妻子, 我不会整天给你做羊排, 等你从办公室下班回家, 我也上班, 你也上班, 我们会享受互相的陪伴, 我们会享受互相的思想, 这听起来不比一般人的婚姻要好吗, 因为我在乎你, 而你也在乎我');
INSERT INTO `movie_comment` VALUES (78, '陈哈', 50, '2015-01-20', '10', '天才, 偏执狂推动世界文明, 总是生前迫害, 死后若干年再用各种方式纪念, 六十年前, 在英国同性恋是犯罪, 现在成了腐国了');
INSERT INTO `movie_comment` VALUES (79, '海棠', 50, '2015-07-22', '8', '五星给卷福的表演');
INSERT INTO `movie_comment` VALUES (80, '朝暮雪', 30, '2015-01-12', '26', '发明密码, 破解密码, 又发明新型密码, 又破解新型密码, 这群人真是天才');
INSERT INTO `movie_comment` VALUES (81, '陆钓雪等待瑶宝', 40, '2015-08-07', '15', '最恨精英主义的天才了, 因为这总是对的, 并且总让我想起自己这个人文主义者, 总感觉他们都在技术的圈子里打转, 偶尔扭曲了一下思想的笼子, 动不动以为改变了世界就能够改变人类, 可人性永远没变, 这也是对的, 并且还是真理, 不赞同同性恋就是不赞同人性, 为什么永远有人那么瞎');
INSERT INTO `movie_comment` VALUES (82, '蓝笔风', 30, '2015-01-11', '10', '英国无名英雄赞歌, 类似, 国王的演讲, 但主题表现更像, 逃离德黑兰, 作为人物传记片看剧本切入点相当圆滑, 很讨巧, 可惜莫滕泰杜姆导演太平庸, 直逼, 万物理论, 电视电影拍法, 只有所谓严谨的平铺直述, 也因此情感冲击大打折扣, 角色理想化到不可信, 提名凭的是角色而非表演本身');
INSERT INTO `movie_comment` VALUES (83, '大島', 40, '2015-09-10', '11', '我觉得, 跑起来肯定没有图灵怪, 但是, 哭时的那张脸肯定比图灵怪很多');
INSERT INTO `movie_comment` VALUES (84, '请保持高冷', 50, '2017-04-09', '7', '故事情节, 演员演技, 画面音效, 每一个都很棒');
INSERT INTO `movie_comment` VALUES (85, '韧勉', 50, '2015-02-15', '12', '天才都是孤独的, 但是不正常人常有的非人壮举, 天才很多, 只有情商高的才能有高成就, 一切个人的成就在政治大局面前都是渺小的, 珍惜生命, 远离政治, 彼得是个非常常见的俄国人名, 往往当人专注于大事时, 却忘了一些显而易见的小细节, 这也是政治中所谓的最危险的地方最安全, 运气都是留给勤');
INSERT INTO `movie_comment` VALUES (86, '', 30, '2015-01-30', '17', '再超凡的人物和故事也能被平庸的电影工业那自以为是的, 好看, 原则, 处理地俗气, 矫情而又浮于表面, 尤其是奈特莉戏码设置, 衬托图灵好直男, 这种为了迎合主流观众而妥协的地方, 影片里比比皆是, 但, 和那个小演员演得真好, 让人动容, 撑同志效果也算达成');
INSERT INTO `movie_comment` VALUES (87, '巨米雨', 50, '2014-11-26', '7', '五星打得一点都不心虚, 就算有感情分也不是因为, 而是因为图灵, 对于电影来说图灵是个非常好的角色, 够复杂够特别也够让人喜爱怜悯, 而这部电影出色的发挥了这些优势, 把看似无趣传记电影拍得让人真心的笑痛快的哭, 我很遗憾我们没有更多的机会去了解图灵, 但我们至少有这部电影去认识一个伟大的灵魂');
INSERT INTO `movie_comment` VALUES (88, '昵称被占不开心', 40, '2017-03-07', '8', '本尼太适合');
INSERT INTO `movie_comment` VALUES (89, '人間', 40, '2015-01-17', '5', '工整的剧本, 观众一定会喜欢的一部好电影');
INSERT INTO `movie_comment` VALUES (90, '张小北', 40, '2015-09-01', '9', '在大银幕上看感觉摄影有些死板');
INSERT INTO `movie_comment` VALUES (91, '萨库拉', 30, '2015-01-08', '16', '中规中矩, 在解开, 的同时, 里的小弟发现自己哥哥就在即将被攻击的船上这种刻意接受不能, 你们卷福演这种偏执的天才太易如反掌, 他应该演些别的角色了');
INSERT INTO `movie_comment` VALUES (92, '', 10, 'none', '6', '我觉得比, 万物理论, 好点吧, 剪辑还是挺有电影感的, 不是那么, 就是提名热门里, 也就, 是真演得够好, 过于套路化的传记片, 所有角色变化都是跟着设定走的感觉, 最后的几段字幕一出后充满了, 作者不自己总结个中心还真没看出全文跑题, 的囧感');
INSERT INTO `movie_comment` VALUES (93, '樹一', 50, '2016-03-04', '11', '三个时空揉杂剪辑, 却毫不含糊, 层层递进, 看到文明之光从那个戴着镣铐的钢铁时代里一点点渗出光来, 不管是图灵在科技上的贡献, 还是他同性恋的身份背后的故事, 都是满满的, 感谢这个从始至终都未被世界善待的');
INSERT INTO `movie_comment` VALUES (94, '京客隆小丸子', 50, '2015-07-26', '5', '理解是对和普通不同的人最大的慰籍, 是真的理解');
INSERT INTO `movie_comment` VALUES (95, '汪金卫', 30, '2015-07-21', '6', '中规中矩, 并无惊喜与亮点, 多年前我曾看过一本讲, 密码机的书, 十分详尽, 让我对图灵敬佩不已, 但电影连, 的原理和使用方法都没讲清楚, 更不用说破解它的图灵之伟大了, 电影把破解密码机拍得如同过家家般, 这是对当年大批科学家的不敬, 就图灵本身, 也未能拍出其伟大, 遗憾本尼的演技');
INSERT INTO `movie_comment` VALUES (96, '魚仙', 40, '2014-12-08', '7', '終於出現了, 顫抖吧人類');
INSERT INTO `movie_comment` VALUES (97, '电子骑士', 30, '2015-04-09', '8', '三星半, 故事非常流畅, 角色也很鲜明, 这方面有点像, 国王的演讲, 都属于趣味性十足, 节奏非常好, 传主比较吸引人的传记电影, 但在角色的开掘和故事的内涵上, 比, 国王的演讲, 还弱一些, 跟, 美丽心灵, 之类就差距更大了, 看完少了点意犹未尽的感觉, 规整圆滑不是错, 但始终不够登堂入室');
INSERT INTO `movie_comment` VALUES (98, '飞林沙', 50, '2015-10-16', '6', '我们用不同的方式生活, 用自己的方式爱着对方, 你不会是完美丈夫, 我也从未想过做一个好的妻子, 无论是历史还是现在, 我们被看似正确的道德枷锁囚禁了太久, 排斥那些自己无法理解的人和事, 而让整个世界的进步延缓了许多年');
INSERT INTO `movie_comment` VALUES (99, '', 50, '2015-01-10', '17', '世上的秘密错综复杂, 若从开始就一无所知, 一切都容易得多, 但我们依然选择保留这些秘密, 也许只是为了不要过于孤单');
INSERT INTO `movie_comment` VALUES (100, '韧勉', 50, '2015-02-15', '12', '天才都是孤独的, 但是不正常人常有的非人壮举, 天才很多, 只有情商高的才能有高成就, 一切个人的成就在政治大局面前都是渺小的, 珍惜生命, 远离政治, 彼得是个非常常见的俄国人名, 往往当人专注于大事时, 却忘了一些显而易见的小细节, 这也是政治中所谓的最危险的地方最安全, 运气都是留给勤');
INSERT INTO `movie_comment` VALUES (101, '皮皮兔', 30, '2014-11-28', '4', '表演满分不服莫辩, 脚本的优点是平铺直叙改成三线同时推进, 把, 这个包袱抖得很准, 重要的, 写得都没得挑, 缺点是三线之间的切换很多处都略不自然, 人物关系方面的有些情节过于, 刻意痕迹比较明显');
INSERT INTO `movie_comment` VALUES (102, '元宝宝', 40, '2017-03-22', '8', '虽然知道计算机之父图灵, 但还真不了解他的生平, 通过影片了解后, 真替男主感到悲哀, 再伟大的发明以及对社会的贡献, 也抵不过人心的冷漠, 引人深思的一个故事');
INSERT INTO `movie_comment` VALUES (103, '飞侠式拼搏', 40, '2020-05-04', '8', '他拯救了上千万人的生命, 然而却被世界给抛弃');
INSERT INTO `movie_comment` VALUES (104, '巨米雨', 50, '2014-11-26', '7', '五星打得一点都不心虚, 就算有感情分也不是因为, 而是因为图灵, 对于电影来说图灵是个非常好的角色, 够复杂够特别也够让人喜爱怜悯, 而这部电影出色的发挥了这些优势, 把看似无趣传记电影拍得让人真心的笑痛快的哭, 我很遗憾我们没有更多的机会去了解图灵, 但我们至少有这部电影去认识一个伟大的灵魂');
INSERT INTO `movie_comment` VALUES (105, '樹一', 50, '2016-03-04', '11', '三个时空揉杂剪辑, 却毫不含糊, 层层递进, 看到文明之光从那个戴着镣铐的钢铁时代里一点点渗出光来, 不管是图灵在科技上的贡献, 还是他同性恋的身份背后的故事, 都是满满的, 感谢这个从始至终都未被世界善待的');
INSERT INTO `movie_comment` VALUES (106, '京客隆小丸子', 50, '2015-07-26', '5', '理解是对和普通不同的人最大的慰籍, 是真的理解');
INSERT INTO `movie_comment` VALUES (107, '叶洲', 30, '2015-10-11', '7', '改编不是问题, 就是太工整了点, 各方面都很专业, 拍的固然好看, 最终破译成功振奋人心, 有一刻真被计算机的先驱的光芒感动了, 小男生初恋也拍的挺好, 天才的傲慢是常见的, 因为周围的人都愚不可及, 但这并不代表天才情商一定为零, 比如真实的图灵, 这种文艺界对科技天才的刻板改造可以收一收了');
INSERT INTO `movie_comment` VALUES (108, '', 30, '2015-01-11', '5', '三线叙事十分巧妙, 配乐煽情十足, 不过演员表演, 电影演绎只是做到中规中矩, 传奇人物的一生本可讲得更多');
INSERT INTO `movie_comment` VALUES (109, '', 20, '2017-10-29', '4', '整部影片全程, 洋溢着各种喂给大众的, 而发现破译关键的那段情节则已近乎弱智, 科学家传记片什么时候才能拍的不要这么');
INSERT INTO `movie_comment` VALUES (110, '', 30, '2015-02-05', '4', '整体老套而平庸, 人物也太简单了些, 演员不错');
INSERT INTO `movie_comment` VALUES (111, '神探夏老师', 40, '2015-08-30', '6', '和我一起看这部电影的人, 是我同事的前男友, 也是我前男友的好朋友, 也是我高中同学, 贵圈屌乱');
INSERT INTO `movie_comment` VALUES (112, '飞林沙', 50, '2015-10-16', '6', '我们用不同的方式生活, 用自己的方式爱着对方, 你不会是完美丈夫, 我也从未想过做一个好的妻子, 无论是历史还是现在, 我们被看似正确的道德枷锁囚禁了太久, 排斥那些自己无法理解的人和事, 而让整个世界的进步延缓了许多年');
INSERT INTO `movie_comment` VALUES (113, '', 50, '2015-01-10', '17', '世上的秘密错综复杂, 若从开始就一无所知, 一切都容易得多, 但我们依然选择保留这些秘密, 也许只是为了不要过于孤单');
INSERT INTO `movie_comment` VALUES (114, '斯齊佐飛力尼克', 40, '2015-02-27', '5', '如果把马脸的角色替换成, 来演会是什么样');
INSERT INTO `movie_comment` VALUES (115, '', 30, '2015-01-15', '12', '战时不搞笑版, 生活大爆炸, 一直不喜欢卷福, 演技浮夸表情僵硬, 结尾从传记片突然变成同志维权范儿');
INSERT INTO `movie_comment` VALUES (116, '黄悦', 40, '2018-05-30', '3', '一部让人印象深刻的人物传奇, 天才的世界可能我们难以理解, 但全身心投入工作时的魅力那种从头顶散发的光芒我们却能够欣赏, 图灵就是这样如上帝般的救世主, 然而觉得图灵最伟大的不仅是创造了电脑及缩短了二战, 而是宁愿化学阉割也要留住, 就像在告诉世人, 要维持自己性取向中那份珍贵的尊严');
INSERT INTO `movie_comment` VALUES (117, '快乐人生', 40, '2018-05-03', '7', '由真实事件改编, 天才, 艾伦, 图灵破译的英格玛密码, 据统计使二战缩短至少两年, 拯救超过一千四百万人的生命, 他研制的图灵机就是我们现在所说的电脑, 却因为是同性恋, 被自己人摧残导致自杀, 死于, 岁, 在, 年由伊丽莎白女王赦免, 一段被尘封, 年的往事才被政府公开');
INSERT INTO `movie_comment` VALUES (118, '辐射', 50, '2015-03-19', '4', '图灵简直是, 的典范, 自私不顾及他人感受, 不是自我中心而是根本情感残障, 易受伤害并难以体谅他人, 在外人看来基本就是冷血和玻璃心的组合, 这类人普遍的孤僻甚至拒绝社交, 但先天的技能树和认知商又都特别发达, 能在各个方面表现出优势, 却又因此会烦恼于常人无法理解的琐事之中, 点蜡');
INSERT INTO `movie_comment` VALUES (119, '艾晨', 40, '2015-01-12', '3', '史诗, 传记, 谍战, 四星半');
INSERT INTO `movie_comment` VALUES (120, '何倩彤', 10, 'none', '6', '主旋律, 希望此電影只是一道讓人探頭而進, 渴望了解圖靈更多的門檻, 藉演, 和圖靈成, 的圖騰, 自創品牌迄自演繹, 都統統與歷史無關了, 唯也不忘他演, 的極端');
INSERT INTO `movie_comment` VALUES (121, '汪见殊', 30, '2015-05-13', '7', '对图灵感情有多深, 对这片子就有多失望');
INSERT INTO `movie_comment` VALUES (122, '卡里加里博士', 30, '2015-03-18', '4', '模仿游戏, 卷福演的不错, 可是片子真心一般, 作为一部描写天才的电影, 应该用一个天才导演来拍, 才能拍出内心的冲动与外界格格不入, 被压抑的挣扎抗争状态, 以及到最后用自己的能力来取得成功的骄傲癫狂, 这个导演太平庸了, 浪费一个好题材');
INSERT INTO `movie_comment` VALUES (123, '', 40, '2015-07-26', '7', '这片我是第一次看, 影片结束时深受震动, 除了图灵传奇又虐心的人生令人动容外, 我真的真的没想到能在公映院线中看到一部对同志形象如此正面塑造的电影, 个人感觉一刀未剪, 图灵说, 越来越聪明了那一段顿时泪崩');
INSERT INTO `movie_comment` VALUES (124, '王五月, 冲刺', 40, '2015-01-30', '4', '凯拉宽, 卷福长, 凯拉坐在卷福上, 卷福偏偏不让凯拉坐在卷福上, 凯拉偏偏就要坐在卷福上, 当里个当');
INSERT INTO `movie_comment` VALUES (125, '', 40, '2015-03-01', '4', '每一个在网上谩骂同性恋的人, 都应该知道, 你正敲打的这一台电脑, 曾经叫做克里斯托夫, 向电脑初代致敬');
INSERT INTO `movie_comment` VALUES (126, '', 30, '2015-04-07', '4', '飞机上看的, 工整的腐国电影, 机器的思考方式与人类不同, 但并不能就此说, 机器不思考');
INSERT INTO `movie_comment` VALUES (127, '优游卒岁', 40, '2015-01-13', '3', '拍得很具可看性, 有很多好玩的桥段, 不过也就止于此了');
INSERT INTO `movie_comment` VALUES (128, '', 50, '2014-11-30', '7', '喜欢英国电影的画面, 构图和拍摄角度都很满意, 基于真实的故事, 矛盾和冲突引发无限思索, 只能试着去揣摩那种心血被被迫掩盖和关掉电源的那一刻, 很感动, 社会的发展是由小部分伟大的人排除万难而向前推进的, 轰炸的场面太玄幻, 减一星, 和削皮器一起看的, 超大爆米花和, 的可乐, 加一星');
INSERT INTO `movie_comment` VALUES (129, '', 40, '2015-01-17', '3', '五味杂陈吧');
INSERT INTO `movie_comment` VALUES (130, '', 20, '2015-01-16', '6', '看看, 拍的, 吧, 这部戏隐秘的三幕结构是, 他是天才还是傻瓜, 哦他是天才, 他跟我们也差不多, 观众遂去, 乐而忘忧');
INSERT INTO `movie_comment` VALUES (131, '', 10, 'none', '6', '看毕你会想去度娘图灵的生平, 由于图灵本身不是马脸, 在还原图灵是长跑冠军的场景里, 奔跑中的卷福仿佛下一秒就会生出鬃毛变身为马, 卷福跟, 扁担长板凳宽, 组合是看点, 本片的英语从句是考研级的, 这片跟那年的, 锅匠, 裁缝, 士兵, 间谍, 一样, 奥斯卡上走一遭, 不如口碑来得好');
INSERT INTO `movie_comment` VALUES (132, '大耳朵', 40, '2017-03-31', '5', '我是计算机相关专业, 所以学院的大楼里一直都有图灵的画像, 看了这电影又翻了些资料才了解了一些他的坎坷, 本尼真的很适合这种聪明的有些偏执的天才');
INSERT INTO `movie_comment` VALUES (133, '西帕克', 40, '2015-07-17', '3', '传记片套用了碟战类型片的外壳, 整体挺有想法, 仔细想来, 如今已常见的人工智能电脑的思维方式, 便是图灵式直来直去思维的翻版, 这个当年不被理解的人, 靠着发明电脑, 终于让所有人都开始用他的方式思考, 此外, 如此敏感的同志题材电影能在大陆公映, 也是历史一大创举');
INSERT INTO `movie_comment` VALUES (134, '竹官碧', 50, '2015-01-29', '7', '凯拉宽, 卷福长, 凯拉想绑在卷福上, 卷福不让凯拉绑在卷福上');
INSERT INTO `movie_comment` VALUES (135, '', 50, '2015-08-03', '8', '法律有时候是另一种暴力');
INSERT INTO `movie_comment` VALUES (136, '', 50, '2015-01-18', '2', '图灵伟大, 丰富却又短暂的一生, 电影并未仔细描述图灵丰富的感情生活, 他的高傲演出的并未那么傲, 也并未提及他对人类计算机事业的诸多贡献, 可依旧, 五星, 献给伟大的图灵');
INSERT INTO `movie_comment` VALUES (137, '', 40, '2014-12-31', '4', '未能达到预期值, 但依旧是合格的主流片, 的表演无可挑剔, 的配乐天衣无缝, 的辩论, 图灵对, 至死不渝的爱, 以及恐同者用图灵的遗产来传播憎恨的讽刺都值得一个大大的拥抱');
INSERT INTO `movie_comment` VALUES (138, '屋外只猫', 50, '2020-07-22', '14', '独行者的悲哀, 牛羊才会成群, 狮虎只会独行, 这句话鲁迅真的说过');
INSERT INTO `movie_comment` VALUES (139, '女宛心兑', 40, '2018-05-22', '1', '为了, 必须想看, 我们用的计算机最早叫克里斯托弗, 是图灵一生所爱');
INSERT INTO `movie_comment` VALUES (140, '蜉蝣', 30, '2015-01-11', '5', '剧本太流于表面, 卷福和, 的表演也很一般, 可挖掘的点太多, 却只用了最学院派的拍法, 略失望');
INSERT INTO `movie_comment` VALUES (141, '小溪笑嘻嘻', 40, '2015-01-16', '2', '三星半, 庄, 分析得很好, 还有一股, 的影子, 拍得好正统, 解密部分, 剧情上的解密和关系的解密, 还挺好看, 结尾拖沓');
INSERT INTO `movie_comment` VALUES (142, '玥玲', 40, '2015-01-16', '2', '最后一点很感人, 整体来说, 人类才是操纵历史的么, 为了让一切都符合逻辑学, 让谎言来麻痹对方来得到胜利');
INSERT INTO `movie_comment` VALUES (143, '雅斯科罗宁', 40, '2015-01-18', '2', '标准规矩的传记片, 略平淡, 向人工智能先贤致敬');
INSERT INTO `movie_comment` VALUES (144, '', 50, '2015-01-17', '2', '已跪舔');
INSERT INTO `movie_comment` VALUES (145, '厦门雷少', 40, '2015-01-09', '2', '中规中矩, 没有惊喜, 习惯了英国电影的配乐, 隐约觉得太过于多余, 胜在卡司强, 但女主角不抢眼, 也许是没有太多发挥空间的愿意你');
INSERT INTO `movie_comment` VALUES (146, '大炎', 40, '2015-01-13', '2', '结构工整, 三段交叉, 错落有致, 论整体, 好过万物理论一截, 论个体, 二缺大致还是神夏的路数, 当真压不住万物理论中拼命的小雀斑, 骚年那几段倒有意思, 的告白差点把老夫看湿, 唔, 真是超越性爱的伴侣关系啊, 马修正常发挥, 呃, 泰温公爵总让人脚着进错了片场');
INSERT INTO `movie_comment` VALUES (147, '布拉德痞特儿', 40, '2015-01-16', '2', '值得看也值得思考的传记片, 卷福真心演的好');
INSERT INTO `movie_comment` VALUES (148, '云吞老丸子', 40, '2015-01-13', '2', '所谓真实的人生比电影更传奇, 决定翻出人物传记书来瞅瞅');
INSERT INTO `movie_comment` VALUES (149, '侃侃而谈', 50, '2015-01-18', '2', '悲伤的故事, 布莱切利, 英格玛, 古迪, 小司机, 跳舞叔, 首相大大, 为了马脸, 把, 都忍了');
INSERT INTO `movie_comment` VALUES (150, '', 40, '2015-01-12', '2', '图灵对于技术的执着和对爱的执着, 形成了巧妙的互文关系, 悲伤, 含蓄');
INSERT INTO `movie_comment` VALUES (151, '与影牵手', 40, '2015-01-11', '2', '为赋巧合强作媒, 天才搞基不耽误, 天才谢耳朵卷福的坎坷破译路, 靠出色的剧本功力和演技把这部创意一般的剧演绎的熠熠生辉, 挺好的, 值得一个奥斯卡');
INSERT INTO `movie_comment` VALUES (152, '林子要好好学习', 40, '2015-01-13', '2', '相比原型人物的生命轨迹电影显得避重就轻, 不确定是刻意为之还是力不从心, 各方面都中规中矩, 但依旧是部好看的电影, 意外的是战争探讨部分有打到我, 可惜篇幅有限, 讲得也不深, 演员方面那谁演这种, 已经熟门熟路了, 反倒马修戏份不轻啊第一次演, 开心吧哈哈');
INSERT INTO `movie_comment` VALUES (153, '巴思柏', 50, '2015-01-13', '2', '喜欢, 故事性很强, 喜欢图灵的故事, 应该说只是截取了他生命中最重要的那一部分内容去结构与诠释');
INSERT INTO `movie_comment` VALUES (154, '吃梦香菇', 50, '2015-01-13', '2', '片子没什么新的, 但是, 实在太传奇太可爱了, 看到最后我都心疼死了, 圣母心发作');
INSERT INTO `movie_comment` VALUES (155, '', 40, '2015-01-08', '2', '二战题材总是能常拍常新, 影片包含的信息太多, 尽管有些未能全部展开, 但也让人唏嘘不已, 图灵生于那个年代, 是他的幸运更是他的不幸, 透过本质又回到那个天才不融于所生存的环境这个永恒的话题');
INSERT INTO `movie_comment` VALUES (156, '滕雅望', 40, '2015-01-17', '2', '个人传记电影剧本写得不错, 戏剧叙事中提出了非常犀利的观点');
INSERT INTO `movie_comment` VALUES (157, '', 40, '2015-01-17', '2', '最后看得泪目啊');
INSERT INTO `movie_comment` VALUES (158, '', 50, '2015-01-16', '2', '心塞');
INSERT INTO `movie_comment` VALUES (159, '小小虫', 40, '2015-01-17', '2', '分虚高, 一板一眼的英式申奥片, 导演心头太大, 想在一部电影里讲科学家孜孜不倦的研究, 双面间谍的悬疑和同性恋被迫害的悲惨处境, 却没有组织好素材, 只能让狗血的矛盾冲突串联故事本身, 同样是学院派的作品, 国王的演讲, 完成得更加优秀和典雅');
INSERT INTO `movie_comment` VALUES (160, '阿奇波尔德', 40, '2015-01-14', '2', '本渣对数学仅存的那一点, 执着, 让把目光全放在了密码机原理和破译工作上, 知识储备太少, 简直拿茫然来形容, 片尾图灵的情感爆发来势之凶猛丝毫没有受到影片着墨其事业为主的影响, 这真的归功, 了, 比霍金倒带人生夏洛克都还要真挚动人, 最后一部电影并不能对图灵尝鼎一脔, 但苹果的, 真与他无关');
INSERT INTO `movie_comment` VALUES (161, '麦神的小跟班', 50, '2015-01-14', '2', '演技大赞, 在主题之外, 影片中对爱情的描写, 是我近期看过最棒的');
INSERT INTO `movie_comment` VALUES (162, '', 30, '2015-01-18', '3', '并无期待中的巨大触动, 只是, 的招牌配乐曲风太过煽情所以不自觉陷进影片里去试着体会那种孤寂感, 结果看见的只有套路式的矛盾冲突和解决, 图灵本人的故事从文字上看比图像震撼多了, 而那些最好的部分基本都只存在于大家的短评里');
INSERT INTO `movie_comment` VALUES (163, '有心打扰', 30, '2015-01-14', '5', '他是如此的孤独, 仿佛只有那台冰冷的机器才是维系他活下去的一丝温度, 他一哭, 我才晃过神来, 他是艾伦图灵, 而不是夏洛克福尔摩斯');
INSERT INTO `movie_comment` VALUES (164, '欢乐分裂', 30, '2015-01-16', '7', '三星半, 中规中矩, 感觉现在, 出演的角色都是这些偏执而孤独的天才, 戏路受限, 且原地踏步, 倒是凯拉, 奈特莉有些意外感动, 因为你, 这些城市这些人都还存在着, 马修, 古迪太帅了, 结尾很仓促, 浮皮潦草');
INSERT INTO `movie_comment` VALUES (165, '帕拉', 30, '2015-01-08', '3', '三条线索交织在一起, 还原图灵, 克里斯托弗, 情节, 没有惊艳处, 也谈不上失望, 四平八稳的颁奖季电影');
INSERT INTO `movie_comment` VALUES (166, '牛腩羊耳朵', 30, '2015-01-30', '5', '三线并行交叉剪辑的想法还是很有野心的, 一句主题句通过角色传递串起三段故事, 可惜有些段落实在是幼稚敷衍的让人想翻白眼, 总体上不管在历史里看个人, 还是同志权益问题, 以及图灵个人的悲剧都通通毫无力度, 导演的掌控作用消失殆尽, 配乐, 表演, 笑料拼起了部奥斯卡大作, 唯一的感动也只是为图灵本人');
INSERT INTO `movie_comment` VALUES (167, '小波福娃', 20, '2018-04-05', '7', '作为图灵传记也真是刻板, 平庸又拙劣, 过于简化, 模糊乃至扭曲掉了很多史实, 不是我的菜');
INSERT INTO `movie_comment` VALUES (168, '', 30, '2015-01-21', '6', '原来我们用的电脑的祖师爷, 克里斯托弗, 是个');
INSERT INTO `movie_comment` VALUES (169, '内陆飞鱼', 30, '2015-02-23', '3', '同志拯救世界, 腐国迫害天才');
INSERT INTO `movie_comment` VALUES (170, '弓谷所長', 50, '2016-02-06', '2', '真的很棒, 三条线把图灵的一生差不多讲完了, 图灵竟然是同性恋, 图灵竟然是打败希特勒的功臣, 图灵竟然为计算机奠定了基础, 不可思议, 一直以为他只是个天才数学家而已, 卷福演的真够出色的, 他就注定是演天才而生的');
INSERT INTO `movie_comment` VALUES (171, '心生', 40, '2015-03-07', '5', '形式上, 它的确是一部标准的冲奥片, 传奇科学家传记片这个题材本身就是标准的冲奥题材, 影片拍得也比较稳妥, 没想颠覆或打破什么, 但是, 但是, 由于图灵的伟大, 以及他人生经历所构成的悲剧性传奇, 使得这部传记片, 即便不用什么技巧与探索, 仍然是震撼的, 全文');
INSERT INTO `movie_comment` VALUES (172, '对儿勾', 40, '2015-01-17', '2', '其实按照最近两年的电影总体水平横向比较来看, 足可以给五星了, 但是可惜, 和与之相类似的题材, 美丽心灵, 比较, 还是有一些差距的, 我相信夏洛克, 泰温等几位老戏骨已经尽力了, 但题材这么好, 理应拍得更好一些');
INSERT INTO `movie_comment` VALUES (173, '曾于里', 40, '2015-01-24', '6', '一声叹息');
INSERT INTO `movie_comment` VALUES (174, '', 40, '2014-12-26', '4', '我真希望凯拉说的这句台词图灵真的听到了, 的取名真相出来的时候泪目');
INSERT INTO `movie_comment` VALUES (175, '', 30, '2015-08-02', '5', '没有任何东西能戳中我, 平胸的口音可能算一个, 如此非凡的人生被拍得那么, 平凡');
INSERT INTO `movie_comment` VALUES (176, '冰红深蓝', 40, '2015-01-27', '7', '影片采用讨巧的三线叙事, 剪辑衔接很成功, 卷福, 从头到尾演技爆表, 尤其是几场哭戏, 让我也忍不住飙泪, 如果不是小雀斑演霍金的难度更大, 本来是很可能摘取影帝桂冠的, 配乐克制而不煽情, 主线, 破解, 谜机, 的部分戏码较为生硬, 且与真实情况出入不小, 其他人物扁平化');
INSERT INTO `movie_comment` VALUES (177, '起床, 吃饭', 50, '2020-03-11', '6', '上哪儿找这样的演员');
INSERT INTO `movie_comment` VALUES (178, '殇潮', 40, '2015-01-10', '2', '四星半, 连对马脸的嫌弃都少了那么一丢丢');
INSERT INTO `movie_comment` VALUES (179, '四喜丸子', 50, '2015-02-16', '2', '传记片能拍成这样相当不易了, 情节够曲折, 基佬们以后会骄傲地告诉我们, 你们现在用来下毛片的机器原型是基佬做出来的');
INSERT INTO `movie_comment` VALUES (180, '然潘', 30, '2015-01-21', '4', '图灵很伟大, 电影很一般');
INSERT INTO `movie_comment` VALUES (181, '肖浑', 40, '2015-07-24', '6', '影院版好像没怎么删减耶');
INSERT INTO `movie_comment` VALUES (182, '暖暖', 30, '2015-01-13', '3', '剧本太不丰满了, 可能是看过有关, 的话剧, 对故事非常熟悉, 更没有什么惊喜了, 很难想象, 年能让图灵机发展成现在的样子, 我期待未来, 年世界会变成什么样子, 我们需要下一个图灵, 的声音太性感听了会怀孕, 喜欢他但更想看他演演正常人');
INSERT INTO `movie_comment` VALUES (183, '丹朱', 40, '2015-02-25', '2', '图灵在二战中破译密码的故事, 情节注定不会枯燥, 但也很难展现他对人类真正的贡献, 或许这本就不是电影可以做到的, 对天才的敬仰与对孩子的心疼在心中交错, 一切赞美都来得太迟');
INSERT INTO `movie_comment` VALUES (184, '某', 40, '2015-05-19', '3', '终于看了, 的确如很多人吐槽的那样戏说太多, 高智商低情商的一贯演绎, 尤其是对, 的着墨比较, 狗血, 当然我个人很爱这狗血的改编, 很工整也没什么大的毛病, 但缺了点, 灵气, 结尾部分全靠卷福的演技脑补了, 不过还是四颗星, 英国欠图灵, 还有多少人被无声无息地亏欠, 这才是最难受的');
INSERT INTO `movie_comment` VALUES (185, '文森特九六', 40, '2015-01-09', '4', '短板还是有的, 不过个人的注意力早就被那丰富多元的情感冲散了, 电影扩建了足够的容量来承载信息, 但到最后却并没有被实质性的填满, 只能用煽情来缓解, 这样做的确是发泄了对图灵所受不公的愤慨, 但关键的, 历史, 层面就只能用一场略拖的密码战和字幕带过了, 蛮可惜, 配乐依旧赞');
INSERT INTO `movie_comment` VALUES (186, '汀', 40, '2014-11-15', '3', '图灵他的故事他的人生非常动人, 电影稍显零散, 时间线间的跳跃不特别自然, 演出配乐和摄影倒都挺好, 戏份太少没看够, 挺惊喜, 年轻图灵部分的故事和表演最打动我, 有些镜头明显福利, 印象最深的是图灵睡前望着, 徐徐按下开关的背影, 演得不错挺合适不过没有特别出彩');
INSERT INTO `movie_comment` VALUES (187, '乔小囧', 40, '2015-04-10', '2', '传奇的人物, 成就了一个不太传奇的电影, 马脸演龟毛天才真适合');
INSERT INTO `movie_comment` VALUES (188, '影子的影子', 30, '2015-01-16', '2', '就那样吧, 对图灵的刻画其实还不够, 卷福也没演得多出彩啊, 给人的感觉是既想说这是一个孤独的天才又想说这是一个可怜的得不到尊重和爱的同性恋, 但其实两方面都没做好, 这个人物并没有给我什么共鸣, 最让人唏嘘的是图灵最后的归属, 一个给人类带来如此贡献的人却不得不被其他人类逼到自杀, 太可悲了');
INSERT INTO `movie_comment` VALUES (189, '', 50, '2014-12-13', '2', '剪辑时不时很棒, 台词也时不时很棒但也有被编剧侮辱智商的感觉');
INSERT INTO `movie_comment` VALUES (190, '', 20, '2015-10-02', '5', '又糟蹋一个好题材');
INSERT INTO `movie_comment` VALUES (191, '天马星', 40, '2017-12-05', '4', '看英国传记片的好处是基本不会失望, 结构完整, 表演在线, 情绪到位, 但坏处是, 熟脸太多容易串戏, 本片分分钟穿越到夏洛克, 唐家屯, 权力的游戏');
INSERT INTO `movie_comment` VALUES (192, '', 50, '2015-07-28', '6', '');
INSERT INTO `movie_comment` VALUES (193, '', 30, '2015-01-11', '2', '十八大以后才被平反啊, 人生已经足够精彩, 却还得添加这么多为冲奥而设置的传统编剧技巧, 保障故事安全好看却也就毫无惊喜');
INSERT INTO `movie_comment` VALUES (194, '儒', 40, '2014-11-20', '2', '英国电影拍大制作时候的, 正统, 感我一直不太喜欢, 和万物理论, 国王的演讲一样, 讲故事和拍摄的方法都有些太, 新人编剧还是差了口气, 后段, 虽然是方法派但是是能打动人的方法派表演加半颗星, 凯拉的角色设定加半颗星, 和凯拉有几场戏很动人, 小, 也不错, 是话痨, 是呆萌');
INSERT INTO `movie_comment` VALUES (195, '左胸上的吸盘', 30, '2018-08-25', '3', '导演就是, 猎头游戏, 那位, 调子定的稳, 用料也足, 讲二战密码破译就加了些户外大景, 历史影像和战场一瞥, 诚意比同背景的, 至暗时刻, 之流可是足, 三线交叉推进, 幼年线回顾挚爱, 二战线揉破解密码的悬疑在传记片里, 结局线暮年凄凉为同性恋发声, 想想清朝的娈童风气我们在这方面还是领先欧洲的, 三条线的调度全无紊乱, 图灵至死受着和恋人同名的计算机雏形, 台词中多次出现的人工智能构想莫不是对真爱的招魂, 这个角度看, 倒也有些科幻片的气质了');
INSERT INTO `movie_comment` VALUES (196, '獨孤島主', 40, '2017-02-16', '3', '不是任何情商低的人都有能力以洞悉世事来弥补的');
INSERT INTO `movie_comment` VALUES (197, '猪头妖怪', 40, '2015-01-19', '2', '三线并进, 把故事说得珠圆玉润, 滴水不漏, 比预想的还要好看');
INSERT INTO `movie_comment` VALUES (198, '', 50, '2015-01-22', '5', '很赞');
INSERT INTO `movie_comment` VALUES (199, '艾伊达', 40, '2017-04-22', '5', '很不错的电影');

SET FOREIGN_KEY_CHECKS = 1;
