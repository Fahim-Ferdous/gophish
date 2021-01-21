-- +goose Up
ALTER TABLE `users` ADD COLUMN `org_id` BIGINT REFERENCES organizations(id);
ALTER TABLE `imap` ADD COLUMN `org_id` BIGINT;
ALTER TABLE `campaigns` ADD COLUMN `org_id` BIGINT;
ALTER TABLE `pages` ADD COLUMN `org_id` BIGINT;
ALTER TABLE `results` ADD COLUMN `org_id` BIGINT;
ALTER TABLE `smtp` ADD COLUMN `org_id` BIGINT;
ALTER TABLE `templates` ADD COLUMN `org_id` BIGINT;
ALTER TABLE `webhooks` ADD COLUMN `org_id` BIGINT;

-- +goose Down
