CREATE OR REPLACE FUNCTION hotel_no_for_name(desired_hotel_name VARCHAR(30)) RETURNS INT AS $$
DECLARE
	desired_hotel_no INT;
BEGIN
	SELECT h.hotel_no INTO desired_hotel_no FROM hotel h WHERE
		h.hotel_name = desired_hotel_name;
	RETURN desired_hotel_no;
END;
$$ LANGUAGE plpgsql;