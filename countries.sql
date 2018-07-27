SELECT countries.name, languages.language, languages.percentage
FROM countries
LEFT JOIN languages ON languages.country_id = countries.id
WHERE languages.language = "Slovene"
ORDER BY percentage DESC;

SELECT countries.name, count("country_id")
FROM countries
LEFT JOIN cities ON cities.country_id=countries.id
GROUP BY countries.name
ORDER BY count("country_id") DESC;

SELECT cities.name, cities.population
FROM countries
LEFT JOIN cities ON countries.id=cities.country_id
WHERE countries.name="Mexico" AND cities.population > 500000
ORDER BY cities.population DESC;

SELECT languages.language, languages.percentage, countries.name
FROM countries
LEFT JOIN languages ON languages.country_id = countries.id
WHERE languages.percentage > 89
ORDER BY languages.percentakige DESC;

SELECT countries.name, countries.surface_area, countries.population
FROM countries
WHERE surface_area<501 AND population>100000;

SELECT countries.name, countries.government_form ,countries.capital, countries.life_expectancy
FROM countries
WHERE countries.government_form="Constitutional Monarchy" AND countries.capital>200 AND countries.life_expectancy>75;

SELECT countries.name, cities.name, cities.district, cities.population
FROM countries
LEFT JOIN cities ON cities.country_id = countries.id
WHERE countries.name="Argentina" AND cities.district="Buenos Aires" AND cities.population>500000

SELECT countries.region, count("country_id")
FROM countries
GROUP BY countries.region
ORDER BY count("country_id") DESC