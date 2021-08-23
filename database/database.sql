set character_set_client=utf8;
set character_set_connection=utf8;
set character_set_results=utf8;
set global max_allowed_packet = 2*1024*1024*10;

-- 数据库初始化
drop database if exists cicada_demo;
CREATE DATABASE cicada_demo DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;

-- 撤权并删除用户
revoke all on cicada_demo.* from cicada_demo@"%";
drop user cicada_demo;
flush privileges;

-- 建立用户并赋予本地访问权限
create user cicada_demo@'%' identified by 'cicada_demo';
grant all privileges on cicada_demo.* to cicada_demo@localhost  identified by 'cicada_demo';

-- 赋予所有外部的访问权限
grant all privileges on cicada_demo.* to cicada_demo@'%'  identified by 'cicada_demo';

use cicada_demo;

