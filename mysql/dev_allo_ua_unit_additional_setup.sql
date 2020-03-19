/**
  Update config for bus DB.
 */
UPDATE `core_config_data`
SET `value` = '127.0.0.1'
WHERE `scope_id` = 0 and `path` = 'tsg_product_update_options/connection/host';
UPDATE `core_config_data`
SET `value` = '3306'
WHERE `scope_id` = 0 and `path` = 'tsg_product_update_options/connection/port';
UPDATE `core_config_data`
SET `value` = 'dev_allo_ua_bus_unit_test'
WHERE `scope_id` = 0 and `path` = 'tsg_product_update_options/connection/db_name';
UPDATE `core_config_data`
SET `value` = 'root'
WHERE `scope_id` = 0 and `path` = 'tsg_product_update_options/connection/user';
UPDATE `core_config_data`
SET `value` = 'root'
WHERE `scope_id` = 0 and `path` = 'tsg_product_update_options/connection/password';

/**
  Update config for PP DB.
 */
UPDATE `core_config_data`
SET `value` = '127.0.0.1'
WHERE `scope_id` = 0 and `path` = 'tsg_product_update_options/pp_connection/host';
UPDATE `core_config_data`
SET `value` = '3306'
WHERE `scope_id` = 0 and `path` = 'tsg_product_update_options/pp_connection/port';
UPDATE `core_config_data`
SET `value` = 'dev_allo_ua_pp'
WHERE `scope_id` = 0 and `path` = 'tsg_product_update_options/pp_connection/db_name';
UPDATE `core_config_data`
SET `value` = 'root'
WHERE `scope_id` = 0 and `path` = 'tsg_product_update_options/pp_connection/user';
UPDATE `core_config_data`
SET `value` = 'root'
WHERE `scope_id` = 0 and `path` = 'tsg_product_update_options/pp_connection/password';

/**
 Create users.
 */
CREATE USER 'user02'@'localhost' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON * . * TO 'user02'@'localhost';

CREATE USER 'allo'@'127.0.0.1' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON * . * TO 'allo'@'127.0.0.1';

CREATE USER 'allo'@'*' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON * . * TO 'allo'@'*';

CREATE USER 'allo'@'192.168.1.%' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON * . * TO 'allo'@'192.168.1.%';

CREATE USER 'allo'@'192.168.0.%' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON * . * TO 'allo'@'192.168.0.%';

CREATE USER 'tsg'@'127.0.0.1' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON * . * TO 'tsg'@'127.0.0.1';

CREATE USER 'user02'@'192.168.0.4' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON * . * TO 'user02'@'192.168.0.4';

CREATE USER 'user02'@'192.168.1.%' IDENTIFIED BY '';
GRANT ALL PRIVILEGES ON * . * TO 'user02'@'192.168.1.%';

FLUSH PRIVILEGES;