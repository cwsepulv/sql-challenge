--Create new table 1
create table departments (
	dept_no VARCHAR PRIMARY KEY,
	dept_name VARCHAR (30) NOT NULL
);

--View table columns and datatype
SELECT * FROM departments;


--Create new table 2
create table titles (
	emp_title_id VARCHAR PRIMARY KEY,
	title VARCHAR (25) NOT NULL
);

--View table columns and datatype
SELECT * FROM titles;


--Create new table 3
create table salaries (
	emp_no INT PRIMARY KEY,
	salary INT NOT NULL
);

--View table columns and datatype
SELECT * FROM salaries;

--Create new table 4
create table dept_emp (
	emp_no INT NOT NULL,
	dept_no VARCHAR (5) NOT NULL, 
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--View table columns and datatype
SELECT * FROM dept_emp;


--Create new table 5
create table dept_manager (
	dept_no VARCHAR (5) NOT NULL,
	emp_no INT PRIMARY KEY,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

--View table columns and datatype
SELECT * FROM dept_manager;


--Create new table 6
create table employees (
	emp_no INT PRIMARY KEY,
	empt_title_id VARCHAR (10) NOT NULL,
	birth_date VARCHAR (15) NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (2) NOT NULL,
	hire_date VARCHAR (15),
	FOREIGN KEY (empt_title_id) REFERENCES titles(emp_title_id)
);

--View table columns and datatype
SELECT * FROM employees;