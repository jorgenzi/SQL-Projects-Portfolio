SELECT p.name
FROM person AS p
INNER JOIN person_order AS po ON p.id = po.person_id
INNER JOIN menu AS m ON po.menu_id = m.id
WHERE gender = 'female'
      AND 
      m.pizza_name = 'pepperoni pizza' 
INTERSECT
SELECT p.name
FROM person AS p
INNER JOIN person_order AS po ON p.id = po.person_id
INNER JOIN menu AS m ON po.menu_id = m.id
WHERE gender = 'female'
      AND 
      m.pizza_name = 'cheese pizza'
ORDER BY name ASC;
