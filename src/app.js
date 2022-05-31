const express = require("express");
const cors = require("cors");
const { AUTH } = require("./middlewares/auth");

const app = express();

app.use(cors({ origin: "*", credentials: true }));
app.use(express.json());
app.use("/api/v1", AUTH, require("./routes"));

module.exports = { app };
