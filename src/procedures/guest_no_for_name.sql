CREATE OR REPLACE FUNCTION guest_no_for_name (vfirst_name VARCHAR(20),
		vlast_name VARCHAR(20)) RETURNS INT AS $$
DECLARE
	desired_guest_no INT;
BEGIN
	SELECT g.guest_no INTO desired_guest_no FROM guest g WHERE
		g.first_name = vfirst_name AND g.last_name = vlast_name;
	RETURN desired_guest_no;
END;
$$ LANGUAGE plpgsql;