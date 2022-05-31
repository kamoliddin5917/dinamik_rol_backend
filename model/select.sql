SELECT * FROM users;
SELECT * FROM roles;
SELECT * FROM routes;
SELECT * FROM user_roles;
SELECT * FROM role_routes;
SELECT count(*) FROM role_routes;
SELECT * FROM role_routes WHERE role_id = '0a3a5a56-4eaf-48f5-a0fa-9f4d4953e303';
SELECT insert_role_routes('a19d666d-6a2d-4c4d-89ff-1ce0f06f7a2f');

-- USER ROLES
SELECT
    u.id,
    u.firstname,
    u.lastname,
    (SELECT ARRAY_AGG(
            JSONB_BUILD_OBJECT(
                'name', r.name
            )
        )
    FROM
        user_roles ur
    INNER JOIN
        roles r
    ON  ur.role_id = r.id
    WHERE ur.user_id = u.id
    ) AS roles
FROM
    users u
WHERE u.username = 'kamoliddin' AND u.password = 'kamoliddin' AND u.status IS TRUE;

-- ACCESS
SELECT
    ur.user_id
FROM
    user_roles ur
INNER JOIN
    role_routes rr
ON ur.role_id = rr.role_id
INNER JOIN
    routes r
ON rr.route_id = r.id
WHERE ur.user_id = 'dd645b6e-53b9-430d-a18a-68079d27e167' AND r.name = 'administrator' AND rr.get IS TRUE AND ur.status IS TRUE AND r.status IS TRUE AND rr.status IS TRUE;


