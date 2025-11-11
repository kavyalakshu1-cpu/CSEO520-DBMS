CREATE DATABASE UNISTAM;


DELIMITER //
CREATE PROCEDURE test_mysql_while_loop()
BEGIN
DECLARE X INT;
DECLARE str varchar(255);

set X=1;
set str=  '';

while X <=5 do
set str=CONCAT(str,X,',');
set X=X+1;
END WHILE;

SELECT str;

END//

CALL test_mysql_while_loop()//

create procedure dorepeat(p1 int)begin set @X=0;repeat set @X=@X+1;UNTIL @X>P1 END  REPEAT;END//
CALL DOREPEAT (4001)//
SELECT @X;
//