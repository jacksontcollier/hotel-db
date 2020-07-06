CREATE TABLE IF NOT EXISTS "Booking" (
	hotel_no INT NOT NULL,
	room_no CHAR(4) NOT NULL,
	guest_no INT NOT NULL,
	date_from DATE NOT NULL,
	date_to DATE NOT NULL,
	PRIMARY KEY (hotel_no, guest_no, date_from),
	FOREIGN KEY (hotel_no) REFERENCES "Hotel" (hotel_no),
	FOREIGN KEY (room_no, hotel_no) REFERENCES "Room" (room_no, hotel_no)
);
