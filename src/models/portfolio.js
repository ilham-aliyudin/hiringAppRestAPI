const db = require('../../config/db')


module.exports = {
  postPortfolioModel: (setData) => {
    return new Promise((resolve, reject) => {
      const sqlQuery = 'INSERT INTO portfolio SET ?'
      db.query(sqlQuery, setData, (err, result) => {
        if(!err) {
          resolve(result)
        }
        reject(new Error(err))
      })
    })
  },

  getAllPortfolioModel: () => {
    return new Promise((resolve, reject) => {
      const sqlQuery = 'SELECT * FROM portfolio'
      db.query(sqlQuery, (err, result) => {
        if(!err) {
          resolve(result)
        }
        reject(new Error(err))
      })
    })
  }
}