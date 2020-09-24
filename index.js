const express = require('express');
const bodyParser = require('body-parser')
const routeRecruiter = require('./src/routes/recruiter')
const routeEngineer = require('./src/routes/engineer')
const app = express()
require('dotenv').config()

app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.use('/hire', routeRecruiter, routeEngineer);

app.listen(process.env.PORT, () => {
  console.log(`Server started on port`);
});


