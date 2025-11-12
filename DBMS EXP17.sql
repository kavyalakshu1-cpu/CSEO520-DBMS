use programming;
SEt GLOBAL max_sp_recursion_depth=255;
DELIMITER $$

CREATE PROCEDURE factorial(IN n INT, OUT result BIGINT)
BEGIN
    -- Declare variables at the very beginning
    DECLARE temp BIGINT;

    -- Base case
    IF n = 0 OR n = 1 THEN
        SET result = 1;
    ELSE
        -- Recursive case
        CALL factorial(n - 1, temp);
        SET result = n * temp;
    END IF;
END$$

DELIMITER ;

-- Set recursion limit (e.g., 100)
SET @@max_sp_recursion_depth = 100;

-- Then call the procedure
SET @fact_result = 0;
CALL factorial(5, @fact_result);