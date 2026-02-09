create table rel_role_permission
(
    role_id       bigint      not null,
    permission_id bigint      not null,
    primary key (role_id, permission_id),
    created_at    timestamptz not null default current_timestamp,
    updated_at    timestamptz not null default current_timestamp,
    constraint fk_rp_role foreign key (role_id) references sys_role (id),
    constraint fk_rp_permission foreign key (permission_id) references sys_permission (id)
);
