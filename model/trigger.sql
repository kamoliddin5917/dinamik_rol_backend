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

-- insert role 
CREATE OR REPLACE FUNCTION role_insert_role_routes()
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

CREATE TRIGGER role_insert_trg
AFTER INSERT
ON roles
FOR EACH ROW
EXECUTE PROCEDURE role_insert_role_routes();

-- insert route
CREATE OR REPLACE FUNCTION route_insert_role_routes()
RETURNS TRIGGER
LANGUAGE plpgsql
AS
$$
DECLARE
roles_id record;
BEGIN

    FOR roles_id IN SELECT id  FROM roles
    LOOP
    INSERT INTO role_routes(role_id, route_id) VALUES (roles_id.id, NEW.id);
    END LOOP;

    RETURN NEW;

END
$$;

CREATE TRIGGER route_insert_trg
AFTER INSERT
ON routes
FOR EACH ROW
EXECUTE PROCEDURE route_insert_role_routes();
