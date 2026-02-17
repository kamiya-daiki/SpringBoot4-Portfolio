CREATE TABLE tasks (
    task_id             BIGSERIAL PRIMARY KEY,
    task_history_id     BIGSERIAL,
    user_id             BIGINT REFERENCES users(user_id),
    start_datetime      timestamp DEFAULT CURRENT_TIMESTAMP,
    end_datetime        timestamp DEFAULT CURRENT_TIMESTAMP,
    summary             TEXT NOT NULL,
    details             TEXT
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

