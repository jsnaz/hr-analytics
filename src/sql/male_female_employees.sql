#Problem 1: Breakdown between Male and Female employees in the company each year, since 1990
SELECT  
	YEAR(d.from_date) AS calendar_year,
    ee.gender,
    COUNT(ee.emp_no) AS num_of_employees
FROM
	t_employees ee
JOIN 
	t_dept_emp d ON d.emp_no = ee.emp_no
GROUP BY calendar_year, ee.gender
HAVING calendar_year >= 1990
ORDER BY YEAR(d.from_date);