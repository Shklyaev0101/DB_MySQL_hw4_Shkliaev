CREATE DEFINER=`root`@`localhost` FUNCTION `find_manager`(first_name_param varchar(40), last_name_param varchar(40)) RETURNS int
    DETERMINISTIC
BEGIN
DECLARE fmResult INT;
SELECT 
    emp_no
INTO fmResult FROM
    employees.employees
WHERE
    first_name = first_name_param
        AND last_name = last_name_param;
RETURN fmResult;
END