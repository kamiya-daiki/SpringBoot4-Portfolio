CREATE TABLE authority_Master (
    authority_id             INTEGER PRIMARY KEY,
    authority_name           VARCHAR(50) NOT NULL UNIQUE
);

INSERT INTO authority_Master (authority_id, authority_name)
VALUES (
    0
    , 'USER'
);

INSERT INTO authority_Master (authority_id, authority_name)
VALUES (
    1
    , 'ADMIN'
);
