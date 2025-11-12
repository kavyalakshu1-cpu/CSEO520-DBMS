use programming;
SET GLOBAL LOG_BIN_TRUST_FUNCTION_CREATORS=1;
DELIMITER //
CREATE FUNCTION CALCINCOME2(starting_value INT)
RETURNS INT

BEGIN

   DECLARE income INT;
   
   SET income=0;
   
   label1:LOOP
     SET income=income+starting_value;
     IF income<4000 THEN
        ITERATE label1;
	 END IF;
     LEAVE label1;
   END LOOP label1;
   
   RETURN income;
   
END; //
SELECT CALCINCOME2(2100);
