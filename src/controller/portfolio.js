const {postPortfolioModel, getAllPortfolioModel} = require('../models/portfolio')

module.exports = {
  postPortfolio: async(req, res) => {
    try {
      const {nama_app, link_github, deskripsi} = req.body
      const setData = {
        nama_app,
        link_github,
        deskripsi,
        image: req.file === undefined ? '' : req.file.filename
    }
    const result = await postPortfolioModel(setData)
    res.status(200).send({
      status: true,
      message: 'Gambar ditambahkan'
    });
    } catch (error) { 
      res.status(403).send({
        status: false,
        message: error.message
      });
    }
  },

  getAllPortfolio: async(req, res) => {
    try {
      const result = await getAllPortfolioModel()
      if(result.length) {
        res.status(200).send({
          status: true,
          data: result
        });
      }
      res.status(404).send({
        message: 'Data Kosong'
      });
    } catch (error) {
      res.send({
        message: error.message
      });
    }
  }
}