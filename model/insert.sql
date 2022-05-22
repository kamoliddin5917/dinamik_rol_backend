-- USERS
INSERT INTO users(firstname, lastname, username, password) VALUES
('Kamoliddin', 'Jamoliddinov', 'kamoliddin', 'kamoliddin'),
('Umida', 'Jamoliddinova', 'umida', 'umida'),
('Malika', 'Jamoliddinova', 'malika', 'malika'),
('Sevinch', 'Jamoliddinova', 'sevinch', 'sevinch'),
('Durdona', 'Jamoliddinova', 'durdona', 'durdona'),
('Shoista', 'Jamoliddinova', 'shoista', 'shoista'),
('Dilshoda', 'Jamoliddinova', 'dilshoda', 'dilshoda'),
('Zarina', 'Jamoliddinova', 'zarina', 'zarina');

-- ROLES
INSERT INTO roles(name) VALUES
('ADMIN'),('ADMINISTRATOR'),('OPERATOR'),('TEACHER'),('SUPPORT_TEACHER'),('STUDENT'),('PARENT'),('SECURITY');

-- USER_ROLES
INSERT INTO user_roles(user_id, role_id) VALUES
('dd645b6e-53b9-430d-a18a-68079d27e167', '0a3a5a56-4eaf-48f5-a0fa-9f4d4953e303'),
('dd645b6e-53b9-430d-a18a-68079d27e167', 'd4f36e52-9084-4ce0-8012-555be1bdb9ff'),
('dd645b6e-53b9-430d-a18a-68079d27e167', '3fff53eb-10c3-48be-bf5a-758e1979feaf'),
('08a1c489-8179-4cca-9b01-e21de682e20f', '1959b964-eeeb-48b0-9cd7-a5df916abe60'),
('08a1c489-8179-4cca-9b01-e21de682e20f', '2d623880-c578-4837-bd29-b8dbebe017eb'),
('8e06fd33-90db-45c5-8ce4-333302627668', '3f4b83f5-a556-444d-84da-7fdf7429b085'),
('583b49df-ff9a-4bf5-a4fb-c55d2c6f9f36', 'cedfbe0c-44c5-4018-893c-08dcd56eeaa2'),
('9d394fc9-816b-49ec-ba58-dc510fe95547', '3fff53eb-10c3-48be-bf5a-758e1979feaf'),
('db7fb427-8125-4731-866d-543dff2ea47f', '3fff53eb-10c3-48be-bf5a-758e1979feaf'),
('db7fb427-8125-4731-866d-543dff2ea47f', '3f4b83f5-a556-444d-84da-7fdf7429b085'),
('a9cd3ac0-48a7-4585-b2d8-31f009f53816', '1959b964-eeeb-48b0-9cd7-a5df916abe60'),
('a9cd3ac0-48a7-4585-b2d8-31f009f53816', '2d623880-c578-4837-bd29-b8dbebe017eb'),
('5015ed04-aea7-4c2f-829f-3ffb7023de91', '41f6e979-2d44-45ec-ac01-fd63a1b0c97d');

-- ROUTES
INSERT INTO routes(name) VALUES
('admin'),('administrator'),('operator'),('teacher'),('student'),('parent'),('acount'),('role'),('group');

-- ROLE_ROUTES
INSERT INTO role_routes(role_id, route_id) VALUES
('0a3a5a56-4eaf-48f5-a0fa-9f4d4953e303','054f23d6-138e-40f3-99d9-72b44d99b029'),
('0a3a5a56-4eaf-48f5-a0fa-9f4d4953e303','817d3ec2-c1f2-4c76-a15c-156263cf1366'),
('0a3a5a56-4eaf-48f5-a0fa-9f4d4953e303','1c606ff7-85d9-4c68-b758-2666e91dcf87'),
('0a3a5a56-4eaf-48f5-a0fa-9f4d4953e303','6cbee871-0a1f-4e55-9993-fd0277b7c279'),
('0a3a5a56-4eaf-48f5-a0fa-9f4d4953e303','3208d312-47e9-470a-b691-3379efbe5a81'),
('0a3a5a56-4eaf-48f5-a0fa-9f4d4953e303','db9ecb89-77dd-4269-b9ef-434fe301c6ea'),
('0a3a5a56-4eaf-48f5-a0fa-9f4d4953e303','585ad7a4-0d02-49c2-8a2f-acb92350f98f'),
('0a3a5a56-4eaf-48f5-a0fa-9f4d4953e303','e959b53e-0715-44ad-8896-1457430186e7'),
('0a3a5a56-4eaf-48f5-a0fa-9f4d4953e303','4ede2740-c533-443e-8e2d-c53e3caefa19'),

('2d623880-c578-4837-bd29-b8dbebe017eb','054f23d6-138e-40f3-99d9-72b44d99b029'),
('2d623880-c578-4837-bd29-b8dbebe017eb','817d3ec2-c1f2-4c76-a15c-156263cf1366'),
('2d623880-c578-4837-bd29-b8dbebe017eb','1c606ff7-85d9-4c68-b758-2666e91dcf87'),
('2d623880-c578-4837-bd29-b8dbebe017eb','6cbee871-0a1f-4e55-9993-fd0277b7c279'),
('2d623880-c578-4837-bd29-b8dbebe017eb','3208d312-47e9-470a-b691-3379efbe5a81'),
('2d623880-c578-4837-bd29-b8dbebe017eb','db9ecb89-77dd-4269-b9ef-434fe301c6ea'),
('2d623880-c578-4837-bd29-b8dbebe017eb','585ad7a4-0d02-49c2-8a2f-acb92350f98f'),
('2d623880-c578-4837-bd29-b8dbebe017eb','e959b53e-0715-44ad-8896-1457430186e7'),
('2d623880-c578-4837-bd29-b8dbebe017eb','4ede2740-c533-443e-8e2d-c53e3caefa19'),

('1959b964-eeeb-48b0-9cd7-a5df916abe60','054f23d6-138e-40f3-99d9-72b44d99b029'),
('1959b964-eeeb-48b0-9cd7-a5df916abe60','817d3ec2-c1f2-4c76-a15c-156263cf1366'),
('1959b964-eeeb-48b0-9cd7-a5df916abe60','1c606ff7-85d9-4c68-b758-2666e91dcf87'),
('1959b964-eeeb-48b0-9cd7-a5df916abe60','6cbee871-0a1f-4e55-9993-fd0277b7c279'),
('1959b964-eeeb-48b0-9cd7-a5df916abe60','3208d312-47e9-470a-b691-3379efbe5a81'),
('1959b964-eeeb-48b0-9cd7-a5df916abe60','db9ecb89-77dd-4269-b9ef-434fe301c6ea'),
('1959b964-eeeb-48b0-9cd7-a5df916abe60','585ad7a4-0d02-49c2-8a2f-acb92350f98f'),
('1959b964-eeeb-48b0-9cd7-a5df916abe60','e959b53e-0715-44ad-8896-1457430186e7'),
('1959b964-eeeb-48b0-9cd7-a5df916abe60','4ede2740-c533-443e-8e2d-c53e3caefa19'),

('d4f36e52-9084-4ce0-8012-555be1bdb9ff','054f23d6-138e-40f3-99d9-72b44d99b029'),
('d4f36e52-9084-4ce0-8012-555be1bdb9ff','817d3ec2-c1f2-4c76-a15c-156263cf1366'),
('d4f36e52-9084-4ce0-8012-555be1bdb9ff','1c606ff7-85d9-4c68-b758-2666e91dcf87'),
('d4f36e52-9084-4ce0-8012-555be1bdb9ff','6cbee871-0a1f-4e55-9993-fd0277b7c279'),
('d4f36e52-9084-4ce0-8012-555be1bdb9ff','3208d312-47e9-470a-b691-3379efbe5a81'),
('d4f36e52-9084-4ce0-8012-555be1bdb9ff','db9ecb89-77dd-4269-b9ef-434fe301c6ea'),
('d4f36e52-9084-4ce0-8012-555be1bdb9ff','585ad7a4-0d02-49c2-8a2f-acb92350f98f'),
('d4f36e52-9084-4ce0-8012-555be1bdb9ff','e959b53e-0715-44ad-8896-1457430186e7'),
('d4f36e52-9084-4ce0-8012-555be1bdb9ff','4ede2740-c533-443e-8e2d-c53e3caefa19'),

('3f4b83f5-a556-444d-84da-7fdf7429b085','054f23d6-138e-40f3-99d9-72b44d99b029'),
('3f4b83f5-a556-444d-84da-7fdf7429b085','817d3ec2-c1f2-4c76-a15c-156263cf1366'),
('3f4b83f5-a556-444d-84da-7fdf7429b085','1c606ff7-85d9-4c68-b758-2666e91dcf87'),
('3f4b83f5-a556-444d-84da-7fdf7429b085','6cbee871-0a1f-4e55-9993-fd0277b7c279'),
('3f4b83f5-a556-444d-84da-7fdf7429b085','3208d312-47e9-470a-b691-3379efbe5a81'),
('3f4b83f5-a556-444d-84da-7fdf7429b085','db9ecb89-77dd-4269-b9ef-434fe301c6ea'),
('3f4b83f5-a556-444d-84da-7fdf7429b085','585ad7a4-0d02-49c2-8a2f-acb92350f98f'),
('3f4b83f5-a556-444d-84da-7fdf7429b085','e959b53e-0715-44ad-8896-1457430186e7'),
('3f4b83f5-a556-444d-84da-7fdf7429b085','4ede2740-c533-443e-8e2d-c53e3caefa19'),

('cedfbe0c-44c5-4018-893c-08dcd56eeaa2','054f23d6-138e-40f3-99d9-72b44d99b029'),
('cedfbe0c-44c5-4018-893c-08dcd56eeaa2','817d3ec2-c1f2-4c76-a15c-156263cf1366'),
('cedfbe0c-44c5-4018-893c-08dcd56eeaa2','1c606ff7-85d9-4c68-b758-2666e91dcf87'),
('cedfbe0c-44c5-4018-893c-08dcd56eeaa2','6cbee871-0a1f-4e55-9993-fd0277b7c279'),
('cedfbe0c-44c5-4018-893c-08dcd56eeaa2','3208d312-47e9-470a-b691-3379efbe5a81'),
('cedfbe0c-44c5-4018-893c-08dcd56eeaa2','db9ecb89-77dd-4269-b9ef-434fe301c6ea'),
('cedfbe0c-44c5-4018-893c-08dcd56eeaa2','585ad7a4-0d02-49c2-8a2f-acb92350f98f'),
('cedfbe0c-44c5-4018-893c-08dcd56eeaa2','e959b53e-0715-44ad-8896-1457430186e7'),
('cedfbe0c-44c5-4018-893c-08dcd56eeaa2','4ede2740-c533-443e-8e2d-c53e3caefa19'),

('3fff53eb-10c3-48be-bf5a-758e1979feaf','054f23d6-138e-40f3-99d9-72b44d99b029'),
('3fff53eb-10c3-48be-bf5a-758e1979feaf','817d3ec2-c1f2-4c76-a15c-156263cf1366'),
('3fff53eb-10c3-48be-bf5a-758e1979feaf','1c606ff7-85d9-4c68-b758-2666e91dcf87'),
('3fff53eb-10c3-48be-bf5a-758e1979feaf','6cbee871-0a1f-4e55-9993-fd0277b7c279'),
('3fff53eb-10c3-48be-bf5a-758e1979feaf','3208d312-47e9-470a-b691-3379efbe5a81'),
('3fff53eb-10c3-48be-bf5a-758e1979feaf','db9ecb89-77dd-4269-b9ef-434fe301c6ea'),
('3fff53eb-10c3-48be-bf5a-758e1979feaf','585ad7a4-0d02-49c2-8a2f-acb92350f98f'),
('3fff53eb-10c3-48be-bf5a-758e1979feaf','e959b53e-0715-44ad-8896-1457430186e7'),
('3fff53eb-10c3-48be-bf5a-758e1979feaf','4ede2740-c533-443e-8e2d-c53e3caefa19'),

('41f6e979-2d44-45ec-ac01-fd63a1b0c97d','054f23d6-138e-40f3-99d9-72b44d99b029'),
('41f6e979-2d44-45ec-ac01-fd63a1b0c97d','817d3ec2-c1f2-4c76-a15c-156263cf1366'),
('41f6e979-2d44-45ec-ac01-fd63a1b0c97d','1c606ff7-85d9-4c68-b758-2666e91dcf87'),
('41f6e979-2d44-45ec-ac01-fd63a1b0c97d','6cbee871-0a1f-4e55-9993-fd0277b7c279'),
('41f6e979-2d44-45ec-ac01-fd63a1b0c97d','3208d312-47e9-470a-b691-3379efbe5a81'),
('41f6e979-2d44-45ec-ac01-fd63a1b0c97d','db9ecb89-77dd-4269-b9ef-434fe301c6ea'),
('41f6e979-2d44-45ec-ac01-fd63a1b0c97d','585ad7a4-0d02-49c2-8a2f-acb92350f98f'),
('41f6e979-2d44-45ec-ac01-fd63a1b0c97d','e959b53e-0715-44ad-8896-1457430186e7'),
('41f6e979-2d44-45ec-ac01-fd63a1b0c97d','4ede2740-c533-443e-8e2d-c53e3caefa19');
