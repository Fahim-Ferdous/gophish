-- +goose Up
-- +goose StatementBegin
CREATE TABLE IF NOT EXISTS `organizations` (
    id integer primary key autoincrement,
    name varchar(255) not null,
    email varchar(255) not null unique,
    it_admin_contact varchar(16) not null unique,
    description varchar(3000),
    is_active int default 1,
    create_at datetime default current_date not null,
    created_by integer
);

-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE `organizations`;
-- +goose StatementEnd
