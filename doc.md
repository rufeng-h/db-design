| 前缀      | 类型      | 用途                   | 示例                                       |
|---------|---------|----------------------|------------------------------------------|
| `sys_`  | 系统表     | 系统配置、用户、权限、菜单、日志等基础表 | `sys_user`、`sys_role`、`sys_config`       |
| `cfg_`  | 配置表     | 业务参数、开关、规则配置         | `cfg_train_schedule`、`cfg_station_param` |
| `dict_` | 字典表     | 业务枚举、状态码、类型、可选项      | `dict_order_status`、`dict_train_type`    |
| `ref_`  | 参考表     | 基础数据、静态数据、被其他表引用     | `ref_station`、`ref_city`                 |
| `biz_`  | 业务主表    | 核心业务表                | `biz_order`、`biz_ticket`                 |
| `rel_`  | 关联表     | 多对多关联关系              | `rel_user_role`、`rel_order_item`         |
| `his_`  | 历史表     | 历史记录、归档数据            | `his_order`、`his_train_status`           |
| `log_`  | 日志表     | 操作日志、事件日志            | `log_operation`、`log_error`              |
| `tmp_`  | 临时表     | 临时计算、导入中间表           | `tmp_upload`、`tmp_calc`                  |
| `bak_`  | 备份表     | 数据备份                 | `bak_user`、`bak_order`                   |
| `vw_`   | 视图      | 数据库视图                | `vw_user_summary`、`vw_ticket_stat`       |
| `ext_`  | 外部数据    | 接口或外部系统同步表           | `ext_supplier`、`ext_ticket_info`         |
| `stg_`  | 数据仓库阶段表 | ETL临时/阶段表            | `stg_order`、`stg_train_event`            |
| `dim_`  | 数据仓库维度表 | 数据仓库维度表              | `dim_station`、`dim_date`                 |
| `fact_` | 数据仓库事实表 | 数据仓库核心指标表            | `fact_ticket_sales`、`fact_train_delay`   |
