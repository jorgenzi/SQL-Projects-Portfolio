CREATE OR REPLACE  FUNCTION fnc_persons_female() 
RETURNS TABLE(
    id person.id%TYPE,
    name person.name%TYPE,
    age person.age%TYPE,
    gender person.gender%TYPE,
    address person.address%TYPE
) AS $$
    SELECT p.id, p.name, p.age, p.gender, p.address
    FROM person p
    WHERE p.gender = 'female'
    ORDER BY p.name;
$$ LANGUAGE SQL;

CREATE OR REPLACE FUNCTION fnc_persons_male()
RETURNS TABLE(
    id person.id%TYPE,
    name person.name%TYPE,
    age person.age%TYPE,
    gender person.gender%TYPE,
    address person.address%TYPE
) AS $$
    SELECT p.id, p.name, p.age, p.gender, p.address
    FROM person p
    WHERE p.gender = 'male'
    ORDER BY p.name;
$$ LANGUAGE SQL;