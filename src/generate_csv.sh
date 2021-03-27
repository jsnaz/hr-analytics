# This script run the SQL query from each specified SQL file and write the result in a CSV file
# Since mysql return a tab separated value (tsv) files, we replace the tabs with commas

mysql -u root --password= --database=employees_mod --raw --batch < sql/male_female_employees.sql | tr '\t' ',' > ../output/male_female_employees.csv
mysql -u root --password= --database=employees_mod --raw --batch < sql/male_female_managers.sql | tr '\t' ',' > ../output/male_female_managers.csv
mysql -u root --password= --database=employees_mod --raw --batch < sql/male_female_salary.sql | tr '\t' ',' > ../output/male_female_salary.csv