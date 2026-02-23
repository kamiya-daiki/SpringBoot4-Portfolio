------------------------------
-- タスクテーブル
------------------------------
CREATE TABLE tasks (
    user_id             BIGINT REFERENCES users(user_id),
    -- タスクID(連番)
    task_id             BIGSERIAL PRIMARY KEY,
    -- タスク履歴(タスク変更時に変更履歴用に連番を保存)
    task_id_history     BIGSERIAL PRIMARY KEY,
    summary             TEXT NOT NULL,
    details             TEXT
    start_datetime      timestamp DEFAULT CURRENT_TIMESTAMP,
    end_datetime        timestamp DEFAULT CURRENT_TIMESTAMP,
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

