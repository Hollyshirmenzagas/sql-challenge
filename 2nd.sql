/*table Schema*/
CREATE TABLE departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR NOT NULL
);
SELECT dept_no, dept_name FROM departments;
	
	
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR,
	PRIMARY KEY (emp_no, dept_no)
);
SELECT * FROM dept_emp


CREATE TABLE dept_manager(
	dept_no VARCHAR,
	emp_no INT,
	PRIMARY KEY ( dept_no, emp_no )
);



CREATE TABLE titles (
	title_id VARCHAR (10) PRIMARY KEY NOT NULL,
	title VARCHAR (30) NOT NULL
);
SELECT * FROM titles


CREATE TABLE employees (
	emp_no INT,
	emp_title_id VARCHAR,
	birth_date VARCHAR,
	first_name VARCHAR,
	last_name VARCHAR,
	sex VARCHAR(2),
	hire_date VARCHAR,
	PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles (title_id)
);
SELECT * FROM employees

CREATE TABLE salaries(
	emp_no INT PRIMARY KEY NOT NULL,
	salary INT
);
SELECT * FROM salaries