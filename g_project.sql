/*
 Navicat Premium Data Transfer

 Source Server         : MySQL
 Source Server Type    : MySQL
 Source Server Version : 50719
 Source Host           : localhost:3306
 Source Schema         : g_project

 Target Server Type    : MySQL
 Target Server Version : 50719
 File Encoding         : 65001

 Date: 21/05/2018 19:49:39
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_choose
-- ----------------------------
DROP TABLE IF EXISTS `tbl_choose`;
CREATE TABLE `tbl_choose`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `choose_stu` int(11) NULL DEFAULT NULL,
  `choose_cou` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `cho_fk_cou`(`choose_cou`) USING BTREE,
  INDEX `cho_fk_stu`(`choose_stu`) USING BTREE,
  CONSTRAINT `cho_fk_cou` FOREIGN KEY (`choose_cou`) REFERENCES `tbl_course` (`cou_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cho_fk_stu` FOREIGN KEY (`choose_stu`) REFERENCES `tbl_student` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_choose
-- ----------------------------
INSERT INTO `tbl_choose` VALUES (9, 2014210874, 60004);
INSERT INTO `tbl_choose` VALUES (10, 2014210874, 60005);
INSERT INTO `tbl_choose` VALUES (11, 2014210874, 60006);
INSERT INTO `tbl_choose` VALUES (12, 2014210874, 60008);
INSERT INTO `tbl_choose` VALUES (13, 2014210874, 60009);
INSERT INTO `tbl_choose` VALUES (14, 2014210874, 60010);
INSERT INTO `tbl_choose` VALUES (15, 2014210874, 60011);
INSERT INTO `tbl_choose` VALUES (17, 2014210874, 60013);
INSERT INTO `tbl_choose` VALUES (26, 2014210874, 60003);
INSERT INTO `tbl_choose` VALUES (27, 2014210874, 60001);

-- ----------------------------
-- Table structure for tbl_classes
-- ----------------------------
DROP TABLE IF EXISTS `tbl_classes`;
CREATE TABLE `tbl_classes`  (
  `class_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '班级ID',
  `class_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '班级名称',
  `class_dept` int(11) NULL DEFAULT NULL COMMENT '所属院系',
  PRIMARY KEY (`class_id`) USING BTREE,
  INDEX `cla_fk_dept`(`class_dept`) USING BTREE,
  CONSTRAINT `cla_fk_dept` FOREIGN KEY (`class_dept`) REFERENCES `tbl_department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 201447 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_classes
-- ----------------------------
INSERT INTO `tbl_classes` VALUES (201147, '数字媒体技术2班', 10009);
INSERT INTO `tbl_classes` VALUES (201401, '数字媒体技术1班', 10001);
INSERT INTO `tbl_classes` VALUES (201402, '计算机科学与技术1班', 10001);
INSERT INTO `tbl_classes` VALUES (201403, '计算机科学与技术2班', 10001);
INSERT INTO `tbl_classes` VALUES (201404, '软件工程1班', 10001);
INSERT INTO `tbl_classes` VALUES (201405, '软件工程2班', 10001);
INSERT INTO `tbl_classes` VALUES (201406, '网络工程1班', 10001);
INSERT INTO `tbl_classes` VALUES (201407, '网络工程2班', 10001);
INSERT INTO `tbl_classes` VALUES (201408, '物联网工程1班', 10001);
INSERT INTO `tbl_classes` VALUES (201409, '通信工程1班', 10002);
INSERT INTO `tbl_classes` VALUES (201410, '通信工程2班', 10002);
INSERT INTO `tbl_classes` VALUES (201411, '广播电视工程1班', 10002);
INSERT INTO `tbl_classes` VALUES (201412, '广播电视工程2班', 10002);
INSERT INTO `tbl_classes` VALUES (201413, '信息工程1班', 10002);
INSERT INTO `tbl_classes` VALUES (201414, '信息工程2班', 10002);
INSERT INTO `tbl_classes` VALUES (201415, '电子信息科学与技术1班', 10002);
INSERT INTO `tbl_classes` VALUES (201416, '电子信息工程1班', 10002);
INSERT INTO `tbl_classes` VALUES (201417, '电信工程及管理1班', 10002);
INSERT INTO `tbl_classes` VALUES (201418, '空间信息与数字技术1班', 10002);
INSERT INTO `tbl_classes` VALUES (201419, '工商管理1班', 10004);
INSERT INTO `tbl_classes` VALUES (201420, '市场营销1班', 10004);
INSERT INTO `tbl_classes` VALUES (201421, '财务管理1班', 10004);
INSERT INTO `tbl_classes` VALUES (201422, '资产评估1班', 10004);
INSERT INTO `tbl_classes` VALUES (201423, '信息管理与信息系统1班', 10005);
INSERT INTO `tbl_classes` VALUES (201424, '工程管理1班', 10005);
INSERT INTO `tbl_classes` VALUES (201425, '英语1班', 10006);
INSERT INTO `tbl_classes` VALUES (201426, '德语1班', 10006);
INSERT INTO `tbl_classes` VALUES (201427, '电气工程及其自动化1班', 10003);
INSERT INTO `tbl_classes` VALUES (201428, '自动化1班', 10003);
INSERT INTO `tbl_classes` VALUES (201429, '轨道交通信号与控制1班', 10003);
INSERT INTO `tbl_classes` VALUES (201430, '机械电子工程1班', 10003);
INSERT INTO `tbl_classes` VALUES (201431, '建筑电气与智能化1班', 10003);
INSERT INTO `tbl_classes` VALUES (201432, '机械设计制造及其自动化1班', 10003);
INSERT INTO `tbl_classes` VALUES (201433, '测控技术与仪器1班', 10003);
INSERT INTO `tbl_classes` VALUES (201434, '车辆工程1班', 10003);
INSERT INTO `tbl_classes` VALUES (201435, '光电信息科学与工程1班', 10007);
INSERT INTO `tbl_classes` VALUES (201436, '微电子科学与工程1班', 10007);
INSERT INTO `tbl_classes` VALUES (201437, '	动画1班', 10008);
INSERT INTO `tbl_classes` VALUES (201438, '数字媒体艺术1班', 10008);
INSERT INTO `tbl_classes` VALUES (201439, '广播电视编导1班', 10008);
INSERT INTO `tbl_classes` VALUES (201440, '电气工程及其自动化1班', 10010);
INSERT INTO `tbl_classes` VALUES (201441, '通信工程1班', 10009);
INSERT INTO `tbl_classes` VALUES (201442, '财务管理1班', 10009);
INSERT INTO `tbl_classes` VALUES (201443, '工商管理1班', 10009);
INSERT INTO `tbl_classes` VALUES (201444, '电气工程及其自动化1班', 10009);
INSERT INTO `tbl_classes` VALUES (201445, '数字媒体技术1班', 10009);
INSERT INTO `tbl_classes` VALUES (201446, '广播电视编导1班', 10009);

-- ----------------------------
-- Table structure for tbl_course
-- ----------------------------
DROP TABLE IF EXISTS `tbl_course`;
CREATE TABLE `tbl_course`  (
  `cou_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '课程ID',
  `cou_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程名字',
  `cou_hour` int(2) NULL DEFAULT NULL COMMENT '课程学时',
  `cou_credit` int(2) NULL DEFAULT NULL COMMENT '课程学分',
  `cou_dept` int(11) NULL DEFAULT NULL COMMENT '课程所属院系',
  `cou_teacher` int(11) NULL DEFAULT NULL COMMENT '课程授课老师',
  `cou_time` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程上课时间',
  `cou_room` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '课程教室',
  PRIMARY KEY (`cou_id`) USING BTREE,
  INDEX `cou_fk_tea`(`cou_teacher`) USING BTREE,
  INDEX `cou_fk_dept`(`cou_dept`) USING BTREE,
  CONSTRAINT `cou_fk_dept` FOREIGN KEY (`cou_dept`) REFERENCES `tbl_department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `cou_fk_tea` FOREIGN KEY (`cou_teacher`) REFERENCES `tbl_teacher` (`tea_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 60080 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_course
-- ----------------------------
INSERT INTO `tbl_course` VALUES (60001, '计算机科学导论', 64, 3, 10001, 20002, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60002, '大学英语（1）', 64, 3, 10006, 20016, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60003, '绘画基础', 64, 3, 10008, 20011, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60004, '体育（1）', 64, 3, 10001, 20020, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60005, '思想道德修养与法律基础', 64, 3, 10012, 20009, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60006, '高等数学（1）', 64, 3, 10011, 20010, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60008, '从小说到电影', 64, 3, 10015, 20014, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60009, '	经济学', 64, 3, 10015, 20014, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60010, '形势与政策', 64, 3, 10014, 20039, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60011, '军训(含军事理论课、入学、安全教育)', 64, 3, 10014, 20012, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60012, 'C语言程序设计课程设计', 64, 3, 10001, 20006, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60013, '大学英语（2）', 64, 3, 10006, 20017, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60014, '体育（2）', 64, 3, 10018, 20017, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60015, '马克思主义基本原理', 64, 3, 10012, 20009, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60016, '高等数学（2）', 64, 3, 10011, 20010, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60017, '线性代数', 64, 3, 10011, 20011, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60018, '大学物理（A）', 64, 3, 10012, 20006, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60019, '创意写作', 64, 3, 10012, 20009, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60020, '美国社会的公共政策', 64, 3, 10015, 20014, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60021, '经典电影赏析', 64, 3, 10001, 20006, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60022, '大学生职业发展与就业指导（含心理教育）', 64, 3, 10001, 20006, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60023, 'Java多媒体程序设计', 64, 3, 10001, 20007, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60024, '大学英语（3）', 64, 3, 10001, 20007, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60025, '体育（3）', 64, 3, 10001, 20007, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60026, '毛泽东思想和中国特色社会主义理论体系概论', 64, 3, 10001, 20007, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60027, '物理实验（A）', 64, 3, 10001, 20008, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60028, '生命科学中的伦理', 64, 3, 10001, 20008, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60029, '修辞与论理', 64, 3, 10001, 20008, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60030, '当代世界的国际冲突', 64, 3, 10001, 20009, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60031, '形势与政策', 64, 3, 10001, 20009, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60032, '数据库原理课程设计', 64, 3, 10001, 20009, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60033, '数据库原理与应用', 64, 3, 10001, 20009, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60034, '大学英语（4）', 64, 3, 10001, 20010, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60035, '动画设计原理与技法', 64, 3, 10001, 20010, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60036, '体育（4）', 64, 3, 10001, 20010, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60037, '中国近现代史纲要', 64, 3, 10001, 20010, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60038, '概率论与数理统计', 64, 3, 10001, 20010, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60039, '	苏格拉底、孔子及其门徒所建立的世界', 64, 3, 10001, 20010, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60040, '	幸福课', 64, 3, 10001, 20011, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60041, '钓鱼城与世界中古历史', 64, 3, 10001, 20011, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60042, '游泳', 64, 3, 10001, 20011, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60043, '计算机网络', 64, 3, 10001, 20011, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60044, 'Web动态网页设计', 64, 3, 10001, 20012, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60045, '游戏开发与制作', 64, 3, 10001, 20012, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60046, '	数字图像处理', 64, 3, 10001, 20012, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60047, '动漫设计', 64, 3, 10001, 20001, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60048, '拓展训练', 64, 3, 10001, 20013, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60049, '职场关键能力', 64, 3, 10001, 20013, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60050, '正义论', 64, 3, 10001, 20013, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60051, '弗洛伊德与荣格、阿德勒', 64, 3, 10001, 20001, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60052, '形势与政策3', 64, 3, 10001, 20013, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60053, '云计算与物联网', 64, 3, 10001, 20001, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60054, 'Web动态网页课程设计', 64, 3, 10001, 20013, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60055, '人机交互技术', 64, 3, 10001, 20001, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60056, '流媒体技术', 64, 3, 10001, 20014, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60057, '移动游戏开发', 64, 3, 10001, 20014, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60058, '	数字影视合成', 64, 3, 10001, 20001, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60059, '数字影像编辑', 64, 3, 10001, 20014, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60060, '欧洲文明的现代历程	', 64, 3, 10001, 20002, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60061, '音乐剧', 64, 3, 10001, 20002, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60062, '中国社会公共政策及城市化研究', 64, 3, 10001, 20003, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60063, '毕业实习', 64, 3, 10001, 20003, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60064, '三维角色动画', 64, 3, 10001, 20002, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60065, '数字影视合成综合课程设计', 64, 3, 10001, 20003, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60066, '	经典演讲', 64, 3, 10001, 20003, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60067, '技能与创新', 64, 3, 10001, 20003, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60068, '	形势与政策4', 64, 3, 10001, 20003, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60069, '大学生职业发展与就业指导', 64, 3, 10001, 20004, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60070, '志愿者服务（含社会工作、公益活动）', 64, 3, 10001, 20005, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60071, '艺术修养与实践', 64, 3, 10001, 20006, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60072, '	竞技体育', 64, 3, 10001, 20005, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60073, '校园活动与社会实践', 64, 3, 10001, 20005, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60074, 'C语言程序设计', 64, 3, 10001, 20005, '周一上午3,4节', '5教403');
INSERT INTO `tbl_course` VALUES (60075, '操作系统概述', 64, 4, 10001, 20006, '周一上午3,4节', '四教403');
INSERT INTO `tbl_course` VALUES (60077, '编译原理', 64, 4, 10001, 20014, '周五上午1,2节', '一教703');
INSERT INTO `tbl_course` VALUES (60078, '数据结构', 64, 4, 10001, 20003, '周三下午5,6节', '二教305');
INSERT INTO `tbl_course` VALUES (60079, '项目管理', 36, 4, 10001, 20006, '周四下午7,8节', '三教403');

-- ----------------------------
-- Table structure for tbl_department
-- ----------------------------
DROP TABLE IF EXISTS `tbl_department`;
CREATE TABLE `tbl_department`  (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '院系ID',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '院系名称',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10022 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_department
-- ----------------------------
INSERT INTO `tbl_department` VALUES (10001, '计算机科学系');
INSERT INTO `tbl_department` VALUES (10002, '通信与信息工程系');
INSERT INTO `tbl_department` VALUES (10003, '自动化系');
INSERT INTO `tbl_department` VALUES (10004, '淬炼商学院');
INSERT INTO `tbl_department` VALUES (10005, '管理工程系');
INSERT INTO `tbl_department` VALUES (10006, '外国语言文学系');
INSERT INTO `tbl_department` VALUES (10007, '光电信息系');
INSERT INTO `tbl_department` VALUES (10008, '艺术传媒学院');
INSERT INTO `tbl_department` VALUES (10009, '远景学院');
INSERT INTO `tbl_department` VALUES (10010, '中德应用技术学院');
INSERT INTO `tbl_department` VALUES (10011, '数理教学部');
INSERT INTO `tbl_department` VALUES (10012, '思政教学部');
INSERT INTO `tbl_department` VALUES (10013, '实训中心');
INSERT INTO `tbl_department` VALUES (10014, '学生处');
INSERT INTO `tbl_department` VALUES (10015, '通识教学部');
INSERT INTO `tbl_department` VALUES (10016, '双体系卓越人才教育基地');
INSERT INTO `tbl_department` VALUES (10017, '艺术教育中心');
INSERT INTO `tbl_department` VALUES (10018, '竞技体育中心');
INSERT INTO `tbl_department` VALUES (10019, '钓鱼城研究院');
INSERT INTO `tbl_department` VALUES (10020, '大城市化战略研究院');
INSERT INTO `tbl_department` VALUES (10021, '团委');

-- ----------------------------
-- Table structure for tbl_role
-- ----------------------------
DROP TABLE IF EXISTS `tbl_role`;
CREATE TABLE `tbl_role`  (
  `role_id` int(11) NOT NULL COMMENT '权限ID',
  `role_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '权限类别',
  `permissions` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_role
-- ----------------------------
INSERT INTO `tbl_role` VALUES (1, 'admin', NULL);
INSERT INTO `tbl_role` VALUES (2, 'teacher', NULL);
INSERT INTO `tbl_role` VALUES (3, 'student', NULL);

-- ----------------------------
-- Table structure for tbl_score
-- ----------------------------
DROP TABLE IF EXISTS `tbl_score`;
CREATE TABLE `tbl_score`  (
  `score_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '分数记录',
  `score_stu` int(11) NULL DEFAULT NULL COMMENT '学生信息',
  `score_cou` int(11) NULL DEFAULT NULL COMMENT '课程信息',
  `score_dept` int(11) NULL DEFAULT NULL COMMENT '院系信息',
  `score_tea` int(11) NULL DEFAULT NULL COMMENT '教师信息',
  `score_value` int(11) NULL DEFAULT NULL COMMENT '分数',
  `score_year` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学年',
  `score_term` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学期',
  PRIMARY KEY (`score_id`) USING BTREE,
  INDEX `sc_fk_tea`(`score_tea`) USING BTREE,
  INDEX `sc_fk_cou`(`score_cou`) USING BTREE,
  INDEX `sc_fk_dept`(`score_dept`) USING BTREE,
  INDEX `sc_fk_stu`(`score_stu`) USING BTREE,
  CONSTRAINT `sc_fk_cou` FOREIGN KEY (`score_cou`) REFERENCES `tbl_course` (`cou_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sc_fk_dept` FOREIGN KEY (`score_dept`) REFERENCES `tbl_department` (`dept_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sc_fk_stu` FOREIGN KEY (`score_stu`) REFERENCES `tbl_student` (`stu_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sc_fk_tea` FOREIGN KEY (`score_tea`) REFERENCES `tbl_teacher` (`tea_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 91 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_score
-- ----------------------------
INSERT INTO `tbl_score` VALUES (1, 2014210874, 60001, 10001, 20001, 88, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (2, 2014210874, 60002, 10006, 20016, 88, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (3, 2014210874, 60003, 10001, 20011, 88, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (4, 2014210874, 60004, 10001, 20012, 88, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (5, 2014210874, 60005, 10012, 20009, 88, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (6, 2014210874, 60006, 10011, 20010, 70, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (8, 2014210874, 60008, 10015, 20014, 88, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (9, 2014210874, 60009, 10015, 20014, 88, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (10, 2014210874, 60010, 10014, 20013, 88, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (11, 2014210874, 60011, 10014, 20012, 88, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (12, 2014210874, 60012, 10001, 20006, 88, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (13, 2014210874, 60013, 10006, 20017, 88, '2014-2015', '2');
INSERT INTO `tbl_score` VALUES (14, 2014210874, 60014, 10018, 20017, 88, '2014-2015', '2');
INSERT INTO `tbl_score` VALUES (15, 2014210874, 60015, 10012, 20009, 88, '2014-2015', '2');
INSERT INTO `tbl_score` VALUES (16, 2014210874, 60016, 10011, 20010, 88, '2014-2015', '2');
INSERT INTO `tbl_score` VALUES (17, 2014210874, 60017, 10011, 20011, 88, '2014-2015', '2');
INSERT INTO `tbl_score` VALUES (18, 2014210874, 60018, 10012, 20001, 88, '2014-2015', '2');
INSERT INTO `tbl_score` VALUES (19, 2014210874, 60019, 10001, 20001, 88, '2014-2015', '2');
INSERT INTO `tbl_score` VALUES (20, 2014210874, 60020, 10001, 20001, 88, '2014-2015', '2');
INSERT INTO `tbl_score` VALUES (21, 2014210874, 60021, 10001, 20001, 88, '2014-2015', '2');
INSERT INTO `tbl_score` VALUES (22, 2014210874, 60022, 10001, 20001, 88, '2014-2015', '2');
INSERT INTO `tbl_score` VALUES (23, 2014210874, 60023, 10001, 20001, 88, '2015-2016', '1');
INSERT INTO `tbl_score` VALUES (24, 2014210874, 60024, 10001, 20001, 88, '2015-2016', '1');
INSERT INTO `tbl_score` VALUES (25, 2014210874, 60025, 10001, 20001, 88, '2015-2016', '1');
INSERT INTO `tbl_score` VALUES (26, 2014210874, 60026, 10001, 20001, 88, '2015-2016', '1');
INSERT INTO `tbl_score` VALUES (27, 2014210874, 60027, 10001, 20001, 88, '2015-2016', '1');
INSERT INTO `tbl_score` VALUES (28, 2014210874, 60028, 10001, 20001, 88, '2015-2016', '1');
INSERT INTO `tbl_score` VALUES (29, 2014210874, 60029, 10001, 20001, 88, '2015-2016', '1');
INSERT INTO `tbl_score` VALUES (30, 2014210874, 60030, 10001, 20001, 88, '2015-2016', '1');
INSERT INTO `tbl_score` VALUES (31, 2014210874, 60031, 10001, 20001, 88, '2015-2016', '1');
INSERT INTO `tbl_score` VALUES (32, 2014210874, 60032, 10001, 20001, 88, '2015-2016', '2');
INSERT INTO `tbl_score` VALUES (33, 2014210874, 60033, 10001, 20001, 88, '2015-2016', '2');
INSERT INTO `tbl_score` VALUES (34, 2014210874, 60034, 10001, 20001, 88, '2015-2016', '2');
INSERT INTO `tbl_score` VALUES (35, 2014210874, 60035, 10001, 20001, 88, '2015-2016', '2');
INSERT INTO `tbl_score` VALUES (36, 2014210874, 60036, 10001, 20001, 88, '2015-2016', '2');
INSERT INTO `tbl_score` VALUES (37, 2014210874, 60037, 10001, 20001, 88, '2015-2016', '2');
INSERT INTO `tbl_score` VALUES (38, 2014210874, 60038, 10001, 20001, 88, '2015-2016', '2');
INSERT INTO `tbl_score` VALUES (39, 2014210874, 60039, 10001, 20001, 88, '2015-2016', '2');
INSERT INTO `tbl_score` VALUES (40, 2014210874, 60040, 10001, 20001, 88, '2015-2016', '2');
INSERT INTO `tbl_score` VALUES (41, 2014210874, 60041, 10001, 20001, 88, '2015-2016', '2');
INSERT INTO `tbl_score` VALUES (42, 2014210874, 60042, 10001, 20001, 88, '2015-2016', '2');
INSERT INTO `tbl_score` VALUES (43, 2014210874, 60043, 10001, 20001, 88, '2016-2017', '1');
INSERT INTO `tbl_score` VALUES (44, 2014210874, 60044, 10001, 20001, 88, '2016-2017', '1');
INSERT INTO `tbl_score` VALUES (45, 2014210874, 60045, 10001, 20001, 88, '2016-2017', '1');
INSERT INTO `tbl_score` VALUES (46, 2014210874, 60046, 10001, 20001, 88, '2016-2017', '1');
INSERT INTO `tbl_score` VALUES (47, 2014210874, 60047, 10001, 20001, 88, '2016-2017', '1');
INSERT INTO `tbl_score` VALUES (48, 2014210874, 60048, 10001, 20001, 88, '2016-2017', '1');
INSERT INTO `tbl_score` VALUES (49, 2014210874, 60049, 10001, 20001, 88, '2016-2017', '1');
INSERT INTO `tbl_score` VALUES (50, 2014210874, 60050, 10001, 20001, 88, '2016-2017', '1');
INSERT INTO `tbl_score` VALUES (51, 2014210874, 60051, 10001, 20001, 88, '2016-2017', '1');
INSERT INTO `tbl_score` VALUES (52, 2014210874, 60052, 10001, 20001, 88, '2016-2017', '1');
INSERT INTO `tbl_score` VALUES (53, 2014210874, 60053, 10001, 20001, 88, '2016-2017', '1');
INSERT INTO `tbl_score` VALUES (54, 2014210874, 60054, 10001, 20001, 88, '2016-2017', '2');
INSERT INTO `tbl_score` VALUES (55, 2014210874, 60055, 10001, 20001, 88, '2016-2017', '2');
INSERT INTO `tbl_score` VALUES (56, 2014210874, 60056, 10001, 20001, 88, '2016-2017', '2');
INSERT INTO `tbl_score` VALUES (57, 2014210874, 60057, 10001, 20001, 88, '2016-2017', '2');
INSERT INTO `tbl_score` VALUES (58, 2014210874, 60058, 10001, 20001, 88, '2016-2017', '2');
INSERT INTO `tbl_score` VALUES (59, 2014210874, 60059, 10001, 20001, 88, '2016-2017', '2');
INSERT INTO `tbl_score` VALUES (60, 2014210874, 60060, 10001, 20001, 88, '2016-2017', '2');
INSERT INTO `tbl_score` VALUES (61, 2014210874, 60061, 10001, 20001, 88, '2016-2017', '2');
INSERT INTO `tbl_score` VALUES (62, 2014210874, 60062, 10001, 20001, 88, '2016-2017', '2');
INSERT INTO `tbl_score` VALUES (63, 2014210874, 60063, 10001, 20001, 88, '2017-2018', '1');
INSERT INTO `tbl_score` VALUES (64, 2014210874, 60064, 10001, 20001, 88, '2017-2018', '1');
INSERT INTO `tbl_score` VALUES (65, 2014210874, 60065, 10001, 20001, 88, '2017-2018', '1');
INSERT INTO `tbl_score` VALUES (66, 2014210874, 60066, 10001, 20001, 88, '2017-2018', '1');
INSERT INTO `tbl_score` VALUES (67, 2014210874, 60067, 10001, 20001, 88, '2017-2018', '1');
INSERT INTO `tbl_score` VALUES (68, 2014210874, 60068, 10001, 20001, 88, '2017-2018', '1');
INSERT INTO `tbl_score` VALUES (69, 2014210874, 60069, 10001, 20001, 88, '2017-2018', '1');
INSERT INTO `tbl_score` VALUES (70, 2014210874, 60070, 10001, 20001, 88, '2017-2018', '1');
INSERT INTO `tbl_score` VALUES (71, 2014210874, 60071, 10001, 20001, 88, '2017-2018', '1');
INSERT INTO `tbl_score` VALUES (72, 2014210874, 60072, 10001, 20001, 88, '2017-2018', '1');
INSERT INTO `tbl_score` VALUES (73, 2014210874, 60073, 10001, 20002, 88, '2017-2018', '1');
INSERT INTO `tbl_score` VALUES (74, 2014210874, 60074, 10001, 20003, 88, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (75, 2014210875, 60001, 10011, 20002, 90, '2014-2015', '2');
INSERT INTO `tbl_score` VALUES (76, 2014210876, 60006, 10011, 20010, 78, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (77, 2014210877, 60006, 10011, 20010, 56, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (78, 2014210878, 60006, 10011, 20010, 56, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (79, 2014210879, 60006, 10011, 20010, 66, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (80, 2014210880, 60006, 10011, 20010, 88, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (81, 2014210881, 60006, 10011, 20010, 67, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (82, 2014210882, 60006, 10011, 20010, 84, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (83, 2014210883, 60006, 10011, 20010, NULL, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (84, 2014210884, 60006, 10011, 20010, NULL, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (85, 2014210885, 60006, 10011, 20010, NULL, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (86, 2014210886, 60006, 10011, 20010, NULL, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (87, 2014210887, 60006, 10011, 20010, NULL, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (89, 2014210888, 60006, 10011, 20010, NULL, '2014-2015', '1');
INSERT INTO `tbl_score` VALUES (90, 2014210883, 60001, 10001, 20002, 60, '2014-2015', '1');

-- ----------------------------
-- Table structure for tbl_student
-- ----------------------------
DROP TABLE IF EXISTS `tbl_student`;
CREATE TABLE `tbl_student`  (
  `stu_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学号',
  `stu_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '名字',
  `stu_age` int(3) NULL DEFAULT NULL COMMENT '年龄',
  `stu_gender` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `stu_dept` int(11) NULL DEFAULT NULL COMMENT '院系',
  `stu_classes` int(11) NULL DEFAULT NULL COMMENT '班级',
  PRIMARY KEY (`stu_id`) USING BTREE,
  INDEX `stu_fk_dept`(`stu_dept`) USING BTREE,
  INDEX `stu_fk_classes`(`stu_classes`) USING BTREE,
  CONSTRAINT `stu_fk_classes` FOREIGN KEY (`stu_classes`) REFERENCES `tbl_classes` (`class_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `stu_fk_dept` FOREIGN KEY (`stu_dept`) REFERENCES `tbl_department` (`dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 2014210980 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_student
-- ----------------------------
INSERT INTO `tbl_student` VALUES (2014210874, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210875, '周帅', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210876, '张子唯', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210877, '禹贵稀', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210878, '刘冬', 22, '男', 10005, 201423);
INSERT INTO `tbl_student` VALUES (2014210879, '甘航溢', 23, '男', 10006, 201425);
INSERT INTO `tbl_student` VALUES (2014210880, '冯思瑜', 22, '男', 10007, 201435);
INSERT INTO `tbl_student` VALUES (2014210881, '冯会连', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210882, '杜源源', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210883, '唐漫雅', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210884, '周美彤', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210885, '包濬滔1', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210886, '包濬滔2', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210887, '包濬滔3', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210888, '包濬滔4', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210889, '包濬滔5', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210890, '包濬滔6', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210891, '包濬滔7', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210892, '包濬滔8', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210893, '包濬滔9', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210894, '包濬滔10', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210895, '周帅1', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210896, '周帅2', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210897, '周帅3', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210898, '周帅4', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210899, '周帅5', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210900, '周帅6', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210901, '周帅7', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210902, '周帅8', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210903, '周帅9', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210904, '周帅10', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210905, '张子唯1', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210906, '张子唯2', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210907, '张子唯3', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210908, '张子唯4', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210909, '张子唯5', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210910, '张子唯6', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210911, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210912, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210913, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210914, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210915, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210916, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210917, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210920, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210921, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210922, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210923, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210924, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210925, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210926, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210927, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210928, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210929, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210930, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210931, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210932, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210933, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210934, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210935, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210936, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210937, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210938, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210939, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210940, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210941, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210942, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210943, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210944, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210945, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210946, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210947, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210948, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210949, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210950, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210951, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210952, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210953, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210954, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210955, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210956, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210957, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210958, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210959, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210960, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210961, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210962, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210963, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210964, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210965, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210966, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210967, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210968, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210969, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210970, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210971, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210972, '包濬滔', 22, '男', 10001, 201401);
INSERT INTO `tbl_student` VALUES (2014210973, '包濬滔', 22, '男', 10003, 201427);
INSERT INTO `tbl_student` VALUES (2014210974, '张三', 22, '男', 10002, 201409);
INSERT INTO `tbl_student` VALUES (2014210975, '李四', 22, '男', 10003, 201427);
INSERT INTO `tbl_student` VALUES (2014210976, '哈哈', 22, '男', 10006, 201426);
INSERT INTO `tbl_student` VALUES (2014210977, '李建国', 21, '男', 10005, 201424);
INSERT INTO `tbl_student` VALUES (2014210978, '地方', 22, '男', 10007, 201435);
INSERT INTO `tbl_student` VALUES (2014210979, '哈哈', 22, '男', 10004, 201419);

-- ----------------------------
-- Table structure for tbl_teacher
-- ----------------------------
DROP TABLE IF EXISTS `tbl_teacher`;
CREATE TABLE `tbl_teacher`  (
  `tea_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '教师ID',
  `tea_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师姓名',
  `tea_age` int(3) NULL DEFAULT NULL COMMENT '教师年龄',
  `tea_gender` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师性别',
  `tea_title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教师职称',
  `tea_dept` int(11) NULL DEFAULT NULL COMMENT '所在院系',
  PRIMARY KEY (`tea_id`) USING BTREE,
  INDEX `tea_fk_dept`(`tea_dept`) USING BTREE,
  CONSTRAINT `tea_fk_dept` FOREIGN KEY (`tea_dept`) REFERENCES `tbl_department` (`dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 20044 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_teacher
-- ----------------------------
INSERT INTO `tbl_teacher` VALUES (20001, '蔡宇', 39, '男', '助教', 10001);
INSERT INTO `tbl_teacher` VALUES (20002, '肖铭', 38, '男', '助教', 10001);
INSERT INTO `tbl_teacher` VALUES (20003, '张三1', 38, '男', '助教', 10001);
INSERT INTO `tbl_teacher` VALUES (20004, '张三2', 38, '男', '助教', 10001);
INSERT INTO `tbl_teacher` VALUES (20005, '哈哈', 38, '男', '助教', 10012);
INSERT INTO `tbl_teacher` VALUES (20006, '张三4', 38, '男', '助教', 10001);
INSERT INTO `tbl_teacher` VALUES (20007, '张三5', 38, '男', '助教', 10012);
INSERT INTO `tbl_teacher` VALUES (20008, '张三6', 38, '男', '助教', 10011);
INSERT INTO `tbl_teacher` VALUES (20009, '张三7', 38, '男', '助教', 10012);
INSERT INTO `tbl_teacher` VALUES (20010, '蒋观敏', 38, '女', '助教', 10011);
INSERT INTO `tbl_teacher` VALUES (20011, '张三9', 38, '男', '助教', 10011);
INSERT INTO `tbl_teacher` VALUES (20012, '李四1', 38, '男', '助教', 10014);
INSERT INTO `tbl_teacher` VALUES (20013, '李四2', 38, '男', '助教', 10014);
INSERT INTO `tbl_teacher` VALUES (20014, '李四3', 38, '男', '助教', 10015);
INSERT INTO `tbl_teacher` VALUES (20015, '李四4', 38, '男', '助教', 10001);
INSERT INTO `tbl_teacher` VALUES (20016, '李四5', 38, '男', '助教', 10006);
INSERT INTO `tbl_teacher` VALUES (20017, '李四6', 38, '男', '讲师', 10006);
INSERT INTO `tbl_teacher` VALUES (20018, '李四7', 38, '男', '助教', 10001);
INSERT INTO `tbl_teacher` VALUES (20019, '李四8', 38, '男', '助教', 10001);
INSERT INTO `tbl_teacher` VALUES (20020, '李四9', 38, '男', '助教', 10001);
INSERT INTO `tbl_teacher` VALUES (20021, '王五1', 38, '男', '助教', 10001);
INSERT INTO `tbl_teacher` VALUES (20022, '王五2', 38, '男', '助教', 10008);
INSERT INTO `tbl_teacher` VALUES (20023, '王五3', 38, '男', '助教', 10008);
INSERT INTO `tbl_teacher` VALUES (20024, '王五4', 38, '男', '助教', 10008);
INSERT INTO `tbl_teacher` VALUES (20025, '王五5', 38, '男', '助教', 10008);
INSERT INTO `tbl_teacher` VALUES (20026, '王五6', 38, '男', '助教', 10008);
INSERT INTO `tbl_teacher` VALUES (20027, '王五7', 38, '男', '助教', 10008);
INSERT INTO `tbl_teacher` VALUES (20028, '王五8', 38, '男', '助教', 10008);
INSERT INTO `tbl_teacher` VALUES (20029, '王五9', 38, '男', '助教', 10008);
INSERT INTO `tbl_teacher` VALUES (20030, '马六1', 38, '男', '助教', 10018);
INSERT INTO `tbl_teacher` VALUES (20031, '马六2', 38, '男', '助教', 10017);
INSERT INTO `tbl_teacher` VALUES (20032, '马六3', 38, '男', '助教', 10019);
INSERT INTO `tbl_teacher` VALUES (20033, '马六4', 38, '男', '助教', 10016);
INSERT INTO `tbl_teacher` VALUES (20034, '马六5', 38, '男', '助教', 10020);
INSERT INTO `tbl_teacher` VALUES (20035, '马六6', 38, '男', '助教', 10021);
INSERT INTO `tbl_teacher` VALUES (20036, '马六7', 38, '男', '助教', 10014);
INSERT INTO `tbl_teacher` VALUES (20037, '马六8', 38, '男', '助教', 10017);
INSERT INTO `tbl_teacher` VALUES (20038, '马六9', 38, '男', '助教', 10014);
INSERT INTO `tbl_teacher` VALUES (20039, '曹玉娇', 38, '男', '助教', 10014);
INSERT INTO `tbl_teacher` VALUES (20040, '罗新宇', 38, '男', '助教', 10013);
INSERT INTO `tbl_teacher` VALUES (20042, '曹玉娇', 28, '男', '助教', 10014);
INSERT INTO `tbl_teacher` VALUES (20043, '袁梦茹', 35, '女', '讲师', 10011);

-- ----------------------------
-- Table structure for tbl_user
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user`  (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户记录',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '123456' COMMENT '密码',
  `role` int(11) NULL DEFAULT NULL COMMENT '权限ID',
  PRIMARY KEY (`u_id`) USING BTREE,
  INDEX `role_fk_rolename`(`role`) USING BTREE,
  CONSTRAINT `role_fk_rolename` FOREIGN KEY (`role`) REFERENCES `tbl_role` (`role_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO `tbl_user` VALUES (1, 'admin', '123456', 1);
INSERT INTO `tbl_user` VALUES (2, '20001', '123456', 2);
INSERT INTO `tbl_user` VALUES (3, '20002', '123456', 2);
INSERT INTO `tbl_user` VALUES (4, '20003', '123456', 2);
INSERT INTO `tbl_user` VALUES (5, '20004', '123456', 2);
INSERT INTO `tbl_user` VALUES (6, '20005', '123456', 2);
INSERT INTO `tbl_user` VALUES (7, '2014210874', '123456', 3);
INSERT INTO `tbl_user` VALUES (8, '2104210875', '123456', 3);
INSERT INTO `tbl_user` VALUES (9, '2104210876', '123456', 3);
INSERT INTO `tbl_user` VALUES (10, '2104210877', '123456', 3);
INSERT INTO `tbl_user` VALUES (11, '2104210878', '123456', 3);
INSERT INTO `tbl_user` VALUES (12, '2104210879', '123456', 3);
INSERT INTO `tbl_user` VALUES (13, '2104210880', '123456', 3);
INSERT INTO `tbl_user` VALUES (14, '2104210881', '123456', 3);
INSERT INTO `tbl_user` VALUES (15, '2104210882', '123456', 3);
INSERT INTO `tbl_user` VALUES (16, '2014210883', '123456', 3);
INSERT INTO `tbl_user` VALUES (18, '2014210884', '123456', 3);
INSERT INTO `tbl_user` VALUES (19, '20010', '123456', 2);

SET FOREIGN_KEY_CHECKS = 1;
