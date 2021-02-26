-- Create Tables:
CREATE TABLE IF NOT EXISTS dept_emp
(
    emp_no INTEGER NOT NULL,
    dept_no VARCHAR(5) NOT NULL,
	PRIMARY KEY(emp_no, dept_no)
);

CREATE TABLE IF NOT EXISTS departments
(
    dept_no VARCHAR(5) NOT NULL,
    dept_name VARCHAR(100) NOT NULL,
    PRIMARY KEY(dept_no)
);

CREATE TABLE IF NOT EXISTS dept_manager
(
    dept_no VARCHAR(5) NOT NULL,
    emp_no INTEGER NOT NULL UNIQUE,
    PRIMARY KEY(emp_no, dept_no)
);

CREATE TABLE IF NOT EXISTS employees
(
    emp_no INTEGER NOT NULL UNIQUE,
    emp_title_id VARCHAR(10) NOT NULL,
    birth_date DATE,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(1),
    hire_date DATE,
    PRIMARY KEY(emp_no)
);

CREATE TABLE IF NOT EXISTS salaries
(
    emp_no INTEGER NOT NULL UNIQUE,
    salary INTEGER,
	PRIMARY KEY(emp_no, salary)
);

CREATE TABLE IF NOT EXISTS titles
(
    title_id VARCHAR(10) NOT NULL,
    title VARCHAR(30) NOT NULL,
    PRIMARY KEY(title_id)
);


-- Create Foreign Keys:
ALTER TABLE dept_manager
    ADD FOREIGN KEY (dept_no)
    REFERENCES departments(dept_no)
;

ALTER TABLE dept_emp
    ADD FOREIGN KEY (dept_no)
    REFERENCES departments(dept_no)
;

ALTER TABLE dept_manager
    ADD FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
;

ALTER TABLE dept_emp
    ADD FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
;

ALTER TABLE salaries
    ADD FOREIGN KEY (emp_no)
    REFERENCES employees(emp_no)
;

ALTER TABLE employees
    ADD FOREIGN KEY (emp_title_id)
    REFERENCES titles(title_id)
;