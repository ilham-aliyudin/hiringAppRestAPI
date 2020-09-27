const express = require('express');
const skillController = require('../controller/skill')
const router = express.Router();

router.post('/skill', skillController.postSkill)
router.get('/skills', skillController.getAllSkill)

module.exports = router