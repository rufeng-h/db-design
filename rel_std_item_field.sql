-- 标准项与表头字段关联

create table rel_std_item_field
(
    item_id    bigint      not null,
    field_id   bigint      not null,
    created_at timestamptz not null default current_timestamp,
    updated_at timestamptz not null default current_timestamp,
    primary key (item_id, field_id)
);