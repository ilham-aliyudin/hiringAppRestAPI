const {postSkillModel} = require('../models/skill')

module.exports = {
  postSkill: async(req, res) => {
    const {skill_name} = req.body
    const setData = {
      skill_name
    }
    try {
      const result = await postSkillModel(setData)
      res.status(200).send({
        status: 'true',
        message: 'Skill ditambahkan' ,
        data: result
      });
    } catch (error) {
      res.status(400).send({
        status: 'false',
        message: 'gagal ditambahkan'
      });
    }
  }
}