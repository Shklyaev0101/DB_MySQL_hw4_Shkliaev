CREATE DEFINER=`root`@`localhost` TRIGGER `salaries_AFTER_INSERT` AFTER INSERT ON `salaries` FOR EACH ROW BEGIN 
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES
    (NEW.emp_no, 1000, NEW_from_date, NEW_to_date);
    END