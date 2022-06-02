const model = require("./route.model");

module.exports = {
  GET: async (_, res) => {
    try {
      const findRoutes = await model.findRoutes();

      if (!findRoutes.length) return res.status(404).end();

      res.status(200).json({ message: "OK", data: findRoutes });
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

      const createRoute = await model.createRoute(name, createdBy);

      if (!createRoute) return res.status(500).json({ message: "NOT_CREATED" });

      res.status(201).json({ message: "CREATED", data: createRoute });
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

      const updatedRoute = await model.updatedRoute(name, id);

      if (!updatedRoute)
        return res.status(500).json({ message: "NOT_UPDATED" });

      res.status(200).json({ message: "UPDATED", data: updatedRoute });
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

      const deletedRoute = await model.deletedRoute(id);
      if (!deletedRoute)
        return res.status(500).json({ message: "NOT_DELETED" });

      res.status(200).json({ message: "DELETED", data: deletedRoute });
    } catch (error) {
      res.status(500).end();
    }
  },
};
