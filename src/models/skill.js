const db = require('../../config/db')

module.exports = {
  postSkillModel: (setData) => {
    return new Promise((resolve, reject) => {
      db.query('INSERT INTO skill SET ?', setData, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  },

  getAllSkillModel: () => {
    return new Promise((resolve, reject) => {
      const sqlQuery = 'SELECT * FROM skill'
      db.query(sqlQuery, (err, result) => {
        if(!err) {
          resolve(result)
        }
        reject(new Error(err))
      })
    })
  }
}