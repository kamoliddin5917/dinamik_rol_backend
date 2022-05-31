const { Router } = require("express");

const router = Router();

const controller = require("./authtration.controller");

router
  .post("/login", controller.LOGIN)

  .post("/register", controller.REGISTER);

module.exports = router;
