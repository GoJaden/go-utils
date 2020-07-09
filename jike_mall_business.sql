/*
SQLyog Ultimate
MySQL - 5.7.26-log : Database - d_jike_mall_business
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `answer` */

CREATE TABLE `answer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '答案主键',
  `questionnaire_id` int(11) NOT NULL COMMENT '问卷id',
  `user_id` int(11) NOT NULL COMMENT '用户id',
  `business_type` tinyint(2) NOT NULL COMMENT '业务类型 1:订单号',
  `business_value` varchar(50) NOT NULL DEFAULT '' COMMENT '业务值',
  `create_at` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8;

/*Table structure for table `answer_content` */

CREATE TABLE `answer_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `answer_id` int(11) NOT NULL COMMENT 'anserid',
  `question_id` int(11) NOT NULL COMMENT '问题id',
  `answer_value` varchar(255) NOT NULL DEFAULT '' COMMENT '答案value',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=490 DEFAULT CHARSET=utf8;

/*Table structure for table `app_ads` */

CREATE TABLE `app_ads` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `channel_id` int(10) unsigned DEFAULT '0' COMMENT '渠道ID',
  `status` tinyint(2) unsigned DEFAULT '0' COMMENT '状态',
  `display_times` tinyint(2) unsigned DEFAULT '0' COMMENT '显示次数',
  `is_online` tinyint(2) unsigned DEFAULT '0' COMMENT '是否上下线：0下线1上线',
  `is_delete` tinyint(2) unsigned DEFAULT '0' COMMENT '是否删除：0未删除1已删除',
  `action_type` tinyint(2) unsigned DEFAULT '0' COMMENT '跳转类型',
  `action_data` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转数据',
  `img_url` varchar(100) NOT NULL DEFAULT '' COMMENT '广告图片地址',
  `title` varchar(100) NOT NULL DEFAULT '' COMMENT '广告标题',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '广告描述',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效开始时间',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效结束时间',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '广告类型：0通用 1iphoneX适配',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

/*Table structure for table `app_banner` */

CREATE TABLE `app_banner` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'bannerID',
  `channel_id` int(10) unsigned DEFAULT '0' COMMENT '渠道ID',
  `is_online` tinyint(2) unsigned DEFAULT '0' COMMENT '上下线',
  `status` tinyint(2) unsigned DEFAULT '0' COMMENT '状态',
  `type` tinyint(2) unsigned DEFAULT '0' COMMENT '类型：1头部banner 2运营banner 3主分会场 4主分会场banner 5推荐品类 6品类banner 7电影频道banner 8搜索结果页banner 9人气推荐 10旧企业专区 11卡详情banner位 12企业专区运营banner 13企业专区九宫格 14企业专区推荐广告位 15订单详情banner位 16浮层广告位 17未知',
  `display_order` tinyint(2) unsigned DEFAULT '0' COMMENT '排序',
  `is_delete` tinyint(2) unsigned DEFAULT '0' COMMENT '是否删除：0未删除1已删除',
  `action_type` tinyint(2) unsigned DEFAULT '0' COMMENT '跳转类型',
  `action_data` varchar(1255) NOT NULL COMMENT '跳转数据',
  `img_url` varchar(100) NOT NULL DEFAULT '' COMMENT '图片地址',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效开始时间',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效结束时间',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `business_id` varchar(100) NOT NULL DEFAULT '' COMMENT '业务ID（如品类ID）',
  `master_title` varchar(50) DEFAULT '' COMMENT '主标题',
  `master_title_color` varchar(7) NOT NULL DEFAULT '#000000' COMMENT '主标题颜色',
  `slave_title` varchar(50) DEFAULT '' COMMENT '副标题',
  `is_show` tinyint(2) DEFAULT '0' COMMENT 'app前端展示0：不展示，1：展示',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT 'banner名称',
  `show_channel` varchar(100) NOT NULL DEFAULT '' COMMENT '显示渠道：app,h5;多个用逗号隔开',
  `agent_id` int(10) unsigned DEFAULT '0' COMMENT '专有渠道',
  `bind_business_id` varchar(50) NOT NULL DEFAULT '' COMMENT '绑定业务ID',
  `city_range` varchar(255) NOT NULL DEFAULT '' COMMENT '城市范围，0：全国，多个用逗号隔开',
  PRIMARY KEY (`id`),
  KEY `idx_type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=2806 DEFAULT CHARSET=utf8;

/*Table structure for table `app_topic` */

CREATE TABLE `app_topic` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `is_online` tinyint(2) unsigned DEFAULT '0' COMMENT '是否上下线：0下线1上线',
  `status` tinyint(2) unsigned DEFAULT '0' COMMENT '状态',
  `display_order` tinyint(2) unsigned DEFAULT '0' COMMENT '排序',
  `is_delete` tinyint(2) unsigned DEFAULT '0' COMMENT '是否删除：0未删除1已删除',
  `action_type` tinyint(2) unsigned DEFAULT '0' COMMENT '跳转类型',
  `action_data` varchar(255) NOT NULL DEFAULT '' COMMENT '跳转数据',
  `topic_id` varchar(20) NOT NULL DEFAULT '' COMMENT '专题活动唯一ID',
  `master_title` varchar(50) NOT NULL DEFAULT '' COMMENT '主标题',
  `slave_title` varchar(50) NOT NULL DEFAULT '' COMMENT '副标题',
  `img_url` varchar(255) NOT NULL DEFAULT '' COMMENT '专题列表图片地址',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '专题活动描述',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效开始时间',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效结束时间',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `topic_type` tinyint(2) unsigned DEFAULT '0' COMMENT '专题类型：1普通专题2人气优选',
  `related_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '关联类型：1商品 2分类 3品牌 4供应商',
  `related_data` text NOT NULL COMMENT 'related_type=1 商品,则数据形式是 spuId,spuId；related_type=2 分类,则数据形式是 一级分类ID/二级分类ID,一级分类ID/二级分类ID；related_type=3 品牌,则数据形式是 品牌ID；related_type=4 供应商,则数据形式是 供应商ID',
  `related_name` text NOT NULL COMMENT '关联内容的名称，对应related_data',
  `comp_exclusive` tinyint(1) DEFAULT '0',
  `app_topiccol` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

/*Table structure for table `app_topic_product` */

CREATE TABLE `app_topic_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `is_delete` tinyint(2) unsigned DEFAULT '0' COMMENT '是否删除：0未删除1已删除',
  `product_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品ID(spuID)',
  `sku_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品skuID',
  `topic_id` varchar(20) NOT NULL DEFAULT '' COMMENT '主题活动ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `display_order` tinyint(2) NOT NULL DEFAULT '0' COMMENT '排列顺序',
  `type` tinyint(2) DEFAULT '0' COMMENT '关联产品类型，1：主题活动；3：人气推荐',
  `product_name` varchar(50) DEFAULT '' COMMENT '产品名称',
  PRIMARY KEY (`id`),
  KEY `idx_topic_id` (`topic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3366 DEFAULT CHARSET=utf8;

/*Table structure for table `app_upgrade` */

CREATE TABLE `app_upgrade` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `type` tinyint(2) unsigned DEFAULT '0' COMMENT '类型：1普通升级2灰度升级3最低版本强制升级',
  `is_force_update` tinyint(2) unsigned DEFAULT '0' COMMENT '0普通升级，1强制升级 2重大版本升级',
  `is_clean_cache` tinyint(2) unsigned DEFAULT '0' COMMENT '是否清除缓存：0否1是',
  `status` tinyint(2) unsigned DEFAULT '0' COMMENT '状态：0无效1有效',
  `is_delete` tinyint(2) unsigned DEFAULT '0' COMMENT '是否删除：0未删除1已删除',
  `version` varchar(10) DEFAULT '' COMMENT '升级版本号',
  `channel_id` int(10) unsigned DEFAULT '0' COMMENT '渠道ID',
  `agent_id` int(10) unsigned DEFAULT '0' COMMENT '应用商店ID',
  `app_name` varchar(20) NOT NULL DEFAULT '' COMMENT 'app名称',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '升级备注',
  `download_link` varchar(100) NOT NULL DEFAULT '' COMMENT '下载链接',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `apk_sign` varchar(100) NOT NULL DEFAULT '' COMMENT 'apk对应MD5值',
  `force_text` varchar(100) NOT NULL DEFAULT '' COMMENT '强制升级文案',
  `upgrade_type` tinyint(1) DEFAULT '0' COMMENT 'upgradeType  0:默认官方升级   1：应用市场升级',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

/*Table structure for table `asset_check_result` */

CREATE TABLE `asset_check_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id` varchar(26) NOT NULL DEFAULT '' COMMENT '订单ID',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '问题类型，1：差集，2：数据核对问题',
  `type_name` varchar(50) NOT NULL DEFAULT '' COMMENT '用来描述type字段',
  `primary_svc` varchar(50) NOT NULL DEFAULT '' COMMENT '核对的两个对象之一，主次对象在出现差集结果，即type=1的情况下才有意义。当type=1是，意味着在primary_svc出现的订单没有在minor_svc 出现。',
  `minor_svc` varchar(50) NOT NULL DEFAULT '' COMMENT '说明同primary_svc',
  `check_date` varchar(10) NOT NULL DEFAULT '00000000' COMMENT '记录核对的日期',
  `question_desc` text NOT NULL COMMENT '核对问题的详细文字描述，便于后续处理',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `unique_key` varchar(50) NOT NULL DEFAULT '' COMMENT '为防止数据重复插入的唯一码，其组成形式是orderId_primarySvc_minorSvc',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='对账结果表';

/*Table structure for table `banner_channel` */

CREATE TABLE `banner_channel` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `banner_type` tinyint(3) unsigned DEFAULT '0' COMMENT 'banner类型',
  `show_channel_type` tinyint(3) unsigned DEFAULT '0' COMMENT '渠道类型：0全渠道 1安卓 2ios 3H5 4pc',
  `agent_id` int(10) unsigned DEFAULT '0' COMMENT '渠道类型(苏打、卖座vip)',
  `banner_id` int(10) unsigned DEFAULT '0' COMMENT 'bannerID',
  `display_order` tinyint(3) unsigned DEFAULT '0' COMMENT '前端展示顺序',
  `is_delete` tinyint(2) unsigned DEFAULT '0' COMMENT '是否删除：0未删除 1已删除',
  `is_online` tinyint(2) unsigned DEFAULT '0' COMMENT '上下线：0下线 1上线',
  `is_show` tinyint(2) unsigned DEFAULT '0' COMMENT '前端显示：0不显示 1显示',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `business_id` varchar(20) DEFAULT '' COMMENT '关联业务id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1246 DEFAULT CHARSET=utf8;

/*Table structure for table `banner_template` */

CREATE TABLE `banner_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `type` tinyint(2) unsigned DEFAULT '0' COMMENT '模板类型',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '模板名称',
  `list_field` varchar(100) NOT NULL DEFAULT '' COMMENT '列表显示字段',
  `select_field` varchar(100) NOT NULL DEFAULT '' COMMENT '筛选字段',
  `edit_field` varchar(100) NOT NULL DEFAULT '' COMMENT '编辑字段',
  `banner_name_word_limit` int(10) unsigned DEFAULT '0' COMMENT 'banner名字字数限制',
  `master_title_word_limit` int(10) unsigned DEFAULT '0' COMMENT '主标题字数限制',
  `slave_title_word_limit` int(10) unsigned DEFAULT '0' COMMENT '副标题字数限制',
  `show_type` tinyint(2) unsigned DEFAULT '0' COMMENT '图片显示类型:1单栏多图轮播 2多栏多图固定',
  `img_size_limit` varchar(100) NOT NULL DEFAULT '' COMMENT '图片尺寸限制',
  `row_word_limit` int(10) unsigned DEFAULT '0' COMMENT '单行数量限制',
  `rate_limit` tinyint(2) DEFAULT '0' COMMENT '比例设置',
  `notice` varchar(100) NOT NULL DEFAULT '' COMMENT '提示说明',
  `remark` varchar(100) NOT NULL DEFAULT '' COMMENT '简要说明',
  `status` tinyint(2) unsigned DEFAULT '0' COMMENT '模板状态 0未删除 1已删除',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `business_type` tinyint(4) DEFAULT '2' COMMENT '0：无业务关联，1：挂载品类',
  `bind_business_type` bigint(4) NOT NULL DEFAULT '0' COMMENT '绑定业务类型 0：无绑定 1：绑定活动ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

/*Table structure for table `banner_template_relation` */

CREATE TABLE `banner_template_relation` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `template_id` int(10) unsigned DEFAULT '0' COMMENT '模板ID',
  `banner_type` tinyint(3) unsigned DEFAULT '0' COMMENT 'banner类型,即业务类型',
  `agent_id` int(10) unsigned DEFAULT '0' COMMENT '渠道(苏打、卖座vip)',
  `menu_name` varchar(20) NOT NULL DEFAULT '' COMMENT '导航栏名称',
  `menu_position` varchar(20) NOT NULL DEFAULT '' COMMENT '导航栏位置',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;

/*Table structure for table `business_mng_gw` */

CREATE TABLE `business_mng_gw` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_name` varchar(255) NOT NULL DEFAULT '' COMMENT '请求服务名',
  `default_server_name` varchar(255) NOT NULL DEFAULT '' COMMENT '如果都不匹配，默认请求的服务名\n',
  `location` varchar(255) NOT NULL DEFAULT '' COMMENT '接口名',
  `url` varchar(255) NOT NULL DEFAULT '' COMMENT '转发的地址',
  `is_delete` tinyint(2) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

/*Table structure for table `buyer` */

CREATE TABLE `buyer` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `creator` varchar(255) DEFAULT '' COMMENT '创建人：一般是运营人员的名称',
  `buyer_id` varchar(32) DEFAULT NULL COMMENT '为不暴露主键，定义的买手唯一标识',
  `name` varchar(255) DEFAULT '' COMMENT '买手名',
  `label` varchar(255) DEFAULT '' COMMENT '买手昵称/标签',
  `experience` int(255) unsigned zerofill DEFAULT NULL COMMENT '买手经验，除以10，表示年为单位，如45即4.5年',
  `avatar_url` varchar(255) DEFAULT '' COMMENT '买手头像地址',
  `describe` varchar(255) DEFAULT '' COMMENT '买手宣言/简介',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_delete` tinyint(1) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Table structure for table `buyer_product` */

CREATE TABLE `buyer_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) unsigned DEFAULT NULL COMMENT '商品id',
  `buyer_id` varchar(32) DEFAULT '' COMMENT '买手唯一标识',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_delete` tinyint(1) unsigned zerofill DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8;

/*Table structure for table `buyer_product_show` */

CREATE TABLE `buyer_product_show` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `title` varchar(50) DEFAULT NULL COMMENT '买手秀的标题',
  `content` varchar(255) DEFAULT NULL COMMENT '买手秀的文案',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

/*Table structure for table `buyer_product_show_resources` */

CREATE TABLE `buyer_product_show_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `url` varchar(255) DEFAULT NULL COMMENT '资源连接地址，视频或图片',
  `resources_type` tinyint(1) DEFAULT NULL COMMENT '0：图片，1：视频',
  `preview_url` varchar(255) DEFAULT NULL COMMENT '视频的预览图',
  `duration` int(11) DEFAULT NULL COMMENT '视频的时长，单位秒，如1.2秒则为12',
  `size` int(11) DEFAULT NULL COMMENT '视频大小，单位KB',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  `buyer_product_show_id` int(11) DEFAULT NULL COMMENT 'buyer_product_show表的主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=390 DEFAULT CHARSET=utf8;

/*Table structure for table `buyer_product_views` */

CREATE TABLE `buyer_product_views` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL COMMENT '商品id',
  `views` int(11) DEFAULT '0' COMMENT '买手的所有买手秀总阅读量',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

/*Table structure for table `card_bind_record` */

CREATE TABLE `card_bind_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除1：删除，0：未删除',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `card_bind_record_user_id_uindex` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1117 DEFAULT CHARSET=utf8 COMMENT='绑卡用户记录';

/*Table structure for table `card_spu_category_relation` */

CREATE TABLE `card_spu_category_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `card_category_id` int(11) DEFAULT '0' COMMENT '卡品类Id',
  `spu_category_id` int(11) DEFAULT '0' COMMENT '商品品类id',
  `action_type` int(11) DEFAULT '0' COMMENT '跳转类型',
  `action_data` varchar(50) DEFAULT '' COMMENT '跳转数据',
  `create_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='卡品类商品品类关联关系表';

/*Table structure for table `category_product` */

CREATE TABLE `category_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `status` tinyint(2) unsigned DEFAULT '0' COMMENT '状态：0无效1有效',
  `category_id` int(10) unsigned DEFAULT '0' COMMENT '品类ID',
  `product_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品spuId',
  `sku_id` bigint(20) unsigned DEFAULT '0' COMMENT '商品skuId',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `is_delete` tinyint(2) DEFAULT '0' COMMENT '是否删除，0：未删除，1：已经删除',
  `product_name` varchar(50) DEFAULT '' COMMENT '产品名称',
  PRIMARY KEY (`id`),
  KEY `idx_category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=585 DEFAULT CHARSET=utf8;

/*Table structure for table `channel_info` */

CREATE TABLE `channel_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `channel_id` int(11) NOT NULL DEFAULT '0' COMMENT '产品渠道Id,1000-ios，1001-android,1002-H5，1003-pc',
  `agent_id` int(11) NOT NULL DEFAULT '0' COMMENT '应用商店渠道id',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '渠道名称',
  `agent_code` varchar(255) NOT NULL DEFAULT '' COMMENT '渠道标志码',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_channel_info` (`channel_id`,`agent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='渠道信息表';

/*Table structure for table `channel_price_relation` */

CREATE TABLE `channel_price_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NOT NULL DEFAULT '0' COMMENT '具体渠道id',
  `platform_id` int(11) NOT NULL DEFAULT '0' COMMENT '平台id 1:苏打优选 2:卖座价格体系 3支付appId 4销售渠道',
  `relation_id` int(11) NOT NULL DEFAULT '0' COMMENT '价格体系id',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_channel_price_relation` (`agent_id`,`platform_id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='渠道价格关系表';

/*Table structure for table `common_dict` */

CREATE TABLE `common_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '类型，1：app配置文件,2：物流公司编码',
  `business_id` varchar(50) NOT NULL DEFAULT '' COMMENT '业务ID',
  `business_name` varchar(50) NOT NULL DEFAULT '' COMMENT '业务名称',
  `business_value` mediumtext NOT NULL COMMENT '业务内容',
  `extend` varchar(200) NOT NULL DEFAULT '' COMMENT '扩展字段',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除 1：删除 0：未删除',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `common_dict_type_business_id_index` (`type`,`business_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='通用数据字典';

/*Table structure for table `common_dict_info` */

CREATE TABLE `common_dict_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_id` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT '数字字典的归类项 1：枚举 2：配置项',
  `version` varchar(20) NOT NULL DEFAULT '' COMMENT 'businessId的版本信息，某些特殊的字典数据可能会用到',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT 'business_id 的名称(描述)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COMMENT='公共数据字典meta 信息表';

/*Table structure for table `common_dict_value` */

CREATE TABLE `common_dict_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `business_id` int(11) NOT NULL DEFAULT '0',
  `business_name` varchar(50) NOT NULL DEFAULT '',
  `business_value` text NOT NULL,
  `business_desc` varchar(100) NOT NULL DEFAULT '' COMMENT 'business_name 含义的描述，用于在前端页面展示',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '状态：0：可用 1：不可用',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8 COMMENT='公共数据字典value表';

/*Table structure for table `company_info` */

CREATE TABLE `company_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '企业ID',
  `company_name` varchar(50) NOT NULL DEFAULT '' COMMENT '公司名称',
  `area_name` varchar(50) NOT NULL DEFAULT '' COMMENT '企业名称',
  `company_logo` varchar(200) NOT NULL DEFAULT '' COMMENT '公司logo',
  `company_img` varchar(200) NOT NULL DEFAULT '' COMMENT 'banner图片',
  `company_banner_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '企业bannerID',
  `action_type` int(5) NOT NULL DEFAULT '0' COMMENT '跳转类型',
  `action_data` varchar(200) NOT NULL DEFAULT '' COMMENT '跳转数据',
  `company_contact` varchar(50) NOT NULL DEFAULT '' COMMENT '公司联系人',
  `company_contact_phone` varchar(20) NOT NULL DEFAULT '' COMMENT '公司联系人电话',
  `province_id` int(10) NOT NULL DEFAULT '0' COMMENT '省ID',
  `city_id` int(10) NOT NULL DEFAULT '0' COMMENT '市ID',
  `district_id` int(10) NOT NULL DEFAULT '0' COMMENT '区Id',
  `company_address` varchar(200) NOT NULL DEFAULT '' COMMENT '详细地址',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态 0-停用 1-启用',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_company_id` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

/*Table structure for table `company_members` */

CREATE TABLE `company_members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '公司Id',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号',
  `is_delete` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否删除 0-否 1-是',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_company` (`company_id`),
  KEY `idx_phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

/*Table structure for table `company_product` */

CREATE TABLE `company_product` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `product_name` varchar(20) NOT NULL DEFAULT '' COMMENT '商品名称',
  `company_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '企业ID 多个用，隔开',
  `sku_info` varchar(255) NOT NULL DEFAULT '' COMMENT 'sku信息 skuId|price 多个用，隔开',
  `product_index` int(10) NOT NULL DEFAULT '0' COMMENT '序号',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态 0-下线 1-上线',
  `is_delete` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否删除 0-否 1-是',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `idx_product_id` (`product_id`),
  KEY `index_company_product_product_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

/*Table structure for table `control` */

CREATE TABLE `control` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `control_name` varchar(50) NOT NULL DEFAULT '' COMMENT '管控名称',
  `start_time` datetime NOT NULL COMMENT '管控开始时间',
  `end_time` datetime NOT NULL COMMENT '管控结束时间',
  `restrict_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1:区域管控 2:提醒',
  `product_range_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '商品范围类型  1:全部 2:实物 3:虚拟',
  `remind_content` varchar(255) NOT NULL DEFAULT '' COMMENT '管控提醒的具体内容',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否上线 0 下线 1：上线',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除标志 0:未删除 1:已删除',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

/*Table structure for table `control_district_rel` */

CREATE TABLE `control_district_rel` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `control_id` int(11) NOT NULL COMMENT '管控区域id',
  `district_name` varchar(30) NOT NULL DEFAULT '' COMMENT '地区名称(提醒的地区，具体到城市)',
  `district_code` varchar(10) NOT NULL DEFAULT '' COMMENT '管控地区的区域编码',
  `level` tinyint(1) NOT NULL COMMENT '管控区域的范围 1:全国 2:省份 3:城市 4:区',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8;

/*Table structure for table `customer_user` */

CREATE TABLE `customer_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `remark` varchar(255) NOT NULL DEFAULT '' COMMENT '用户备注',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_customer_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COMMENT='客服用户信息';

/*Table structure for table `data_dicts` */

CREATE TABLE `data_dicts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `business_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_data_dicts_deleted_at` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `delivery_info_control` */

CREATE TABLE `delivery_info_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL DEFAULT '' COMMENT '货号',
  `type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1-最低销售价格，2-每日订单限制',
  `param` varchar(255) NOT NULL DEFAULT '' COMMENT '自定义数据',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态,0-下线，1-上线',
  `delivery_type` varchar(5) NOT NULL DEFAULT '' COMMENT '发货类型',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_dlv_info_ctl` (`code`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=99 DEFAULT CHARSET=utf8 COMMENT='发货信息控制表';

/*Table structure for table `exchange_record` */

CREATE TABLE `exchange_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(64) NOT NULL DEFAULT '' COMMENT '兑换码',
  `supplier_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '供应商id',
  `supplier_name` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商名称',
  `store_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '门店id',
  `store_name` varchar(255) NOT NULL DEFAULT '' COMMENT '门店名称',
  `user_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '用户Id',
  `order_id` varchar(32) NOT NULL DEFAULT '' COMMENT '订单编号',
  `product_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商品编码',
  `product_name` varchar(255) NOT NULL DEFAULT '' COMMENT '商品名称',
  `sku_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'skuId',
  `sku_name` varchar(255) NOT NULL DEFAULT '' COMMENT '选项',
  `sku_code` varchar(128) NOT NULL DEFAULT '' COMMENT '货号',
  `cost_price` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '成本价',
  `exchange_num` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '兑换数量',
  `exchange_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '0:未兑换，1-已兑换，2：已过期',
  `pay_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '交易时间',
  `exchange_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '兑换时间',
  `order_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '订单状态',
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '收件人',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `effect_begin_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效开始时间',
  `effect_end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '有效结束时间',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_exchange_record` (`code`),
  KEY `idx_supplier_id` (`supplier_id`),
  KEY `idx_store_id` (`store_id`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='兑换记录';

/*Table structure for table `express_api_code` */

CREATE TABLE `express_api_code` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `company_id` int(10) unsigned DEFAULT NULL COMMENT '物流公司id',
  `company_name` varchar(20) DEFAULT '',
  `company_code` varchar(20) NOT NULL DEFAULT '' COMMENT '接口查询参数code',
  `api_type` int(10) unsigned DEFAULT NULL COMMENT '接口类型(1:全球快递 2:易源数据)',
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COMMENT='物流公司查询code表';

/*Table structure for table `express_company_info` */

CREATE TABLE `express_company_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '快递公司ID',
  `name` varchar(50) NOT NULL DEFAULT '' COMMENT '快递公司名称',
  `code` varchar(50) NOT NULL DEFAULT '' COMMENT '快递公司编码',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '快递公司电话',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Table structure for table `gift_order` */

CREATE TABLE `gift_order` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id` varchar(50) NOT NULL DEFAULT '' COMMENT '订单id',
  `sku_id` int(11) NOT NULL DEFAULT '0' COMMENT 'skuid',
  `presenter_id` int(11) NOT NULL DEFAULT '0' COMMENT '赠送人id',
  `gift_order_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '礼物订单状态  //1待领取   2已领取  3已退回  4已关闭',
  `receiver_id` int(11) NOT NULL DEFAULT '0' COMMENT '收礼人id',
  `received_at` datetime NOT NULL COMMENT '礼物领取时间',
  `share_token` varchar(100) NOT NULL DEFAULT '' COMMENT '分享token值',
  `shared_at` datetime NOT NULL COMMENT '分享链接的时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0:未删除 1:已删除',
  `is_presenter_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '赠送人是否删除',
  `is_receiver_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '收礼人是否删除',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=190 DEFAULT CHARSET=utf8;

/*Table structure for table `gift_product` */

CREATE TABLE `gift_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `product_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '产品ID',
  `sku_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'skuid',
  `gift_name` varchar(50) NOT NULL DEFAULT '' COMMENT '产品名字',
  `count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '赠送数量',
  `units` varchar(30) NOT NULL DEFAULT '' COMMENT '产品单位',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Table structure for table `guide_act_award` */

CREATE TABLE `guide_act_award` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `award_id` varchar(20) DEFAULT '' COMMENT '奖品ID',
  `award_type` int(2) DEFAULT '0' COMMENT '奖品类型 1现金券',
  `act_id` varchar(18) NOT NULL DEFAULT '' COMMENT '活动ID',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0未删除1已删除',
  `amount` int(11) NOT NULL DEFAULT '0' COMMENT '奖品设置总数量',
  `limit_amount` int(11) NOT NULL DEFAULT '0' COMMENT '单个用户限制绑定数量',
  `award_name` varchar(50) NOT NULL DEFAULT '' COMMENT '奖品名称',
  `is_online` int(1) NOT NULL DEFAULT '0' COMMENT '是否上线 0 否 1 是',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '开始展示时间',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '结束展示时间',
  `active_code` varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `guide_act_award_act_id_index` (`act_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='活动奖品表';

/*Table structure for table `guide_act_info` */

CREATE TABLE `guide_act_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `act_id` varchar(18) NOT NULL DEFAULT '' COMMENT '活动ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '活动标题',
  `sub_title` varchar(200) NOT NULL DEFAULT '' COMMENT '副标题',
  `start_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '活动开始时间',
  `end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '活动结束时间',
  `jion_limit` int(3) NOT NULL DEFAULT '1' COMMENT '活动限制参加次数，为0 不限制',
  `award_count` int(8) NOT NULL DEFAULT '0' COMMENT '奖品数量，如果为0 不限制',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int(1) NOT NULL DEFAULT '0' COMMENT '是否删除 0：未删 1：已删',
  `act_type` int(2) DEFAULT '0' COMMENT '活动类型 1：app首页入口配置活动',
  `is_online` int(1) DEFAULT '0' COMMENT '是否上线 1：上线 0：不上线',
  `img_url` varchar(200) NOT NULL DEFAULT '' COMMENT '活动图片地址',
  `action_type` int(2) NOT NULL DEFAULT '0' COMMENT '跳转类型',
  `action_data` varchar(200) NOT NULL DEFAULT '' COMMENT '跳转数据',
  PRIMARY KEY (`id`),
  UNIQUE KEY `act_info_act_id_uindex` (`act_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='活动信息表';

/*Table structure for table `guide_act_user` */

CREATE TABLE `guide_act_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `act_id` varchar(18) NOT NULL DEFAULT '' COMMENT '活动ID',
  `user_id` int(18) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int(1) DEFAULT '0' COMMENT '是否删除：0未删除1已删除',
  `award_id` varchar(20) NOT NULL DEFAULT '' COMMENT '奖品ID',
  `receive_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '领取活动的原因：1.首页活动 对应的receive_id 为空;2.支付成功领取活动，对应的receive_id 为支付订单号(payOrderId)',
  `receive_id` varchar(20) NOT NULL DEFAULT '',
  `active_code` varchar(8) DEFAULT NULL COMMENT '活动code',
  PRIMARY KEY (`id`),
  KEY `guide_act_user_act_id_index` (`act_id`),
  KEY `guide_act_user_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COMMENT='用户参与活动表';

/*Table structure for table `help` */

CREATE TABLE `help` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(1) NOT NULL DEFAULT '0' COMMENT '1 苏打 2 苏打vip 3 卖座vip',
  `answer` text NOT NULL COMMENT '答案',
  `order_index` int(11) NOT NULL DEFAULT '0',
  `help_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 下线 1上线',
  `help_type` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1 苏打卡业务',
  `question` varchar(300) NOT NULL DEFAULT '' COMMENT '问题',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 未删除  1已删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8 COMMENT='帮助中心';

/*Table structure for table `id_card` */

CREATE TABLE `id_card` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '姓名',
  `id_card` varchar(20) NOT NULL DEFAULT '' COMMENT '身份证号',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '身份证状态。0：匹配，1：不匹配，2：无此身份证号',
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除1：删除，0：未删除',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_id_card_name` (`id_card`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8 COMMENT='身份证信息';

/*Table structure for table `invoice_info` */

CREATE TABLE `invoice_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_id` varchar(32) NOT NULL COMMENT '支付号',
  `user_id` int(11) NOT NULL COMMENT '用户Id',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '发票类型 1:电子增值税普通发票',
  `buyer_type` tinyint(2) NOT NULL COMMENT '抬头 1:个人 2:单位',
  `buyer_name` varchar(255) NOT NULL COMMENT '开票人',
  `tax_num` varchar(255) DEFAULT '' COMMENT '纳税人识别号',
  `phone` varchar(11) NOT NULL COMMENT '手机号码',
  `email` varchar(50) DEFAULT NULL COMMENT '电子邮箱',
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL COMMENT '是否删除 0:否 1:是',
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_info_id_uindex` (`id`),
  KEY `invoice_info_pay_num_index` (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8 COMMENT='开票信息表';

/*Table structure for table `invoice_order_info` */

CREATE TABLE `invoice_order_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_id` varchar(255) NOT NULL COMMENT '支付号',
  `order_id` varchar(255) DEFAULT NULL COMMENT '订单号',
  `invoice_seq` varchar(255) NOT NULL COMMENT '发票流水号',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT NULL COMMENT '是否删除 0:否 1:是',
  PRIMARY KEY (`id`),
  UNIQUE KEY `invoice_order_info_id_uindex` (`id`),
  KEY `invoice_order_info_order_num_index` (`order_id`),
  KEY `invoice_order_info_pay_num_index` (`pay_id`)
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8 COMMENT='订单发票表';

/*Table structure for table `label` */

CREATE TABLE `label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL COMMENT '标签标题',
  `color` varchar(20) NOT NULL COMMENT '标签颜色',
  `type` int(11) NOT NULL DEFAULT '0' COMMENT '标签类型优先级，数字越高优先级越低',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0正常 1删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `label_id_uindex` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

/*Table structure for table `msg_info` */

CREATE TABLE `msg_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_id` varchar(12) NOT NULL DEFAULT '',
  `is_push` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否推送，0：不推送，1：推送',
  `push_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '推送类型，1：通知，2：消息',
  `device_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '推送设备类型：推送设备类型 保留字段 0:普通,指定账号推送 1:IOS 2:安卓 3：全网''',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '消息标题',
  `content` varchar(150) NOT NULL DEFAULT '' COMMENT '消息内容',
  `action_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '跳转类型',
  `action_data` varchar(250) NOT NULL DEFAULT '' COMMENT '跳转内容',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0：未删除，1：已经删除',
  `extra` varchar(255) NOT NULL DEFAULT '' COMMENT '额外字段',
  `msg_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '消息类型：二级分类',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '一级分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `msg_info_msg_id_uindex` (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17638 DEFAULT CHARSET=utf8 COMMENT='消息信息表';

/*Table structure for table `msg_push` */

CREATE TABLE `msg_push` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_type` int(2) NOT NULL DEFAULT '0' COMMENT '消息类型 1阿里push 2短信',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `content` varchar(2000) NOT NULL DEFAULT '' COMMENT '推送内容',
  `is_send` int(1) NOT NULL DEFAULT '0' COMMENT '是否已发送 0否 1是',
  `push_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发送时间',
  `remark` varchar(200) NOT NULL DEFAULT '' COMMENT '备注',
  `is_online` int(1) NOT NULL DEFAULT '0' COMMENT '是否上线 0否 1是',
  `push_result` text NOT NULL COMMENT '消息发送结果 push：message_id',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `is_deleted` int(1) NOT NULL DEFAULT '0' COMMENT '是否被删除 0否 1是',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='消息推送表';

/*Table structure for table `msg_push_extend` */

CREATE TABLE `msg_push_extend` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_push_id` int(11) NOT NULL DEFAULT '0' COMMENT '消息id msg_push.id',
  `attr_key` varchar(50) NOT NULL DEFAULT '' COMMENT '拓展属性key',
  `attr_value` text NOT NULL COMMENT '拓展属性值',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `id_key_unique_key` (`msg_push_id`,`attr_key`) COMMENT 'id-属性key唯一约束'
) ENGINE=InnoDB AUTO_INCREMENT=708 DEFAULT CHARSET=utf8 COMMENT='消息拓展表';

/*Table structure for table `msg_push_mobile` */

CREATE TABLE `msg_push_mobile` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `file_key` varchar(20) NOT NULL DEFAULT '' COMMENT '文件批次标识',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '手机号码',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='短信推送文件上传表';

/*Table structure for table `msg_push_stat` */

CREATE TABLE `msg_push_stat` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_id` varchar(50) NOT NULL DEFAULT '' COMMENT '消息中心唯一id',
  `third_msg_id` varchar(50) NOT NULL DEFAULT '' COMMENT '第三方系统推送标识',
  `accept_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '推送服务端接收到的推送数目',
  `sent_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '推送服务端实际发出的数目',
  `received_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '实际送达到设备的数目',
  `opened_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '通知在设备上被点击的数目',
  `deleted_count` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '通知在设备上被清除的数目',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`Id`),
  KEY `idx_msg_id` (`msg_id`) COMMENT '消息id索引'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='推送状态表';

/*Table structure for table `msg_push_target` */

CREATE TABLE `msg_push_target` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_push_id` int(11) NOT NULL DEFAULT '0' COMMENT '消息id msg_push.id',
  `target_type` int(2) NOT NULL DEFAULT '0' COMMENT '接收目标类型',
  `target_value` text NOT NULL COMMENT '目标值',
  PRIMARY KEY (`Id`),
  KEY `idx_msg_push_id` (`msg_push_id`) COMMENT '消息id索引'
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COMMENT='消息目标表';

/*Table structure for table `msg_read` */

CREATE TABLE `msg_read` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_id` varchar(12) NOT NULL DEFAULT '',
  `user_id` varchar(22) NOT NULL DEFAULT '',
  `equipment_id` varchar(50) NOT NULL DEFAULT '',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_msg_read_msg_id` (`msg_id`)
) ENGINE=InnoDB AUTO_INCREMENT=718 DEFAULT CHARSET=utf8 COMMENT='消息已读表';

/*Table structure for table `msg_read_record` */

CREATE TABLE `msg_read_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `last_read_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '上一次阅读消息的时间',
  `user_id` varchar(22) DEFAULT '',
  `equipment_id` varchar(50) NOT NULL DEFAULT '' COMMENT '设备ID',
  `type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '一级消息分类 1：通知消息 2：物流助手类消息 3：促销类消息 4：商品提醒',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uindex_user_id_equipment_id_type` (`user_id`,`equipment_id`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=226 DEFAULT CHARSET=utf8 COMMENT='消息阅读记录表';

/*Table structure for table `msg_user` */

CREATE TABLE `msg_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `user_id` varchar(50) NOT NULL DEFAULT '' COMMENT '接收者ID',
  `receiver_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '消息接收者ID类型 1:用户id   2:设备ID  3： 推送账号ID',
  `msg_id` varchar(12) NOT NULL DEFAULT '' COMMENT '消息ID',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除：0未删除1已删除',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `equipment_id` varchar(50) NOT NULL DEFAULT '' COMMENT '设备ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_msg_user_msg_id_user_id_unique` (`user_id`,`msg_id`),
  KEY `index_msg_user_msg_id` (`msg_id`),
  KEY `index_msg_user_user_id` (`user_id`),
  KEY `index_msg_user_equipment_id` (`equipment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17072 DEFAULT CHARSET=utf8 COMMENT='消息推送用户表';

/*Table structure for table `operate_log` */

CREATE TABLE `operate_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `app_id` int(10) NOT NULL DEFAULT '0' COMMENT '系统编号',
  `uri` varchar(50) NOT NULL DEFAULT '' COMMENT '请求路径',
  `params` text NOT NULL COMMENT '参数',
  `result` text NOT NULL COMMENT '操作结果',
  `client_ip` varchar(20) NOT NULL DEFAULT '' COMMENT 'ip地址',
  `account_id` int(10) NOT NULL DEFAULT '0' COMMENT '用户Id',
  `account_name` varchar(20) NOT NULL DEFAULT '' COMMENT '用户名',
  `created_at` datetime NOT NULL COMMENT '创建时间',
  `status` varchar(11) NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14092 DEFAULT CHARSET=utf8;

/*Table structure for table `order_business_info` */

CREATE TABLE `order_business_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pay_order_id` varchar(32) DEFAULT '' COMMENT '支付号',
  `order_id` varchar(32) DEFAULT '' COMMENT '订单号',
  `business_type` int(10) unsigned DEFAULT '0' COMMENT '业务类型',
  `business_id` varchar(50) DEFAULT '' COMMENT '业务主键',
  `business_code` varchar(50) DEFAULT '' COMMENT '业务内部编号',
  `business_data` text COMMENT '业务扩展数据',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_order_id` (`order_id`,`business_type`)
) ENGINE=InnoDB AUTO_INCREMENT=291 DEFAULT CHARSET=utf8 COMMENT='支付单扩展信息';

/*Table structure for table `order_delivery` */

CREATE TABLE `order_delivery` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(20) NOT NULL DEFAULT '' COMMENT '商城订单号',
  `third_order_id` varchar(20) NOT NULL DEFAULT '' COMMENT '第三方订单号',
  `status` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '落地状态  0 待处理  1 落地中  2 落地成功 3 落地失败 4 发货失败',
  `delivery_type` tinyint(2) unsigned zerofill NOT NULL COMMENT '发货类型 3 电影 4 油卡 5 话费 6 流量 7 万里通',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单生成时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '订单修改时间',
  `is_notice` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否通知 0 未通知 1 已通知 ',
  `delivery_code` varchar(1000) NOT NULL DEFAULT '' COMMENT '发货返回码（电影）',
  `delivery_deadline` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '发货截止时间',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户ID',
  `error_msg` varchar(50) NOT NULL DEFAULT '' COMMENT '发货失败原因文案',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_order_id` (`order_id`) USING BTREE,
  KEY `idx_thirdorder_type` (`third_order_id`,`delivery_type`) USING BTREE,
  KEY `idx_created_at` (`created_at`),
  KEY `idx_delivery_deadline` (`delivery_deadline`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1320 DEFAULT CHARSET=utf8;

/*Table structure for table `order_express` */

CREATE TABLE `order_express` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `order_id` varchar(20) NOT NULL DEFAULT '' COMMENT '订单号',
  `express_no` varchar(30) NOT NULL COMMENT '快递单号',
  `express_company_id` int(10) unsigned DEFAULT '0' COMMENT '快递公司Id',
  `express_code` varchar(20) NOT NULL DEFAULT '' COMMENT '快递公司编号',
  `content` text NOT NULL COMMENT '物流节点信息内容',
  `is_received` int(11) DEFAULT '0' COMMENT '是否签收 0:否  1:是',
  `express_status` int(11) NOT NULL DEFAULT '0' COMMENT '物流状态 0 已创建  1 运输中  2 已签收  3 已完成  4 不存在 5 派件中',
  `delivery_time` datetime DEFAULT NULL COMMENT '发货时间',
  `received_time` datetime DEFAULT NULL COMMENT '签收时间',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_express_order_id_express_no_express_company_id_pk` (`order_id`,`express_no`,`express_company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2159827 DEFAULT CHARSET=utf8;

/*Table structure for table `order_test` */

CREATE TABLE `order_test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(30) NOT NULL DEFAULT '' COMMENT '订单号',
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `mobile` varchar(12) NOT NULL DEFAULT '' COMMENT '手机号',
  `count` int(11) NOT NULL DEFAULT '0' COMMENT '商品数量',
  `price` int(11) NOT NULL DEFAULT '0' COMMENT '商品价格（分）',
  `fee` int(11) NOT NULL DEFAULT '0' COMMENT '小费（分）',
  `total_price` int(11) NOT NULL DEFAULT '0' COMMENT '商品总金额（分）',
  `order_status` tinyint(2) NOT NULL DEFAULT '0' COMMENT '订单状态：0-初始状态 1-等待落地中 2-成功 3-失败 4-订单释放 5-取消订单 6-电影票落地中',
  `is_complete` tinyint(2) NOT NULL DEFAULT '0' COMMENT '是否完整订单  0 否 1 是',
  `released_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单释放时间',
  `exp_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单有效时间',
  `is_confirm` tinyint(2) NOT NULL DEFAULT '0' COMMENT '0:未确认  1：确认',
  `confirm_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单确认时间',
  `schedule_id` int(11) NOT NULL DEFAULT '0' COMMENT '排期ID',
  `agent_id` int(11) NOT NULL DEFAULT '3000' COMMENT '渠道ID   3000-自由渠道 3001-VIP渠道',
  `bid` int(11) NOT NULL DEFAULT '0' COMMENT '订座渠道ID',
  `cinema_id` int(11) NOT NULL DEFAULT '0' COMMENT '影院ID',
  `cinema_name` varchar(255) NOT NULL DEFAULT '' COMMENT '影院名',
  `film_id` int(11) NOT NULL DEFAULT '0' COMMENT '影片ID',
  `film_name` varchar(255) NOT NULL DEFAULT '' COMMENT '影片名称',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单生成时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '订单修改时间',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000006 DEFAULT CHARSET=utf8;

/*Table structure for table `pay_order_extend` */

CREATE TABLE `pay_order_extend` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键',
  `pay_order_id` varchar(32) DEFAULT '' COMMENT '支付号',
  `business_type` int(10) unsigned DEFAULT '0' COMMENT '业务类型',
  `business_id` varchar(50) DEFAULT '' COMMENT '业务主键',
  `business_code` varchar(50) DEFAULT '' COMMENT '业务内部编号',
  `business_data` varchar(200) DEFAULT '' COMMENT '业务扩展数据',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_pay_order_id` (`pay_order_id`,`business_type`)
) ENGINE=InnoDB AUTO_INCREMENT=503 DEFAULT CHARSET=utf8 COMMENT='支付单扩展信息';

/*Table structure for table `product_attr` */

CREATE TABLE `product_attr` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品id',
  `attr_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'id',
  `attr_value` text NOT NULL COMMENT '属性值',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `idx_product_type_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1862 DEFAULT CHARSET=utf8 COMMENT='商品属性表';

/*Table structure for table `product_attr_tmp` */

CREATE TABLE `product_attr_tmp` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) NOT NULL DEFAULT '0' COMMENT '商品id',
  `attr_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'id',
  `attr_value` text NOT NULL COMMENT '属性值',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `idx_product_type_id` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1862 DEFAULT CHARSET=utf8 COMMENT='商品属性表';

/*Table structure for table `purchase_rule` */

CREATE TABLE `purchase_rule` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sku_id` bigint(20) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` smallint(5) unsigned NOT NULL,
  `content` varchar(500) NOT NULL,
  `priority` smallint(6) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_deleted` bit(1) NOT NULL DEFAULT b'0',
  PRIMARY KEY (`id`),
  KEY `idx_sku_id` (`sku_id`,`is_deleted`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='商品购买规则';

/*Table structure for table `push_account_bind` */

CREATE TABLE `push_account_bind` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `account_type` tinyint(2) unsigned NOT NULL COMMENT '推送账号类型 1: 阿里',
  `push_account` varchar(255) NOT NULL COMMENT '推送账号',
  `user_id` int(11) unsigned DEFAULT '0' COMMENT '用户ID',
  `equipment_id` varchar(255) DEFAULT '0' COMMENT '设备ID',
  `version` varchar(10) DEFAULT '' COMMENT '版本号',
  `channel_id` int(10) DEFAULT '0' COMMENT '渠道ID',
  `agent_id` int(10) DEFAULT '0' COMMENT '应用商店ID',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_unique_user_id` (`user_id`) COMMENT '用户id唯一索引'
) ENGINE=InnoDB AUTO_INCREMENT=221 DEFAULT CHARSET=utf8;

/*Table structure for table `question` */

CREATE TABLE `question` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '问题id',
  `question_type` tinyint(2) NOT NULL DEFAULT '0' COMMENT '问卷类型(1：单选、2：多选、3：文本)',
  `questionnaire_id` int(11) NOT NULL COMMENT '问卷id',
  `question_key` varchar(20) NOT NULL DEFAULT '' COMMENT '问题序号',
  `question_value` varchar(255) NOT NULL DEFAULT '' COMMENT '问题描述',
  `is_required` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否必填 1:必填 0:选填',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Table structure for table `question_option` */

CREATE TABLE `question_option` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '问题选项id',
  `question_id` int(11) NOT NULL COMMENT '问题id',
  `option_key` varchar(20) NOT NULL DEFAULT '' COMMENT '选项值',
  `option_value` varchar(255) NOT NULL DEFAULT '' COMMENT '选项内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

/*Table structure for table `questionnaire` */

CREATE TABLE `questionnaire` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '问卷主键id',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '问卷标题',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '问卷描述信息',
  `create_at` datetime NOT NULL COMMENT '问卷创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;

/*Table structure for table `recommend_category` */

CREATE TABLE `recommend_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `category_id` int(10) unsigned DEFAULT '0' COMMENT '品类ID',
  `status` tinyint(2) unsigned DEFAULT '0' COMMENT '状态：0无效1有效',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '品类名称',
  `img_url` varchar(100) NOT NULL DEFAULT '' COMMENT '图标地址',
  `action_type` tinyint(2) unsigned DEFAULT '0' COMMENT '跳转类型',
  `action_data` varchar(1000) NOT NULL DEFAULT '' COMMENT '跳转数据',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `contain_ids` varchar(250) DEFAULT '' COMMENT '包含banner图的一级或者二级品类id，用逗号隔开',
  `is_delete` tinyint(2) DEFAULT '0' COMMENT '是否被删除，0：未删除，1：已经删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8;

/*Table structure for table `remind_delivery` */

CREATE TABLE `remind_delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` varchar(32) NOT NULL DEFAULT '' COMMENT 'è®¢å•ç¼–å·',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'åˆ›å»ºæ—¶é—´',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'ä¿®æ”¹æ—¶é—´',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=286 DEFAULT CHARSET=utf8 COMMENT='æé†’å‘è´§ä¿¡æ¯è¡¨';

/*Table structure for table `schedule` */

CREATE TABLE `schedule` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `schedule_id` varchar(20) NOT NULL DEFAULT '' COMMENT 'scheduleId 定时任务唯一标识',
  `url` text NOT NULL COMMENT '执行请求地址',
  `method_type` tinyint(2) DEFAULT '0' COMMENT 'http请求方法的枚举值，1:GET 2:POST/JSON',
  `param` text NOT NULL,
  `env` tinyint(1) DEFAULT '0' COMMENT '执行环境的枚举值，0:prod 1:pre',
  `schedule_status` tinyint(1) DEFAULT '0' COMMENT '定时任务的设定状态0:初始化，1:正在运行 2:已经暂停',
  `schedule_name` varchar(150) NOT NULL DEFAULT '' COMMENT '定时任务名称',
  `created_at` datetime DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `is_deleted` tinyint(4) DEFAULT '0',
  `spec` varchar(50) NOT NULL DEFAULT '' COMMENT 'spec 表达式',
  `header` text NOT NULL COMMENT '配置http请求的头部信息，json字符串',
  PRIMARY KEY (`id`),
  UNIQUE KEY `schedule_schedule_id_uindex` (`schedule_id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8 COMMENT='定时任务调度配置表';

/*Table structure for table `sdyx_config` */

CREATE TABLE `sdyx_config` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `service` varchar(32) NOT NULL DEFAULT '' COMMENT '服务名',
  `config_content` text NOT NULL COMMENT '配置值',
  `description` varchar(32) NOT NULL DEFAULT '' COMMENT '描述',
  `is_delete` tinyint(3) unsigned DEFAULT '0' COMMENT '0:可用 1:已删除',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `namespace` varchar(30) DEFAULT '',
  `env` varchar(10) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sdyx_config_service_namespace_env_uindex` (`service`,`namespace`,`env`),
  KEY `sdyx_config_service_config_key_index` (`service`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `sdyxpay_bank` */

CREATE TABLE `sdyxpay_bank` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(20) DEFAULT '',
  `icon` varchar(255) DEFAULT '',
  `is_installment` int(11) DEFAULT '0' COMMENT '是否可分期 0:否 1:是',
  `periods_fee` varchar(255) DEFAULT '' COMMENT '分期手续费',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_delete` int(11) DEFAULT '0',
  `pay_type` int(10) unsigned DEFAULT '0' COMMENT '支付方式',
  `min_installment_amount` bigint(20) unsigned DEFAULT '0' COMMENT '最低分期金额',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Table structure for table `sdyxpay_installment_info` */

CREATE TABLE `sdyxpay_installment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_order_id` varchar(50) NOT NULL DEFAULT '' COMMENT '支付号',
  `periods` int(11) DEFAULT '0' COMMENT '分期期数',
  `periods_amount` int(11) DEFAULT '0' COMMENT '每期支付金额',
  `total_amount` int(11) DEFAULT '0' COMMENT '总共实付金额',
  `periods_fee` int(11) DEFAULT '0' COMMENT '商城每期收取手续费',
  `bank_id` int(11) DEFAULT '0' COMMENT '银行',
  `bank_fee` int(11) DEFAULT '0' COMMENT '银行收取手续费',
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uidx_payOrderId` (`pay_order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8;

/*Table structure for table `sdyxpay_pay_info` */

CREATE TABLE `sdyxpay_pay_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pay_order_id` varchar(30) NOT NULL DEFAULT '' COMMENT '支付id',
  `pay_type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '支付类型',
  `pay_amount` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '应付金额',
  `actual_pay_amount` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '实付金额',
  `discount_amount` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '优惠金额',
  `pay_account` varchar(50) DEFAULT '',
  `pay_trade_no` varchar(30) NOT NULL DEFAULT '' COMMENT '交易流水号',
  `pay_trade_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '支付状态(0:待支付; 1:支付成功)',
  `pay_trade_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '交易时间',
  `product_name` varchar(255) DEFAULT '' COMMENT '商品名称',
  `extend` varchar(30) NOT NULL DEFAULT '' COMMENT '扩展字段',
  `app_id` int(11) unsigned DEFAULT '0',
  `mer_id` varchar(30) NOT NULL DEFAULT '',
  `client_ip` varchar(30) NOT NULL DEFAULT '' COMMENT '客户端ip',
  `client_id` varchar(30) NOT NULL DEFAULT '' COMMENT '客户端id',
  `agent_id` varchar(30) NOT NULL DEFAULT '' COMMENT 'agentId',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sdyxpay_pay_info_pay_order_id_pay_type_uindex` (`pay_order_id`,`pay_type`)
) ENGINE=InnoDB AUTO_INCREMENT=30752 DEFAULT CHARSET=utf8 COMMENT='苏打支付消息交易表';

/*Table structure for table `sdyxpay_pay_type` */

CREATE TABLE `sdyxpay_pay_type` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `pay_type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '支付类型',
  `pay_main_type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '支付主类型(1:支付宝; 2:微信; 3:银联)',
  `pay_type_name` varchar(30) NOT NULL DEFAULT '' COMMENT '支付类型名称',
  `pay_type_symbol` varchar(30) NOT NULL DEFAULT '' COMMENT '支付类型英文标识',
  `pay_display_name` varchar(30) NOT NULL DEFAULT '' COMMENT '支付名称',
  `pay_desc` varchar(50) NOT NULL DEFAULT '' COMMENT '支付描述',
  `pay_icon` varchar(255) NOT NULL DEFAULT '' COMMENT 'logo URL',
  `pay_label_img` varchar(255) NOT NULL DEFAULT '' COMMENT '标签图标URL',
  `default_selected` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否默认勾选(0:否; 1:是)',
  `is_special` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否特定机型支付方式(0:否;1:是)',
  `client_id` varchar(30) NOT NULL DEFAULT '' COMMENT '客户端类型(1000:iOS; 1001:安卓; 1002:H5)',
  `is_valid` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否有效(0:无效;1:有效)',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COMMENT='苏打支付方式枚举表';

/*Table structure for table `sdyxpay_refund_info` */

CREATE TABLE `sdyxpay_refund_info` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `refund_order_id` varchar(30) NOT NULL DEFAULT '',
  `pay_type` int(11) unsigned DEFAULT '0' COMMENT '支付类型',
  `refund_amount` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '退款金额',
  `total_amount` bigint(20) unsigned DEFAULT '0',
  `pay_trade_no` varchar(30) NOT NULL DEFAULT '',
  `refund_trade_no` varchar(30) NOT NULL DEFAULT '' COMMENT '交易流水号',
  `refund_trade_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '退款状态(0:申请退款; 1退款成功)',
  `refund_trade_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '交易时间',
  `refund_reason` varchar(30) DEFAULT '',
  `extend` varchar(30) NOT NULL DEFAULT '' COMMENT '扩展字段',
  `app_id` int(11) unsigned DEFAULT '0',
  `mer_id` varchar(30) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='苏打支付退款交易表';

/*Table structure for table `simple_dict` */

CREATE TABLE `simple_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `column_name` varchar(45) NOT NULL DEFAULT '',
  `column_desc` varchar(45) DEFAULT '',
  `column_type` varchar(45) DEFAULT '',
  `column_value` varchar(45) DEFAULT '',
  `column_value_desc` varchar(45) DEFAULT '',
  `created_at` datetime DEFAULT '0000-00-00 00:00:00',
  `updated_at` datetime DEFAULT '0000-00-00 00:00:00',
  `orderIndex` int(5) DEFAULT NULL,
  `is_delete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `column_name_UNIQUE` (`column_name`),
  UNIQUE KEY `column_value_UNIQUE` (`column_value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='简单枚举表';

/*Table structure for table `sku_code_info` */

CREATE TABLE `sku_code_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku_code` varchar(255) NOT NULL DEFAULT '' COMMENT '货号,格式：[运营商]_[基础描述]_[面值]',
  `desc` varchar(255) NOT NULL DEFAULT '' COMMENT '描述信息',
  `delivery_type` tinyint(2) unsigned zerofill NOT NULL COMMENT '发货类型 3 电影 4 油卡 5 话费 6 流量 7 万里通',
  `param_0` varchar(255) NOT NULL DEFAULT '' COMMENT 'param_0，用户自定义,充值面额',
  `param_1` varchar(255) NOT NULL DEFAULT '' COMMENT 'param_1，用户自定义',
  `param_2` varchar(255) NOT NULL DEFAULT '' COMMENT 'param_2，用户自定义',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态,0-下线，1-上线',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_sku_code_info` (`sku_code`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8 COMMENT='发货基础信息表';

/*Table structure for table `sku_inventory_timer` */

CREATE TABLE `sku_inventory_timer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku_id` bigint(20) NOT NULL DEFAULT '0' COMMENT 'sku_id',
  `inventory` int(11) NOT NULL DEFAULT '0' COMMENT '要更新的可用库存',
  `exec_time` time NOT NULL DEFAULT '00:00:00' COMMENT '定时任务执行时间',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_delete` int(11) NOT NULL DEFAULT '0' COMMENT '是否删除，1：删除,0：未删除',
  `remark` varchar(50) NOT NULL DEFAULT '' COMMENT '备注',
  `sales_channel_id` varchar(15) NOT NULL DEFAULT '' COMMENT '销售渠道',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8 COMMENT='商品库存定时任务';

/*Table structure for table `static_active_info` */

CREATE TABLE `static_active_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active_id` varchar(12) DEFAULT '' COMMENT '活动Id',
  `title` varchar(100) DEFAULT '' COMMENT '标题',
  `meta` varchar(100) DEFAULT '' COMMENT 'meta内容',
  `description` varchar(255) DEFAULT '' COMMENT '描述',
  `content` mediumtext COMMENT '可编辑内容',
  `is_share` tinyint(1) DEFAULT '0' COMMENT '是否分享(0:默认不分享,1:可分享)',
  `share_friend_title` varchar(100) DEFAULT '' COMMENT '分享朋友标题',
  `share_friend_desc` varchar(255) DEFAULT '' COMMENT '分享朋友描述',
  `share_moment_title` varchar(100) DEFAULT '' COMMENT '分享朋友圈标题',
  `share_moment_desc` varchar(255) DEFAULT '' COMMENT '分享朋友圈描述',
  `share_logo` varchar(255) DEFAULT '' COMMENT '分享logo',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除(0:默认不删除,1:删除)',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_active_id` (`active_id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

/*Table structure for table `store_consume_card` */

CREATE TABLE `store_consume_card` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `consume_order_id` varchar(20) NOT NULL DEFAULT '' COMMENT '核销订单号',
  `card_num` varchar(20) NOT NULL DEFAULT '' COMMENT '卡号',
  `deduction_value` int(10) NOT NULL DEFAULT '0' COMMENT '订单抵扣金额',
  `deducted_recharge` int(10) NOT NULL DEFAULT '0' COMMENT '卡抵扣金额',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `store_consume_order` */

CREATE TABLE `store_consume_order` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) NOT NULL DEFAULT '0' COMMENT '账号ID',
  `account` varchar(50) NOT NULL DEFAULT '' COMMENT '账号名称',
  `store_id` int(10) NOT NULL DEFAULT '0' COMMENT '门店Id',
  `store_name` varchar(50) NOT NULL DEFAULT '' COMMENT '门店名称',
  `supplier_id` int(10) NOT NULL DEFAULT '0' COMMENT '供应商ID',
  `supplier_name` varchar(50) NOT NULL DEFAULT '' COMMENT '供应商名称',
  `consume_order_id` varchar(20) NOT NULL DEFAULT '' COMMENT '核销订单号',
  `consume_amount` int(10) NOT NULL DEFAULT '0' COMMENT '核销金额',
  `consume_rate` float(6,4) NOT NULL DEFAULT '0.0000' COMMENT '核销折扣',
  `settle_amount` decimal(16,4) NOT NULL DEFAULT '0.0000' COMMENT '结算金额',
  `consume_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '核销订单状态 0-待处理 1-成功 2-失败',
  `created_at` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '订单创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Table structure for table `store_info` */

CREATE TABLE `store_info` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '门店名称',
  `supplier_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '供应商id',
  `supplier_name` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商名称',
  `province_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '省份id',
  `province_name` varchar(32) NOT NULL DEFAULT '' COMMENT '省份名称',
  `city_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '城市id',
  `city_name` varchar(32) NOT NULL DEFAULT '0' COMMENT '城市名称',
  `region_name` varchar(32) NOT NULL DEFAULT '0' COMMENT '县（区）名称',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `phone` varchar(100) NOT NULL DEFAULT '' COMMENT '电话',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_delete` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除  0-未删除  1-已删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_store_info` (`name`,`supplier_id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COMMENT='门店信息';

/*Table structure for table `supplier_account_control` */

CREATE TABLE `supplier_account_control` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL DEFAULT '0' COMMENT '账号Id',
  `order_field` bigint(20) NOT NULL DEFAULT '0' COMMENT '订单状态字段，复选框',
  `show_field` bigint(20) NOT NULL DEFAULT '0' COMMENT '显示字段，复选框',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_account_id` (`account_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=975 DEFAULT CHARSET=utf8 COMMENT='供应商账户权限控制';

/*Table structure for table `supplier_account_info` */

CREATE TABLE `supplier_account_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NOT NULL DEFAULT '' COMMENT '账号',
  `account_type` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '账户类型 1-兑换系统，2-对账系统',
  `password` varchar(50) NOT NULL DEFAULT '' COMMENT '密码，md5加密后',
  `supplier_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '供应商id',
  `supplier_name` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商名称',
  `store_id` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '门店id',
  `store_name` varchar(255) NOT NULL DEFAULT '' COMMENT '供应商名称',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `is_online` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '状态,0-无效，1-有效',
  `is_delete` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否删除  0-未删除 1-已删除',
  `contact_phone` varchar(11) NOT NULL DEFAULT '' COMMENT '账号登陆接受短信验证码',
  `ep_role_id` int(11) NOT NULL COMMENT '角色ID, 1-自营， 2-第三方， 3-虚拟商品',
  `remark` varchar(30) NOT NULL DEFAULT '' COMMENT '账号备注',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_account` (`account`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=995 DEFAULT CHARSET=utf8 COMMENT='供应商账户信息';

/*Table structure for table `supplier_menu_info` */

CREATE TABLE `supplier_menu_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `menu_parent_id` varchar(5) NOT NULL COMMENT '低级菜单的父节点',
  `account_id` int(11) NOT NULL COMMENT '供应商账号id',
  `uri` varchar(50) NOT NULL COMMENT '跳转链接uri',
  `menu_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_estonian_ci NOT NULL COMMENT '菜单名',
  `created_time` datetime NOT NULL COMMENT '创建时间',
  `updated_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `menu_id` varchar(5) NOT NULL COMMENT '菜单id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menu_id` (`menu_id`) USING BTREE COMMENT '菜单id',
  KEY `idx_menu_parent_id` (`menu_parent_id`) USING BTREE COMMENT '菜单父节点id'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Table structure for table `t_user_address` */

CREATE TABLE `t_user_address` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 'id',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '用户账号',
  `country_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '国家',
  `province_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '省份',
  `city_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '城市',
  `district_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '地区/县',
  `address` varchar(255) NOT NULL DEFAULT '' COMMENT '详细地址',
  `phone` varchar(20) NOT NULL DEFAULT '' COMMENT '电话',
  `postcode` varchar(10) NOT NULL DEFAULT '' COMMENT '邮编',
  `name` varchar(30) NOT NULL DEFAULT '' COMMENT '收件人名字',
  `identity_card` varchar(20) NOT NULL DEFAULT '' COMMENT '用户的身份证号',
  `is_default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否默认地址',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='地址表';

/*Table structure for table `th5staticpage` */

CREATE TABLE `th5staticpage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(80) DEFAULT NULL COMMENT 'æ ‡é¢˜',
  `meta` varchar(180) DEFAULT NULL COMMENT 'metaå†…å®¹',
  `description` varchar(500) DEFAULT NULL COMMENT 'æè¿°',
  `content` mediumtext COMMENT 'å¯ç¼–è¾‘å†…å®¹',
  `top` int(11) DEFAULT '0',
  `flag` int(2) DEFAULT NULL,
  `startDate` datetime DEFAULT NULL,
  `endDate` datetime DEFAULT NULL,
  `staticpicAddress` varchar(255) DEFAULT NULL,
  `cityId` varchar(1500) DEFAULT NULL,
  `cityName` varchar(3000) DEFAULT NULL,
  `jumpUrl` varchar(1000) DEFAULT NULL COMMENT 'æŒ‡å®šè·³è½¬URL',
  `jsContent` text COMMENT 'æ´»åŠ¨é¡µé¢js',
  `test` int(1) DEFAULT '0' COMMENT '1åªä¾›æµ‹è¯•ä½¿ç”¨',
  `share` int(1) DEFAULT '0' COMMENT '0é»˜è®¤ä¸åˆ†äº«1å¯åˆ†äº«',
  `shareTitleFriend` varchar(255) DEFAULT NULL COMMENT 'åˆ†äº«æœ‹å‹æ ‡é¢˜',
  `shareTitleMoment` varchar(255) DEFAULT NULL COMMENT 'åˆ†äº«æœ‹å‹åœˆæ ‡é¢˜',
  `shareContentFriend` text COMMENT 'åˆ†äº«æœ‹å‹å†…å®¹',
  `shareContentMoment` text COMMENT 'åˆ†äº«æœ‹å‹åœˆå†…å®¹',
  `shareLogoPicAddress` varchar(255) DEFAULT NULL COMMENT 'åˆ†äº«Logo',
  `channelId` varchar(100) DEFAULT NULL COMMENT 'æ¸ é“æŽ§åˆ¶ 0è¡¨ç¤ºæ— é™åˆ¶ [1,2,3,4...]',
  `platform` varchar(20) DEFAULT NULL COMMENT 'å¯è§å¹³å°',
  `filmId` int(11) DEFAULT '0' COMMENT 'ç”µå½±ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1439 DEFAULT CHARSET=utf8;

/*Table structure for table `tied_product` */

CREATE TABLE `tied_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `product_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `product_name` varchar(50) NOT NULL DEFAULT '' COMMENT '商品名字',
  `tied_title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '' COMMENT '搭售信息',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  `tied_status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态:1-上线;2-下线',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除:0-未删除；1-已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

/*Table structure for table `tied_product_detail` */

CREATE TABLE `tied_product_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `product_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '商品ID',
  `tied_product_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '搭售商品ID',
  `tied_sku_id` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT '搭售商品的skuId',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '修改时间',
  `is_delete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否删除:0-未删除;1-已删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=228 DEFAULT CHARSET=utf8;

/*Table structure for table `user_feedback` */

CREATE TABLE `user_feedback` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `status` tinyint(2) unsigned DEFAULT '0' COMMENT '状态',
  `channel_id` int(10) unsigned DEFAULT '0' COMMENT '渠道ID',
  `app_version` varchar(20) NOT NULL DEFAULT '' COMMENT 'app版本号',
  `user_id` bigint(20) unsigned DEFAULT '0' COMMENT '用户ID',
  `content` varchar(1000) NOT NULL DEFAULT '' COMMENT '反馈内容',
  `contact_way` varchar(50) NOT NULL DEFAULT '' COMMENT '联系方式',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8;

/*Table structure for table `wechat_customer_msg` */

CREATE TABLE `wechat_customer_msg` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(18) NOT NULL COMMENT '消息CODE',
  `channel_id` tinyint(2) NOT NULL COMMENT '公总号:1苏打优选 2苏打优选VIP',
  `reply_type` tinyint(2) NOT NULL COMMENT '回复类型：1、关键词回复 2、收到消息回复 3、被关注回复',
  `msg_name` varchar(60) DEFAULT NULL COMMENT '消息名称',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除：0、否 1、是',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `wechat_custome_msg_code_uindex` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=240 DEFAULT CHARSET=utf8 COMMENT='微信消息主表';

/*Table structure for table `wechat_customer_msg_content` */

CREATE TABLE `wechat_customer_msg_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(18) NOT NULL COMMENT '微信消息主表CODE',
  `content_type` tinyint(2) NOT NULL COMMENT '回复内容类型：1、文本 2、图片',
  `content` text COMMENT '回复内容',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除：0、否 1、是',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '创建时间',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `wechat_customer_msg_content_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=524 DEFAULT CHARSET=utf8 COMMENT='回复内容表';

/*Table structure for table `wechat_customer_msg_keyword` */

CREATE TABLE `wechat_customer_msg_keyword` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(18) NOT NULL COMMENT '微信消息主表CODE ',
  `keyword` varchar(60) NOT NULL,
  `matching_mode` tinyint(2) NOT NULL DEFAULT '1' COMMENT '匹配方式：1、全匹配 2、半匹配',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除：0、否 1、是',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `wechat_customer_msg_keyword_code_index` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=429 DEFAULT CHARSET=utf8 COMMENT='关键词表id';

/*Table structure for table `wechat_menu` */

CREATE TABLE `wechat_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_channel` tinyint(4) NOT NULL DEFAULT '1' COMMENT '菜单所属渠道:1 苏打优选 2 vip',
  `menu_context` text COMMENT '菜单内容(内容直接保存为微信需要的格式)',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '是否删除：0、否 1、是',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='微信自定义菜单表';

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
