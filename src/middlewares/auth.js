const { verify } = require("../utils/jwt");
const { fetch } = require("../utils/pg");

module.exports = {
  AUTH: async (req, res, next) => {
    try {
      const { url } = req;

      const [, path] = url.split("/");
      const [location] = path.split("?");

      if (location !== "auth") {
        const {
          headers: { token },
          method,
        } = req;

        if (!token) res.status(401).end();

        const { id } = verify(token);

        if (!id) res.status(403).end();

        const result = await fetch(
          `
        SELECT
            ur.user_id
        FROM
            user_roles ur
        INNER JOIN
            role_routes rr
        ON ur.role_id = rr.role_id
        INNER JOIN
            routes r
        ON rr.route_id = r.id
        WHERE ur.user_id = $1 AND r.name = $2 AND rr.${method.toLowerCase()} IS TRUE AND ur.status IS TRUE AND r.status IS TRUE AND rr.status IS TRUE
              `,
          [id, location]
        );

        if (!result) return res.status(403).end();

        req.id = result.user_id;

        return next();
      }

      return next();
    } catch (error) {
      res.status(403).end();
    }
  },
};
