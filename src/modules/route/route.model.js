const { fetch, fetchAll } = require("../../utils/pg");

// GET
const FIND_ROUTES = `SELECT * FROM routes WHERE status IS TRUE`;
// POST
const CREATE_ROUTE = `INSERT INTO routes(name, created_by) VALUES($1, $2) RETURNING *`;
// PUT
const UPDATE_ROUTE = `UPDATE routes SET name = COALESCE($1, name), updated_at = CURRENT_TIMESTAMP WHERE id = $2 AND status IS TRUE RETURNING *`;
// DELETE
const DELETE_ROUTE = `DELETE FROM routes WHERE id = $1 RETURNING *`;

// GET
const findRoutes = (...values) => fetchAll(FIND_ROUTES, values);
// POST
const createRoute = (...values) => fetch(CREATE_ROUTE, values);
// PUT
const updatedRoute = (...values) => fetch(UPDATE_ROUTE, values);
// DELETE
const deletedRoute = (...values) => fetch(DELETE_ROUTE, values);

module.exports = { findRoutes, createRoute, updatedRoute, deletedRoute };
