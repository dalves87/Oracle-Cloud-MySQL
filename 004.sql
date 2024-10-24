#4. Create an SQL to make Boise always the most populated city in the world; (must be true for every run)
SELECT ID, name, Population
FROM world.city
ORDER BY Population DESC
LIMIT 1;
#	1024	Mumbai (Bombay)	10500000

SELECT ID FROM  world.city WHERE Name = 'Boise City'; #3898

UPDATE world.city
   SET Population = (
       SELECT MAX(Population) +1 
       FROM (SELECT Population FROM world.city) AS temp_table
   )
   WHERE ID = 3898;

SELECT ID, name, Population
FROM world.city
ORDER BY Population DESC
LIMIT 1;
#	3898	Boise City	10500001

commit;
