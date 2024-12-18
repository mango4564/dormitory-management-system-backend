/*
Navicat Premium Data Transfer
Source Server         : localhost_3306
Source Server Type    : MySQL
Source Server Version : 50726
Source Host           : localhost:3306
Source Schema         : cs560370_20220221200046
Target Server Type    : MySQL
Target Server Version : 50726
File Encoding         : 65001
Date: 25/02/2022 10:31:30
*/

SET NAMES utf8mb4;

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for access_token
-- ----------------------------
DROP TABLE IF EXISTS `access_token`;

CREATE TABLE `access_token` (
    `token_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '临时访问牌ID',
    `token` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '临时访问牌',
    `info` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
    `maxage` int(2) NOT NULL DEFAULT 2 COMMENT '最大寿命：默认2小时',
    `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间：',
    `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间：',
    `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '用户编号:',
    PRIMARY KEY (`token_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 106 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '临时访问牌' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of access_token
-- ----------------------------
INSERT INTO
    `access_token`
VALUES (
        57,
        '5accf85cb6a7f06f0aa2968deadaec1b',
        NULL,
        2,
        '2022-01-14 07:32:09',
        '2022-01-14 07:32:09',
        1
    );


-- ----------------------------

-- ----------------------------

-- ----------------------------
-- Table structure for dormitory_allocation
-- ----------------------------
DROP TABLE IF EXISTS `dormitory_allocation`;

CREATE TABLE `dormitory_allocation` (
    `dormitory_allocation_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '宿舍分配ID',
    `building` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '楼栋',
    `floor` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '楼层',
    `room_number` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房号',
    `room_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间类型',
    `bed_number` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '床位号',
    `seize_a_seat` int(11) NULL DEFAULT 0 COMMENT '占位',
    `student_account` int(11) NULL DEFAULT 0 COMMENT '学生账号',
    `housekeeping_personnel` int(11) NULL DEFAULT 0 COMMENT '宿管人员',
    `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
    `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
    `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
    PRIMARY KEY (`dormitory_allocation_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '宿舍分配' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dormitory_allocation
-- ----------------------------
INSERT INTO
    `dormitory_allocation`
VALUES (
        1,
        '楼栋1',
        '楼层1',
        '房号1',
        '房间类型1',
        '床位号1',
        5,
        0,
        0,
        0,
        '2022-02-24 07:07:35',
        '2022-02-24 07:07:35'
    );


-- ----------------------------
-- Table structure for dormitory_information
-- ----------------------------
DROP TABLE IF EXISTS `dormitory_information`;

CREATE TABLE `dormitory_information` (
    `dormitory_information_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '宿舍信息ID',
    `building` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '楼栋',
    `floor` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '楼层',
    `room_number` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房号',
    `room_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房间类型',
    `number_of_beds` int(11) NULL DEFAULT 0 COMMENT '床位数',
    `housekeeping_personnel` int(11) NULL DEFAULT 0 COMMENT '宿管人员',
    `remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
    `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
    `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
    `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
    PRIMARY KEY (`dormitory_information_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '宿舍信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dormitory_information
-- ----------------------------
INSERT INTO
    `dormitory_information`
VALUES (
        1,
        '楼栋1',
        '楼层1',
        '房号1',
        '房间类型1',
        5,
        0,
        '备注1',
        0,
        '2022-02-24 07:07:35',
        '2022-02-24 07:07:35'
    );


-- ----------------------------
-- Table structure for dormitory_notice
-- ----------------------------
DROP TABLE IF EXISTS `dormitory_notice`;

CREATE TABLE `dormitory_notice` (
    `dormitory_notice_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '宿舍通知ID',
    `number` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '编号',
    `notification_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通知类型',
    `notice_title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '通知标题',
    `housekeeping_personnel` int(11) NULL DEFAULT 0 COMMENT '宿管人员',
    `notice_content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '通知内容',
    `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
    `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
    `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
    PRIMARY KEY (`dormitory_notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '宿舍通知' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dormitory_notice
-- ----------------------------
INSERT INTO
    `dormitory_notice`
VALUES (
        1,
        '编号1',
        '通知类型1',
        '通知标题1',
        0,
        '此处可上传文字、图片、视频、超链接、表格等内容区1',
        0,
        '2022-02-24 07:07:36',
        '2022-02-24 07:07:36'
    );



INSERT INTO
    `dormitory_notice`
VALUES (
        9,
        '1645658089995',
        '处罚',
        '发挥教师的回复就开始的话地方',
        3,
        '<p>点击返回圣诞节回复空间的是否看几乎都是发好地方烦得很的方法和对方好地方</p>',
        0,
        '2022-02-24 07:15:10',
        '2022-02-24 07:15:10'
    );

-- ----------------------------
-- Table structure for dormitory_repair
-- ----------------------------
DROP TABLE IF EXISTS `dormitory_repair`;

CREATE TABLE `dormitory_repair` (
    `dormitory_repair_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '宿舍报修ID',
    `building` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '楼栋',
    `floor` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '楼层',
    `room_number` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '房号',
    `repair_type` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '报修类型',
    `housekeeping_personnel` int(11) NULL DEFAULT 0 COMMENT '宿管人员',
    `student` int(11) NULL DEFAULT 0 COMMENT '学生',
    `repair_reason` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '报修原因',
    `examine_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '未审核' COMMENT '审核状态',
    `examine_reply` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '审核回复',
    `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
    `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
    `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
    PRIMARY KEY (`dormitory_repair_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '宿舍报修' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dormitory_repair
-- ----------------------------
INSERT INTO
    `dormitory_repair`
VALUES (
        1,
        '楼栋1',
        '楼层1',
        '房号1',
        '报修类型1',
        0,
        0,
        '报修原因1',
        '未审核',
        '',
        0,
        '2022-02-24 07:07:36',
        '2022-02-24 07:07:36'
    );



-- ----------------------------
-- Table structure for hits
-- ----------------------------
DROP TABLE IF EXISTS `hits`;

CREATE TABLE `hits` (
    `hits_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '点赞ID：',
    `user_id` int(11) UNSIGNED NOT NULL DEFAULT 0 COMMENT '点赞人：',
    `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间：',
    `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间：',
    `source_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源表：',
    `source_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
    `source_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
    PRIMARY KEY (`hits_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hits
-- ----------------------------

-- ----------------------------
-- Table structure for housekeeping_personnel
-- ----------------------------
DROP TABLE IF EXISTS `housekeeping_personnel`;

CREATE TABLE `housekeeping_personnel` (
    `housekeeping_personnel_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '宿管人员ID',
    `gender` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
    `examine_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '已通过' COMMENT '审核状态',
    `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
    `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
    `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
    `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
    PRIMARY KEY (`housekeeping_personnel_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '宿管人员' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of housekeeping_personnel
-- ----------------------------
INSERT INTO
    `housekeeping_personnel`
VALUES (
        1,
        '男',
        '已通过',
        0,
        3,
        '2022-02-24 07:12:33',
        '2022-02-24 07:12:33'
    );

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
    `student_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生ID',
    `gender` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
    `age` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '年龄',
    `examine_state` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '已通过' COMMENT '审核状态',
    `recommend` int(11) NOT NULL DEFAULT 0 COMMENT '智能推荐',
    `user_id` int(11) NOT NULL DEFAULT 0 COMMENT '用户ID',
    `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
    `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
    PRIMARY KEY (`student_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '学生' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO
    `student`
VALUES (
        2,
        '女',
        '',
        '已通过',
        0,
        4,
        '2022-02-24 07:16:03',
        '2022-02-24 07:16:03'
    );

-- ----------------------------
-- Table structure for upload
-- ----------------------------
DROP TABLE IF EXISTS `upload`;

CREATE TABLE `upload` (
    `upload_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '上传ID',
    `name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件名',
    `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '访问路径',
    `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件路径',
    `display` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '显示顺序',
    `father_id` int(11) NULL DEFAULT 0 COMMENT '父级ID',
    `dir` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件夹',
    `type` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '文件类型',
    PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of upload
-- ----------------------------
INSERT INTO
    `upload`
VALUES (
        1,
        'movie.mp4',
        '/upload/movie.mp4',
        '',
        NULL,
        0,
        NULL,
        'video'
    );

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
    `user_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户ID：[0,8388607]用户获取其他与用户相关的数据',
    `state` smallint(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '账户状态：[0,10](1可用|2异常|3已冻结|4已注销)',
    `user_group` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在用户组：[0,32767]决定用户身份和权限',
    `login_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '上次登录时间：',
    `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号码：[0,11]用户的手机号码，用于找回密码时或登录时',
    `phone_state` smallint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '手机认证：[0,1](0未认证|1审核中|2已认证)',
    `username` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '用户名：[0,16]用户登录时所用的账户名称',
    `nickname` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '昵称：[0,16]',
    `password` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '密码：[0,32]用户登录所需的密码，由6-16位数字或英文组成',
    `email` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '邮箱：[0,64]用户的邮箱，用于找回密码时或登录时',
    `email_state` smallint(1) UNSIGNED NOT NULL DEFAULT 0 COMMENT '邮箱认证：[0,1](0未认证|1审核中|2已认证)',
    `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址：[0,255]',
    `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间：',
    PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户账户：用于保存用户登录信息' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO
    `user`
VALUES (
        1,
        1,
        '管理员',
        '2022-02-24 07:16:48',
        '15078907890',
        2,
        'admin',
        'admin',
        'bfd59291e825b5f2bbf1eb76569f8fe7',
        '11111@qq.com',
        2,
        '/api/upload/u=984185799,2448847625&fm=26&fmt=auto.jpg',
        '2022-02-19 07:32:09'
    );

INSERT INTO
    `user`
VALUES (
        3,
        1,
        '宿管人员',
        '2022-02-24 07:12:33',
        '15078907890',
        0,
        '22222',
        '宿管',
        '3d2172418ce305c7d16d4b05597c6a59',
        '2222@qq.com',
        0,
        NULL,
        '2022-02-24 07:12:33'
    );

INSERT INTO
    `user`
VALUES (
        4,
        1,
        '学生',
        '2022-02-24 07:16:03',
        '',
        0,
        '33333',
        '33333',
        'b7bc2a2f5bb6d521e64c8974c143e9a0',
        '',
        0,
        '',
        '2022-02-24 07:16:03'
    );

-- ----------------------------
-- Table structure for user_group
-- ----------------------------
DROP TABLE IF EXISTS `user_group`;

CREATE TABLE `user_group` (
    `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '用户组ID：[0,8388607]',
    `display` smallint(4) UNSIGNED NOT NULL DEFAULT 100 COMMENT '显示顺序：[0,1000]',
    `name` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '名称：[0,16]',
    `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述：[0,255]描述该用户组的特点或权限范围',
    `source_table` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源表：',
    `source_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '来源字段：',
    `source_id` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '来源ID：',
    `register` smallint(1) UNSIGNED NULL DEFAULT 0 COMMENT '注册位置:',
    `create_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间：',
    `update_time` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间：',
    PRIMARY KEY (`group_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户组：用于用户前端身份和鉴权' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_group
-- ----------------------------
INSERT INTO
    `user_group`
VALUES (
        1,
        100,
        '管理员',
        NULL,
        '',
        '',
        0,
        NULL,
        '2022-02-23 23:07:36',
        '2022-02-23 23:07:36'
    );

INSERT INTO
    `user_group`
VALUES (
        2,
        100,
        '游客',
        NULL,
        '',
        '',
        0,
        0,
        '2022-02-23 23:07:36',
        '2022-02-23 23:07:36'
    );

INSERT INTO
    `user_group`
VALUES (
        3,
        100,
        '学生',
        NULL,
        'student',
        'student_id',
        0,
        1,
        '2022-02-23 23:07:36',
        '2022-02-23 23:07:36'
    );

INSERT INTO
    `user_group`
VALUES (
        4,
        100,
        '宿管人员',
        NULL,
        'housekeeping_personnel',
        'housekeeping_personnel_id',
        0,
        1,
        '2022-02-23 23:07:36',
        '2022-02-23 23:07:36'
    );

-- ----------------------------
-- Table structure for auth
-- ----------------------------
DROP TABLE IF EXISTS `auth`;

CREATE TABLE `auth` (
    `auth_id` int auto_increment comment '授权ID' primary key,
    `user_group` varchar(64) null comment '用户组',
    `mod_name` varchar(64) null comment '模块名',
    `table_name` varchar(64) null comment '表名',
    `page_title` varchar(64) null comment '页面标题',
    `path` varchar(255) null comment '路由路径',
    `position` varchar(64) null comment '位置',
    `mode` varchar(64) null comment '跳转方式',
    `add` int default 0 null comment '是否可增加',
    `del` int default 0 null comment '是否可删除',
    `set` int default 0 null comment '是否可修改',
    `get` int default 0 null comment '是否可查看',
    `field_add` text null comment '添加字段',
    `field_set` text null comment '修改字段',
    `field_get` text null comment '查询字段',
    `table_nav_name` varchar(255) null comment '跨表导航名称',
    `table_nav` tinyint(1) default 0 null comment '是否跨表操作',
    `option` text null comment '配置',
    `create_time` timestamp default CURRENT_TIMESTAMP not null comment '创建时间',
    `update_time` timestamp default CURRENT_TIMESTAMP not null on update CURRENT_TIMESTAMP comment '更新时间'
) comment '定制授权' charset = utf8mb3;

-- ----------------------------
-- Records of auth
-- ----------------------------


SET FOREIGN_KEY_CHECKS = 1;