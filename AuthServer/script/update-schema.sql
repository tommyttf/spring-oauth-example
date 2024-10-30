CREATE TABLE user_info
(
    id       VARCHAR(255) NOT NULL,
    username VARCHAR(255) NULL,
    password VARCHAR(255) NULL,
    roles    VARCHAR(255) NULL,
    CONSTRAINT pk_userinfo PRIMARY KEY (id)
);

ALTER TABLE user_info
    ADD CONSTRAINT uc_userinfo_username UNIQUE (username);