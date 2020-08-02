SELECT m1.BusinessTravel, COUNT(e1.EmployeeNumber) as "Number of Employees"
FROM employee e1 JOIN miscellaneous_factors m1
ON e1.Factor_id = m1.Factor_id
JOIN salary_details s1
ON e1.Payroll_id = s1.Payroll_id
GROUP BY m1.BusinessTravel;




SELECT Department, AVG(DistanceFromHome) as "Average_distance_from_home"
FROM job_details j1 JOIN miscellaneous_factors m1
ON j1.Factor_id = m1.Factor_id
GROUP BY Department
ORDER BY Average_distance_from_home DESC;

SELECT COUNT(E1.EmployeeNumber) AS "Sales Employees with Technical degree"
FROM employee E1 JOIN job_details J1
ON E1.EmployeeNumber = J1.EmployeeNumber
WHERE EducationField = "Technical Degree"
AND J1.Department = "Sales";


SELECT Department, AVG(M1.JobSatisfaction) AS "Average JobSatisfaction",
AVG(M1.EnvironmentSatisfaction) AS "Average EnvironmentSatisfaction"
FROM job_details J1 JOIN miscellaneous_factors M1
ON J1.Factor_id = M1.Factor_id
JOIN job_satisfaction J2
ON M1.JobSatisfaction = J2.JobSatisfaction
GROUP BY Department;

SELECT department,gender, COUNT(gender) AS "Count" ,AVG(MonthlyIncome) AS "Average Salary"
FROM employee E1 JOIN salary_details S1
ON E1.Payroll_id = S1.Payroll_id
JOIN job_details J1
ON J1.EmployeeNumber = E1.EmployeeNumber
GROUP BY department,gender
ORDER BY department,gender;

SELECT department,gender, MaritalStatus,AVG(P1.PerformanceRating) AS "Average Performance rating"
FROM Employee E1 JOIN job_details J1
ON E1.EmployeeNumber = J1.EmployeeNumber
JOIN work_performance_details W1
ON W1.Work_performance_id = J1.Work_performance_id
JOIN performance_rating P1
ON P1.PerformanceRating = W1.PerformanceRating
GROUP BY Department,gender,MaritalStatus
ORDER BY Department;


