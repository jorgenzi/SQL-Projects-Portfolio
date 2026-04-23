SELECT address,
       ROUND(MAX(age) - (MIN(age)::NUMERIC / MAX(age)), 2) AS formula,
       ROUND(AVG(age), 2) AS average_age_per_address,
       CASE
        WHEN (MAX(age) - (MIN(age)::NUMERIC / MAX(age))) > AVG(age) THEN true
        ELSE false
       END AS comparison
FROM person
GROUP BY address
ORDER BY address;