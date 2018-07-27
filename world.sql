SELECT countries.name, countries.surface_area, countries.population
FROM countries
WHERE surface_area<501 AND population>100000;