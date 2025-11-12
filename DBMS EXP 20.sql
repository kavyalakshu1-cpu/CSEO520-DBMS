use programming;
SHOW DATABASES;
SHOW TABLES;
CREATE TABLE employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO employees (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com'),
('Charlie', 'charlie@example.com');

select * from employees;

DELIMITER $$

CREATE PROCEDURE get_email_list()
BEGIN
    -- Declare variables
    DECLARE done INT DEFAULT 0;
    DECLARE emp_email VARCHAR(100);

    -- Cursor to select emails from employees table
    DECLARE email_cursor CURSOR FOR 
        SELECT email FROM employees;

    -- Handler to set 'done' when cursor is exhausted
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    -- Open the cursor
    OPEN email_cursor;

    -- Loop through all records
    read_loop: LOOP
    FETCH email_cursor INTO emp_email;

        -- Exit loop when done
        IF done = 1 THEN
            LEAVE read_loop;
        END IF;

        -- Print the email (or you can store in a temp table/list)
        SELECT emp_email;
    END LOOP;

    -- Close the cursor
    CLOSE email_cursor;
END$$

DELIMITER ;

CALL get_email_list();
