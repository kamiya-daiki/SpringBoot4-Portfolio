CREATE TABLE users (
    user_id     BIGSERIAL PRIMARY KEY,
    email       VARCHAR(50) NOT NULL UNIQUE,
    password    VARCHAR(100) NOT NULL,  -- BCrypt でハッシュ化されたパスワード
    enabled     BOOLEAN DEFAULT TRUE,
    create_datetime         timestamp DEFAULT CURRENT_TIMESTAMP,
    last_login_datetime     timestamp DEFAULT CURRENT_TIMESTAMP,
    authority     integer NOT NULL DEFAULT 0,
);
