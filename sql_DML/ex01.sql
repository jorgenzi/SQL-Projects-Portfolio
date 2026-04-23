SELECT id
FROM menu
WHERE NOT EXISTS (
    SELECT 1
    FROM person_order
    WHERE menu_id = menu.id
);