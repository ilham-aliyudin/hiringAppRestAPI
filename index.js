const express = require('express');
const bodyParser = require('body-parser')
const routeRecruiter = require('./src/routes/recruiter')
const routeEngineer = require('./src/routes/engineer')
const routeUser = require('./src/routes/user')
const routeSkill = require('./src/routes/skill')
const routePortfolio = require('./src/routes/portfolio')
const routeExperience = require('./src/routes/experience')
const routeProject = require('./src/routes/project')
const cors = require('cors')
const app = express()
require('dotenv').config()

app.use(cors());
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));

app.use((req, res, next) => {
  res.header('Acces-Control-Allow-Origin', '*')
  res.header('Acces-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization')
  next()
});

app.use('/hire', routeRecruiter, routeEngineer, routeUser, routeSkill, routePortfolio, routeExperience, routeProject);

app.listen(process.env.PORT, () => {
  console.log(`Server started on port`);
});


