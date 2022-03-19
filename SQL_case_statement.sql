--- this is to find is customers year meets a specific condition
--- ie if the year is greater than 2015 then get the age if not give nothing
SELECT 
--- this gets the year
	labstart.year,
--- this gets the customer age
	labstart.customer_age,
--- this case statement analyse is condition is met
	CASE WHEN labstart.year > 2015
		THEN labstart.customer_age
		ELSE NULL
	END AS age_analyze
FROM labstart


---- Counts based on condition
SELECT 
--- this gets the year
	labstart.year,
--- this case statement analyse is condition is met
	CASE WHEN labstart.year > 2011
		THEN count(labstart.customer_age)
		ELSE NULL
	END AS number_of_customers
FROM labstart
Group by labstart.year
