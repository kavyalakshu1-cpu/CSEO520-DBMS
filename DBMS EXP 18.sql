use programming;
DELIMITER $$

CREATE FUNCTION get_customer_level(credit_limit DECIMAL(10,2))
RETURNS VARCHAR(20)
DETERMINISTIC
BEGIN
    DECLARE customer_level VARCHAR(20);

    IF credit_limit > 50000 THEN
        SET customer_level = 'PLATINUM';
    ELSEIF credit_limit >= 10000 AND credit_limit <= 50000 THEN
        SET customer_level = 'GOLD';
    ELSE
        SET customer_level = 'SILVER';
    END IF;

    RETURN customer_level;
END$$

DELIMITER ;
SELECT get_customer_level(75000) AS level;  -- Returns 'PLATINUM'
SELECT get_customer_level(25000) AS level;  -- Returns 'GOLD'
SELECT get_customer_level(5000) AS level;   -- Returns 'SILVER'
SELECT get_customer_level(10000) AS level;   -- Returns 'SILVER'
SELECT get_customer_level(500) AS level;   -- Returns 'SILVER'