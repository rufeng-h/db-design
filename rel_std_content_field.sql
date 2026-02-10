-- 标准内容与表头字段关联

create table rel_std_item_field
(
    content_id bigint      not null references biz_std_content (id),
    field_id   bigint      not null references biz_std_content_field (id),
    created_at timestamptz not null default current_timestamp,
    updated_at timestamptz not null default current_timestamp,
    primary key (content_id, field_id)
);