CREATE DATABASE dinamik_rol;

\c dinamik_rol;

CREATE extension IF NOT EXISTS "uuid-ossp";

CREATE TABLE users(
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    firstname VARCHAR(77) NOT NULL,
    lastname VARCHAR(77) NOT NULL,
	username VARCHAR(55) NOT NULL UNIQUE,
	password text NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT NULL,
	deleted_at TIMESTAMP DEFAULT NULL,
	status BOOLEAN NOT NULL DEFAULT true,
    deleted_by uuid DEFAULT NULL,
	CONSTRAINT fk_deleted_by
    	FOREIGN KEY(deleted_by)
    		REFERENCES users(id)
        		ON DELETE SET NULL 
);

CREATE TABLE roles(
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	name VARCHAR(77) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT NULL,
	deleted_at TIMESTAMP DEFAULT NULL,
	status BOOLEAN NOT NULL DEFAULT true,
	created_by uuid DEFAULT NULL,
	CONSTRAINT fk_created_by_rol
    	FOREIGN KEY(created_by)
    		REFERENCES users(id)
        		ON DELETE SET NULL,
	deleted_by uuid DEFAULT NULL,
	CONSTRAINT fk_deleted_by_rol
    	FOREIGN KEY(deleted_by)
    		REFERENCES users(id)
        		ON DELETE SET NULL
);

CREATE TABLE user_roles(
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    user_id uuid NOT NULL,
	CONSTRAINT fk_user_id
    	FOREIGN KEY(user_id)
    		REFERENCES users(id)
        		ON DELETE CASCADE,
	role_id uuid NOT NULL,
	CONSTRAINT fk_role_id
    	FOREIGN KEY(role_id)
    		REFERENCES roles(id)
        		ON DELETE CASCADE,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	deleted_at TIMESTAMP DEFAULT NULL,
	status BOOLEAN NOT NULL DEFAULT true,
	created_by uuid DEFAULT NULL,
	CONSTRAINT fk_created_by
    	FOREIGN KEY(created_by)
    		REFERENCES users(id)
        		ON DELETE SET NULL,
	deleted_by uuid DEFAULT NULL,
	CONSTRAINT fk_deleted_by
    	FOREIGN KEY(deleted_by)
    		REFERENCES users(id)
        		ON DELETE SET NULL
);

CREATE TABLE routes(
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
	name VARCHAR(77) NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_at TIMESTAMP DEFAULT NULL,
	deleted_at TIMESTAMP DEFAULT NULL,
	status BOOLEAN NOT NULL DEFAULT true,
	created_by uuid DEFAULT NULL,
	CONSTRAINT fk_created_by_rol
    	FOREIGN KEY(created_by)
    		REFERENCES users(id)
        		ON DELETE SET NULL,
	deleted_by uuid DEFAULT NULL,
	CONSTRAINT fk_deleted_by_rol
    	FOREIGN KEY(deleted_by)
    		REFERENCES users(id)
        		ON DELETE SET NULL
);

CREATE TABLE role_routes(
	id uuid PRIMARY KEY DEFAULT uuid_generate_v4(),
    route_id uuid NOT NULL,
	CONSTRAINT fk_route_id
    	FOREIGN KEY(route_id)
    		REFERENCES routes(id)
        		ON DELETE CASCADE,
	role_id uuid NOT NULL,
	CONSTRAINT fk_role_id
    	FOREIGN KEY(role_id)
    		REFERENCES roles(id)
        		ON DELETE CASCADE,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	status BOOLEAN NOT NULL DEFAULT true,
    GET BOOLEAN DEFAULT false,
    POST BOOLEAN DEFAULT false,
    PUT BOOLEAN DEFAULT false,
    DELETE BOOLEAN DEFAULT false
);

