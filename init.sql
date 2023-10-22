-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
                            `id` bigint(20) NOT NULL COMMENT '主键',
                            `username` varchar(32) COLLATE utf8_bin NOT NULL COMMENT '用户名',
                            `password` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '密码',
                            `auth` int(11) NOT NULL DEFAULT '0' COMMENT '状态 0:无权限，1:有权限',
                            `status` int(11) NOT NULL DEFAULT '1' COMMENT '状态 0:禁用，1:启用',
                            `create_time` datetime NOT NULL COMMENT '创建时间',
                            `update_time` datetime NOT NULL COMMENT '更新时间',
                            `create_user` bigint(20) NOT NULL COMMENT '创建人',
                            `update_user` bigint(20) NOT NULL COMMENT '修改人',
                            PRIMARY KEY (`id`) USING BTREE,
                            UNIQUE KEY `idx_username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='用户表';

DROP TABLE IF EXISTS `post`;
CREATE TABLE `post` (
                         `id` bigint(20) NOT NULL COMMENT 'posts_id',
                         `post_content` longtext COLLATE utf8mb4_unicode_520_ci COMMENT 'md5类型正文',
                         `post_title` text COLLATE utf8mb4_unicode_520_ci COMMENT '标题',
                         `html_content` longtext COLLATE utf8mb4_unicode_520_ci COMMENT '正文html',
                         `menu_id` bigint(20) NOT NULL COMMENT '分栏id',
                         `create_time` datetime NOT NULL COMMENT '创建时间',
                         `update_time` datetime NOT NULL COMMENT '更新时间',
                         `create_user` bigint(20) NOT NULL COMMENT '创建人',
                         `update_user` bigint(20) NOT NULL COMMENT '修改人',
                         `page_view` int unsigned DEFAULT '0' NULL COMMENT '浏览量',
                         PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='文章';


-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
                            `id` bigint(20) NOT NULL COMMENT '主键',
                            `name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '栏目名称',
                            `father_menu` bigint(20) NOT NULL COMMENT '父栏目id 0 代表无父栏目',
                            `create_time` datetime NOT NULL COMMENT '创建时间',
                            `update_time` datetime NOT NULL COMMENT '更新时间',
                            `create_user` bigint(20) NOT NULL COMMENT '创建人',
                            `update_user` bigint(20) NOT NULL COMMENT '修改人',
                            PRIMARY KEY (`id`) USING BTREE,
                            UNIQUE KEY `idx_category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='栏目分类';



DROP TABLE IF EXISTS `menu_post`;
CREATE TABLE `menu_post` (
                               `id` bigint(20) NOT NULL COMMENT '主键',
                               `menu_id` bigint(20) NOT NULL COMMENT '栏目id',
                               `post_id` bigint(20) NOT NULL COMMENT '文章id',
                               `name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '口味名称',
                               `value` varchar(500) COLLATE utf8_bin DEFAULT NULL COMMENT '口味数据list',
                               `create_time` datetime NOT NULL COMMENT '创建时间',
                               `update_time` datetime NOT NULL COMMENT '更新时间',
                               `create_user` bigint(20) NOT NULL COMMENT '创建人',
                               `update_user` bigint(20) NOT NULL COMMENT '修改人',
                               PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='栏目文章关系表';





DROP TABLE IF EXISTS `contact`;
CREATE TABLE `contact` (
                                `id` bigint(20) NOT NULL COMMENT '主键',
                                `name` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '联系人姓名',
                                `email` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '联系人邮箱',
                                `phone` varchar(64) COLLATE utf8_bin NOT NULL COMMENT '联系人手机',
                                `content` text COLLATE utf8mb4_unicode_520_ci COMMENT '联系内容',
                                `create_time` datetime NOT NULL COMMENT '创建时间',
                                `update_time` datetime NOT NULL COMMENT '更新时间',
                                `create_user` bigint(20) NOT NULL COMMENT '创建人',
                                `update_user` bigint(20) NOT NULL COMMENT '修改人',
                                PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='联系我们';


ALTER TABLE menu add has_son tinyint;










