-- Задача 3
CREATE TABLE A (  
 Id VARCHAR(50) NOT NULL,  
 TimeA TIME NOT NULL,  
 PRIMARY KEY (`Id`)  
);  
INSERT INTO A (Id, TimeA) VALUES ('A', '10:00:00');  
INSERT INTO A (Id, TimeA) VALUES ('B', '11:05:00');  
INSERT INTO A (Id, TimeA) VALUES ('C', '10:00:00');  
SELECT   
 *,   
  DATE_PART('hour', B.TimeA - A.TimeA) * 60 +  
    DATE_PART('minute',  B.TimeA - A.TimeA) as Deltatime  
from A as A, A as B  
ORDER BY A.Id, B.Id