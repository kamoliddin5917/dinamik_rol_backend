const { Router } = require("express");

const router = Router();

const controller = require("./user_roles.controller");

router
  .get("/", controller.GET)

  .post("/", controller.POST)

  .delete("/:id", controller.DELETE);

module.exports = router;
