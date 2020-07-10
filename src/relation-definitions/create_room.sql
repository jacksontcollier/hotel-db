CREATE TABLE IF NOT EXISTS room (
    room_no CHAR(4) NOT NULL,
    hotel_no INT NOT NULL,
    type CHAR(1) NOT NULL CONSTRAINT valid_room_type CHECK (
        type IN ('S', 'D', 'P')
    ),
    price DECIMAL(5,2),
    PRIMARY KEY (room_no, hotel_no),
    FOREIGN KEY (hotel_no) REFERENCES hotel (hotel_no)
);
