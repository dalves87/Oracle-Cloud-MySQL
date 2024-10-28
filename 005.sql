--Query: Países com maior diversidade linguística e suas populações

SELECT 
    co.Name AS CountryName,
    COUNT(DISTINCT cl.Language) AS LanguageDiversity,
    co.Population AS CountryPopulation,
    ROUND((co.Population / COUNT(DISTINCT cl.Language)), 0) AS PopulationPerLanguage
FROM 
    country co
JOIN 
    countrylanguage cl ON co.Code = cl.CountryCode
GROUP BY 
    co.Name, co.Population
ORDER BY 
    LanguageDiversity DESC
LIMIT 5;
