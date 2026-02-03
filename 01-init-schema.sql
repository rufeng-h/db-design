-- 0. 设置数据库默认时区（只影响显示，不影响 UTC 存储）
ALTER DATABASE data_standard SET timezone TO 'Asia/Shanghai';

-- 1. 创建业务 schema
CREATE SCHEMA IF NOT EXISTS data_standard;

-- 2. 设置 postgres 用户默认 search_path
ALTER ROLE postgres SET search_path = data_standard;

-- 3. 锁死 public，防止误用
REVOKE CREATE ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM PUBLIC;

-- 4. 给当前数据库设置默认 search_path（兜底）
ALTER DATABASE data_standard SET search_path = data_standard;