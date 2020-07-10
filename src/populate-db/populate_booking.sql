DO language plpgsql $$
DECLARE
	hotel_no_tennessean INT;
	hotel_no_waldorf INT;
	hotel_no_algonquin INT; 
	hotel_no_palmer INT;
	hotel_no_savoy INT;
	hotel_no_lutetia INT; 
	hotel_no_bayerischer INT;

	guest_no_mickey_mouse INT;
	guest_no_minnie_mouse INT;
	guest_no_george_washington INT;
	guest_no_david_bowie INT;
	guest_no_jackson_collier INT;
	guest_no_buzz_lightyear INT;
	guest_no_bugs_bunny INT;
	guest_no_elmer_fudd INT;
	guest_no_john_lennon INT;
	guest_no_paul_mccartney INT;
	guest_no_ringo_starr INT;
	guest_no_george_harrison INT;
	guest_no_elton_john INT;
	guest_no_tom_petty INT;
BEGIN
	SELECT hotel_no_for_name('The Tennessean Hotel') INTO hotel_no_tennessean;
	SELECT hotel_no_for_name('Waldorf Astoria') INTO hotel_no_waldorf;
	SELECT hotel_no_for_name('The Algonquin Hotel') INTO hotel_no_algonquin;
	SELECT hotel_no_for_name('The Palmer House') INTO hotel_no_palmer;
	SELECT hotel_no_for_name('Hotel The Savoy') INTO hotel_no_savoy;
	SELECT hotel_no_for_name('Hotel Lutetia') INTO hotel_no_lutetia;
	SELECT hotel_no_for_name('Hotel Bayerischer Hof') INTO hotel_no_bayerischer;

	SELECT guest_no_for_name('Mickey', 'Mouse') INTO guest_no_mickey_mouse;
	SELECT guest_no_for_name('Minnie', 'Mouse') INTO guest_no_minnie_mouse;
	SELECT guest_no_for_name('George', 'Washington') INTO guest_no_george_washington;
	SELECT guest_no_for_name('David', 'Bowie') INTO guest_no_david_bowie;
	SELECT guest_no_for_name('Jackson', 'Collier') INTO guest_no_jackson_collier;
	SELECT guest_no_for_name('Buzz', 'Lightyear') INTO guest_no_buzz_lightyear;
	SELECT guest_no_for_name('Bugs', 'Bunny') INTO guest_no_bugs_bunny;
	SELECT guest_no_for_name('Elmer', 'Fudd') INTO guest_no_elmer_fudd;
	SELECT guest_no_for_name('John', 'Lennon') INTO guest_no_john_lennon;
	SELECT guest_no_for_name('Paul', 'McCartney') INTO guest_no_paul_mccartney;
	SELECT guest_no_for_name('Ringo', 'Starr') INTO guest_no_ringo_starr;
	SELECT guest_no_for_name('George', 'Harrison') INTO guest_no_george_harrison;
	SELECT guest_no_for_name('Elton', 'John') INTO guest_no_elton_john;
	SELECT guest_no_for_name('Tom', 'Petty') INTO guest_no_tom_petty;

	INSERT INTO booking (hotel_no, room_no, guest_no, date_from, date_to) VALUES
		(hotel_no_tennessean, '101', guest_no_mickey_mouse, '1999-12-31', '2000-01-02'),
		(hotel_no_tennessean, '101', guest_no_mickey_mouse, '2000-12-31', '2001-01-01'),
		(hotel_no_lutetia, '103', guest_no_minnie_mouse, '2003-07-21', '2003-07-28'),
		(hotel_no_savoy, '101', guest_no_george_washington, '2006-09-19', '2006-09-23'),
		(hotel_no_algonquin, '301', guest_no_george_washington, '2008-10-04', '2008-10-07'),
		(hotel_no_bayerischer, '201', guest_no_david_bowie, '1998-03-15', '1998-03-18'),
		(hotel_no_palmer, '901', guest_no_david_bowie, '1999-04-19', '1999-04-28'),
		(hotel_no_waldorf, '1299', guest_no_david_bowie, '2002-12-04', '2002-12-27'),
		(hotel_no_tennessean, '901', guest_no_jackson_collier, '2011-07-04', '2011-07-11'),
		(hotel_no_lutetia, '101', guest_no_jackson_collier, '2013-07-04', '2011-07-09'),
		(hotel_no_savoy, '101', guest_no_jackson_collier, '2015-02-13', '2015-02-17'),
		(hotel_no_algonquin, '301', guest_no_buzz_lightyear, '2002-11-19', '2002-11-23'),
		(hotel_no_palmer, '479', guest_no_bugs_bunny, '2007-05-22', '2007-05-29'),
		(hotel_no_tennessean, '203', guest_no_bugs_bunny, '1989-01-19', '1989-01-23'),
		(hotel_no_waldorf, '309', guest_no_elmer_fudd, '1989-03-27', '1989-03-29'),
		(hotel_no_savoy, '101', guest_no_john_lennon, '1973-08-22', '1973-08-24'),
		(hotel_no_bayerischer, '201', guest_no_john_lennon, '1975-09-03', '1975-09-09'),
		(hotel_no_bayerischer, '201', guest_no_john_lennon, '1978-04-22', '1978-04-25'),
		(hotel_no_algonquin, '301', guest_no_paul_mccartney, '1983-10-22', '1983-10-27'),
		(hotel_no_lutetia, '101', guest_no_ringo_starr, '1992-07-03', '1992-07-06'),
		(hotel_no_waldorf, '105', guest_no_george_harrison, '1987-03-11', '1987-03-23');
END
$$;