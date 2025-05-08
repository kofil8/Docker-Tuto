const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send("<h2>Docker test</h2>");
});

const port = process.env.PORT || 7000;

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
