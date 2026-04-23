SELECT pz.name AS pizzeria_name
FROM person_visits AS pv
INNER JOIN pizzeria AS pz ON pv.pizzeria_id = pz.id
INNER JOIN person AS p ON pv.person_id = p.id
INNER JOIN menu AS m ON pz.id = m.pizzeria_id
WHERE p.name = 'Dmitriy'
      AND m.price < 800
      AND pv.visit_date = '2022-01-08';
