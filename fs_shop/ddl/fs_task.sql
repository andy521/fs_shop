DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '����',
  `describe` varchar(255) DEFAULT NULL COMMENT '����',
  `update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='��Ŀ��';

DROP TABLE IF EXISTS `task_temp`;
CREATE TABLE `task_temp` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `name` varchar(50) NOT NULL COMMENT '����',
  `fieldset` varchar(255) DEFAULT NULL COMMENT '�Զ����ֶ�',
  `update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='����ģ���';

DROP TABLE IF EXISTS `task`;
CREATE TABLE `task` (
  `id` int(11) NOT NULL auto_increment COMMENT 'id',
  `parent_id` int(11) DEFAULT NULL COMMENT '��id',
  `project_id` int(11) DEFAULT NULL COMMENT '��Ŀid',
  `title` varchar(50) NOT NULL COMMENT '����',
  `describe` varchar(255) NOT NULL COMMENT '����',
  `status` int(11) DEFAULT NULL COMMENT '״̬',
  `type` int(11) DEFAULT NULL COMMENT '����',
  `priority` int(11) DEFAULT NULL COMMENT '���ȼ�',
  `jump_data` varchar(255) DEFAULT NULL COMMENT '��ת����',
  `tags` varchar(255) DEFAULT NULL COMMENT '��ǩ',
  `users` varchar(255) DEFAULT NULL COMMENT 'ָ�ɳ�Ա',
  `start_time` datetime DEFAULT NULL COMMENT '��ʼʱ��',
  `end_time` datetime DEFAULT NULL COMMENT '����ʱ��',
  `temp_id` int(11) DEFAULT NULL COMMENT 'ģ��id',
  `fieldset` TEXT DEFAULT NULL COMMENT '�Զ����ֶ�',
  `create_by` int(11) NOT NULL COMMENT '������',
  `create_date` datetime NOT NULL COMMENT '����ʱ��',
  `update_by` int(11) NOT NULL COMMENT '������',
  `update_date` datetime NOT NULL COMMENT '����ʱ��',
  `remarks` varchar(255) DEFAULT NULL COMMENT '��ע��Ϣ',
  `del_flag` char(1) NOT NULL DEFAULT '0' COMMENT 'ɾ�����',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='�����';