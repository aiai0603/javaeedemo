/*
Navicat MySQL Data Transfer

Source Server         : practice_system
Source Server Version : 50729
Source Host           : localhost:3308
Source Database       : practice_system

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2021-05-26 15:20:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `admin_name` varchar(32) DEFAULT NULL COMMENT '管理员账号',
  `admin_passwd` varchar(255) DEFAULT NULL COMMENT '管理员密码',
  `delete_flag` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COMMENT='管理员';

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'root', 'c4ca4238a0b923820dcc509a6f75849b', '00000000000');
INSERT INTO `admin` VALUES ('2', 'test', 'e10adc3949ba59abbe56e057f20f883e', '00000000001');

-- ----------------------------
-- Table structure for appraisal_form
-- ----------------------------
DROP TABLE IF EXISTS `appraisal_form`;
CREATE TABLE `appraisal_form` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `appraisal_form` varchar(5000) DEFAULT NULL,
  `appraisal_form_state` int(10) unsigned zerofill NOT NULL,
  `teacher_id` varchar(255) NOT NULL,
  `teacher_name` varchar(255) NOT NULL,
  `delete_flag` int(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of appraisal_form
-- ----------------------------
INSERT INTO `appraisal_form` VALUES ('1', '31801093', '沈钰琦', '一画\n\n一 乙\n\n二画\n\n二 十 丁 厂 七 卜 人 入 八 九 几 儿 了 力 乃 刀 又\n\n三画\n\n三 于 干 亏 士 工 土 才 寸 下 大 丈 与 万 上 小 口 巾 山 千 乞 川 亿 个 勺 久 凡 及 夕 丸 么广亡门 义 之 尸 弓 己 已 子 卫 也 女 飞 刃 习 叉 马 乡\n\n四画\n\n丰 王 井 开 夫 天 无 元专 云 扎 艺 木 五 支 厅 不 太 犬 区 历 尤 友 匹 车 巨 牙 屯 比 互 切 瓦止少 日 中 冈 贝 内 水 见 午 牛 手 毛 气 升 长仁 什 片 仆 化 仇 币 仍 仅 斤 爪 反 介 父 从 今 凶 分乏公 仓 月 氏 勿 欠 风 丹 匀 乌 凤 勾 文 六 方 火 为 斗 忆 订 计户 认 心 尺 引 丑 巴 孔 队 办 以 允予劝 双 书 幻\n\n五画\n\n玉 刊 示 末 未 击 打 巧正 扑 扒 功 扔 去 甘 世 古 节 本 术 可 丙 左 厉 右 石 布 龙 平 灭 轧 东卡北 占 业 旧 帅 归 且 旦 目 叶 甲 申 叮 电 号田 由 史 只 央 兄 叼 叫 另 叨 叹 四 生 失 禾 丘 付 仗代仙 们 仪 白 仔 他 斥 瓜 乎 丛 令 用 甩 印 乐 句 匆 册 犯 外 处冬 鸟 务 包 饥 主 市 立 闪 兰 半 汁汇头 汉 宁 穴 它 讨 写 让 礼 训 必 议 讯 记 永 司 尼 民 出 辽 奶 奴 加 召 皮 边 发孕 圣 对 台 矛 纠母幼 丝\n\n六画\n\n式 刑 动 扛 寺 吉 扣 考托 老 执 巩 圾 扩 扫 地 扬 场 耳 共 芒 亚 芝 朽 朴 机 权 过 臣 再 协 西压厌 在 有 百 存 而 页 匠 夸 夺 灰 达 列 死 成夹 轨 邪 划 迈 毕 至 此 贞 师 尘 尖 劣 光 当 早 吐 吓虫曲 团 同 吊 吃 因 吸 吗 屿 帆 岁 回 岂 刚 则 肉 网 年 朱 先 丢舌 竹 迁 乔 伟 传 乒 乓 休 伍 伏 优伐延 件 任 伤 价 份 华 仰 仿 伙 伪 自 血 向 似 后 行 舟 全 会 杀 合 兆 企 众 爷 伞创 肌 朵 杂 危 旬旨负 各 名 多 争 色 壮 冲 冰 庄 庆 亦 刘 齐 交 次 衣 产 决 充 妄 闭 问 闯 羊 并 关 米 灯 州 汗 污江池汤 忙 兴 宇 守 宅 字 安 讲 军 许 论 农 讽 设 访 寻 那 迅 尽 导 异 孙 阵 阳 收 阶 阴 防 奸 如 妇 好她妈 戏 羽 观 欢买 红 纤 级 约 纪 驰 巡\n\n七画\n\n寿 弄 麦 形 进 戒 吞 远违 运 扶 抚 坛 技 坏 扰 拒 找 批 扯 址 走 抄 坝 贡 攻 赤 折 抓 扮 抢 孝均抛 投 坟 抗 坑 坊 抖 护 壳 志 扭 块 声 把 报却 劫 芽 花 芹 芬 苍 芳 严 芦 劳 克 苏 杆 杠 杜 材 村杏极 李 杨 求 更 束 豆 两 丽 医 辰 励 否 还 歼 来 连 步 坚 旱 盯呈 时 吴 助 县 里 呆 园 旷 围 呀 吨足邮 男 困 吵 串 员 听 吩 吹 呜 吧 吼 别 岗 帐 财 针 钉 告 我 乱 利 秃 秀 私 每 兵估 体 何 但 伸 作伯伶 佣 低 你 住 位 伴 身 皂 佛 近 彻 役 返 余 希 坐 谷 妥 含 邻 岔 肝 肚 肠 龟 免 狂 犹 角 删 条卵岛迎 饭 饮 系 言 冻 状 亩 况 床 库 疗 应 冷 这 序 辛 弃 冶 忘 闲 间 闷 判 灶 灿 弟 汪 沙 汽 沃 泛 沟没沈 沉 怀 忧 快完 宋 宏 牢 究 穷 灾 良 证 启 评 补 初 社 识 诉 诊 词 译 君 灵 即 层 尿 尾 迟 局 改张忌 际 陆 阿 陈 阻 附 妙 妖 妨 努忍 劲 鸡 驱 纯 纱 纳 纲 驳 纵 纷 纸 纹 纺 驴 纽\n\n八画\n\n奉 玩 环 武 青 责 现 表规 抹 拢 拔 拣 担 坦 押 抽 拐 拖 拍 者 顶 拆 拥 抵 拘 势 抱 垃 拉 拦 拌幸招 坡 披 拨 择 抬 其 取 苦 若 茂 苹 苗 英 范直 茄 茎 茅 林 枝 杯 柜 析 板 松 枪 构 杰 述 枕 丧 或画卧 事 刺 枣 雨 卖 矿 码 厕 奔 奇 奋 态 欧 垄 妻 轰 顷 转 斩 轮软 到 非 叔 肯 齿 些 虎 虏 肾 贤 尚旺具 果 味 昆 国 昌 畅 明 易 昂 典 固 忠 咐 呼 鸣 咏 呢 岸 岩 帖 罗 帜 岭 凯 败 贩购 图 钓 制 知 垂牧物 乖 刮 秆 和 季 委 佳 侍 供 使 例 版 侄 侦 侧 凭 侨 佩 货 依 的 迫 质 欣 征 往 爬 彼 径 所 舍金命斧 爸 采 受 乳 贪 念 贫 肤 肺 肢 肿 胀 朋 股 肥 服 胁 周 昏 鱼 兔 狐 忽 狗 备 饰 饱 饲 变 京 享 店夜庙 府 底 剂 郊废 净 盲 放 刻 育 闸 闹 郑 券 卷 单 炒 炊 炕 炎 炉 沫 浅 法 泄 河 沾 泪 油 泊 沿 泡注泻 泳 泥 沸 波 泼 泽 治 怖 性 怕怜 怪 学 宝 宗 定 宜 审 宙 官 空 帘 实 试 郎 诗 肩 房 诚 衬 衫 视话诞 询 该 详 建 肃 录 隶 居 届 刷 屈 弦 承 孟 孤 陕降 限 妹 姑 姐 姓 始 驾 参 艰 线 练 组 细 驶 织终驻 驼 绍 经 贯\n\n九画\n\n奏 春 帮 珍 玻 毒 型 挂封 持 项 垮 挎 城 挠 政 赴 赵 挡 挺 括 拴 拾 挑 指 垫 挣 挤 拼 挖 按 挥挪某 甚 革 荐 巷 带 草 茧 茶 荒 茫 荡 荣 故 胡南 药 标 枯 柄 栋 相 查 柏 柳 柱 柿 栏 树 要 咸 威 歪研砖 厘 厚 砌 砍 面 耐 耍 牵 残 殃 轻 鸦 皆 背 战 点 临 览 竖 省削 尝 是 盼 眨 哄 显 哑 冒 映 星 昨畏趴 胃 贵 界 虹 虾 蚁 思 蚂 虽 品 咽 骂 哗 咱 响 哈 咬 咳 哪 炭 峡 罚 贱 贴 骨 钞钟 钢 钥 钩 卸 缸拜看 矩 怎 牲 选 适 秒 香 种 秋 科 重 复 竿 段 便 俩 贷 顺 修 保 促 侮 俭 俗 俘 信 皇 泉 鬼 侵 追俊盾待 律 很 须 叙 剑 逃 食 盆 胆 胜 胞 胖 脉 勉 狭 狮 独 狡 狱 狠 贸 怨 急 饶 蚀 饺 饼 弯 将 奖 哀 亭亮度 迹 庭 疮 疯疫 疤 姿 亲 音 帝 施 闻 阀 阁 差 养 美 姜 叛 送 类 迷 前 首 逆 总 炼 炸 炮 烂 剃 洁洪洒 浇 浊 洞 测 洗 活 派 洽 染 济洋 洲 浑 浓 津 恒 恢 恰 恼 恨 举 觉 宣 室 宫 宪 突 穿 窃 客 冠 语扁袄 祖 神 祝 误 诱 说 诵 垦 退 既 屋 昼 费 陡 眉 孩除 险 院 娃 姥 姨 姻 娇 怒 架 贺 盈 勇 怠 柔 垒绑绒 结 绕 骄 绘 给 络 骆 绝 绞 统\n\n十画\n\n耕 耗 艳 泰 珠 班 素 蚕顽 盏 匪 捞 栽 捕 振 载 赶 起 盐 捎 捏 埋 捉 捆 捐 损 都 哲 逝 捡 换 挽热恐 壶 挨 耻 耽 恭 莲 莫 荷 获 晋 恶 真 框 桂档 桐 株 桥 桃 格 校 核 样 根 索 哥 速 逗 栗 配 翅 辱唇夏 础 破 原 套 逐 烈 殊 顾 轿 较 顿 毙 致 柴 桌 虑 监 紧 党 晒眠 晓 鸭 晃 晌 晕 蚊 哨 哭 恩 唤 啊唉罢 峰 圆 贼 贿 钱 钳 钻 铁 铃 铅 缺 氧 特 牺 造 乘 敌 秤 租 积 秧 秩 称 秘 透 笔笑 笋 债 借 值 倚倾倒 倘 俱 倡 候 俯 倍 倦 健 臭 射 躬 息 徒 徐 舰 舱 般 航 途 拿 爹 爱 颂 翁 脆 脂 胸 胳 脏 胶 脑狸狼逢 留 皱 饿 恋 桨 浆 衰 高 席 准 座 脊 症 病 疾 疼 疲 效 离 唐 资 凉 站 剖 竞 部 旁 旅 畜 阅 羞 瓶拳粉 料 益 兼 烤烘 烦 烧 烛 烟 递 涛 浙 涝 酒 涉 消 浩 海 涂 浴 浮 流 润 浪 浸 涨 烫 涌 悟 悄 悔 悦害宽 家 宵 宴 宾 窄 容 宰 案 请 朗诸 读 扇 袜 袖 袍 被 祥 课 谁 调 冤 谅 谈 谊 剥 恳 展 剧 屑 弱 陵陶陷 陪 娱 娘 通 能 难 预 桑 绢 绣 验 继\n\n十一画\n\n球 理 捧 堵 描 域 掩 捷排 掉 堆 推 掀 授 教 掏 掠 培 接 控 探 据 掘 职 基 著 勒 黄 萌 萝 菌 菜萄菊 萍 菠 营 械 梦 梢 梅 检 梳 梯 桶 救 副 票戚 爽 聋 袭 盛 雪 辅 辆 虚 雀 堂 常 匙 晨 睁 眯 眼 悬野啦 晚 啄 距 跃 略 蛇 累 唱 患 唯 崖 崭 崇 圈 铜 铲 银 甜 梨 犁移 笨 笼 笛 符 第 敏 做 袋 悠 偿 偶偷您 售 停 偏 假 得 衔 盘 船 斜 盒 鸽 悉 欲 彩 领 脚 脖 脸 脱 象 够 猜 猪 猎 猫 猛馅 馆 凑 减 毫 麻痒痕 廊 康 庸 鹿 盗 章 竟 商 族 旋 望 率 着 盖 粘 粗 粒 断 剪 兽 清 添 淋 淹 渠 渐 混 渔 淘 液 淡深婆梁 渗 情 惜 惭 悼 惧 惕 惊 惨 惯 寇 寄 宿 窑 密 谋 谎 祸 谜 逮 敢 屠 弹 随 蛋 隆 隐 婚 婶 颈 绩 绪续骑 绳 维 绵 绸绿\n\n十二画\n\n琴 斑 替 款 堪 搭 塔 越趁 趋 超 提 堤 博 揭 喜 插 揪 搜 煮 援 裁 搁 搂 搅 握 揉 斯 期 欺 联 散惹葬 葛 董 葡 敬 葱 落 朝 辜 葵 棒 棋 植 森 椅椒 棵 棍 棉 棚 棕 惠 惑 逼 厨 厦 硬 确 雁 殖 裂 雄 暂雅辈 悲 紫 辉 敞 赏 掌 晴 暑 最 量 喷 晶 喇 遇 喊 景 践 跌 跑 遗蛙 蛛 蜓 喝 喂 喘 喉 幅 帽 赌 赔 黑铸铺 链 销 锁 锄 锅 锈 锋 锐 短 智 毯 鹅 剩 稍 程 稀 税 筐 等 筑 策 筛 筒 答 筋 筝傲 傅 牌 堡 集 焦傍储 奥 街 惩 御 循 艇 舒 番 释 禽 腊 脾 腔 鲁 猾 猴 然 馋 装 蛮 就 痛 童 阔 善 羡 普 粪 尊 道 曾焰港湖 渣 湿 温 渴 滑 湾 渡 游 滋 溉 愤 慌 惰 愧 愉 慨 割 寒 富 窜 窝 窗 遍 裕 裤 裙 谢 谣 谦 属 屡 强粥疏 隔 隙 絮 嫂登 缎 缓 编 骗 缘\n\n十三画\n\n瑞 魂 肆 摄 摸 填 搏 塌鼓 摆 携 搬 摇 搞 塘 摊 蒜 勤 鹊 蓝 墓 幕 蓬 蓄 蒙 蒸 献 禁 楚 想 槐 榆楼概 赖 酬 感 碍 碑 碎 碰 碗 碌 雷 零 雾 雹 输督 龄 鉴 睛 睡 睬 鄙 愚 暖 盟 歇 暗 照 跨 跳 跪 路 跟遣蛾 蜂 嗓 置 罪 罩 错 锡 锣 锤 锦 键 锯 矮 辞 稠 愁 筹 签 简 毁舅 鼠 催 傻 像 躲 微 愈 遥 腰 腥 腹腾腿 触 解 酱 痰 廉 新 韵 意 粮 数 煎 塑 慈 煤 煌 满 漠 源 滤 滥 滔 溪 溜 滚 滨 粱滩 慎 誉 塞 谨 福群殿 辟 障 嫌 嫁 叠 缝 缠\n\n十四画\n\n静 碧 璃 墙 撇 嘉 摧 截誓 境 摘 摔 聚 蔽 慕 暮 蔑 模 榴 榜 榨 歌 遭 酷 酿 酸 磁 愿 需 弊 裳 颗嗽蜻 蜡 蝇 蜘 赚 锹 锻 舞 稳 算 箩 管 僚 鼻 魄貌 膜 膊 膀 鲜 疑 馒 裹 敲 豪 膏 遮 腐 瘦 辣 竭 端 旗精歉 熄 熔 漆 漂 漫 滴 演 漏 慢 寨 赛 察 蜜 谱 嫩 翠 熊 凳 骡 缩\n\n十五画\n\n慧 撕 撒 趣 趟 撑 播 撞撤 增 聪 鞋 蕉 蔬 横 槽 樱 橡 飘 醋 醉 震 霉 瞒 题 暴 瞎 影 踢 踏 踩 踪蝶蝴 嘱 墨 镇 靠 稻 黎 稿 稼 箱 箭 篇 僵 躺 僻德 艘 膝 膛 熟 摩 颜 毅 糊 遵 潜 潮 懂 额 慰 劈\n\n十六画\n\n操 燕 薯 薪 薄 颠 橘 整融 醒 餐 嘴 蹄 器 赠 默 镜 赞 篮 邀 衡 膨 雕 磨 凝 辨 辩 糖 糕 燃 澡 激懒壁 避 缴\n\n十七画\n\n戴 擦 鞠 藏 霜 霞 瞧 蹈螺 穗 繁 辫 赢 糟 糠 燥 臂 翼 骤\n\n十八画\n\n鞭 覆 蹦 镰 翻 鹰\n\n十九画\n\n警 攀 蹲 颤 瓣 爆 疆\n\n二十画\n\n壤 耀 躁 嚼 嚷 籍 魔 灌\n\n二十一画\n\n蠢 霸 露\n\n二十二画\n\n囊\n\n二十三画\n\n罐', '0000000000', 'J02', '蔡建平', '0000000000');

-- ----------------------------
-- Table structure for grade
-- ----------------------------
DROP TABLE IF EXISTS `grade`;
CREATE TABLE `grade` (
  `g_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '成绩编号',
  `student_id` varchar(32) DEFAULT NULL COMMENT '学生学号',
  `student_name` varchar(32) DEFAULT NULL COMMENT '学生姓名',
  `teacher_id` varchar(32) DEFAULT NULL COMMENT '教工号',
  `teacher_name` varchar(32) DEFAULT NULL COMMENT '教师姓名',
  `student_grade` int(11) DEFAULT NULL COMMENT '实习成绩',
  `grade_time` datetime DEFAULT NULL COMMENT '成绩评定时间',
  `delete_flag` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  PRIMARY KEY (`g_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COMMENT='学生成绩表';

-- ----------------------------
-- Records of grade
-- ----------------------------
INSERT INTO `grade` VALUES ('1', '31801093', '沈钰琦', 'J01', '朱勇', '1', '2021-05-20 17:35:06', '00000000000');

-- ----------------------------
-- Table structure for internship_library
-- ----------------------------
DROP TABLE IF EXISTS `internship_library`;
CREATE TABLE `internship_library` (
  `internship_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `internship_name` varchar(32) NOT NULL COMMENT '实习单位名称',
  `internship_address` varchar(32) NOT NULL COMMENT '单位地址',
  `teacher_name` varchar(32) DEFAULT NULL COMMENT '教师姓名',
  `consultation_name` varchar(32) DEFAULT NULL COMMENT '咨询联系人',
  `consultation_duty` varchar(32) DEFAULT NULL COMMENT '职务',
  `consultation_smartphone` varchar(32) DEFAULT NULL COMMENT '手机',
  `consultation_fixedphone` varchar(32) DEFAULT NULL COMMENT '电话',
  `consultation_mail` varchar(32) DEFAULT NULL COMMENT '邮箱',
  `internship_state` int(11) DEFAULT NULL COMMENT '状态',
  `delete_flag` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  PRIMARY KEY (`internship_id`)
) ENGINE=InnoDB AUTO_INCREMENT=266 DEFAULT CHARSET=utf8mb4 COMMENT='实习库信息';

-- ----------------------------
-- Records of internship_library
-- ----------------------------
INSERT INTO `internship_library` VALUES ('2', '杭州泰克赛尔软件有限公司', '浙江省杭州市文二路188号', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('3', 'Harbor House 安美西石贸易（浙江）有限公司', '杭州西湖区振华路201号', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('4', '杭州织天网络科技有限公司', '滨江区江晖路1961号隆和国际12层', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('6', '杭州集广科技有限公司', '杭州市新塘路58号新传媒产业大厦8F', '', '', '', '', '0571-81953458', 'thelostland@163.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('7', '浙江联众智慧科技股份有限公司', '杭州市文三西路118号电子商务大厦11-12层', '', '', '', '', '87357808 (分机7808)', 'yehaiou@mediinfo.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('8', '杭州亿保健康管理有限公司', '建国北路611号利兹城市公寓3-2-201', '', '', '', '', '（客服）400-000-9979', 'zhaocheng@ebaolife.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('9', '杭州天宽科技有限公司', '杭州天目山路398号', '', '', '', '', '0571-88395936', 'hanqianqian@tiankuan.net', null, '00000000000');
INSERT INTO `internship_library` VALUES ('12', '亚信联创集团股份有限公司', '天目山路278号黄龙时代广场A座11楼', '', '', '', '', '0571-81904076', 'taofang@asiainfo-linkage.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('13', '用友优普信息技术有限公司浙江分公司', '浙江大学国家大学科技园杭州市西溪路525号', '', '', '', '', '', 'yuyao@yonyou.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('14', '浙江用友软件有限公司', '浙江大学国家大学科技园杭州市西溪路525号', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('15', '浙江优普软件有限公司', '浙江大学国家大学科技园杭州市西溪路526号', '', '', '', '', '87178090', 'zhoufan@yonyou.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('16', '浙江泽达创意产业投资管理有限公司', '杭州市滨江区浦沿路88号（实习地址：浙江大学玉泉校区）', '', '', '', '', '', 'fangn@zju.edu.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('17', '杭州迪火科技有限公司', '教工路552号2F', '', '', '', '', '0571-86574787或0571-86499859', 'lifeng@2dfire.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('18', '浙江图讯科技有限公司', '杭州五常大道168号西溪软件园B幢1-2楼', '', '', '', '', '0571—87672446', 'yangj@tuxun.net', null, '00000000000');
INSERT INTO `internship_library` VALUES ('19', '杭州南嵌科技有限公司', '杭州市西湖区浙大科技园A东521', '', '', '', '', '', 'hr@hznqkj.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('20', '浙江天正思维信息技术有限公司', '杭州市环城西路33号;省计算机研究所大楼三楼B', '', '钟女士', '', '13750834216', '', 'chmzcy@163.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('21', '杭州怯薛卫队通信科技有限公司', '浙大科技科技园B楼808室', '', '', '', '', '', '554045333@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('22', '杭州银雁金融配套服务有限公司', '杭州钱江新城五星路198号瑞晶国际大厦2004室', '', '', '', '', '0571—87808090', 'hangzhouyinyanhr@163.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('23', '杭州趋数网络科技有限公司', '西溪路浙大科技园', '', '', '', '', '', 'chmzcy@163.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('24', '杭州掌盟软件技术有限公司', '浙江省杭州市拱墅区湖州街168号美好国际大厦18层', '', '', '', '', '87381195或0571-87381195-8016', 'zmzhaopin@126.com(公司邮箱)', null, '00000000000');
INSERT INTO `internship_library` VALUES ('25', '浙江亮点投资有限公司', '文二路333号华领国际601', '', '', '', '', '88279282', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('26', '杭州绿藤信息技术有限公司', '杭州西斗门路3号天堂软件园E幢17楼', '', '', '', '', '28932519', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('27', '杭州妙影微电子有限公司', '浙江省杭州市滨江区伟业路298号先锋科技大厦509室', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('28', '杭州设维信息技术有限公司', '杭州西湖区文三路90号东部软件园2号楼2519室', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('29', '杭州珍林网络技术有限公司', '古墩路703号紫金广场A座905室', '', '', '', '', '', 'wanghb@zucc.edu.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('30', '杭州世翔信息技术有限公司', '杭州市拱墅区北部软件园祥茂路2号影天像素园2号楼1楼', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('31', '浙江鸿程计算机系统有限公司', '古翠路60号杭州市团校4楼（古翠路与文三路交叉口）', '', '陈艳卿', '', '17767179007', '0571-28824008', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('32', '星际网络技术有限公司', '杭州市西湖区文二路212号高新大厦7楼', '', '', '', '', '0571-28806600-218或0571-28207750', 'jobs@56iq.com(公司邮箱)', null, '00000000000');
INSERT INTO `internship_library` VALUES ('33', '杭州天丽科技有限公司', '滨江区滨盛路1509号天恒大厦1601室', '', '', '', '', '0571-28824008或28824123 ', 'hz28824008@163.com（中心邮箱）', null, '00000000000');
INSERT INTO `internship_library` VALUES ('35', '杭州万卓电子商务有限公司招聘', '杭州西湖区文三路508号天苑大厦D座15F', '', '', '', '', '', 'xumian@wzect.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('37', '杭州中软安人网络通信股份有限公司', '', '', '', '', '', '0571-28824008或28824123', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('38', '浙江大华技术股份有限公司', '杭州滨江高新区滨安路1187号', '', '', '', '', '', 'zhuqing@dahuatech.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('39', '华东医药股份有限公司', '杭州', '', '', '', '', '0571-85103106', 'xujia101988@sina.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('40', '杭州辰龙检测技术有限公司', '杭州古墩路7号广电中心内', '', '', '', '', '', 'zhuj@zjcspec.org', null, '00000000000');
INSERT INTO `internship_library` VALUES ('41', '杭州南江机器人股份有限公司', '杭州市西湖区文二路333号华领国际8层', '', '', '', '', '', 'yinglw@njrobot.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('42', '杭州弘葵网络有限公司', '杭州西湖区西溪路浙大科技园 ', '', '', '', '', '', 'yinglw@njrobot.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('43', '杭州弧途行者文化创意有限公司', '', '', '', '', '', '0571-56762850', 'fanly@qtshe.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('44', '利尔达科技集团股份有限公司', '杭州市登云路425号利尔达科技大厦\n', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('45', '浙江绎盛谷信息技术有限公司', '杭州市滨江区江南大道3699号潮人汇7楼', '', '', '', '', '88930321', 'lis@easygroup.net.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('46', '杭州兆本数字科技有限公司', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('47', '杭州品茗科技有限公司', '西湖区天堂软件园B幢4F-B', '', '', '', '', '0571-56665700-8101', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('48', '上海缔安软件技术有限公司杭州开发中心', '上海是静安区北京西路1399号', '', '', '', '', '', 'johnson.zhuang@aolc.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('49', '江苏达科信息科技有限公司', '南京市栖霞区紫东路2号紫东国际创意园A1栋5楼', '', '', '', '', '', 'kehf@zucc.edu.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('51', '普天国脉网络科技有限公司', '杭州市拱墅区潮王路红石中央大厦1104室', '', '', '', '', '', 'parsony.yang@guomaitech.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('53', '北京振中电子技术有限公司', '杭州市文一西路83号浙江财经学院文华校区文华楼', '', '', '', '', '0571-51219051', 'linyi@creaway.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('54', '杭州云意科技有限公司', '杭州余杭区', '', '', '', '', '', 'liuj@zucc.edu.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('55', '浙江连枝科技网络股份有限公司', '杭州市西湖区桃源岭4-3号', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('56', '省软件行业协会', '', '', '', '', '', '', '912251035@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('57', '杭州昆仲网络技术有限公司', '杭州市拱墅区祥茂路16号B座503', '', '', '', '', '88261719', 'ylc@yilvcheng.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('58', '杭州申熙网络科技有限公司', '西湖区三墩西湖科技园银江软件园D幢401室', '', '毛小姐', '', '15382393792', '', '49725114@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('59', '杭州易连科技有限公司', '杭州市西湖区', '', '', '', '', '', '15305719303@189.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('60', '杭州福鸽信息技术有限公司', '文三路90号东部软件园\n创新大厦B座302-304', '', '', '', '', '0571-87382851', 'hr@hugesys.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('61', '杭州东忠科技股份有限公司', '浙江省杭州市滨江区城河路590号', '', '', '', '', '0571-28991193', 'lixm@hz.totyu.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('62', '杭州轩潮科技有限公司', '杭州市文一西路998号未来科技城海创园18幢7楼', '', '徐瑜', '', '13777761899', '', 'hezi.ji@tqmall.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('63', '杭州归谷培训中心', '古翠路60号杭州市团校4楼', '', '', '', '', '', 'Yefl2882@163.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('64', '杭州时祺科技有限公司', '杭州市笕丁路168号赛博创业工场', '', '', '', '', '85048415', 'gxsqys@163.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('65', '杭州宽客财富投资管理有限公司', '杭州市文一路998号未来科技城海创园1号楼7楼', '', '', '', '', '', 'hr@quanto2o.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('66', '浙江新翔科技有限公司', '杭州市文二路391号西湖国际科技园E北2层B座', '', '章欣', '', '18667177569', '', '154991333@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('67', '杭州百旺金赋科技有限公司', '天目山路51号', '', '', '', '', '', 'zjswrc@zjswrc.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('68', '杭州爱信诺航天信息有限公司', '杭州市西湖区万塘路30号高新东方科技园', '', '', '', '', '', '18839066@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('69', '杭州华三通信技术有限公司', '', '', '', '', '', '', 'geng.guyue@h3c.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('70', '杭州首展科技有限公司', '杭州市余杭区勾庄路218号亿丰时代大厦良渚智谷13楼', '', '', '', '', '0571--88769879', '393654157@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('73', '不鸣科技（杭州）有限公司', '', '', '', '', '', '0571-89852400 ', 'hr@boominggames.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('74', '杭州厚达自动化系统有限公司', '杭州天目山西路58号华立科技园内', '', '', '', '', '', 'zhangq@zucc.edu.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('75', '浙江卓锐科技股份有限公司', '杭州市五常大道168号西溪软件园B座3F', '', '包菊芬', '', '', '0571-88739991-8010', 'wangl@drore.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('76', '杭州远传通信技术有限公司', '杭州市西湖区天目山路181号天际大厦5楼', '', '', '', '', '', 'yuanwei@utry.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('77', '浙江小虫科技有限公司', '杭州市滨江区六和路368号海创园北楼二楼B10', '', '', '', '', '', 'wengwy@zucc.edu.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('78', '杭州沃迩夫信息科技有限公司', '', '', '', '', '', '0571-81882801', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('79', '浙江省建筑科学设计研究院有限公司', '杭州市文二路28号', '', '陈始棠', '', '15990161310', '0571-87205276', 'mr.liuxh@163.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('80', '苏州康开电气有限公司', '\n江苏省苏州市吴江市八都工业区小平大道', '', '', '', '', '', 'houhl@zucc.edu.cn  ', null, '00000000000');
INSERT INTO `internship_library` VALUES ('81', '杭州行我行网络有限公司', '杭州市天目山路398号尚坤大厦405室', '', '', '', '', '0571-81110337', 'zhengxiao@sharegreen.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('82', '金投行', '杭州市富春路188号市民中心C座18F', '', '', '', '', '87981565', 'jtfuwu@hzfi.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('83', '杭州和乐科技有限公司', '杭州市天目山路226 号浙大网新大厦三楼F3319', '', '林水清', '', '1535618726', '0571-81022089', 'hr@heletech.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('84', '浙江融创信息产业有限公司', '杭州市下城区体育场路406号', '', '', '', '', '', 'wujunmei@zj.chinamobile.com\n', null, '00000000000');
INSERT INTO `internship_library` VALUES ('85', '杭州大栗网络科技有限公司', '', '', '', '', '', '', 'miznick@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('86', '杭州哈帝环保科技有限公司', '浙江省杭州市绍兴路538号', '', '', '', '', '0571-28031177 ', 'hr@ihardy.net', null, '00000000000');
INSERT INTO `internship_library` VALUES ('87', '云楷智慧园科技（杭州）有限公司', '上城区望江东路332号望江国际中心3号楼17层', '', '', '', '', '0571-85988697', 'info@winkind-tech.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('88', '上海易宝软件有限公司杭州分公司', '杭州市滨江区秋溢路399号金润科技园A幢12层', '', '', '', '', '', 'qin.wang@epro.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('89', '浙江正元智慧科技股份有限公司', '浙江省杭州市余杭区文一西路998号海创园18号楼8楼', '', '', '', '', '0571-88994780', 'hr@hzsun.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('90', '铜板街', '杭州市西湖区文三路478号华星时代广场A座23楼', '', '', '', '', '', 'tank@tongbanjie.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('91', '杭州天科集团', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('92', '杭州纳财网络科技有限公司', '杭州市西湖区翠柏路7号（翠苑二区北门对面）杭州电商产业园542室', '', '李伟锋', '', '', '0571-88353355', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('94', '北京博科技术股份有限公司', '北京市海淀区闵庄路香山清琴麓苑', '', '', '', '', '010-82336002/82336003', 'zhaopin@erphr.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('95', '科地资本集团', '杭州市下城区武林时代广场20楼', '', '', '', '', '', 'zhoumengya@codi.cc', null, '00000000000');
INSERT INTO `internship_library` VALUES ('96', '浙江恒信房地产土地评估有限公司', '浙江省杭州市下城区建国北路586号嘉联华铭座301室', '', '', '', '', '0571-87072268', '3870062@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('97', '凯捷技术咨询', '文一西路天堂软件园', '', '', '', '', '', 'Seven.zhou@capgemini.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('98', '昆山神州数码科技产业', '昆山市淀山湖镇万园路66号', '', '', '', '', '', '849789021@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('99', '杭州华智软件工程技术有限公司', '浙江省杭州市西湖区天目山路313号', '', '周小姐', '', '15990152275', '', '849789021@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('100', '杭州量宝科技有限公司', '杭州市文一西路998号，海创园1号楼1106', '', '', '', '', '0571-87389293-826', '849789021@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('101', '杭州鼎永科技有限公司', '杭州拱墅区北部软件园天堂E谷2号楼5层', '', '', '', '', '021-37629222', '37890132@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('102', '蓝鸥科技有限公司上海分公司', '上海市松江区九干路168号丽德创业园附1楼3层', '', '黄春华', '', '18101799576', '', 'wangchao@lanou3g.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('104', '杭州奥软科技有限公司', '杭州市拱墅区祥园路88号智慧信息产业园4号楼5楼', '', '', '', '', '0571-28291597', 'hr@olmysoft.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('105', '杭州易川教育咨询有限公司', '浙江大学城市学院大学生创业园', '', '', '', '', '', '691092674@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('106', '浙江省产业互联网研究院', '北部软件园', '', '', '', '', '', '496696335@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('108', '杭州鼎亚科技有限公司', '杭州市拱墅区沈半路湖州街29号\n时瑞大厦6楼', '', '阮先生', '', '15258892783', '', 'zxw@hzbenet.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('109', '杭州新中大软件股份有限公司', '杭州市祥园路88号智慧信息产业园 1 号楼 9F', '', '', '', '', '0571-88270219', 'hr@newgrand.cn ', null, '00000000000');
INSERT INTO `internship_library` VALUES ('110', '蘑菇街', '', '', '', '', '', '', 'dalin@mogujie.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('111', '杭州企连科技有限公司', '浙江省杭州市拱墅区莫干山路\n正德里街中博文化创意园Ｅ３０６', '', '王翠萍', '', '未到', '0571-88170382', 'cuiping.wang@qilink.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('112', '浙江广信智能建筑研究院（有限公司）', '杭州市下城区费家塘路576号6楼', '', '', '', '', '56552526', 'guangxinhr@163.com。', null, '00000000000');
INSERT INTO `internship_library` VALUES ('113', '东信和平科技股份有限公司', '杭州市西湖区文三路298号东信大厦18楼', '', '', '', '', '', 'hegang198410@163.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('114', '创业软件股份有限公司', '杭州市滨江区越达巷92号创业智慧大厦', '', '徐佳为', '', '15258888327', '0571-88925666', 'xujw@bsoft.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('115', '数源久融技术有限公司', '杭州市西湖区教工路1号11号楼西面3楼', '', '', '', '', '', 'fengjj@soyea.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('116', '浙江对外贸易服务中心', '', '', '', '', '', '', 'info@ecloud-zj.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('117', '杭州募协网络技术有限公司（筹）', '余杭区梦想小镇', '', '', '', '', '', '1269379278@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('118', '杭州睿琪软件有限公司', '杭州市滨江区六和路368号 海创基地 B2019', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('119', '杭州电商圈明星公司', '西湖区华星时代广场', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('120', '杭州中云数据科技有限公司', '浙江 杭州 拱墅区 丰潭路380号城西银泰城B座5楼', '', '张琼琼', '', '18503878367', '', 'zhongyunshuju@163.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('121', '金砖国际投资有限公司', '杭州市滨江区星光大道附近', '', '郑总', '', '13616515711', '', '1748845205@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('122', '浙江图灵软件技术有限公司', '杭州市拱墅区祥园路139号浙大网新智慧立方A座6楼\n\n', '', '凌敏霞', '部门经理', '13738008268', '88279768/88279778', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('123', '杭州投融谱华互联网金融服务有限公司', '\n拱墅区大关路100号绿地中央广场7幢10楼\n', '', '', '', '', '', 'liqian@tourongjia.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('124', '恒生电子股份有限公司', '', '', '', '', '', '', '：http://campus.hundsun.com ', null, '00000000000');
INSERT INTO `internship_library` VALUES ('125', '杭州智合云尚软件技术', '杭州市下城区新天地跨贸小镇12幢704室', '侯宏仑', '金小姐', '', '18768193813', '', 'zhyssoftware@163.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('126', '增立智造信息科技有限公司', '杭州下城区费家塘路跨贸小镇12幢7楼', '侯宏仑', '史小姐 ', '', '18658865015', '', '561371113@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('127', '杭州孚嘉科技有限公司', '拱墅区丰潭路508号天行国际7号楼8楼', '', '吴珊珊', 'HR', '15168233243', '0571-86697595', 'joinus@ifugle.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('128', '杭州东进科技有限公司', '', '', '李海虹', '', '', '0571-87392735', '1184799815@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('129', '杭州华亭科技有限公司', '', '', '范霞', '', '', '0571-87181872', '1069178087@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('130', '中国电子商务研究中心', '杭州西湖区莫干山路，87号武林巷11F', '', '胡诗琦', '', '', '0571-88228137', 'hush1qi@netsun.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('131', '网易（NETEASE）公司', '杭州/北京/呼和浩特', '', '', '', '', '', 'hzliufengxue@corp.netease.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('132', '网易游戏·外服联合', '广州和杭州', '', '', '', '', '', 'http://wb.game.163.com/', null, '00000000000');
INSERT INTO `internship_library` VALUES ('133', '杭州圆橙科技有限公司', '杭州市西湖区文三路553号中小企业大厦1112', '吴明晖', '', '', '', '', 'mhwu@zucc.edu.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('134', '杭州东隅信息科技有限公司', '', '彭彬', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('135', '道富信息科技（浙江）有限公司', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('136', '久融新能源科技有限公司', '杭州市上城区钱江路639号1130室', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('137', '杭州中威电子股份有限公司', '杭州市滨江区西兴路1819号中威大楼19层人力资源部', '', '', '', '', '0571-89976574', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('138', '盛全控股有限公司', '浙江省杭州市拱墅区祥园路30号201室', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('139', '杭州随云网络科技有限公司', '拱墅区祥园路30号12幢1202室', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('140', '嘉兴市秀洲现代实验学校', '嘉兴市秀洲区洪贤路135号', '沈玉琴', '', '', '13967390047', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('141', '杭州拉趣科技有限公司', '杭州市西湖区文一西路522号9幢3单元304室', '泮梁伟', '', '', '13738055552', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('142', '浙江榕大家居有限公司', '滨江区润和信雅达国际607室', '叶阿君 ', '', '', '13587869448', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('143', '丽水国立税务师事务所', '浙江省丽水市莲都区紫金路469号二楼', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('144', '浙商证券股份有限公司', '浙江省杭州市江干区五星路201号', '范光华', '', '', '18658841859', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('145', '银河证券有限公司', '杭州市下城区体育场路108', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('146', '中国太平洋人寿保险股份有限公司杭州中心支公司', '杭州市西湖区杭大路15号嘉华国际商务中心906', '朱晶晶 ', '', '', '13567109962', '', '824917879@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('147', '杭州青年专修学院（归谷中心）', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('148', '博学国际教育培训中心', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('149', '杭州吾儿网网络技术有限公司', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('150', '杭州顶科教育科技有限公司', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('151', '滨江兄弟信息技术(杭州)有限公司', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('152', '杭州进学教育咨询有限公司', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('153', '杭州市轻工工艺纺织品进出口有限公司', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('154', '杭州世璟乐维科技有限公司', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('155', '杭州泰北科技有限公司', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('156', '杭州铭师堂教育科技发展有限公司', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('157', '浙江省企业信息化促进会', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('158', '杭州博泰信息技术服务有限公司', '', '', '崔国', '', '13958101893', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('159', '杭州方口文化传媒有限公司', '', '', '王博慈', '', '13606605452', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('160', '杭州华恩教育科技有限公司', '', '', '余美', '', '15158114296', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('161', '杭州慧智电子科技有限公司', '', '', '徐贞霞', '', '13738082199', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('162', '杭州青橄榄网络技术有限公司', '', '', '余国红', '', '15669965875', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('163', '杭州瑞旭产品技术有限公司', '', '', '沈艳燕', '', '18072767639', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('164', '杭州盛世东方网络科技有限公司', '', '', '陶洁敏', '', '18867545434', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('165', '杭州网兰科技有限', '', '', '林静', '', '未到', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('166', '杭州物研信息技术有限公司', '', '', '蔡璟', '', '13396512455', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('167', '杭州之图网络科技有限公司', '', '', '何换', '', '13811242990', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('168', '杭州数聚科技有限公司', '', '', '郎红霞', '', '18367190098', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('169', '浙江建达科技股份有限公司', '杭州市文三路20号建工大厦10、11、12层', '陈观林', '黄小姐', '', '', '0571-88308961', 'hy@jandar.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('170', '浙江威廉姆节能科技有限公司', '', '', '葛慧', '', '未到', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('171', '杭州晖硕信息技术有限公司', '', '', '黄凯歌', '', '15757102105', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('172', '杭州博科思科技有限公司', '', '', '李敏', '', '15068152657', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('173', '浙江图讯科技股份有限公司', '', '', '胡珊', '', '13708814552', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('174', '杭州微车信息科技有限公司', '', '', '苏小梁', '', '15158135933', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('175', '博克软件（杭州）有限公司', '', '', '骆虹', '', '15067158216', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('176', '杭州金鲤科技有限公司', '', '', '菜菜', '', '13588728124', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('177', '杭州景联文科技有限公司', '', '', '谭芬', '', '15867196792', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('178', '杭州容博教育科技有限公司', '', '', '徐赛骞', '', '18358177674', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('179', '杭州金跃科技有限公司', '', '', '恒娟娟', '', '13357117616', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('180', '浙江永安科技有限公司', '', '', '', '', '13998170000', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('181', '北京首创期货有限公司杭州营业部', '', '', '', '', '13958152026', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('182', '泛金投资有限公司', '', '', '', '', '未到', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('183', '浙江安诣智能科技有限公司', '', '', '', '', '15267429736', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('184', '杭州羿环网络科技有限公司', '滨江', '张泳', '', '', '', '', 'huangwei@archerycn.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('185', '浙江核新同花顺网络信息股份有限公司', '杭州余杭区五常街道同顺街18号', '', '胡先生', '', '18758892321', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('186', '杭州在信科技有限公司', '杭州市下城区沈家路159号3楼', '', '李女士  ', '', '13634174979', '', 'hr@beinfo.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('187', '杭州拓天科技有限公司', '杭州市西湖区文三路388号钱江科技大厦19楼', '', '张鑫', '', '15305810695', '', '2728276887@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('188', '杭州华量软件有限公司', '杭州市滨江区建业路511号华业大厦4层', '', '夏颖', '', '15990169631', '', 'cheyenne@inteast.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('189', '浙江越凡教育科技有限公司', '杭州下沙电子商务园19号大街571号', '', '于灿明', '', '13656630479', '', 'yucanming@itxdl.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('190', '浙江神汽电子商务有限公司', '浙江省杭州市余杭区五常大道156号西溪创意园2号大楼', '', '陈丽', '', '13858046083', '', '249646503@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('191', '上海中消网络科技有限公司', '杭州市钱江新城核心商务区东杭大厦18F', '', '徐周怡', '', '15168201877', '', 'Zxhr@hzjuxiu.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('192', '杭州木及科技有限公司', '北软', '', '沈向华', '', '13735447282', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('193', '杭州德亚投资有限公司', '杭州市上城区安家塘37号', '', '金张平', '', '13732202622', '', 'hr@deyainvest.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('194', '杭州幻虚网络科技有限公司', '杭州滨江万轮科技园3幢410室', '', '汪杰', 'CEO', '15068719200', '', 'jeffrey@mvirtualc.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('195', '杭州富特科技股份有限公司', '杭州市西湖区西湖科技园振中路205号   ', '', '', '', '', '0571-89971696  ', 'campus@hzevt.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('196', '杭州高达软件系统股份有限公司', '浙江省杭州市余杭区（市/县）五常街道西溪润景大厦1幢3楼', '张如仟/薛军军', '朱伟群', '人力资源经理', '13758258525', '0571-56505021', 'zhuwq@golden-soft.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('198', '杭州群言堂经济信息咨询有限公司', '浙江省杭州市拱墅区莫干山路18号蓝天商务中心8A', '张彩伢', '滕威振', '调查测评部主任', '18268155012', '0571-85021115', 'mrtengwz@foxmail.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('199', '杭州维迹科技有限公司', '浙江省杭州市拱墅区科园路55号天瑞国际306', '张如仟', '傅振滔', 'HR', '15267069580', '0571-88066516', 'konata.fu@vigekoo.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('200', '杭州孝道科技有限公司', '浙江省杭州市拱墅区祥园路88号中国智慧信息产业园', '/', '吴霞', 'HR', '15168209334', '0571-85358276', 'wux@tcsec.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('201', '杭州新中大科技股份有限公司', '浙江省杭州市拱墅区祥园路88号N座9楼', '张如仟', '李女士', '招聘主管', '13989837745', '0571-88270212', 'lili@newgrand.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('202', '浙江网新恒天软件有限公司', '浙江省杭州市西湖区西园一路18号J1写字楼', '张如迁', '徐琼', '招聘主管', '18767171124', '0571-89937690', 'qiongxu@hengtiansoft.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('203', '浙江信网真科技股份有限公司', '浙江省杭州市滨江区建业路511号华业大厦4层 ', '/', '王健', '人事', '13757194467', '0571-28239921', 'hr@inteast.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('204', '杭州聚秀科技有限公司', '浙江省杭州市滨江区新联路608号诚高大厦701', '韩志科', '韩志科', '总经理', '13819147203', '', 'hanzk@hzjuxiu.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('205', '杭州祁睿信息技术有限公司', '浙江省杭州市滨江区新联路608号诚高大厦701', '徐煌', '徐煌', '总经理', '13454144328', '', 'h.xu@cherryhz.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('206', '北京新翔维创科技股份有限公司', '浙江省杭州市西湖区文二路391号西湖国际科技园E北2层', '张如仟', '尹夏青', '人事', '15058186572', '0571-87203305', 'yinxiaqing@newings.net.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('207', '浙江保融科技有限公司', '浙江省杭州市西湖区文一西路767号绿城西溪国际E座北8楼', '韩志科', '孙猛达', '招聘专员', '13776806910', '0571-88195455', 'sunmd@fingard.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('208', '杭州华海信息科技有限公司', '浙江省杭州市西湖区文三路199号创业大厦3楼', '/', '吴林静', '实习负责人', '13958159144', '0571-88932070', '13958159144@139.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('209', '杭州电鲸网络科技有限公司', '浙江省杭州市西湖区西斗门路3号天堂软件园D幢6C座', '陈观林', '舒女士', '招聘负责人', '15258883457', '0571-81389478', 'shumengqian@nacai.me', null, '00000000000');
INSERT INTO `internship_library` VALUES ('210', '杭州群友文化创意有限公司', '浙江省杭州市江干区火车东站东溪德必易园B246', '/', '林佳佳', 'HR', '15757137969', '', 'Lynn000@aliyun.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('211', '杭州山科智能科技股份有限公司', '浙江省杭州市余杭区文一西路1218号 恒生科技园13幢3单元', '杨武剑', '杨武飞', '研发部软件负责人', '13968161364', '0571-88911100转8037', 'seckywf@163.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('212', '杭州拓昂信息技术有限公司', '浙江省杭州市江干区天城路233号红树林花园308', '/', '祝云飞', '总监', '13732239151', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('213', '杭州隼目信息科技有限公司', '浙江省杭州市下城区新天地商务中心10幢2楼车贷管家', '张如迁', '申思', 'COO', '18267109389', '0571-88369992', 'shensi@falconeyes.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('214', '温州兴得互联科技有限公司', '浙江省温州市鹿城区飞霞南路68号国信大厦322-323', '', '林文礼', '负责人', '13587407171', '0577-88668850', 'wellee@sigsoft.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('216', '爱易云智能科技（杭州）有限公司', '浙江省杭州市滨江区建业路511号华业大厦28楼', '何洁', '贾民', '人事', '18248639677', '0571-8711787', 'jiamin@ywgroup.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('217', '杭州宽投科技有限公司', '浙江省杭州市萧山区左右世界2幢1102A', '', '郑林', '总经理', '15669099090', '', '2109732196@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('219', '杭州美创科技有限公司', '杭州市拱墅区丰潭路天行国际7幢海蓝金融科技中心12楼', '', '史琼瑜', '', '15869367812', '', 'Shiqy@mchz.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('221', '杭州思易电子系统工程有限公司', '杭州市西湖区三墩镇紫宣路158号西城博司6幢17层', '', '孙敏', '', '', '0571-28055010', 'sm@gistar.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('222', '杭州芸景网络科技有限公司', '浙江大学城市学院南校区创业楼1003', '', '谢婷', '', '18158144791', '', '3524455075@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('223', '虹软（杭州）科技有限公司', '杭州市天堂软件园', '', '陈蓓蕾', '', '', '0571-88210600', 'Campus@arcsoft.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('224', '启德留学杭州分公司', '西湖区杭大路15号嘉华国际商务中心901室启德教育中心', '', '王朱斌', '', '15957177785', '', '2009wang1996@163.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('225', '桐乡乐博乐博教育科技有限公司', '桐乡市金凤凰大厦20楼', '', '蒋英', '', '15157119622', '', '2268939547@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('226', '永炜控股集团有限公司', '杭州市滨江区建业路511号华业大厦28层', '', '贾民', '', '18248639677', '', 'jiamin@ywgroup.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('227', '浙江汇信科技有限公司', '杭州市拱墅区莫干山路18号蓝天商务18楼', '', '张雯嫣', '', '', '0571-88234731', 'zhangwenyan@icinfo.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('228', '浙江省公众信息产业有限公司', '杭州市西湖区华星路99号创业大厦', '', '李小姐', '', '', '0571-87396628', 'pubinfohr@189.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('229', '浙江浙大网新图灵信息科技有限公司', '杭州拱墅区祥园路139号浙大网新智慧立方A座6-9 F', '', '金小姐', '', '', '0571-88279605', 'hrzp@tuling.com.cn ', null, '00000000000');
INSERT INTO `internship_library` VALUES ('230', '杭州览众数据科技有限公司', '杭州滨江物联网街芯图大厦', '', '周俊杰', '', '15858115221', '', 'zhoujunjie@linezonedata.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('231', '杭州官庄网络科技有限公司', '滨江区滨兴路1312号柏盛渡口大厦1301室', '', '谢江平', '', '13656642190', '', '421058848@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('232', '北京致远互联软件股份有限公司', '杭州市西湖区天目山路7号东海创意中心（浙江分公司）', '', '施丹丹', '', '15068117205', '', 'shidd@seeyon.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('233', '杭州德亚投资管理有限公司', '杭州市上城区安家塘37号', '', '张慧敏', '', '15957178941', '', 'zhm@deyainvest.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('234', '贝因美婴童食品股份有限公司', '杭州市滨江区南环路3758号', '', '陈翰林', '', '15158810693', '', 'Chenhanlin@beingmate.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('235', '杭州来了码科技有限公司', '浙江省杭州市西湖区龙申综合发展中心E幢', '', '钟华', '技术负责人', '15757495575', '', 'yxj@hzqhkj.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('236', '杭州百城数字阅读科技有限公司', '浙江省杭州市滨江区东信大道66号4号楼202', '', '蒋俊鸿', '技术部经理', '15068728241', '', 'sales@bcyuedu.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('237', '诚云科技（中国）有限公司', '浙江省杭州市滨江区恒鑫大厦18楼', '', '杨斯思', '招聘经理', '13777806009', '88902888-41242', 'yss@citycloud.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('238', '杭州比吉软件有限公司', '浙江省杭州市江干区天城路176号白云大厦2幢1602', '', '罗小姐', 'HR人事经理', '18267155246', '0571-87310153', 'hr@bijisoft.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('239', '杭州正坛科技有限公司', '浙江省杭州市西湖区龙申综合发展中心5幢906室', '翁文勇', '姚苏国', '经理', '13967898042', '0571-28277466', '25950955@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('240', '浙江慧研人工智能科技有限公司', '浙江省湖州市德清区云岫南路718号中科卫星应用研究院大厦16楼', '', '董梦莎', '院长助理', '15757108247', '', 'dongms@zju.edu.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('241', '杭州哲合科技有限公司', '浙江省杭州市余杭区梦想小镇良仓太炎众创3楼', '', '许方形', '人事总监', '13588868272', '', 'xufangxing@zhehekeji.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('243', '獾友行动榜网络有限公司', '杭州下沙金沙湖泰美国际大厦2号楼922室', '', '丁先生', '', '18067952572', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('245', '杭州雅拓信息技术有限公司', '浙江省杭州市西湖区文二路385号汽轮大厦', '', '谢颖颖', '人事部经理', '13750831571', '0571-81110090', 'hr@hzyatop.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('246', '久融控股有限公司', '杭州市西湖区教工路1号西湖数源软件园11号楼', '', '董燕燕', '', '15869122645', '88271230-8028', 'dongyy@soyea.com.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('247', '杭州兴得互联科技有限公司', '浙江省杭州市拱墅区浙江省杭州市拱墅区舟山东路30号', '', '陈扬美', '项目经理助理', '13906777607', '', 'wellee@sigsoft.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('248', '小码王', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('249', '杭州杏林信息科技有限公司', '浙江省杭州市滨江区江二路57号，杭州人工人工智能产业园D座4楼', '张如仟', '朱波', '招聘渠道经理', '17816850628', '0571-88006829', 'hr@xinglin-tech.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('250', '上海穰川信息技术有限公司', '上海市浦东新区郭守敬路498号19号楼409&406室', '张如仟', '王露颐', 'COO', '13818855364', '', 'luyi@mesoor.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('251', '杭州费尔斯通科技有限公司', '浙江省杭州市滨江区西兴街道阡陌路482号B楼第七层', '黄外斌', '李红', 'HR', '16657125831', '0571-86885321', 'lih@hsmap.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('253', '好孩子（中国）商贸有限公司', '江苏省苏州市昆山区花桥经济开发区亚太广场5号楼25层', '黄外斌', '薛昌官', '主管', '18912681117', '', '427896664@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('254', '安徽铭伟建筑工程有限公司', '安徽省阜阳市阜南县区鹿城镇谷河东路南侧8号', '黄外斌', '杜士伟', '经理', '13855855960', '', '1391881209@qq.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('255', '浙江摩羯座网络技术有限公司', '浙江省杭州市余杭区西溪润景大厦1幢313室', '黄外斌', '蒋敏华', '', '17706515151', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('256', '浙江众诚智能信息有限公司（新翔维创科技股份有限公司全资子公司）', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('257', '杭州谐云科技有限公司', '', '', '李娜', '', '19957012866', '', 'hr@harmmonycloud.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('258', '浙江智澜科技有限公司', '', '', '黄骅', '', '15305710082', '', '15305710082@189.cn', null, '00000000000');
INSERT INTO `internship_library` VALUES ('259', '浙江移动', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('260', '浙江省建筑设计研究院', '浙江省杭州市下城区安吉路18号院', '', '朱老师', '', '', '85050019', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('261', '澜途教育培训学校有限公司', '浙江省杭州市西湖区冠苑商铺6号', '董婷', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('262', '杭州致学信息技术有限公司（原杭州若恒信息科技有限公司）', '', '', '', '', '', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('263', '浙江芣苡信息技术有限公司', '杭州市学院路159号702室', '张彩伢', '徐晋旸', '主管', '17764585753', '', 'jinyang_hsu@163.com', null, '00000000000');
INSERT INTO `internship_library` VALUES ('264', '杭州市下城区统计局', '杭州市文晖路1号 ', '张彩伢', '梁黄炜', '科长', '85835152', '', '', null, '00000000000');
INSERT INTO `internship_library` VALUES ('265', '杭州市拱墅区统计局', '杭州市台州路1号', '张彩伢', '陈主任', '', '13306537898', '', '', null, '00000000000');

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `s_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `student_id` varchar(32) NOT NULL COMMENT '学号',
  `student_passwd` varchar(255) NOT NULL COMMENT '密码',
  `student_name` varchar(32) NOT NULL COMMENT '姓名',
  `student_class` varchar(32) DEFAULT NULL COMMENT '专业班级',
  `student_teacher` varchar(32) DEFAULT NULL COMMENT '指导教师',
  `student_workplace` varchar(32) DEFAULT NULL COMMENT '实习单位',
  `student_Internship` varchar(32) DEFAULT NULL COMMENT '实习岗位',
  `strat_time` datetime DEFAULT NULL COMMENT '实习开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '实习结束时间',
  `remark` varchar(32) DEFAULT NULL COMMENT '备注',
  `delete_flag` int(11) unsigned zerofill NOT NULL DEFAULT '00000000000',
  PRIMARY KEY (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COMMENT='学生信息';

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', '31801093', 'c4ca4238a0b923820dcc509a6f75849b', '沈钰琦', '计算1802', 'J02', '浙江联众智慧科技股份有限公司', '从视频监控', '2021-05-01 12:00:00', '2023-06-10 12:00:00', '0', '00000000000');
INSERT INTO `student` VALUES ('2', '31801150', 'c4ca4238a0b923820dcc509a6f75849b', '张帅', '计算1803', 'J02', '杭州集广科技有限公司', '前端工程师', '2021-05-01 12:00:00', '2021-11-06 12:00:00', '0', '00000000000');
INSERT INTO `student` VALUES ('3', '31801147', 'c4ca4238a0b923820dcc509a6f75849b', '何科', '计算1803', null, null, null, null, null, null, '00000000000');

-- ----------------------------
-- Table structure for student_form
-- ----------------------------
DROP TABLE IF EXISTS `student_form`;
CREATE TABLE `student_form` (
  `f_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `student_id` varchar(32) NOT NULL COMMENT '学生学号',
  `student_name` varchar(32) NOT NULL COMMENT '学生姓名',
  `teacher_id` varchar(32) NOT NULL COMMENT '教工号',
  `teacher_name` varchar(32) NOT NULL COMMENT '教师姓名',
  `triple_agreement` varchar(32) DEFAULT NULL COMMENT '实习三方协议',
  `appraisal_form` varchar(32) DEFAULT NULL COMMENT '实习鉴定表',
  `student_log` varchar(5000) DEFAULT NULL COMMENT '实习日志',
  `delete_flag` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  PRIMARY KEY (`f_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='学生表格信息';

-- ----------------------------
-- Records of student_form
-- ----------------------------

-- ----------------------------
-- Table structure for student_log
-- ----------------------------
DROP TABLE IF EXISTS `student_log`;
CREATE TABLE `student_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `log_title` varchar(255) DEFAULT NULL,
  `student_log` varchar(5000) DEFAULT NULL,
  `teacher_id` varchar(255) NOT NULL,
  `teacher_name` varchar(255) NOT NULL,
  `delete_flag` int(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of student_log
-- ----------------------------
INSERT INTO `student_log` VALUES ('2', '31801093', '沈钰琦', '第一周日志', '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', 'J02', '蔡建平', '0000000000');
INSERT INTO `student_log` VALUES ('3', '31801093', '沈钰琦', '第二周日志', '1111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', 'J02', '蔡建平', '0000000000');
INSERT INTO `student_log` VALUES ('4', '31801093', '沈钰琦', '第一周日志', '111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111111', 'J02', '蔡建平', '0000000000');
INSERT INTO `student_log` VALUES ('5', '31801093', '沈钰琦', '4', '一画\n\n一 乙\n\n二画\n\n二 十 丁 厂 七 卜 人 入 八 九 几 儿 了 力 乃 刀 又\n\n三画\n\n三 于 干 亏 士 工 土 才 寸 下 大 丈 与 万 上 小 口 巾 山 千 乞 川 亿 个 勺 久 凡 及 夕 丸 么广亡门 义 之 尸 弓 己 已 子 卫 也 女 飞 刃 习 叉 马 乡\n\n四画\n\n丰 王 井 开 夫 天 无 元专 云 扎 艺 木 五 支 厅 不 太 犬 区 历 尤 友 匹 车 巨 牙 屯 比 互 切 瓦止少 日 中 冈 贝 内 水 见 午 牛 手 毛 气 升 长仁 什 片 仆 化 仇 币 仍 仅 斤 爪 反 介 父 从 今 凶 分乏公 仓 月 氏 勿 欠 风 丹 匀 乌 凤 勾 文 六 方 火 为 斗 忆 订 计户 认 心 尺 引 丑 巴 孔 队 办 以 允予劝 双 书 幻\n\n五画\n\n玉 刊 示 末 未 击 打 巧正 扑 扒 功 扔 去 甘 世 古 节 本 术 可 丙 左 厉 右 石 布 龙 平 灭 轧 东卡北 占 业 旧 帅 归 且 旦 目 叶 甲 申 叮 电 号田 由 史 只 央 兄 叼 叫 另 叨 叹 四 生 失 禾 丘 付 仗代仙 们 仪 白 仔 他 斥 瓜 乎 丛 令 用 甩 印 乐 句 匆 册 犯 外 处冬 鸟 务 包 饥 主 市 立 闪 兰 半 汁汇头 汉 宁 穴 它 讨 写 让 礼 训 必 议 讯 记 永 司 尼 民 出 辽 奶 奴 加 召 皮 边 发孕 圣 对 台 矛 纠母幼 丝\n\n六画\n\n式 刑 动 扛 寺 吉 扣 考托 老 执 巩 圾 扩 扫 地 扬 场 耳 共 芒 亚 芝 朽 朴 机 权 过 臣 再 协 西压厌 在 有 百 存 而 页 匠 夸 夺 灰 达 列 死 成夹 轨 邪 划 迈 毕 至 此 贞 师 尘 尖 劣 光 当 早 吐 吓虫曲 团 同 吊 吃 因 吸 吗 屿 帆 岁 回 岂 刚 则 肉 网 年 朱 先 丢舌 竹 迁 乔 伟 传 乒 乓 休 伍 伏 优伐延 件 任 伤 价 份 华 仰 仿 伙 伪 自 血 向 似 后 行 舟 全 会 杀 合 兆 企 众 爷 伞创 肌 朵 杂 危 旬旨负 各 名 多 争 色 壮 冲 冰 庄 庆 亦 刘 齐 交 次 衣 产 决 充 妄 闭 问 闯 羊 并 关 米 灯 州 汗 污江池汤 忙 兴 宇 守 宅 字 安 讲 军 许 论 农 讽 设 访 寻 那 迅 尽 导 异 孙 阵 阳 收 阶 阴 防 奸 如 妇 好她妈 戏 羽 观 欢买 红 纤 级 约 纪 驰 巡\n\n七画\n\n寿 弄 麦 形 进 戒 吞 远违 运 扶 抚 坛 技 坏 扰 拒 找 批 扯 址 走 抄 坝 贡 攻 赤 折 抓 扮 抢 孝均抛 投 坟 抗 坑 坊 抖 护 壳 志 扭 块 声 把 报却 劫 芽 花 芹 芬 苍 芳 严 芦 劳 克 苏 杆 杠 杜 材 村杏极 李 杨 求 更 束 豆 两 丽 医 辰 励 否 还 歼 来 连 步 坚 旱 盯呈 时 吴 助 县 里 呆 园 旷 围 呀 吨足邮 男 困 吵 串 员 听 吩 吹 呜 吧 吼 别 岗 帐 财 针 钉 告 我 乱 利 秃 秀 私 每 兵估 体 何 但 伸 作伯伶 佣 低 你 住 位 伴 身 皂 佛 近 彻 役 返 余 希 坐 谷 妥 含 邻 岔 肝 肚 肠 龟 免 狂 犹 角 删 条卵岛迎 饭 饮 系 言 冻 状 亩 况 床 库 疗 应 冷 这 序 辛 弃 冶 忘 闲 间 闷 判 灶 灿 弟 汪 沙 汽 沃 泛 沟没沈 沉 怀 忧 快完 宋 宏 牢 究 穷 灾 良 证 启 评 补 初 社 识 诉 诊 词 译 君 灵 即 层 尿 尾 迟 局 改张忌 际 陆 阿 陈 阻 附 妙 妖 妨 努忍 劲 鸡 驱 纯 纱 纳 纲 驳 纵 纷 纸 纹 纺 驴 纽\n\n八画\n\n奉 玩 环 武 青 责 现 表规 抹 拢 拔 拣 担 坦 押 抽 拐 拖 拍 者 顶 拆 拥 抵 拘 势 抱 垃 拉 拦 拌幸招 坡 披 拨 择 抬 其 取 苦 若 茂 苹 苗 英 范直 茄 茎 茅 林 枝 杯 柜 析 板 松 枪 构 杰 述 枕 丧 或画卧 事 刺 枣 雨 卖 矿 码 厕 奔 奇 奋 态 欧 垄 妻 轰 顷 转 斩 轮软 到 非 叔 肯 齿 些 虎 虏 肾 贤 尚旺具 果 味 昆 国 昌 畅 明 易 昂 典 固 忠 咐 呼 鸣 咏 呢 岸 岩 帖 罗 帜 岭 凯 败 贩购 图 钓 制 知 垂牧物 乖 刮 秆 和 季 委 佳 侍 供 使 例 版 侄 侦 侧 凭 侨 佩 货 依 的 迫 质 欣 征 往 爬 彼 径 所 舍金命斧 爸 采 受 乳 贪 念 贫 肤 肺 肢 肿 胀 朋 股 肥 服 胁 周 昏 鱼 兔 狐 忽 狗 备 饰 饱 饲 变 京 享 店夜庙 府 底 剂 郊废 净 盲 放 刻 育 闸 闹 郑 券 卷 单 炒 炊 炕 炎 炉 沫 浅 法 泄 河 沾 泪 油 泊 沿 泡注泻 泳 泥 沸 波 泼 泽 治 怖 性 怕怜 怪 学 宝 宗 定 宜 审 宙 官 空 帘 实 试 郎 诗 肩 房 诚 衬 衫 视话诞 询 该 详 建 肃 录 隶 居 届 刷 屈 弦 承 孟 孤 陕降 限 妹 姑 姐 姓 始 驾 参 艰 线 练 组 细 驶 织终驻 驼 绍 经 贯\n\n九画\n\n奏 春 帮 珍 玻 毒 型 挂封 持 项 垮 挎 城 挠 政 赴 赵 挡 挺 括 拴 拾 挑 指 垫 挣 挤 拼 挖 按 挥挪某 甚 革 荐 巷 带 草 茧 茶 荒 茫 荡 荣 故 胡南 药 标 枯 柄 栋 相 查 柏 柳 柱 柿 栏 树 要 咸 威 歪研砖 厘 厚 砌 砍 面 耐 耍 牵 残 殃 轻 鸦 皆 背 战 点 临 览 竖 省削 尝 是 盼 眨 哄 显 哑 冒 映 星 昨畏趴 胃 贵 界 虹 虾 蚁 思 蚂 虽 品 咽 骂 哗 咱 响 哈 咬 咳 哪 炭 峡 罚 贱 贴 骨 钞钟 钢 钥 钩 卸 缸拜看 矩 怎 牲 选 适 秒 香 种 秋 科 重 复 竿 段 便 俩 贷 顺 修 保 促 侮 俭 俗 俘 信 皇 泉 鬼 侵 追俊盾待 律 很 须 叙 剑 逃 食 盆 胆 胜 胞 胖 脉 勉 狭 狮 独 狡 狱 狠 贸 怨 急 饶 蚀 饺 饼 弯 将 奖 哀 亭亮度 迹 庭 疮 疯疫 疤 姿 亲 音 帝 施 闻 阀 阁 差 养 美 姜 叛 送 类 迷 前 首 逆 总 炼 炸 炮 烂 剃 洁洪洒 浇 浊 洞 测 洗 活 派 洽 染 济洋 洲 浑 浓 津 恒 恢 恰 恼 恨 举 觉 宣 室 宫 宪 突 穿 窃 客 冠 语扁袄 祖 神 祝 误 诱 说 诵 垦 退 既 屋 昼 费 陡 眉 孩除 险 院 娃 姥 姨 姻 娇 怒 架 贺 盈 勇 怠 柔 垒绑绒 结 绕 骄 绘 给 络 骆 绝 绞 统\n\n十画\n\n耕 耗 艳 泰 珠 班 素 蚕顽 盏 匪 捞 栽 捕 振 载 赶 起 盐 捎 捏 埋 捉 捆 捐 损 都 哲 逝 捡 换 挽热恐 壶 挨 耻 耽 恭 莲 莫 荷 获 晋 恶 真 框 桂档 桐 株 桥 桃 格 校 核 样 根 索 哥 速 逗 栗 配 翅 辱唇夏 础 破 原 套 逐 烈 殊 顾 轿 较 顿 毙 致 柴 桌 虑 监 紧 党 晒眠 晓 鸭 晃 晌 晕 蚊 哨 哭 恩 唤 啊唉罢 峰 圆 贼 贿 钱 钳 钻 铁 铃 铅 缺 氧 特 牺 造 乘 敌 秤 租 积 秧 秩 称 秘 透 笔笑 笋 债 借 值 倚倾倒 倘 俱 倡 候 俯 倍 倦 健 臭 射 躬 息 徒 徐 舰 舱 般 航 途 拿 爹 爱 颂 翁 脆 脂 胸 胳 脏 胶 脑狸狼逢 留 皱 饿 恋 桨 浆 衰 高 席 准 座 脊 症 病 疾 疼 疲 效 离 唐 资 凉 站 剖 竞 部 旁 旅 畜 阅 羞 瓶拳粉 料 益 兼 烤烘 烦 烧 烛 烟 递 涛 浙 涝 酒 涉 消 浩 海 涂 浴 浮 流 润 浪 浸 涨 烫 涌 悟 悄 悔 悦害宽 家 宵 宴 宾 窄 容 宰 案 请 朗诸 读 扇 袜 袖 袍 被 祥 课 谁 调 冤 谅 谈 谊 剥 恳 展 剧 屑 弱 陵陶陷 陪 娱 娘 通 能 难 预 桑 绢 绣 验 继\n\n十一画\n\n球 理 捧 堵 描 域 掩 捷排 掉 堆 推 掀 授 教 掏 掠 培 接 控 探 据 掘 职 基 著 勒 黄 萌 萝 菌 菜萄菊 萍 菠 营 械 梦 梢 梅 检 梳 梯 桶 救 副 票戚 爽 聋 袭 盛 雪 辅 辆 虚 雀 堂 常 匙 晨 睁 眯 眼 悬野啦 晚 啄 距 跃 略 蛇 累 唱 患 唯 崖 崭 崇 圈 铜 铲 银 甜 梨 犁移 笨 笼 笛 符 第 敏 做 袋 悠 偿 偶偷您 售 停 偏 假 得 衔 盘 船 斜 盒 鸽 悉 欲 彩 领 脚 脖 脸 脱 象 够 猜 猪 猎 猫 猛馅 馆 凑 减 毫 麻痒痕 廊 康 庸 鹿 盗 章 竟 商 族 旋 望 率 着 盖 粘 粗 粒 断 剪 兽 清 添 淋 淹 渠 渐 混 渔 淘 液 淡深婆梁 渗 情 惜 惭 悼 惧 惕 惊 惨 惯 寇 寄 宿 窑 密 谋 谎 祸 谜 逮 敢 屠 弹 随 蛋 隆 隐 婚 婶 颈 绩 绪续骑 绳 维 绵 绸绿\n\n十二画\n\n琴 斑 替 款 堪 搭 塔 越趁 趋 超 提 堤 博 揭 喜 插 揪 搜 煮 援 裁 搁 搂 搅 握 揉 斯 期 欺 联 散惹葬 葛 董 葡 敬 葱 落 朝 辜 葵 棒 棋 植 森 椅椒 棵 棍 棉 棚 棕 惠 惑 逼 厨 厦 硬 确 雁 殖 裂 雄 暂雅辈 悲 紫 辉 敞 赏 掌 晴 暑 最 量 喷 晶 喇 遇 喊 景 践 跌 跑 遗蛙 蛛 蜓 喝 喂 喘 喉 幅 帽 赌 赔 黑铸铺 链 销 锁 锄 锅 锈 锋 锐 短 智 毯 鹅 剩 稍 程 稀 税 筐 等 筑 策 筛 筒 答 筋 筝傲 傅 牌 堡 集 焦傍储 奥 街 惩 御 循 艇 舒 番 释 禽 腊 脾 腔 鲁 猾 猴 然 馋 装 蛮 就 痛 童 阔 善 羡 普 粪 尊 道 曾焰港湖 渣 湿 温 渴 滑 湾 渡 游 滋 溉 愤 慌 惰 愧 愉 慨 割 寒 富 窜 窝 窗 遍 裕 裤 裙 谢 谣 谦 属 屡 强粥疏 隔 隙 絮 嫂登 缎 缓 编 骗 缘\n\n十三画\n\n瑞 魂 肆 摄 摸 填 搏 塌鼓 摆 携 搬 摇 搞 塘 摊 蒜 勤 鹊 蓝 墓 幕 蓬 蓄 蒙 蒸 献 禁 楚 想 槐 榆楼概 赖 酬 感 碍 碑 碎 碰 碗 碌 雷 零 雾 雹 输督 龄 鉴 睛 睡 睬 鄙 愚 暖 盟 歇 暗 照 跨 跳 跪 路 跟遣蛾 蜂 嗓 置 罪 罩 错 锡 锣 锤 锦 键 锯 矮 辞 稠 愁 筹 签 简 毁舅 鼠 催 傻 像 躲 微 愈 遥 腰 腥 腹腾腿 触 解 酱 痰 廉 新 韵 意 粮 数 煎 塑 慈 煤 煌 满 漠 源 滤 滥 滔 溪 溜 滚 滨 粱滩 慎 誉 塞 谨 福群殿 辟 障 嫌 嫁 叠 缝 缠\n\n十四画\n\n静 碧 璃 墙 撇 嘉 摧 截誓 境 摘 摔 聚 蔽 慕 暮 蔑 模 榴 榜 榨 歌 遭 酷 酿 酸 磁 愿 需 弊 裳 颗嗽蜻 蜡 蝇 蜘 赚 锹 锻 舞 稳 算 箩 管 僚 鼻 魄貌 膜 膊 膀 鲜 疑 馒 裹 敲 豪 膏 遮 腐 瘦 辣 竭 端 旗精歉 熄 熔 漆 漂 漫 滴 演 漏 慢 寨 赛 察 蜜 谱 嫩 翠 熊 凳 骡 缩\n\n十五画\n\n慧 撕 撒 趣 趟 撑 播 撞撤 增 聪 鞋 蕉 蔬 横 槽 樱 橡 飘 醋 醉 震 霉 瞒 题 暴 瞎 影 踢 踏 踩 踪蝶蝴 嘱 墨 镇 靠 稻 黎 稿 稼 箱 箭 篇 僵 躺 僻德 艘 膝 膛 熟 摩 颜 毅 糊 遵 潜 潮 懂 额 慰 劈\n\n十六画\n\n操 燕 薯 薪 薄 颠 橘 整融 醒 餐 嘴 蹄 器 赠 默 镜 赞 篮 邀 衡 膨 雕 磨 凝 辨 辩 糖 糕 燃 澡 激懒壁 避 缴\n\n十七画\n\n戴 擦 鞠 藏 霜 霞 瞧 蹈螺 穗 繁 辫 赢 糟 糠 燥 臂 翼 骤\n\n十八画\n\n鞭 覆 蹦 镰 翻 鹰\n\n十九画\n\n警 攀 蹲 颤 瓣 爆 疆\n\n二十画\n\n壤 耀 躁 嚼 嚷 籍 魔 灌\n\n二十一画\n\n蠢 霸 露\n\n二十二画\n\n囊\n\n二十三画\n\n罐', 'J02', '蔡建平', '0000000000');
INSERT INTO `student_log` VALUES ('6', '31801093', '沈钰琦', '5', '一画\n\n一 乙\n\n二画\n\n二 十 丁 厂 七 卜 人 入 八 九 几 儿 了 力 乃 刀 又\n\n三画\n\n三 于 干 亏 士 工 土 才 寸 下 大 丈 与 万 上 小 口 巾 山 千 乞 川 亿 个 勺 久 凡 及 夕 丸 么广亡门 义 之 尸 弓 己 已 子 卫 也 女 飞 刃 习 叉 马 乡\n\n四画\n\n丰 王 井 开 夫 天 无 元专 云 扎 艺 木 五 支 厅 不 太 犬 区 历 尤 友 匹 车 巨 牙 屯 比 互 切 瓦止少 日 中 冈 贝 内 水 见 午 牛 手 毛 气 升 长仁 什 片 仆 化 仇 币 仍 仅 斤 爪 反 介 父 从 今 凶 分乏公 仓 月 氏 勿 欠 风 丹 匀 乌 凤 勾 文 六 方 火 为 斗 忆 订 计户 认 心 尺 引 丑 巴 孔 队 办 以 允予劝 双 书 幻\n\n五画\n\n玉 刊 示 末 未 击 打 巧正 扑 扒 功 扔 去 甘 世 古 节 本 术 可 丙 左 厉 右 石 布 龙 平 灭 轧 东卡北 占 业 旧 帅 归 且 旦 目 叶 甲 申 叮 电 号田 由 史 只 央 兄 叼 叫 另 叨 叹 四 生 失 禾 丘 付 仗代仙 们 仪 白 仔 他 斥 瓜 乎 丛 令 用 甩 印 乐 句 匆 册 犯 外 处冬 鸟 务 包 饥 主 市 立 闪 兰 半 汁汇头 汉 宁 穴 它 讨 写 让 礼 训 必 议 讯 记 永 司 尼 民 出 辽 奶 奴 加 召 皮 边 发孕 圣 对 台 矛 纠母幼 丝\n\n六画\n\n式 刑 动 扛 寺 吉 扣 考托 老 执 巩 圾 扩 扫 地 扬 场 耳 共 芒 亚 芝 朽 朴 机 权 过 臣 再 协 西压厌 在 有 百 存 而 页 匠 夸 夺 灰 达 列 死 成夹 轨 邪 划 迈 毕 至 此 贞 师 尘 尖 劣 光 当 早 吐 吓虫曲 团 同 吊 吃 因 吸 吗 屿 帆 岁 回 岂 刚 则 肉 网 年 朱 先 丢舌 竹 迁 乔 伟 传 乒 乓 休 伍 伏 优伐延 件 任 伤 价 份 华 仰 仿 伙 伪 自 血 向 似 后 行 舟 全 会 杀 合 兆 企 众 爷 伞创 肌 朵 杂 危 旬旨负 各 名 多 争 色 壮 冲 冰 庄 庆 亦 刘 齐 交 次 衣 产 决 充 妄 闭 问 闯 羊 并 关 米 灯 州 汗 污江池汤 忙 兴 宇 守 宅 字 安 讲 军 许 论 农 讽 设 访 寻 那 迅 尽 导 异 孙 阵 阳 收 阶 阴 防 奸 如 妇 好她妈 戏 羽 观 欢买 红 纤 级 约 纪 驰 巡\n\n七画\n\n寿 弄 麦 形 进 戒 吞 远违 运 扶 抚 坛 技 坏 扰 拒 找 批 扯 址 走 抄 坝 贡 攻 赤 折 抓 扮 抢 孝均抛 投 坟 抗 坑 坊 抖 护 壳 志 扭 块 声 把 报却 劫 芽 花 芹 芬 苍 芳 严 芦 劳 克 苏 杆 杠 杜 材 村杏极 李 杨 求 更 束 豆 两 丽 医 辰 励 否 还 歼 来 连 步 坚 旱 盯呈 时 吴 助 县 里 呆 园 旷 围 呀 吨足邮 男 困 吵 串 员 听 吩 吹 呜 吧 吼 别 岗 帐 财 针 钉 告 我 乱 利 秃 秀 私 每 兵估 体 何 但 伸 作伯伶 佣 低 你 住 位 伴 身 皂 佛 近 彻 役 返 余 希 坐 谷 妥 含 邻 岔 肝 肚 肠 龟 免 狂 犹 角 删 条卵岛迎 饭 饮 系 言 冻 状 亩 况 床 库 疗 应 冷 这 序 辛 弃 冶 忘 闲 间 闷 判 灶 灿 弟 汪 沙 汽 沃 泛 沟没沈 沉 怀 忧 快完 宋 宏 牢 究 穷 灾 良 证 启 评 补 初 社 识 诉 诊 词 译 君 灵 即 层 尿 尾 迟 局 改张忌 际 陆 阿 陈 阻 附 妙 妖 妨 努忍 劲 鸡 驱 纯 纱 纳 纲 驳 纵 纷 纸 纹 纺 驴 纽\n\n八画\n\n奉 玩 环 武 青 责 现 表规 抹 拢 拔 拣 担 坦 押 抽 拐 拖 拍 者 顶 拆 拥 抵 拘 势 抱 垃 拉 拦 拌幸招 坡 披 拨 择 抬 其 取 苦 若 茂 苹 苗 英 范直 茄 茎 茅 林 枝 杯 柜 析 板 松 枪 构 杰 述 枕 丧 或画卧 事 刺 枣 雨 卖 矿 码 厕 奔 奇 奋 态 欧 垄 妻 轰 顷 转 斩 轮软 到 非 叔 肯 齿 些 虎 虏 肾 贤 尚旺具 果 味 昆 国 昌 畅 明 易 昂 典 固 忠 咐 呼 鸣 咏 呢 岸 岩 帖 罗 帜 岭 凯 败 贩购 图 钓 制 知 垂牧物 乖 刮 秆 和 季 委 佳 侍 供 使 例 版 侄 侦 侧 凭 侨 佩 货 依 的 迫 质 欣 征 往 爬 彼 径 所 舍金命斧 爸 采 受 乳 贪 念 贫 肤 肺 肢 肿 胀 朋 股 肥 服 胁 周 昏 鱼 兔 狐 忽 狗 备 饰 饱 饲 变 京 享 店夜庙 府 底 剂 郊废 净 盲 放 刻 育 闸 闹 郑 券 卷 单 炒 炊 炕 炎 炉 沫 浅 法 泄 河 沾 泪 油 泊 沿 泡注泻 泳 泥 沸 波 泼 泽 治 怖 性 怕怜 怪 学 宝 宗 定 宜 审 宙 官 空 帘 实 试 郎 诗 肩 房 诚 衬 衫 视话诞 询 该 详 建 肃 录 隶 居 届 刷 屈 弦 承 孟 孤 陕降 限 妹 姑 姐 姓 始 驾 参 艰 线 练 组 细 驶 织终驻 驼 绍 经 贯\n\n九画\n\n奏 春 帮 珍 玻 毒 型 挂封 持 项 垮 挎 城 挠 政 赴 赵 挡 挺 括 拴 拾 挑 指 垫 挣 挤 拼 挖 按 挥挪某 甚 革 荐 巷 带 草 茧 茶 荒 茫 荡 荣 故 胡南 药 标 枯 柄 栋 相 查 柏 柳 柱 柿 栏 树 要 咸 威 歪研砖 厘 厚 砌 砍 面 耐 耍 牵 残 殃 轻 鸦 皆 背 战 点 临 览 竖 省削 尝 是 盼 眨 哄 显 哑 冒 映 星 昨畏趴 胃 贵 界 虹 虾 蚁 思 蚂 虽 品 咽 骂 哗 咱 响 哈 咬 咳 哪 炭 峡 罚 贱 贴 骨 钞钟 钢 钥 钩 卸 缸拜看 矩 怎 牲 选 适 秒 香 种 秋 科 重 复 竿 段 便 俩 贷 顺 修 保 促 侮 俭 俗 俘 信 皇 泉 鬼 侵 追俊盾待 律 很 须 叙 剑 逃 食 盆 胆 胜 胞 胖 脉 勉 狭 狮 独 狡 狱 狠 贸 怨 急 饶 蚀 饺 饼 弯 将 奖 哀 亭亮度 迹 庭 疮 疯疫 疤 姿 亲 音 帝 施 闻 阀 阁 差 养 美 姜 叛 送 类 迷 前 首 逆 总 炼 炸 炮 烂 剃 洁洪洒 浇 浊 洞 测 洗 活 派 洽 染 济洋 洲 浑 浓 津 恒 恢 恰 恼 恨 举 觉 宣 室 宫 宪 突 穿 窃 客 冠 语扁袄 祖 神 祝 误 诱 说 诵 垦 退 既 屋 昼 费 陡 眉 孩除 险 院 娃 姥 姨 姻 娇 怒 架 贺 盈 勇 怠 柔 垒绑绒 结 绕 骄 绘 给 络 骆 绝 绞 统\n\n十画\n\n耕 耗 艳 泰 珠 班 素 蚕顽 盏 匪 捞 栽 捕 振 载 赶 起 盐 捎 捏 埋 捉 捆 捐 损 都 哲 逝 捡 换 挽热恐 壶 挨 耻 耽 恭 莲 莫 荷 获 晋 恶 真 框 桂档 桐 株 桥 桃 格 校 核 样 根 索 哥 速 逗 栗 配 翅 辱唇夏 础 破 原 套 逐 烈 殊 顾 轿 较 顿 毙 致 柴 桌 虑 监 紧 党 晒眠 晓 鸭 晃 晌 晕 蚊 哨 哭 恩 唤 啊唉罢 峰 圆 贼 贿 钱 钳 钻 铁 铃 铅 缺 氧 特 牺 造 乘 敌 秤 租 积 秧 秩 称 秘 透 笔笑 笋 债 借 值 倚倾倒 倘 俱 倡 候 俯 倍 倦 健 臭 射 躬 息 徒 徐 舰 舱 般 航 途 拿 爹 爱 颂 翁 脆 脂 胸 胳 脏 胶 脑狸狼逢 留 皱 饿 恋 桨 浆 衰 高 席 准 座 脊 症 病 疾 疼 疲 效 离 唐 资 凉 站 剖 竞 部 旁 旅 畜 阅 羞 瓶拳粉 料 益 兼 烤烘 烦 烧 烛 烟 递 涛 浙 涝 酒 涉 消 浩 海 涂 浴 浮 流 润 浪 浸 涨 烫 涌 悟 悄 悔 悦害宽 家 宵 宴 宾 窄 容 宰 案 请 朗诸 读 扇 袜 袖 袍 被 祥 课 谁 调 冤 谅 谈 谊 剥 恳 展 剧 屑 弱 陵陶陷 陪 娱 娘 通 能 难 预 桑 绢 绣 验 继\n\n十一画\n\n球 理 捧 堵 描 域 掩 捷排 掉 堆 推 掀 授 教 掏 掠 培 接 控 探 据 掘 职 基 著 勒 黄 萌 萝 菌 菜萄菊 萍 菠 营 械 梦 梢 梅 检 梳 梯 桶 救 副 票戚 爽 聋 袭 盛 雪 辅 辆 虚 雀 堂 常 匙 晨 睁 眯 眼 悬野啦 晚 啄 距 跃 略 蛇 累 唱 患 唯 崖 崭 崇 圈 铜 铲 银 甜 梨 犁移 笨 笼 笛 符 第 敏 做 袋 悠 偿 偶偷您 售 停 偏 假 得 衔 盘 船 斜 盒 鸽 悉 欲 彩 领 脚 脖 脸 脱 象 够 猜 猪 猎 猫 猛馅 馆 凑 减 毫 麻痒痕 廊 康 庸 鹿 盗 章 竟 商 族 旋 望 率 着 盖 粘 粗 粒 断 剪 兽 清 添 淋 淹 渠 渐 混 渔 淘 液 淡深婆梁 渗 情 惜 惭 悼 惧 惕 惊 惨 惯 寇 寄 宿 窑 密 谋 谎 祸 谜 逮 敢 屠 弹 随 蛋 隆 隐 婚 婶 颈 绩 绪续骑 绳 维 绵 绸绿\n\n十二画\n\n琴 斑 替 款 堪 搭 塔 越趁 趋 超 提 堤 博 揭 喜 插 揪 搜 煮 援 裁 搁 搂 搅 握 揉 斯 期 欺 联 散惹葬 葛 董 葡 敬 葱 落 朝 辜 葵 棒 棋 植 森 椅椒 棵 棍 棉 棚 棕 惠 惑 逼 厨 厦 硬 确 雁 殖 裂 雄 暂雅辈 悲 紫 辉 敞 赏 掌 晴 暑 最 量 喷 晶 喇 遇 喊 景 践 跌 跑 遗蛙 蛛 蜓 喝 喂 喘 喉 幅 帽 赌 赔 黑铸铺 链 销 锁 锄 锅 锈 锋 锐 短 智 毯 鹅 剩 稍 程 稀 税 筐 等 筑 策 筛 筒 答 筋 筝傲 傅 牌 堡 集 焦傍储 奥 街 惩 御 循 艇 舒 番 释 禽 腊 脾 腔 鲁 猾 猴 然 馋 装 蛮 就 痛 童 阔 善 羡 普 粪 尊 道 曾焰港湖 渣 湿 温 渴 滑 湾 渡 游 滋 溉 愤 慌 惰 愧 愉 慨 割 寒 富 窜 窝 窗 遍 裕 裤 裙 谢 谣 谦 属 屡 强粥疏 隔 隙 絮 嫂登 缎 缓 编 骗 缘\n\n十三画\n\n瑞 魂 肆 摄 摸 填 搏 塌鼓 摆 携 搬 摇 搞 塘 摊 蒜 勤 鹊 蓝 墓 幕 蓬 蓄 蒙 蒸 献 禁 楚 想 槐 榆楼概 赖 酬 感 碍 碑 碎 碰 碗 碌 雷 零 雾 雹 输督 龄 鉴 睛 睡 睬 鄙 愚 暖 盟 歇 暗 照 跨 跳 跪 路 跟遣蛾 蜂 嗓 置 罪 罩 错 锡 锣 锤 锦 键 锯 矮 辞 稠 愁 筹 签 简 毁舅 鼠 催 傻 像 躲 微 愈 遥 腰 腥 腹腾腿 触 解 酱 痰 廉 新 韵 意 粮 数 煎 塑 慈 煤 煌 满 漠 源 滤 滥 滔 溪 溜 滚 滨 粱滩 慎 誉 塞 谨 福群殿 辟 障 嫌 嫁 叠 缝 缠\n\n十四画\n\n静 碧 璃 墙 撇 嘉 摧 截誓 境 摘 摔 聚 蔽 慕 暮 蔑 模 榴 榜 榨 歌 遭 酷 酿 酸 磁 愿 需 弊 裳 颗嗽蜻 蜡 蝇 蜘 赚 锹 锻 舞 稳 算 箩 管 僚 鼻 魄貌 膜 膊 膀 鲜 疑 馒 裹 敲 豪 膏 遮 腐 瘦 辣 竭 端 旗精歉 熄 熔 漆 漂 漫 滴 演 漏 慢 寨 赛 察 蜜 谱 嫩 翠 熊 凳 骡 缩\n\n十五画\n\n慧 撕 撒 趣 趟 撑 播 撞撤 增 聪 鞋 蕉 蔬 横 槽 樱 橡 飘 醋 醉 震 霉 瞒 题 暴 瞎 影 踢 踏 踩 踪蝶蝴 嘱 墨 镇 靠 稻 黎 稿 稼 箱 箭 篇 僵 躺 僻德 艘 膝 膛 熟 摩 颜 毅 糊 遵 潜 潮 懂 额 慰 劈\n\n十六画\n\n操 燕 薯 薪 薄 颠 橘 整融 醒 餐 嘴 蹄 器 赠 默 镜 赞 篮 邀 衡 膨 雕 磨 凝 辨 辩 糖 糕 燃 澡 激懒壁 避 缴\n\n十七画\n\n戴 擦 鞠 藏 霜 霞 瞧 蹈螺 穗 繁 辫 赢 糟 糠 燥 臂 翼 骤\n\n十八画\n\n鞭 覆 蹦 镰 翻 鹰\n\n十九画\n\n警 攀 蹲 颤 瓣 爆 疆\n\n二十画\n\n壤 耀 躁 嚼 嚷 籍 魔 灌\n\n二十一画\n\n蠢 霸 露\n\n二十二画\n\n囊\n\n二十三画\n\n罐', 'J02', '蔡建平', '0000000000');
INSERT INTO `student_log` VALUES ('7', '31801093', '沈钰琦', '6', '军训，让我喜，喜的是它给予了我锻炼自己的机会和我毕生从未经历过的生活乐趣。让我懂得了作为一个军人应有的可贵精神和顽强的毅力；让我明白了当代大学生应有的学生风范和铁的纪律。\n\n军训时，有的是思家的情绪。在最苦最累的时候，每个人都会想家。家是避风的港湾。军训时，教官教的歌，大多与想家有关，在最苦最累的时候，听到这些歌，勾起了我思乡的情绪，眼泪不知不觉地流下，混着汗珠，淌进嘴里，咸咸的，涩涩的……1111111111111111111', 'J02', '蔡建平', '0000000000');
INSERT INTO `student_log` VALUES ('8', '31801093', '沈钰琦', '7', '军训，让我喜，喜的是它给予了我锻炼自己的机会和我毕生从未经历过的生活乐趣。让我懂得了作为一个军人应有的可贵精神和顽强的毅力；让我明白了当代大学生应有的学生风范和铁的纪律。\n\n军训时，有的是思家的情绪。在最苦最累的时候，每个人都会想家。家是避风的港湾。军训时，教官教的歌，大多与想家有关，在最苦最累的时候，听到这些歌，勾起了我思乡的情绪，眼泪不知不觉地流下，混着汗珠，淌进嘴里，咸咸的，涩涩的……ssssssssss', 'J02', '蔡建平', '0000000000');
INSERT INTO `student_log` VALUES ('9', '31801093', '沈钰琦', '8', '军训，让我喜，喜的是它给予了我锻炼自己的机会和我毕生从未经历过的生活乐趣。让我懂得了作为一个军人应有的可贵精神和顽强的毅力；让我明白了当代大学生应有的学生风范和铁的纪律。\n\n军训时，有的是思家的情绪。在最苦最累的时候，每个人都会想家。家是避风的港湾。军训时，教官教的歌，大多与想家有关，在最苦最累的时候，听到这些歌，勾起了我思乡的情绪，眼泪不知不觉地流下，混着汗珠，淌进嘴里，咸咸的，涩涩的……ssssssssss', 'J02', '蔡建平', '0000000000');
INSERT INTO `student_log` VALUES ('10', '31801093', '沈钰琦', '9', '军训，让我喜，喜的是它给予了我锻炼自己的机会和我毕生从未经历过的生活乐趣。让我懂得了作为一个军人应有的可贵精神和顽强的毅力；让我明白了当代大学生应有的学生风范和铁的纪律。\n\n军训时，有的是思家的情绪。在最苦最累的时候，每个人都会想家。家是避风的港湾。军训时，教官教的歌，大多与想家有关，在最苦最累的时候，听到这些歌，勾起了我思乡的情绪，眼泪不知不觉地流下，混着汗珠，淌进嘴里，咸咸的，涩涩的……ssssssssss', 'J02', '蔡建平', '0000000000');
INSERT INTO `student_log` VALUES ('11', '31801093', '沈钰琦', '10', '军训，让我喜，喜的是它给予了我锻炼自己的机会和我毕生从未经历过的生活乐趣。让我懂得了作为一个军人应有的可贵精神和顽强的毅力；让我明白了当代大学生应有的学生风范和铁的纪律。\n\n军训时，有的是思家的情绪。在最苦最累的时候，每个人都会想家。家是避风的港湾。军训时，教官教的歌，大多与想家有关，在最苦最累的时候，听到这些歌，勾起了我思乡的情绪，眼泪不知不觉地流下，混着汗珠，淌进嘴里，咸咸的，涩涩的……ssssssssss', 'J02', '蔡建平', '0000000000');
INSERT INTO `student_log` VALUES ('12', '31801093', '沈钰琦', '11', '军训，让我喜，喜的是它给予了我锻炼自己的机会和我毕生从未经历过的生活乐趣。让我懂得了作为一个军人应有的可贵精神和顽强的毅力；让我明白了当代大学生应有的学生风范和铁的纪律。\n\n军训时，有的是思家的情绪。在最苦最累的时候，每个人都会想家。家是避风的港湾。军训时，教官教的歌，大多与想家有关，在最苦最累的时候，听到这些歌，勾起了我思乡的情绪，眼泪不知不觉地流下，混着汗珠，淌进嘴里，咸咸的，涩涩的……ssssssssss', 'J02', '蔡建平', '0000000000');
INSERT INTO `student_log` VALUES ('13', '31801093', '沈钰琦', '12', '军训，让我喜，喜的是它给予了我锻炼自己的机会和我毕生从未经历过的生活乐趣。让我懂得了作为一个军人应有的可贵精神和顽强的毅力；让我明白了当代大学生应有的学生风范和铁的纪律。\n\n军训时，有的是思家的情绪。在最苦最累的时候，每个人都会想家。家是避风的港湾。军训时，教官教的歌，大多与想家有关，在最苦最累的时候，听到这些歌，勾起了我思乡的情绪，眼泪不知不觉地流下，混着汗珠，淌进嘴里，咸咸的，涩涩的……ssssssssss', 'J02', '蔡建平', '0000000000');

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师编号',
  `teacher_id` varchar(32) NOT NULL COMMENT '教工号',
  `teacher_passwd` varchar(255) NOT NULL COMMENT '密码',
  `teacher_name` varchar(32) NOT NULL COMMENT '教师姓名',
  `delete_flag` int(10) unsigned zerofill NOT NULL DEFAULT '0000000000',
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COMMENT='教师信息';

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'J01', 'c4ca4238a0b923820dcc509a6f75849b', '朱勇', '0000000000');
INSERT INTO `teacher` VALUES ('3', 'J02', 'c4ca4238a0b923820dcc509a6f75849b', '蔡建平', '0000000000');
INSERT INTO `teacher` VALUES ('4', 'J03', 'e10adc3949ba59abbe56e057f20f883e', '张芸', '0000000000');
INSERT INTO `teacher` VALUES ('5', 'J04', 'c4ca4238a0b923820dcc509a6f75849b', '张帆', '0000000000');
INSERT INTO `teacher` VALUES ('6', 'J05', '285ab9448d2751ee57ece7f762c39095', '测试', '0000000001');
INSERT INTO `teacher` VALUES ('7', '12121', 'ef80af910fa07870e25b1a4c86d10402', 'J04', '0000000001');
INSERT INTO `teacher` VALUES ('8', 'J06', 'c4ca4238a0b923820dcc509a6f75849b', '张泳', '0000000000');

-- ----------------------------
-- Table structure for triple_agreement
-- ----------------------------
DROP TABLE IF EXISTS `triple_agreement`;
CREATE TABLE `triple_agreement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) NOT NULL,
  `student_name` varchar(255) NOT NULL,
  `teacher_id` varchar(255) DEFAULT NULL,
  `teacher_name` varchar(255) DEFAULT NULL,
  `triple_agreement` int(10) unsigned zerofill NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `delete_flag` int(10) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of triple_agreement
-- ----------------------------
INSERT INTO `triple_agreement` VALUES ('1', '31801093', '沈钰琦', 'J02', '蔡建平', '0000000001', '1', '0000000000');
INSERT INTO `triple_agreement` VALUES ('2', '31801150', '张帅', 'J02', '蔡建平', '0000000001', '4', '0000000000');

-- ----------------------------
-- Table structure for tutor_select
-- ----------------------------
DROP TABLE IF EXISTS `tutor_select`;
CREATE TABLE `tutor_select` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` varchar(255) DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `student_class` varchar(255) DEFAULT NULL,
  `teacher_id` varchar(255) DEFAULT NULL,
  `teacher_name` varchar(255) DEFAULT NULL,
  `delete_flag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tutor_select
-- ----------------------------
