***Task 1***

*--craete table--*
1.List all the values stored in the CITIZEN table.

CREATE DATABASE bangladesh;

CREATE TABLE citizen(
    C_ID INT,
    C_NAME VARCHAR(50),
    C_Home VARCHAR(50),
    AGE INT,
    OCCUPATION VARCHAR(20),
    GENDER VARCHAR(8),
    SALARY BIGINT
);


*--insert value into table--*
INSERT INTO citizen(
    C_ID,
    C_NAME,
    C_Home,
    AGE,
    OCCUPATION,
    GENDER,
    SALARY
)
VALUES(
    1,
    'Alice',
    'Dhaka',
    25,
    'Teacher',
    'Male',
    50000
),(
    2,
    'Bob',
    'Dhaka',
    56,
    'Service',
    'Male',
    60000
),(
    3,
    'Charlie',
    'Ctg',
    71,
    'Retired',
    'Male',
    10000
),(
    4,
    'Erin',
    'Ctg',
    13,
    'Student',
    'Female',
    500
),(
    5,
    'Dave',
    'Dhaka',
    45,
    'Service',
    'Male',
    40000
),(
    6,
    'Faythe',
    'Gajipur',
    54,
    'Doctor',
    'Female',
    55000
),(
    7,
    'Grace',
    'Gajipur',
    65,
    'Musician',
    'Female',
    5000
),(
    8,
    'Ivan',
    'Dhaka',
    56,
    'Engineer',
    'Male',
    60000
),(
    9,
    'Frank',
    'Ctg',
    23,
    'Student',
    'Male',
    1000
),(
    10,
    'Micheal',
    'Comilla',
    32,
    'Teacher',
    'Male',
    45000
),(
    11,
    'Niaj',
    'Comilla',
    51,
    'Farmer',
    'Male',
    20000
),(
    12,
    'Heidi',
    'Khulna',
    15,
    'Student',
    'Female',
    1500
),(
    13,
    'Ted',
    'Ctg',
    25,
    'Business',
    'Male',
    100000
),(
    14,
    'Walter',
    'Comilla',
    52,
    'Doctor',
    'Male',
    70000
),(
    15,
    'Victor',
    'Gajipur',
    53,
    'Teacher',
    'Male',
    50000
),(
    16,
    'Judy',
    'Dhaka',
    35,
    'Musician',
    'Female',
    50000
),(
    17,
    'Pat',
    'Khulna',
    43,
    'Teacher',
    'Male',
    50000
),(
    18,
    'Olivia',
    'Khulna',
    34,
    'Service',
    'Female',
    45000
),(
    19,
    'Trent',
    'Ctg',
    16,
    'Student',
    'Male',
    500
),(
    20,
    'Peggy',
    'Comilla',
    32,
    'Business',
    'Female',
    120000
),(
    21,
    'Wendy',
    'Ctg',
    25,
    'Musician',
    'Female',
    100000
),(
    22,
    'Oscar',
    'Gajipur',
    14,
    'Student',
    'Male',
    400
),(
    23,
    'Mallet',
    'Dhaka',
    25,
    'Engineer',
    'Male',
    50000
);


*--show output: --*

2. Show the NAME of the persons who are living in ‘Dhaka’.

SELECT
    C_NAME
FROM
    citizen
WHERE
    C_Home = 'Dhaka';


3. Show only the C NAME, AGE and OCCUPATION from the table.

SELECT
    C_NAME,
    AGE,
    OCCUPATION
FROM
    citizen


4. Show only the C NAME, AGE and OCCUPATION from the table.

SELECT
    C_ID,
    C_NAME,
    C_Home,
    AGE,
    OCCUPATION,
    GENDER,
    SALARY
FROM
    citizen
WHERE
    SALARY >= 50000


5. What is the maximum salary?

SELECT
    MAX(SALARY)
FROM
    citizen



6. Make a list of all the distinct C HOME values in the tables. Rename the output column
as Unique District.

SELECT DISTINCT C_Home AS Unique_dis
FROM citizen;


7.What is the average age of the students?
SELECT AVG(Age)
FROM citizen
WHERE Occupation = 'Student';


8. Make an ordered list of engineers according to the salary.

SELECT * FROM citizen
WHERE Occupation = 'Engineer'
ORDER BY Salary;


9. What is the total income of all the teachers listed in the table?

SELECT SUM(Salary) AS TOTAL_SALARY_TEACHER
FROM citizen
WHERE Occupation = 'Teacher';


10. Who is the most earning student?[also write using Nested Query]

SELECT C_Name, Occupation
FROM citizen
WHERE Occupation = 'Student'
AND SALARY = (
  SELECT MAX(Salary)
  FROM citizen
  WHERE Occupation = 'Student'
);


11. Which female person has the least income?[also write using Nested Query]

SELECT C_Name, Salary
FROM citizen
WHERE Gender = 'Female'
AND SALARY = (
  SELECT MIN(Salary)
  FROM citizen
  WHERE Gender = 'Female'
);



***TASK-B***

*--craete table--*

CREATE TABLE Workers(
    wrk_name VARCHAR(20) PRIMARY KEY,
    road INT,
    city VARCHAR(20)
); CREATE TABLE Employment(
    wrk_name VARCHAR(20) PRIMARY KEY,
    company_name VARCHAR(20),
    salary BIGINT
); CREATE TABLE Company(
    company_name VARCHAR(20) PRIMARY KEY,
    city VARCHAR(20)
); CREATE TABLE Management(
    wrk_name VARCHAR(20) PRIMARY KEY,
    manager_name VARCHAR(20)
);




*--insert value into table--*

INSERT INTO company
VALUES('B K Corporation', 'New York'),('Qujjhotika Bank', 'Los Angeles');

INSERT INTO employment
VALUES('Alice', 'B K Corporation', 80000),('Bob', 'Qujjhotika Bank', 90000),('Carol', 'B K Corporation', 75000),('Davin', 'Qujjhotika Bank', 85000),('Emily', 'B K Corporation', 82000);

INSERT INTO management
VALUES('Alice', 'Abul'),('Bob', 'Abul'),('Carol', 'Abul'),('Davin', 'Abul'),('Emily', 'Abul');

INSERT INTO workers
VALUES('Alice', 01, 'New York'),('Bob', 02, 'Los Angeles'),('Carol', 03, 'Chicago'),('Davin', 04, 'Boston'),('Emily', 05, 'italy');