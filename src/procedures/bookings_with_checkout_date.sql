CREATE OR REPLACE FUNCTION bookings_with_checkout_date(desired_checkout_date DATE)
    RETURNS TABLE (
        hotel_name VARCHAR(30),
        room_no CHAR(4),
        first_name VARCHAR(20),
        last_name VARCHAR(20),
        date_from DATE,
        date_to DATE)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY SELECT h.hotel_name, r.room_no, g.first_name, g.last_name,
            b.date_from, b.date_to
        FROM hotel h
            NATURAL JOIN room r
            NATURAL JOIN booking b
            NATURAL JOIN guest g
        WHERE b.date_to = desired_checkout_date;
END;
$$; 