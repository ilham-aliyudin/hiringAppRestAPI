const {postSkillModel, getAllSkillModel} = require('../models/skill')

module.exports = {
  postSkill: async(req, res) => {
    const { nama_skill } = req.body
    const setData = {
      nama_skill
    }
    try {
      const result = await postSkillModel(setData)
      if(result.affectedRows) {
        res.status(200).send({
          status: 'true',
          message: 'Skill ditambahkan' ,
          data: result
        });
      } else {
        res.status(500).send({message: 'Mohon isi form nya'});
      }  
    } catch (error) {
      res.status(400).send({
        status: 'false',
        message: error.message
      });
    }
  },

  getAllSkill: async(req, res) => {
    try {
      const result = await getAllSkillModel()
      if (result.length) {
        res.status(200).send({
          status: true,
          data: result
        });
      } else {
        res.status(404).send({
          message: 'Data tidak ditemukan'
        });
      }
    } catch (error) {
      res.status(404).send({
        message: error.message
      });
    }
  }
}