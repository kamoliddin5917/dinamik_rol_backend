const model = require("./authtration.model");
const { sign } = require("../../utils/jwt");

module.exports = {
  LOGIN: async (req, res) => {
    try {
      const { username, password } = req.body;

      if (!username || !password) return res.status(400).end();

      const findUser = await model.findUser(username, password);

      if (!findUser) return res.status(404).end();

      const token = sign({ id: findUser.id });

      res.status(200).json({ message: "OK", data: findUser, token });
    } catch (error) {
      res.status(500).end();
    }
  },
  REGISTER: async (req, res) => {
    try {
      const { firstName, lastName, username, password } = req.body;

      if (!firstName || !lastName || !username || !password)
        return res.status(400).end();

      const createUser = await model.createUser(
        firstName,
        lastName,
        username,
        password
      );

      if (!createUser) return res.status(500).json({ message: "NOT_CREATED" });

      const token = sign({ id: createUser.id });

      res.status(201).json({ message: "CREATED", data: createUser, token });
    } catch (error) {
      res.status(500).end();
    }
  },
};
