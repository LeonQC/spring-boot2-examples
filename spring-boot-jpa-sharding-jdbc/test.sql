CREATE DATABASE
IF NOT EXISTS ds0;

CREATE DATABASE
IF NOT EXISTS ds1;

CREATE TABLE
IF NOT EXISTS ds0.t_generate_key (
	user_id BIGINT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (user_id)
);

CREATE TABLE
IF NOT EXISTS ds0.t_file0 (
	file_id BIGINT NOT NULL AUTO_INCREMENT,
	md5 VARCHAR (32),
	STATUS VARCHAR (50),
	PRIMARY KEY (file_id),
	UNIQUE KEY `idx_md5` (`md5`)
);

CREATE TABLE
IF NOT EXISTS ds0.t_file1 (
	file_id BIGINT NOT NULL AUTO_INCREMENT,
	md5 VARCHAR (32),
	STATUS VARCHAR (50),
	PRIMARY KEY (file_id),
	UNIQUE KEY `idx_md5` (`md5`)
);

CREATE TABLE
IF NOT EXISTS ds0.t_file2 (
	file_id BIGINT NOT NULL AUTO_INCREMENT,
	md5 VARCHAR (32),
	STATUS VARCHAR (50),
	PRIMARY KEY (file_id),
	UNIQUE KEY `idx_md5` (`md5`)
);

CREATE TABLE
IF NOT EXISTS ds0.t_user0 (
	user_id BIGINT NOT NULL AUTO_INCREMENT,
	STATUS VARCHAR (50),
	PRIMARY KEY (user_id)
);

CREATE TABLE
IF NOT EXISTS ds0.t_user1 (
	user_id BIGINT NOT NULL AUTO_INCREMENT,
	STATUS VARCHAR (50),
	PRIMARY KEY (user_id)
);

CREATE TABLE
IF NOT EXISTS ds0.t_user2 (
	user_id BIGINT NOT NULL AUTO_INCREMENT,
	STATUS VARCHAR (50),
	PRIMARY KEY (user_id)
);


CREATE TABLE
IF NOT EXISTS ds0.t_order0 (
	order_id BIGINT NOT NULL AUTO_INCREMENT,
	user_id BIGINT NOT NULL,
	STATUS VARCHAR (50),
	PRIMARY KEY (order_id)
);

CREATE TABLE
IF NOT EXISTS ds0.t_order1 (
	order_id BIGINT NOT NULL AUTO_INCREMENT,
	user_id BIGINT NOT NULL,
	STATUS VARCHAR (50),
	PRIMARY KEY (order_id)
);

CREATE TABLE
IF NOT EXISTS ds1.t_order0 (
	order_id BIGINT NOT NULL AUTO_INCREMENT,
	user_id BIGINT NOT NULL,
	STATUS VARCHAR (50),
	PRIMARY KEY (order_id)
);

CREATE TABLE
IF NOT EXISTS ds1.t_order1 (
	order_id BIGINT NOT NULL AUTO_INCREMENT,
	user_id BIGINT NOT NULL,
	STATUS VARCHAR (50),
	PRIMARY KEY (order_id)
);


CREATE TABLE
IF NOT EXISTS ds0.t_order_item0 (
	order_item_id BIGINT NOT NULL AUTO_INCREMENT,
	order_id BIGINT NOT NULL,
	user_id BIGINT NOT NULL,
	STATUS VARCHAR (50),
	PRIMARY KEY (order_item_id)
);

CREATE TABLE
IF NOT EXISTS ds0.t_order_item1 (
	order_item_id BIGINT NOT NULL AUTO_INCREMENT,
	order_id BIGINT NOT NULL,
	user_id BIGINT NOT NULL,
	STATUS VARCHAR (50),
	PRIMARY KEY (order_item_id)
);

CREATE TABLE
IF NOT EXISTS ds1.t_order_item0 (
	order_item_id BIGINT NOT NULL AUTO_INCREMENT,
	order_id BIGINT NOT NULL,
	user_id BIGINT NOT NULL,
	STATUS VARCHAR (50),
	PRIMARY KEY (order_item_id)
);

CREATE TABLE
IF NOT EXISTS ds1.t_order_item1 (
	order_item_id BIGINT NOT NULL AUTO_INCREMENT,
	order_id BIGINT NOT NULL,
	user_id BIGINT NOT NULL,
	STATUS VARCHAR (50),
	PRIMARY KEY (order_item_id)
);