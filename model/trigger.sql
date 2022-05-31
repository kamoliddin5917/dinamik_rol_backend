-- INT TEST
CREATE OR REPLACE FUNCTION t_insert_role_routes()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
DECLARE
routes_id record;
BEGIN

    FOR routes_id IN SELECT id  FROM t_routes
    LOOP
    INSERT INTO t_role_routes(role_id, route_id) VALUES (NEW.id, routes_id.id);
    END LOOP;

    RETURN NEW;

END
$$;

CREATE TRIGGER insert_trg
AFTER INSERT
ON t_roles
FOR EACH ROW
EXECUTE PROCEDURE t_insert_role_routes();

-- UUID
CREATE OR REPLACE FUNCTION u_insert_role_routes()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
DECLARE
routes_id record;
BEGIN

    FOR routes_id IN SELECT id  FROM routes
    LOOP
    INSERT INTO role_routes(role_id, route_id) VALUES (NEW.id, routes_id.id);
    END LOOP;

    RETURN NEW;

END
$$;

CREATE TRIGGER u_insert_trg
AFTER INSERT
ON roles
FOR EACH ROW
EXECUTE PROCEDURE u_insert_role_routes();
