CREATE TABLE IF NOT EXISTS guest (
    guest_no INT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    address VARCHAR(40) NOT NULL
);