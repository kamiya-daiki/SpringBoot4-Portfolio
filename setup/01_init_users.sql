------------------------------
-- ユーザーテーブル
------------------------------
CREATE TABLE users (

    -- ユーザーID(連番)
    user_id     BIGSERIAL PRIMARY KEY,
    -- メールアドレス(一意)
    email       VARCHAR(50) NOT NULL,
    -- 履歴ID(タスク変更時に変更履歴用に連番を保存)
    user_id_history          BIGSERIAL PRIMARY KEY,
    
    -- パスワード(BCrypt でハッシュ化済)
    password    VARCHAR(100) NOT NULL,
    -- ユーザー作成日時
    create_datetime                 timestamp DEFAULT CURRENT_TIMESTAMP,
    -- 最終パスワード更新日時
    last_update_password_datetime   timestamp DEFAULT CURRENT_TIMESTAMP,
    -- 最終ログイン日時
    last_login_datetime             timestamp DEFAULT CURRENT_TIMESTAMP,
    -- 権限
    authority     integer NOT NULL DEFAULT 0 REFERENCES authority_Master(authority_id),
    -- 画面モード
    screen_mode   integer NOT NULL DEFAULT 0 REFERENCES screen_mode_Master(screen_mode_id),
);
