#1. Create a new table with top 3 most spoken languages (official) around the world by population

CREATE TABLE world.top3mostlanguages (
    id int not null auto_increment,
    Language char(30),
    TotalPopulation int,
    primary key (id)
);

INSERT INTO world.top3mostlanguages (Language, TotalPopulation)
SELECT cl.Language, SUM(c.Population) AS TotalPopulation
FROM world.country c
JOIN world.countrylanguage cl ON c.Code = cl.CountryCode
WHERE cl.IsOfficial = 'T'
GROUP BY cl.Language
ORDER BY TotalPopulation DESC
LIMIT 3;

select * from world.top3mostlanguages;


