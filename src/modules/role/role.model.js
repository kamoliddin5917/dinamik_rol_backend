const { fetch, fetchAll } = require("../../utils/pg");

// GET
const FIND_ROLES = `SELECT * FROM roles WHERE status IS TRUE`;
// POST
const CREATE_ROLE = `INSERT INTO roles(name, created_by) VALUES($1, $2) RETURNING *`;
// PUT
const UPDATE_ROLE = `UPDATE roles SET name = COALESCE($1, name), updated_at = CURRENT_TIMESTAMP WHERE id = $2 AND status IS TRUE RETURNING *`;
// DELETE
const DELETE_ROLE = `DELETE FROM roles WHERE id = $1 RETURNING *`;

// GET
const findRoles = (...values) => fetchAll(FIND_ROLES, values);
// POST
const createRole = (...values) => fetch(CREATE_ROLE, values);
// PUT
const updatedRole = (...values) => fetch(UPDATE_ROLE, values);
// DELETE
const deletedRole = (...values) => fetch(DELETE_ROLE, values);

module.exports = { findRoles, createRole, updatedRole, deletedRole };
