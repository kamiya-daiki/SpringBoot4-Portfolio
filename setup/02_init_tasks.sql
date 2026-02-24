------------------------------
-- タスクテーブル
------------------------------
CREATE TABLE tasks (
    -- タスクID(連番)
    task_id             BIGSERIAL PRIMARY KEY,
    -- タスク履歴(タスク変更時に変更履歴用に連番を保存)
    task_id_history     BIGSERIAL PRIMARY KEY,

    -- 概要
    summary             TEXT NOT NULL,
    -- 詳細
    details             TEXT
    -- 開始日
    start_datetime      timestamp DEFAULT CURRENT_TIMESTAMP,
    -- 終了日
    end_datetime        timestamp DEFAULT CURRENT_TIMESTAMP,

    -- ユーザーID(FK)
    user_id             BIGINT REFERENCES users(user_id),
);

INSERT INTO tasks (user_id, start_datetime, end_datetime, details)
VALUES (
    1
    , NULL
    , '2026-02-10 05:21:52.253525'
    , CURRENT_TIMESTAMP
    , 'Example task for user 1'
    , 'Details of the example task for user 1'
);

