const express = require('express');
const portfolioController = require('../controller/portfolio')
const router = express.Router()
const uploadImage = require('../../middleware/multer')


router.post('/portfolio', uploadImage, portfolioController.postPortfolio)
router.get('/portfolios', portfolioController.getAllPortfolio )


module.exports = router