DROP TABLE IF EXISTS `pss_goods_temp`;
CREATE TABLE `pss_goods_temp` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '����',
  `fieldset` varchar(255) DEFAULT NULL COMMENT '�Զ����ֶ�',
	`update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ʒ���ͱ�';

DROP TABLE IF EXISTS `pss_goods`;
CREATE TABLE `pss_goods` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '����',
	`code` varchar(100) NOT NULL COMMENT '��ʶ�루���ͺš������룩',
	`type` int(11) NOT NULL COMMENT '����',
	`temp_id` int(11) NOT NULL COMMENT 'ģ��id',
  `brand` varchar(30) DEFAULT NULL COMMENT 'Ʒ��',
  `price` varchar(20) NULL DEFAULT '0' COMMENT '�۸�',
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

DROP TABLE IF EXISTS `pss_supplier_temp`;
CREATE TABLE `pss_supplier_temp` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '����',
  `fieldset` varchar(255) DEFAULT NULL COMMENT '�Զ����ֶ�',
	`update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ӧ��ģ���';

DROP TABLE IF EXISTS `pss_supplier`;
CREATE TABLE `pss_supplier` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '����',
	`code` varchar(100) NOT NULL COMMENT '��ʶ�루���ͺš������룩',
	`type` int(11) DEFAULT NULL COMMENT '����',
	`temp_id` int(11) DEFAULT NULL COMMENT 'ģ��id',
  `contacts` varchar(20) DEFAULT NULL COMMENT '��ϵ��',
  `contact_way` varchar(30) DEFAULT NULL COMMENT '��ϵ��ʽ',
  `address` varchar(255) DEFAULT NULL COMMENT '��ַ',
	`update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `fieldset` TEXT DEFAULT NULL COMMENT '�Զ����ֶ�',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ӧ�̱�';

DROP TABLE IF EXISTS `pss_purchasing_plan`;
CREATE TABLE `pss_purchasing_plan` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `number` varchar(50) NOT NULL COMMENT '����',
	`cycle` int(11) DEFAULT NULL COMMENT '����',
	`type` int(11) DEFAULT NULL COMMENT '����',
  `plan_date` datetime DEFAULT NULL COMMENT '�ƻ�����',
	`status` tinyint(2) DEFAULT '0' COMMENT '״̬',
	`create_by` int(11) NOT NULL COMMENT '������',
  `create_date` datetime NOT NULL COMMENT '����ʱ��',
	`update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ɹ��ƻ���';

DROP TABLE IF EXISTS `pss_purchasing_plan_detail`;
CREATE TABLE `pss_purchasing_plan_detail` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
	`parent_id` int(11) NOT NULL COMMENT '�ɹ��ƻ�id',
  `goods_id` int(11) NOT NULL COMMENT '��Ʒid',
  `price` varchar(20) DEFAULT NULL COMMENT '���',
	`count` int(11) DEFAULT NULL COMMENT '����',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ɹ��ƻ������';

DROP TABLE IF EXISTS `pss_purchasing_order`;
CREATE TABLE `pss_purchasing_order` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `plan_id` int(11) DEFAULT NULL COMMENT '�ƻ�id',
	`number` varchar(50) NOT NULL COMMENT '����',
	`type` tinyint(2) DEFAULT '0' COMMENT '����',
	`supplier_id` int(11) DEFAULT NULL COMMENT '��Ӧ��id',
	`invoice_type` int(11) DEFAULT NULL COMMENT '��Ʊ����',
	`business_id` int(11) DEFAULT NULL COMMENT 'ҵ��Ա',
  `order_date` varchar(20) DEFAULT NULL COMMENT '�µ�����',
	`status` tinyint(2) DEFAULT '0' COMMENT '״̬',
	`create_by` int(11) NOT NULL COMMENT '������',
  `create_date` datetime NOT NULL COMMENT '����ʱ��',
	`update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ɹ�������';

DROP TABLE IF EXISTS `pss_purchasing_order_detail`;
CREATE TABLE `pss_purchasing_order_detail` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
	`parent_id` int(11) NOT NULL COMMENT '�ɹ�����id',
  `goods_id` int(11) NOT NULL COMMENT '��Ʒid',
	`count` int(11) NOT NULL COMMENT '����',
  `price` varchar(20) NULL DEFAULT '0' COMMENT '�۸�',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ɹ����������';

DROP TABLE IF EXISTS `pss_purchasing_plan_order_mapping`;
CREATE TABLE `pss_purchasing_plan_order_mapping` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
	`plan_id` int(11) NOT NULL COMMENT '�ƻ�id',
  `order_id` int(11) NOT NULL COMMENT '����id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ɹ�_�ƻ�_����_������';

DROP TABLE IF EXISTS `pss_sales_order`;
CREATE TABLE `pss_sales_order` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
	`number` varchar(50) NOT NULL COMMENT '����',
  `delivery_date` datetime DEFAULT NULL COMMENT '��������',
	`customer_id` int(11) DEFAULT NULL COMMENT '�ͻ�',
	`merchandiser_id` int(11) DEFAULT NULL COMMENT '����Ա',
	`pay_method` int(11) DEFAULT NULL COMMENT '���ʽ',
  `transport_method` int(11) DEFAULT NULL COMMENT '���䷽ʽ',
  `delivery_address` varchar(100) DEFAULT NULL COMMENT '�ջ���ַ',
	`status` tinyint(2) DEFAULT '0' COMMENT '״̬',
	`create_by` int(11) NOT NULL COMMENT '������',
  `create_date` datetime NOT NULL COMMENT '����ʱ��',
	`update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���۶�����';

DROP TABLE IF EXISTS `pss_sales_order_detail`;
CREATE TABLE `pss_sales_order_detail` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
	`parent_id` int(11) NOT NULL COMMENT '���۶���id',
  `goods_id` int(11) NOT NULL COMMENT '��Ʒid',
	`count` int(11) NOT NULL COMMENT '����',
  `price` varchar(20) NULL DEFAULT '0' COMMENT '�۸�',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='���۶��������';

DROP TABLE IF EXISTS `pss_store_house`;
CREATE TABLE `pss_store_house` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
	`name` varchar(20) NOT NULL COMMENT '����',
	`storekeeper_id` int(11) DEFAULT NULL COMMENT '�ֹ�Ա',
  `address` varchar(50) DEFAULT NULL COMMENT '��ַ',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�ֿ��';

DROP TABLE IF EXISTS `pss_stock`;
CREATE TABLE `pss_stock` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
	`storehouse_id` int(11) NOT NULL COMMENT '�ֿ�id',
	`goods_id` int(11) NOT NULL COMMENT '��Ʒid',
  `count` int(11) DEFAULT NULL COMMENT '����',
	`position` varchar(50) DEFAULT NULL COMMENT '��λ',
	`update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����';

DROP TABLE IF EXISTS `pss_stock_log`;
CREATE TABLE `pss_stock_log` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
	`number` varchar(50) NOT NULL COMMENT '����',
  `type` int(11) DEFAULT NULL COMMENT '����',
	`business_date` datetime DEFAULT NULL COMMENT 'ҵ������',
	`storehouse_id` int(11) NOT NULL COMMENT '�ֿ�id',
	`business_id` int(11) DEFAULT NULL COMMENT 'ҵ��Ա',
	`audit_id` int(11) DEFAULT NULL COMMENT '�����',
	`status` tinyint(2) DEFAULT '0' COMMENT '״̬',
	`create_by` int(11) NOT NULL COMMENT '������',
  `create_date` datetime NOT NULL COMMENT '����ʱ��',
	`update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�����־��';

DROP TABLE IF EXISTS `pss_stock_log_detail`;
CREATE TABLE `pss_stock_log_detail` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
	`parent_id` int(11) NOT NULL COMMENT '�����־id',
	`goods_id` int(11) NOT NULL COMMENT '��Ʒid',
  `count` int(11) DEFAULT NULL COMMENT '����',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�����־�����';


