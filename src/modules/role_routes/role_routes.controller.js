const model = require("./role_routes.model");

module.exports = {
  GET: async (_, res) => {
    try {
      const findRoleRoutes = await model.findRoleRoutes();

      if (!findRoleRoutes.length) return res.status(404).end();

      res.status(200).json({ message: "OK", data: findRoleRoutes });
    } catch (error) {
      res.status(500).end();
    }
  },
  POST: async (req, res) => {
    try {
      const {
        body: { roleId, routeId },
        id: createdBy,
      } = req;

      if (!roleId || !routeId) return res.status(400).end();

      const createRoleRoute = await model.createRoleRoute(roleId, routeId);

      if (!createRoleRoute)
        return res.status(500).json({ message: "NOT_CREATED" });

      res.status(201).json({ message: "CREATED", data: createRoleRoute });
    } catch (error) {
      res.status(500).end();
    }
  },
  PUT: async (req, res) => {
    try {
      const {
        body: { id, getK, postK, putK, deleteK },
        id: updatedBy,
      } = req;

      // if (!getK || !postK || !putK || !deleteK || !id)
      //   return res.status(400).end();

      const updatedRoleRoute = await model.updatedRoleRoute(
        getK,
        postK,
        putK,
        deleteK,
        id
      );

      if (!updatedRoleRoute)
        return res.status(500).json({ message: "NOT_UPDATED" });

      res.status(200).json({ message: "UPDATED", data: updatedRoleRoute });
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

      const deletedRoleRoute = await model.deletedRoleRoute(id);

      if (!deletedRoleRoute)
        return res.status(500).json({ message: "NOT_DELETED" });

      res.status(200).json({ message: "DELETED", data: deletedRoleRoute });
    } catch (error) {
      res.status(500).end();
    }
  },
};
