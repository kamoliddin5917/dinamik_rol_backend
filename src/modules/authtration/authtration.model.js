const { fetch } = require("../../utils/pg");

// GET
const FIND_USER = ``;
// POST
const CREATE_USER = ``;

// GET
const findUser = (...values) => fetch(FIND_USER, values);
// POST
const createUser = (...values) => fetch(CREATE_USER, values);

module.exports = { findUser, createUser };
