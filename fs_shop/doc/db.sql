DROP TABLE IF EXISTS `shop_dict`;
CREATE TABLE `shop_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '����',
  `type` varchar(50) NOT NULL COMMENT '����',
  `sort` int(11) DEFAULT NULL COMMENT '����',
  `update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ֵ��';

DROP TABLE IF EXISTS `shop_member`;
CREATE TABLE `shop_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '����',
  `wx_id` varchar(100) DEFAULT NULL COMMENT '΢��id',
  `login_name` varchar(64) DEFAULT NULL COMMENT '��¼��',
  `password` varchar(32) DEFAULT NULL COMMENT '����',
	`score` int(11) DEFAULT 0 COMMENT '����',
  `contact_way` varchar(30) DEFAULT NULL COMMENT '��ϵ��ʽ',
  `status` tinyint(2) DEFAULT '0' COMMENT '״̬',
  `last_login_time` datetime DEFAULT NULL COMMENT '����¼ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�˿ͻ�����Ϣ��';

DROP TABLE IF EXISTS `shop_goods_temp`;
CREATE TABLE `shop_goods_temp` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '����',
  `fieldset` varchar(255) DEFAULT NULL COMMENT '�Զ����ֶ�',
	`update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ʒ���ͱ�';

DROP TABLE IF EXISTS `shop_goods`;
CREATE TABLE `shop_goods` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '����',
	`type` int(11) DEFAULT NULL COMMENT '����',
	`temp_id` int(11) DEFAULT NULL COMMENT 'ģ��id',
  `price` varchar(20) NULL DEFAULT '0' COMMENT '�۸�',
	`score` int(11) DEFAULT -1 COMMENT '����',
  `description` varchar(255) DEFAULT NULL COMMENT '����',
  `min` int(11) NULL DEFAULT '-1' COMMENT '��Сֵ',
	`max` int(11) NULL DEFAULT '0' COMMENT '���ֵ',
	`update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `fieldset` TEXT DEFAULT NULL COMMENT '�Զ����ֶ�',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ʒ��';

DROP TABLE IF EXISTS `shop_goods_img`;
CREATE TABLE `shop_goods_img` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `goods_id` int(11) DEFAULT NULL COMMENT '��Ʒid',
  `name` varchar(100) DEFAULT NULL COMMENT '����',
	`path` varchar(100) DEFAULT NULL COMMENT '·��',
  `bytes` MEDIUMBLOB DEFAULT NULL COMMENT '�ļ������ƴ洢',
	`first_show` char(1) NOT NULL DEFAULT '0' COMMENT '����չʾ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ƷͼƬ��';

DROP TABLE IF EXISTS `shop_order`;
CREATE TABLE `shop_order` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
	`number` varchar(100) NOT NULL COMMENT '������',
	`table_no` varchar(30) DEFAULT NULL COMMENT '̨��',
	`persons` int(11) DEFAULT NULL COMMENT '����',
	`pay_method` int(11) DEFAULT NULL COMMENT '֧����ʽ',
  `order_time` varchar(20) NOT NULL COMMENT '�µ�ʱ��',
  `delivery_date` varchar(20) DEFAULT NULL COMMENT '��������',
	`status` tinyint(2) DEFAULT '0' COMMENT '״̬',
  `total` varchar(20) DEFAULT '0' COMMENT '�ܼ�',
	`create_by` int(11) NOT NULL COMMENT '������',
  `create_date` datetime NOT NULL COMMENT '����ʱ��',
  `update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='������';

DROP TABLE IF EXISTS `shop_order_delivery`;
CREATE TABLE `shop_order_delivery` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
	`order_id` int(11) NOT NULL COMMENT '����id',
  `delivery_time` varchar(30) DEFAULT NULL COMMENT '����ʱ��',
	`delivery_address` varchar(255) DEFAULT NULL COMMENT '���͵�ַ',
	`customer` varchar(100) DEFAULT NULL COMMENT '�ջ���',
	`contact_way` varchar(255) DEFAULT NULL COMMENT '��ϵ��ʽ',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����-���ͱ�';

DROP TABLE IF EXISTS `shop_order_detail`;
CREATE TABLE `shop_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `order_id` int(11) NOT NULL COMMENT '����id',
  `goods_id` int(11) NOT NULL COMMENT '��Ʒid',
  `count` int(11) NOT NULL COMMENT '����',
  `price` varchar(20) DEFAULT '0' COMMENT '�۸�',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����-�����';

DROP TABLE IF EXISTS `shop_report`;
CREATE TABLE `shop_report` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `count_date` varchar(30) NOT NULL COMMENT 'ͳ������',
  `goods_id` int(11) DEFAULT NULL COMMENT '��Ʒid',
  `type` tinyint(2) NOT NULL COMMENT '����',
  `total` varchar(20) DEFAULT '0' COMMENT '�ܼ�',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�����';

DROP TABLE IF EXISTS `shop_member_address`;
CREATE TABLE `shop_member_address` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '����',
  `sex` varchar(2) DEFAULT NULL COMMENT '�Ա�',
  `phone` varchar(20) DEFAULT NULL COMMENT '�ֻ�����',
  `address` varchar(50) DEFAULT NULL COMMENT '��ַ',
	`detail_address` varchar(50) DEFAULT NULL COMMENT '��ϸ��ַ',
  `default_flag` tinyint(2) NOT NULL DEFAULT '0' COMMENT '�Ƿ�Ĭ��ʹ��',
	`create_by` int(11) NOT NULL COMMENT '������',
  `create_date` datetime NOT NULL COMMENT '����ʱ��',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�˿��ղ͵�ַ��Ϣ��';

