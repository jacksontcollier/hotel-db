DELETE FROM booking;
DROP TABLE IF EXISTS booking;

DELETE FROM guest;
DROP TABLE IF EXISTS guest;

DELETE FROM room;
DROP TABLE IF EXISTS room;

DELETE FROM hotel;
DROP TABLE IF EXISTS hotel;

DROP FUNCTION IF EXISTS hotel_no_for_name;
DROP FUNCTION IF EXISTS guest_no_for_name;