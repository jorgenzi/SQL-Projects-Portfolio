SELECT gs.missing_date::date AS missing_date
FROM generate_series('2022-01-01'::date, '2022-01-10'::date, '1 day') AS gs(missing_date)
LEFT JOIN person_visits AS pv ON gs.missing_date = pv.visit_date
                              AND(
                                  person_id = 1
                                  OR 
                                  person_id = 2
                                )
WHERE visit_date is NULL
ORDER BY missing_date ASC;