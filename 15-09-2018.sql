/* practice 1 */

/* No 5*/
desc departments;
/* No 6*/
select * from departments;
/* No 7*/
desc employees;
/* No 8*/
select EMPLOYEE_ID, LAST_NAME, JOB_ID, HIRE_DATE AS STARTDATE from employees;
/* No 9*/
select DISTINCT JOB_ID from employees;
/* No 10*/
select EMPLOYEE_ID "Emp #", LAST_NAME "Employee", JOB_ID "Job", HIRE_DATE "Hire Date" from employees;
/* No 11*/
select LAST_NAME || ',' || JOB_ID as "Employee and Title" from employees;
/* No 12*/
select EMPLOYEE_ID || ',' || FIRST_NAME || ',' || LAST_NAME || ',' || EMAIL || ',' || PHONE_NUMBER || ',' || HIRE_DATE || ',' || JOB_ID || ',' || SALARY || ',' || COMMISSION_PCT || ',' || MANAGER_ID || ',' || DEPARTMENT_ID as "THE_OUTPUT" from employees;

/* practice 2 */

/* No 1*/
select LAST_NAME, SALARY from employees where SALARY > 12000;
/* No 2*/
select LAST_NAME, DEPARTMENT_ID from employees where EMPLOYEE_ID = '176';
/* No 3*/
select LAST_NAME, SALARY from employees where SALARY NOT BETWEEN 5000 AND 12000;
/* No 4*/
select LAST_NAME, JOB_ID, HIRE_DATE from employees where LAST_NAME = 'Matos' OR LAST_NAME = 'Taylor' ORDER BY HIRE_DATE ASC;
/* No 5*/
select LAST_NAME, DEPARTMENT_ID from employees where DEPARTMENT_ID IN('20', '50') ORDER BY LAST_NAME ASC;
/* No 6*/
select LAST_NAME AS "Employee", SALARY AS "Monthly Salary" from employees where (SALARY BETWEEN 5000 AND 12000) AND DEPARTMENT_ID IN('20', '50');
/* No 7*/
select LAST_NAME, HIRE_DATE from employees where HIRE_DATE LIKE '__-___-94';
/* No 8*/
select LAST_NAME, JOB_ID from employees where MANAGER_ID IS NULL;
/* No 9*/
select LAST_NAME, SALARY, COMMISSION_PCT from employees where COMMISSION_PCT IS NOT NULL ORDER BY SALARY DESC;
/* No 10*/
select LAST_NAME, SALARY from employees where SALARY > &salary;
/* No 11*/
select EMPLOYEE_ID, LAST_NAME, SALARY, DEPARTMENT_ID from employees where MANAGER_ID > &manager_id ORDER BY &columnname;
/* No 12*/
select LAST_NAME from employees where LAST_NAME LIKE '__a%';
/* No 13*/
select LAST_NAME from employees where LAST_NAME LIKE '%a%' AND LAST_NAME LIKE '%e%';
/* No 14*/
select LAST_NAME, JOB_ID, SALARY from employees where SALARY NOT IN(2500, 3500, 7000) AND JOB_ID IN('SA_REP', 'ST_CLERK');
/* No 15*/
select LAST_NAME AS "Employee", SALARY AS "Monthly Salary", COMMISSION_PCT from employees where ((SALARY BETWEEN 5000 AND 12000) AND DEPARTMENT_ID IN('20', '80')) AND COMMISSION_PCT = '.2';
