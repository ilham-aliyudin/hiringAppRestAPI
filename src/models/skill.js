const db = require('../../config/db')

module.exports = {
  postSkillModel: (setData) => {
    return new Promise((resolve, reject) => {
      db.query('INSERT INTO skill SET=?', setData, (err, result) => {
        if (!err) {
          resolve(result)
        } else {
          reject(new Error(err))
        }
      })
    })
  }
}