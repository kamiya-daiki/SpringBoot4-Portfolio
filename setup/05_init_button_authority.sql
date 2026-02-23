------------------------------
-- ボタン権限テーブル
------------------------------
CREATE TABLE button_authority (
    -- ボタンID(連番)
    button_authority          BIGSERIAL PRIMARY KEY,
    -- ボタン表示名
    button_label_jp           VARCHAR(50) NOT NULL,
    -- ボタンアクションフォーム
    button_action           VARCHAR(50) NOT NULL,
    -- 権限
    authority     integer NOT NULL DEFAULT 0 REFERENCES authority_Master(authority_id),
);

INSERT INTO button_authority (button_authority, button_label_jp, button_action, authority)
VALUES (
    1
    , '管理者画面'
    , '/admin'
    , 1
);

