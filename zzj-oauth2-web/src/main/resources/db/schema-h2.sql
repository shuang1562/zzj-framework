-- 创建用户表数据
DROP TABLE IF EXISTS `zzj_user`;
CREATE TABLE `zzj_user`
(
    `id` BIGINT NOT NULL COMMENT '主键ID',
    `name` VARCHAR(25) NULL DEFAULT NULL COMMENT '姓名',
    `age` INT NULL DEFAULT NULL COMMENT '年龄',
    `email` VARCHAR(50) NULL DEFAULT NULL COMMENT '邮箱',
    `address` VARCHAR(50) NULL DEFAULT NULL COMMENT '地址',
    `create_stamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '当前时间',
    `action_stamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '数据修改时间',
    `is_delete` INT NOT NULL DEFAULT 0 COMMENT '是否删除，0:未删除;1:删除',
    PRIMARY KEY (`id`)
);
-- 创建角色表
DROP TABLE IF EXISTS `zzj_role`;
CREATE TABLE `zzj_role`
(
    `id` BIGINT NOT NULL COMMENT '主键ID',
    `role_name` VARCHAR(25) NOT NULL DEFAULT '' COMMENT '角色名称',
    `role_desc` VARCHAR(25) NOT NULL DEFAULT '' COMMENT '角色描述',
    `create_stamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '当前时间',
    `action_stamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '数据修改时间',
    `is_delete` INT NOT NULL DEFAULT 0 COMMENT '是否删除，0:未删除;1:删除',
    PRIMARY KEY (id)
);
-- 用户角色表
DROP TABLE IF EXISTS `zzj_user_role`;
CREATE TABLE `zzj_user_role`
(
    `id` BIGINT NOT NULL COMMENT '主键ID',
    `user_id` BIGINT NOT NULL COMMENT '用户ID',
    `role_id` BIGINT NOT NULL COMMENT '角色ID',
    `create_stamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '当前时间',
    `action_stamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '数据修改时间',
    `is_delete` INT NOT NULL DEFAULT 0 COMMENT '是否删除，0:未删除;1:删除',
    PRIMARY KEY (id)
);
-- 权限表
DROP TABLE IF EXISTS `zzj_permission`;
CREATE TABLE `zzj_permission`
(
    `id` BIGINT NOT NULL COMMENT '主键ID，权限ID',
    `menu_desc` VARCHAR(250) NOT NULL DEFAULT '' COMMENT '权限描述',
    `parent_menu_id` BIGINT NOT NULL DEFAULT -1 COMMENT '父权限，默认 -1',
    `is_use` INT NOT NULL DEFAULT 0 COMMENT '是否使用,0:不使用;1:使用',
    `create_stamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '当前时间',
    `action_stamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '数据修改时间',
    `is_delete` INT NOT NULL DEFAULT 0 COMMENT '是否删除，0:未删除;1:删除',
    PRIMARY KEY (id)
);
-- 角色权限表
DROP TABLE IF EXISTS `zzj_role_permission`;
CREATE TABLE `zzj_role_permission`
(
    `id` BIGINT NOT NULL COMMENT '主键ID',
    `role_id` BIGINT NOT NULL COMMENT '角色ID, -1 是所有权限，只要未删除就能看见',
    `permission_id` BIGINT NOT NULL COMMENT '权限ID',
    `create_stamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '当前时间',
    `action_stamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '数据修改时间',
    `is_delete` INT NOT NULL DEFAULT 0 COMMENT '是否删除，0:未删除;1:删除',
    PRIMARY KEY (id)
);