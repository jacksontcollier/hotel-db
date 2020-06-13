CREATE TABLE IF NOT EXISTS "Guest" (
	guest_no INT NOT NULL,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	address VARCHAR(40) NOT NULL,
	PRIMARY KEY (guest_no)
);
