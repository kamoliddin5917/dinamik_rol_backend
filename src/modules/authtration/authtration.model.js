const { fetch } = require("../../utils/pg");

// GET
const FIND_USER = `SELECT * FROM users WHERE username = $1 AND password = $2 AND status IS TRUE`;
// POST
const CREATE_USER = `INSERT INTO users(firstname, lastname, username, password) VALUES($1, $2, $3, $4) RETURNING id`;

// GET
const findUser = (...values) => fetch(FIND_USER, values);
// POST
const createUser = (...values) => fetch(CREATE_USER, values);

module.exports = { findUser, createUser };
