const { Router } = require("express");

const router = Router();

const authtarition = require("");

router.use("/auth", authtarition);

module.exports = router;
