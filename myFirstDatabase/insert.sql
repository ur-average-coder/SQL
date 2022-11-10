#advarela
INSERT INTO `zip` 
(`zipcode`,
`state`,
`city`)
VALUES
(11111, 'AZ', 'Phoenix'), 
(22222, 'CA', 'Los Angeles'), 
(33333, 'NM', 'Albuquerque' ), 
(44444, 'OH', 'Cleveland'), 
(55555, 'WA', 'Seattle');

INSERT INTO `property`
(`pid`,
`zipcode`, 
`streetaddress`,
`yearbuilt`,
`bathrooms`,
`bedrooms`,
`ptype`)
VALUES
(0001, 11111, 'street 1', 1998, 2, 2, 'SINGLE_FAMILY'),
(0002, 11111, 'street 2', 1999, 2, 3, 'MULTI_FAMILY'), 
(0003, 33333, 'street 3' , 1995, 1, 1, 'CONDO'),
(0004, 33333, 'street 3', 1995, 1, 1, 'CONDO'), 
(0005, 22222, 'street 4', 0, 0, 0, 'LOT'), 
(0006, 22222, 'street 4', 2010, 2, 3, 'MULTI_FAMILY'), 
(0007, 11111, 'street 1', 2016, 1, 1, 'CONDO'), 
(0008, 55555, 'street 6', 2002, 2, 2, 'SINGLE_FAMILY'),
(0009, 44444, 'street 8', 1990, 3, 8, 'TOWN_HOUSE'),
(0010, 55555, 'street 12', 2005, 2, 3, 'SINGLE_FAMILY'),
(0011, 22222, 'street 22', 1999, 3, 6, 'TOWNHOUSE'), 
(0012, 11111, 'street 2', 2009, 2, 3, 'SINGLE_FAMILY');

INSERT INTO `event`
(`pid`,
`edate`,
`edescription`, 
`eprice`)
VALUES
(0001, '1999-09-10', 'Listed for sale', 100000),
(0004, '1996-03-12', 'Listed for sale', 75000),
(0010, '2011-07-23', 'Listed for sale', 140000),
(0001, '2022-04-09', 'Price change', 120000), 
(0001, '2022-05-05', 'Sold', 120000),
(0009, '2000-06-18', 'Listed for sale', 300000), 
(0012, '2010-07-20', 'Listed for sale', 130000),
(0009, '2001-11-19', 'Sold', 300000),
(0005, '2005-08-12', 'Listed for sale', 150000), 
(0005, '2006-04-03', 'Sold', 150000), 
(0002, '2012-05-03', 'Listed for sale', 130000), 
(0007, '2020-01-22', 'Listed for sale', 80000), 
(0007, '2020-05-10', 'Price change', 75000),
(0007, '2020-06-24', 'Sold', 75000), 
(0003, '2001-06-20', 'Listed for sale', 80000), 
(0003, '2003-02-22', 'Price change', 85000), 
(0003, '2003-07-12', 'Sold', 85000), 
(0004, '2004-02-16', 'Listing Removed', 0),
(0010, '2015-07-23', 'Listing Removed', 0),  
(0012, '2012-10-30', 'Listing Removed', 0), 
(0008, '2005-05-15', 'Listed for sale', 175000), 
(0006, '2010-12-25', 'Listed for sale', 230000),
(0008, '2010-05-20', 'Listing Removed', 0); 








