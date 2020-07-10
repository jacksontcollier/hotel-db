DO language plpgsql $$
DECLARE
	hotel_no_tennessean INT;
	hotel_no_waldorf INT;
	hotel_no_algonquin INT; 
	hotel_no_palmer INT;
	hotel_no_savoy INT;
	hotel_no_lutetia INT; 
	hotel_no_bayerischer INT; 
BEGIN
	SELECT hotel_no_for_name('The Tennessean Hotel') INTO hotel_no_tennessean;
	SELECT hotel_no_for_name('Waldorf Astoria') INTO hotel_no_waldorf;
	SELECT hotel_no_for_name('The Algonquin Hotel') INTO hotel_no_algonquin;
	SELECT hotel_no_for_name('The Palmer House') INTO hotel_no_palmer;
	SELECT hotel_no_for_name('Hotel The Savoy') INTO hotel_no_savoy;
	SELECT hotel_no_for_name('Hotel Lutetia') INTO hotel_no_lutetia;
	SELECT hotel_no_for_name('Hotel Bayerischer Hof') INTO hotel_no_bayerischer;

	INSERT INTO room (hotel_no, room_no, type, price) VALUES
		(hotel_no_tennessean, '101', 'S', 129.99),
		(hotel_no_tennessean, '102', 'S', 129.99),
		(hotel_no_tennessean, '203', 'D', 179.99),
		(hotel_no_tennessean, '901', 'P', 399.99),
		(hotel_no_waldorf, '105', 'S', 299.99),
		(hotel_no_waldorf, '309', 'S', 299.99),
		(hotel_no_waldorf, '1299', 'P', 899.99),
		(hotel_no_algonquin, '301', 'D', 259.99),
		(hotel_no_palmer, '301', 'S', 199.99),
		(hotel_no_palmer, '401', 'S', 199.99),
		(hotel_no_palmer, '479', 'D', 299.99),
		(hotel_no_palmer, '901', 'P', 599.99),
		(hotel_no_palmer, '902', 'P', 599.99),
		(hotel_no_savoy, '101', 'S', 259.99),
		(hotel_no_lutetia, '101', 'D', 315.99),
		(hotel_no_lutetia, '102', 'D', 316.99),
		(hotel_no_lutetia, '103', 'D', 319.99),
		(hotel_no_bayerischer, '101', 'P', 799.99),
		(hotel_no_bayerischer, '201', 'P', 819.99);
END
$$;
