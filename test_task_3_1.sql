-- Задача 3.1
CREATE TABLE task_3 (numbers integer); 
INSERT INTO task_3 (numbers) values 
(1), 
(2), 
(3), 
(4), 
(6), 
(7), 
(9), 
(10), 
(11); 
SELECT series 
from generate_series(1, 11, 1) series 
LEFT JOIN task_3 on series = task_3.numbers 
WHERE numbers IS NULL;