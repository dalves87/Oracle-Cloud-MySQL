#3. Provide an estimate population of Spanish and Portuguese speakers for each city: New York, Boise City and Miami
SELECT city.Name, cl.Language, round(city.Population * (cl.Percentage / 100)) AS EstimatedSpeakers2
FROM world.city
JOIN world.country c ON city.CountryCode = c.Code
JOIN world.countrylanguage cl ON c.Code = cl.CountryCode
WHERE city.Name IN ('New York', 'Boise City', 'Miami')
AND cl.Language IN ('Spanish', 'Portuguese');
