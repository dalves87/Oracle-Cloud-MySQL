--Query: Listar as línguas faladas em cada país


SELECT 
    co.Name AS CountryName,
    GROUP_CONCAT(cl.Language ORDER BY cl.Language SEPARATOR ', ') AS LanguagesSpoken
FROM 
    country co
JOIN 
    countrylanguage cl ON co.Code = cl.CountryCode
GROUP BY 
    co.Name
ORDER BY 
    co.Name;
