-- ADMIN
UPDATE role_routes SET get = true, post = true, put = true, delete = true WHERE role_id = '0a3a5a56-4eaf-48f5-a0fa-9f4d4953e303';
-- ADMINISTRATOR
UPDATE role_routes SET get = true, post = true, put = true, delete = true WHERE role_id = '2d623880-c578-4837-bd29-b8dbebe017eb' AND route_id = '585ad7a4-0d02-49c2-8a2f-acb92350f98f';
UPDATE role_routes SET get = true, post = true WHERE role_id = '2d623880-c578-4837-bd29-b8dbebe017eb' AND route_id = '6cbee871-0a1f-4e55-9993-fd0277b7c279';
UPDATE role_routes SET get = true, post = true, put = true WHERE role_id = '2d623880-c578-4837-bd29-b8dbebe017eb' AND route_id = '3208d312-47e9-470a-b691-3379efbe5a81';
UPDATE role_routes SET get = true WHERE role_id = '2d623880-c578-4837-bd29-b8dbebe017eb' AND route_id = '817d3ec2-c1f2-4c76-a15c-156263cf1366';

UPDATE role_routes SET get = true WHERE role_id = '2d623880-c578-4837-bd29-b8dbebe017eb' AND route_id != '054f23d6-138e-40f3-99d9-72b44d99b029';

-- OPERATOR
UPDATE role_routes SET get = true WHERE role_id = '1959b964-eeeb-48b0-9cd7-a5df916abe60' AND route_id != '054f23d6-138e-40f3-99d9-72b44d99b029';
UPDATE role_routes SET get = true, post = true, put = true, delete = true WHERE role_id = '1959b964-eeeb-48b0-9cd7-a5df916abe60' AND route_id = '585ad7a4-0d02-49c2-8a2f-acb92350f98f';

-- STUDENT
UPDATE role_routes SET get = true, post = true, put = true, delete = true WHERE role_id = 'cedfbe0c-44c5-4018-893c-08dcd56eeaa2' AND route_id = '585ad7a4-0d02-49c2-8a2f-acb92350f98f';

-- TEACHER
UPDATE role_routes SET get = true, post = true, put = true, delete = true WHERE role_id = 'd4f36e52-9084-4ce0-8012-555be1bdb9ff' AND route_id = '585ad7a4-0d02-49c2-8a2f-acb92350f98f';

-- PARENT
UPDATE role_routes SET get = true WHERE role_id = '3fff53eb-10c3-48be-bf5a-758e1979feaf' AND route_id != '054f23d6-138e-40f3-99d9-72b44d99b029';
UPDATE role_routes SET get = true, post = true, put = true, delete = true WHERE role_id = '3fff53eb-10c3-48be-bf5a-758e1979feaf' AND route_id = '585ad7a4-0d02-49c2-8a2f-acb92350f98f';

-- SECURITY
UPDATE role_routes SET get = true, post = true, put = true, delete = true WHERE role_id = '41f6e979-2d44-45ec-ac01-fd63a1b0c97d' AND route_id = '585ad7a4-0d02-49c2-8a2f-acb92350f98f';

