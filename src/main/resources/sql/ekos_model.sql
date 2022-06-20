CREATE TABLE `build`  (
  `id` varchar(60) NOT NULL COMMENT '主键',
  `project_name` varchar(255) NULL COMMENT '项目名',
  `project_type` tinyint(1) NULL COMMENT '项目类型 1 -> Java ',
  `git_url` varchar(500) NULL COMMENT 'git 地址',
  `git_id` varchar(60) NULL COMMENT 'git id',
  `branch` varchar(255) NULL COMMENT '分支',
  `build_tool_name` varchar(255) NULL COMMENT '构建工具名',
  `build_tool` varchar(60) NULL COMMENT '构建工具id',
  `build_cmd` text NULL COMMENT '构建命令',
  `create_time` datetime NULL COMMENT '创建时间',
  `update_time` datetime NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) COMMENT = '构建';

CREATE TABLE `deploy`  (
  `id` varchar(60) NOT NULL COMMENT ' 主键',
  `host_id` varchar(60) NULL COMMENT '主机id',
  `build_id` varchar(60) NULL COMMENT '构建id',
  `port` int NULL COMMENT '服务器端口',
  `deploy_type` int NULL COMMENT '1 -> 手动 2 -> 自动',
  `deploy_path` varchar(500) NULL COMMENT '部署的服务器路径',
  `deploy_cmd` text NULL COMMENT '部署命令',
  `create_time` datetime NULL COMMENT '创建时间',
  `update_time` datetime NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) COMMENT = '部署';

CREATE TABLE `git`  (
  `id` varchar(60) NOT NULL COMMENT '主键',
  `nike_name` varchar(255) NULL COMMENT '别名',
  `username` varchar(255) NULL COMMENT '用户名',
  `password` varchar(255) NULL COMMENT '密码',
  `create_time` datetime NULL COMMENT '创建时间',
  `update_time` datetime NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) COMMENT = 'git 显示';

CREATE TABLE `host`  (
  `id` varchar(60) NOT NULL COMMENT '主键',
  `host_ip` varbinary(255) NULL COMMENT '主机ip',
  `host_name` varchar(255) NULL COMMENT '主机名',
  `username` varchar(255) NULL COMMENT '用户名',
  `password` varchar(255) NULL COMMENT '密码',
  `create_time` datetime NULL COMMENT '创建时间',
  `update_time` datetime NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) COMMENT = '主机表';

CREATE TABLE `tenant`  (
  `id` varchar(60) NOT NULL COMMENT '主键',
  `tenant_name` varchar(255) NULL COMMENT '租户名',
  `create_time` datetime NULL COMMENT '创建时间',
  `update_time` datetime NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) COMMENT = '租户表';

CREATE TABLE `tool`  (
  `id` varchar(60) NOT NULL COMMENT '主键',
  `tool_type` int NULL COMMENT '工具类型 1 -> Java ',
  `tool_name` varchar(255) NULL COMMENT '工具名',
  `create_time` datetime NULL COMMENT '创建时间',
  `update_time` datetime NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) COMMENT = '构建工具';

CREATE TABLE `user`  (
  `id` varchar(60) NOT NULL COMMENT '主键',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `phone` varchar(255) NOT NULL COMMENT '手机号',
  `tenant_id` varchar(60) NULL COMMENT '租户',
  `state` tinyint(1) NULL COMMENT '用户状态 1 启用 0 禁用',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `password` varchar(255) NULL COMMENT '密码',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  `update_time` datetime NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) COMMENT = '用户表';

