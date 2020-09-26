const express = require('express');
const skillController = require('../controller/skill')
const router = express.Router();

router.post('/skill', skillController.postSkill)

module.exports = router