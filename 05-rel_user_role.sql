create table rel_user_role
(
    user_id    bigint      not null,
    role_id    bigint      not null,
    primary key (user_id, role_id),
    created_at timestamptz not null default current_timestamp,
    constraint fk_ur_user foreign key (user_id) references sys_user (id),
    constraint fk_ur_role foreign key (role_id) references sys_role (id)
);
