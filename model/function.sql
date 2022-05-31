-- UUID
CREATE OR REPLACE FUNCTION insert_role_routes(jkj uuid)
RETURNS text
LANGUAGE plpgsql
AS

$$

DECLARE
    routes_id record;
BEGIN

    FOR routes_id IN SELECT r.id  FROM routes r
    LOOP
    INSERT INTO role_routes(role_id, route_id) VALUES (jkj, routes_id.id);
    END LOOP;

    RETURN 'ok';
END
$$;

-- SERIAL TEST

CREATE OR REPLACE FUNCTION test_r(rid text)
RETURNS text
LANGUAGE plpgsql
AS

$$

DECLARE
    routes_id record;
BEGIN

    FOR routes_id IN SELECT id  FROM routes
    LOOP
    INSERT INTO role_routesr(role_id, route_id) VALUES (rid, routes_id.id);
    END LOOP;

    RETURN 'ok';
END
$$;