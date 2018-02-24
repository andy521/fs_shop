DROP TABLE IF EXISTS `u_dict`;
CREATE TABLE `u_dict` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '����',
  `type` varchar(50) NOT NULL COMMENT '����',
  `sort` int(11) DEFAULT NULL COMMENT '����',
  `update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='�ֵ��';

DROP TABLE IF EXISTS `u_auth`;
CREATE TABLE `u_auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '����',
  `update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Ȩ�ޱ�';

DROP TABLE IF EXISTS `u_office`;
CREATE TABLE `u_office` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `parent_id` int(11) NOT NULL COMMENT '����id',
  `name` varchar(30) NOT NULL COMMENT '����',
  `master_id` int(11) DEFAULT NULL COMMENT '������id',
  `update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='������';

DROP TABLE IF EXISTS `u_office_user`;
CREATE TABLE `u_office_user` (
  `office_id` int(11) NOT NULL COMMENT '����id',
  `user_id` int(11) NOT NULL COMMENT '�û�id',
  PRIMARY KEY (`office_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����-�û���';

DROP TABLE IF EXISTS `u_role`;
CREATE TABLE `u_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '����',
  `ename` varchar(50) NOT NULL COMMENT 'Ӣ������',
  `update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='��ɫ��';

DROP TABLE IF EXISTS `u_role_auth`;
CREATE TABLE `u_role_auth` (
  `role_id` int(11) NOT NULL COMMENT '��ɫid',
  `auth_id` int(11) NOT NULL COMMENT 'Ȩ��id',
  PRIMARY KEY (`role_id`,`auth_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��ɫ-Ȩ�ޱ�';

DROP TABLE IF EXISTS `u_user`;
CREATE TABLE `u_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(50) DEFAULT NULL COMMENT '����',
  `code` varchar(100) DEFAULT NULL COMMENT '���루���ţ�',
  `login_name` varchar(64) NOT NULL COMMENT '��¼��',
  `password` varchar(32) NOT NULL COMMENT '����',
  `contact_way` varchar(30) DEFAULT NULL COMMENT '��ϵ��ʽ',
  `email` varchar(30) DEFAULT NULL COMMENT '����',
  `status` tinyint(2) DEFAULT '0' COMMENT '״̬',
  `last_login_time` datetime DEFAULT NULL COMMENT '����¼ʱ��',
  `update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='�û�������Ϣ��';

DROP TABLE IF EXISTS `u_user_role`;
CREATE TABLE `u_user_role` (
  `user_id` int(11) NOT NULL COMMENT '�û�id',
  `role_id` int(11) NOT NULL COMMENT '��ɫid',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�û�-��ɫ��';












