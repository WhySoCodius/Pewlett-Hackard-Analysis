--*************************************************************
------------------------- | Deliverable 1 | -------------------
--*************************************************************


-- Retreive Data with Orderby 
SELECT e.emp_no,
    e.first_name,
	e.last_name,
    ti.title,
	ti.from_date,
	ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti ON (e.emp_no = ti.emp_no)
INNER JOIN dept_emp as de ON (e.emp_no = de.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no ASC;
-- check new table
SELECT * FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (rt.emp_no) rt.emp_no,
	rt.first_name,
	rt.last_name,
	rt.title
INTO Unique_titles
FROM retirement_titles AS rt
Order BY emp_no ASC, to_date DESC;
-- check new table
SELECT * FROM unique_titles;


-- Count
SELECT COUNT(ut.emp_no),ut.title
INTO retiring_titles
FROM unique_titles as ut
GROUP BY title 
ORDER BY COUNT(title) DESC;
-- check new table
SELECT * FROM retiring_titles;


--*************************************************************
------------------------- | Deliverable 2 | -------------------
--*************************************************************

-- Retreive Data for Mentorship Eligibles with Orderby 
SELECT DISTINCT ON(e.emp_no)e.emp_no,
    e.first_name,
    e.last_name,
    e.birth_date,
    de.from_date,
    de.to_date,
    ti.title
INTO mentorship_eligibilty
FROM employees AS e
INNER JOIN dept_emp AS de ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti ON (e.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;
-- check new table
SELECT * FROM mentorship_eligibilty;


-- Mentor Count
SELECT COUNT(me.emp_no),me.title
INTO mentor_titles
FROM mentorship_eligibilty as me
GROUP BY title 
ORDER BY COUNT(title) DESC;
-- check new table
SELECT * FROM mentor_titles;


-- Combine Retiree and Mentor Count
SELECT mt.title,
	mt.count AS mentor_count,
	rt.count AS retiree_count
INTO retiree_mentor
FROM mentor_titles AS mt
INNER JOIN retiring_titles AS rt ON (mt.title = rt.title)
ORDER BY title ASC;
-- check new table
SELECT * FROM retiree_mentor;