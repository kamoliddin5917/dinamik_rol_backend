const { fetch, fetchAll } = require("../../utils/pg");

// GET
const FIND_ROLE_ROUTES = `SELECT * FROM role_routes WHERE status IS TRUE`;
// POST
const CREATE_ROLE_ROUTE = `INSERT INTO role_routes(role_id, route_id) VALUES($1, $2) RETURNING *`;
// PUT
const UPDATE_ROLE_ROUTE = `UPDATE role_routes SET get = $1, post = $2, put = $3, delete = $4 WHERE id = $5 AND status IS TRUE RETURNING *`;
// DELETE
const DELETE_ROLE_ROUTE = `DELETE FROM role_routes WHERE id = $1 RETURNING *`;

// GET
const findRoleRoutes = (...values) => fetchAll(FIND_ROLE_ROUTES, values);
// POST
const createRoleRoute = (...values) => fetch(CREATE_ROLE_ROUTE, values);
// PUT
const updatedRoleRoute = (...values) => fetch(UPDATE_ROLE_ROUTE, values);
// DELETE
const deletedRoleRoute = (...values) => fetch(DELETE_ROLE_ROUTE, values);

module.exports = {
  findRoleRoutes,
  createRoleRoute,
  updatedRoleRoute,
  deletedRoleRoute,
};
