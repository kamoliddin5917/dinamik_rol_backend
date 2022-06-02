const { fetch, fetchAll } = require("../../utils/pg");

// GET
const FIND_USER_ROLES = `SELECT * FROM user_roles WHERE status IS TRUE`;
// POST
const CREATE_USER_ROLE = `INSERT INTO user_roles(user_id, role_id, created_by) VALUES($1, $2, $3) RETURNING *`;
// PUT
// DELETE
const DELETE_USER_ROLE = `DELETE FROM user_roles WHERE id = $1 RETURNING *`;

// GET
const findUserRoles = (...values) => fetchAll(FIND_USER_ROLES, values);
// POST
const createUserRole = (...values) => fetch(CREATE_USER_ROLE, values);
// PUT
// DELETE
const deletedUserRole = (...values) => fetch(DELETE_USER_ROLE, values);

module.exports = { findUserRoles, createUserRole, deletedUserRole };
