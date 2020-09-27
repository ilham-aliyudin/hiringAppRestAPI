const {postExperienceModel, getAllExperienceModel} = require('../models/experience')

module.exports = {
  postExperience: async(req, res) => {
    const {company_name, position, start_periode, end_periode, description} = req.body
    const setData = {
      company_name,
      position, 
      start_periode,
      end_periode,
      description
    }
    try {
      const result = await postExperienceModel(setData)
      res.status(200).send({
        status: true,
        message: 'Berhasil ditambahkan'
      });;
    } catch (error) {
      res.status(403).send({
        status: false,
        message: error.message
      });
    }
  },

  getAllExperience: async(req, res) => {
    try {
      const result = await getAllExperienceModel()
      if (result.length) {
        res.status(200).send({
          status: true,
          data: result
        });
      }
    } catch (error) {
      res.status(404).send({
        status: false,
        message: 'Data Kosong'
      });
    }
  }
}