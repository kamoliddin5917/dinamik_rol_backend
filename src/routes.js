const { Router } = require("express");

const router = Router();

const authtarition = require("./modules/authtration/authtration.route");
const route = require("./modules/route/route.route");
const role = require("./modules/role/role.route");
const userRoles = require("./modules/user_roles/user_roles.route");
const roleRoutes = require("./modules/role_routes/role_routes.route");

router.use("/auth", authtarition);
router.use("/route", route);
router.use("/role", role);
router.use("/user_roles", userRoles);
router.use("/role_routes", roleRoutes);

module.exports = router;
