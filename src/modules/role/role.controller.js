const model = require("./role.model");

module.exports = {
  GET: async (_, res) => {
    try {
      const findRoles = await model.findRoles();

      if (!findRoles.length) return res.status(404).end();

      res.status(200).json({ message: "OK", data: findRoles });
    } catch (error) {
      res.status(500).end();
    }
  },
  POST: async (req, res) => {
    try {
      const {
        body: { name },
        id: createdBy = "8aecaa12-ce6d-47bf-83cf-8e3a42a82579",
      } = req;

      if (!name) return res.status(400).end();

      const createRole = await model.createRole(name, createdBy);

      if (!createRole) return res.status(500).json({ message: "NOT_CREATED" });

      res.status(201).json({ message: "CREATED", data: createRole });
    } catch (error) {
      res.status(500).end();
    }
  },
  PUT: async (req, res) => {
    try {
      const {
        body: { name, id },
        id: updatedBy,
      } = req;

      if (!name || !id) return res.status(400).end();

      const updatedRole = await model.updatedRole(name, id);

      if (!updatedRole) return res.status(500).json({ message: "NOT_UPDATED" });

      res.status(200).json({ message: "UPDATED", data: updatedRole });
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

      const deletedRole = await model.deletedRole(id);

      if (!deletedRole) return res.status(500).json({ message: "NOT_DELETED" });

      res.status(200).json({ message: "DELETED", data: deletedRole });
    } catch (error) {
      res.status(500).end();
    }
  },
};
