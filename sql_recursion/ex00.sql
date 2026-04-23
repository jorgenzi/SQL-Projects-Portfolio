CREATE TABLE nodes (
	point1 VARCHAR,
	point2 VARCHAR,
	cost INTEGER
);

INSERT INTO nodes (point1, point2, cost)
VALUES ('a', 'b', 10),
	   ('b', 'a', 10),
	   ('a', 'd', 20),
	   ('d', 'a', 20),
	   ('a', 'c', 15),
	   ('c', 'a', 15),
	   ('d', 'b', 25),
	   ('b', 'd', 25),
	   ('d', 'c', 30),
	   ('c', 'd', 30),
	   ('b', 'c', 35),
	   ('c', 'b', 35);

WITH RECURSIVE all_routse AS (
	SELECT point1 AS current_point,
	 	   point1 AS path,
		   0 AS total_cost,
		   1 AS visited_count
	FROM nodes
	WHERE point1 = 'a'

	UNION ALL

	SELECT n.point2 AS current_point,
		   ar.path || ',' || n.point2,
		   ar.total_cost + n.cost,
		   ar.visited_count + 1 
	FROM nodes n
	JOIN all_routse ar ON n.point1 = ar.current_point
	WHERE n.point2 != ALL (STRING_TO_ARRAY(ar.path, ','))
		AND ar.visited_count < 4
),

all_toure AS (
SELECT DISTINCT ar.total_cost + n.cost AS total_cost,
       '{' || ar.path || ',a' || '}' AS tour
FROM all_routse ar
JOIN nodes n ON ar.current_point = n.point1 AND n.point2 = 'a'
WHERE ar.visited_count = 4
)

SELECT *
FROM all_toure
WHERE total_cost = (SELECT MIN(total_cost) FROM all_toure)
ORDER BY total_cost, tour;