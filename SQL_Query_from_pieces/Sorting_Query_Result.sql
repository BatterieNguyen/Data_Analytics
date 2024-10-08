---- SORTING BY MULTIPLE FIELDS


---- SORTING BY SUBSTRING
/*
	The order of precedence in ORDER BY  is from left to right.
	Generally permitted to order by a column not in the SELECT list, 
		but to do so you must explicitly name the column, 
		instead of numeric position of a column
*/
-- 1.1. Sort value by the last 2 characters in the job field
  -- DB2 | MySQL | Oracle | PostgreSQL
ORDER BY  SUBSTR(job, length(job) -1)

  -- SQL Server
ORDER BY  SUBSTRING(job, len(job) -1, 2)

-------------------------------------------------------------------------------------
CREATE VIEW V	AS
	SELECT CONCAT(ename, ' ', deptno) AS data
	FROM	emp;
	
SELECT * FROM V;

-- SORTING MIXED ALPHANUMERIC DATA
-- Order by DEPTNO 
SELECT	data
FROM	V
ORDER BY	REPLACE(data, REPLACE(TRANSLATE(data, '0123456789','##########'),'#',''),'')

-- Order by Ename
SELECT	data
FROM	V
ORDER BY	REPLACE(TRANSLATE(data, '0123456789','##########'),'#','')

