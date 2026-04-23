COMMENT ON TABLE person_discounts IS 'table for storing customer discounts';

COMMENT ON COLUMN person_discounts.id IS 'primary key column';

COMMENT ON COLUMN person_discounts.person_id IS 'foreign key to person table (customer ID)';

COMMENT ON COLUMN person_discounts.pizzeria_id IS 'foreign key to pizzeria table';

COMMENT ON COLUMN person_discounts.discount IS 'discount size in persent (0-100)';