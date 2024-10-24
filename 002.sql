#2. Create a new table with top 3 forms of government by population

CREATE TABLE world.top3formsofgovernment (
	id int not null auto_increment,
    GovernmentForm char(45),
    TotalPopulation int,
    primary key (id)
);

INSERT INTO world.top3formsofgovernment (GovernmentForm, TotalPopulation)
SELECT c.GovernmentForm, SUM(c.Population) AS TotalPopulation
FROM world.country c
GROUP BY c.GovernmentForm
ORDER BY TotalPopulation DESC
LIMIT 3;

select * from world.top3formsofgovernment;
