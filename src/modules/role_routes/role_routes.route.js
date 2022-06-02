const { Router } = require("express");

const router = Router();

const controller = require("./role_routes.controller");

router
  .get("/", controller.GET)

  .post("/", controller.POST)

  .put("/", controller.PUT)

  .delete("/:id", controller.DELETE);

module.exports = router;
