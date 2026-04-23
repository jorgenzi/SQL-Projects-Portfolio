WITH date_series AS (
                    SELECT generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day')::date AS missing_date
)
SELECT ds.missing_date
FROM date_series AS ds
LEFT JOIN person_visits AS pv ON ds.missing_date = pv.visit_date
                              AND(
                                  pv.person_id = 1
                                  OR 
                                  pv.person_id = 2
                                )
WHERE pv.visit_date is NULL
ORDER BY missing_date ASC;