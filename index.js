const express = require('express');
const app = express();

app.use("/api", require('./Route'))


app.listen(3000)