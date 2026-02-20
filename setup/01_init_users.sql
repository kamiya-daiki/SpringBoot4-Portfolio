CREATE TABLE users (
    user_id     BIGSERIAL PRIMARY KEY,
    email       VARCHAR(50) NOT NULL UNIQUE,
    -- BCrypt でハッシュ化されたパスワード
    password    VARCHAR(100) NOT NULL,
    enabled     BOOLEAN DEFAULT TRUE,
    create_datetime                 timestamp DEFAULT CURRENT_TIMESTAMP,
    -- 最終パスワード更新日時
    last_update_password_datetime   timestamp DEFAULT CURRENT_TIMESTAMP,
    last_login_datetime             timestamp DEFAULT CURRENT_TIMESTAMP,
    -- 権限
    authority     integer NOT NULL DEFAULT 0 REFERENCES authority_Master(authority_id),
)
