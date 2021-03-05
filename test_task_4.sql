-- Задача 4
CREATE TABLE currencies_rates ( 
 id SERIAL PRIMARY KEY, 
 currency VARCHAR(3) NOT NULL, 
 date DATE NOT NULL, 
 price NUMERIC(8, 2) NOT NULL 
); 
INSERT INTO currencies_rates(currency, date, price) VALUES('USD', '2017-04-12', 64); 
INSERT INTO currencies_rates(currency, date, price) VALUES('GBP', '2017-04-14', 100); 
INSERT INTO currencies_rates(currency, date, price) VALUES('USD', '2017-04-17', 67); 
INSERT INTO currencies_rates(currency, date, price) VALUES('GBP', '2017-04-22', 102); 
SELECT  
  r.id, 
  r.currency, 
  r.date, 
  r.price 
FROM currencies_rates as r 
INNER JOIN 
 (SELECT 
   r.currency as curr,  
   MAX(r.date) as date 
 FROM currencies_rates as r 
 GROUP BY r.currency) as dates ON r.currency = dates.curr AND r.date = dates.date