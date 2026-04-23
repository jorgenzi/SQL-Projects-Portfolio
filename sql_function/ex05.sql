DROP FUNCTION IF EXISTS fnc_persons_female();
DROP FUNCTION IF EXISTS fnc_persons_male();

CREATE OR REPLACE FUNCTION fnc_persons(pgender VARCHAR DEFAULT 'female') 
RETURNS TABLE(
    id person.id%TYPE,
    name person.name%TYPE,
    age person.age%TYPE,
    gender person.gender%TYPE,
    address person.address%TYPE
) AS $$
    SELECT p.id, p.name, p.age, p.gender, p.address
    FROM person p
    WHERE gender = pgender;
$$ LANGUAGE SQL;