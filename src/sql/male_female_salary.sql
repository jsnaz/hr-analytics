#Problem 3: Compare the average salary of female versus male employees in the entire company until year 2002
# add a filter allowing to show result per each department
SELECT 
	ee.gender,
    d.dept_name,
	ROUND(AVG(s.salary), 2) AS salary,
    YEAR(s.from_date) AS calendar_year
FROM  t_salaries s
	JOIN
 t_employees ee ON s.emp_no = ee.emp_no 
	JOIN
t_dept_emp de ON ee.emp_no= de.emp_no
	JOIN
t_departments d ON de.dept_no = d.dept_no
GROUP BY d.dept_no, ee.gender,calendar_year
HAVING calendar_year <= 2000
ORDER BY d.dept_no;