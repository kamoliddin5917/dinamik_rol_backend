const { PORT } = require("./config");
const { app } = require("./app");

app.listen(PORT, () => {
  console.log(`Server has been started on port: ${PORT}`);
});
