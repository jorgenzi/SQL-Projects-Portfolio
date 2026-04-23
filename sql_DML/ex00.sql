SELECT m.pizza_name AS pizza_name,
       m.price AS price,
       pz.name AS pizzeria_name,
       pv.visit_date AS visit_date
FROM person_visits AS pv 
JOIN pizzeria AS pz ON pv.pizzeria_id = pz.id
JOIN person AS p ON pv.person_id = p.id
JOIN menu AS m ON pz.id = m.pizzeria_id
WHERE m.price BETWEEN 800 AND 1000
      AND
      p.name = 'Kate'
ORDER BY pizza_name, price, pizzeria_name;