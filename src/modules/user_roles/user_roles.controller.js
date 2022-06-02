const model = require("./user_roles.model");

module.exports = {
  GET: async (_, res) => {
    try {
      const findUserRoles = await model.findUserRoles();

      if (!findUserRoles.length) return res.status(404).end();

      res.status(200).json({ message: "OK", data: findUserRoles });
    } catch (error) {
      res.status(500).end();
    }
  },
  POST: async (req, res) => {
    try {
      const {
        body: { userId, roleId },
        id: createdBy = "8aecaa12-ce6d-47bf-83cf-8e3a42a82579",
      } = req;

      if (!userId || !roleId) return res.status(400).end();

      const createUserRole = await model.createUserRole(
        userId,
        roleId,
        createdBy
      );

      if (!createUserRole)
        return res.status(500).json({ message: "NOT_CREATED" });

      res.status(201).json({ message: "CREATED", data: createUserRole });
    } catch (error) {
      res.status(500).end();
    }
  },
  DELETE: async (req, res) => {
    try {
      const {
        params: { id },
        id: deletedBy,
      } = req;

      const deletedUserRole = await model.deletedUserRole(id);

      if (!deletedUserRole)
        return res.status(500).json({ message: "NOT_DELETED" });

      res.status(200).json({ message: "DELETED", data: deletedUserRole });
    } catch (error) {
      res.status(500).end();
    }
  },
};
