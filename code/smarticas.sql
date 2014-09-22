CREATE DATABASE IF NOT EXISTS smarticas CHARACTER SET utf8 COLLATE utf8_unicode_ci;
GRANT ALL ON smarticas.* TO 'admin'@'localhost' IDENTIFIED BY 'admin';
FLUSH PRIVILEGES;
