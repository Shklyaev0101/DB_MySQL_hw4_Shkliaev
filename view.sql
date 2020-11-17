/*
1. Создать VIEW на основе запроса "Выбрать максимальную зарплату у сотрудника".
*/

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `employee_choose_max_salary` AS
    SELECT 
        `employees`.`first_name` AS `first_name`,
        `employees`.`last_name` AS `last_name`,
        MAX(`salaries`.`salary`) AS `MAX(employees.salaries.salary)`
    FROM
        (`employees`
        JOIN `salaries` ON ((`employees`.`emp_no` = `salaries`.`emp_no`)))
    GROUP BY `employees`.`emp_no`