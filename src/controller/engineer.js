const{getAllEngineerModel, 
  getEngineerModelById, 
  createEgineerModel, 
  deleteEngineerModel, 
  updateEngineerModel,
  getEngineerModelByParams} = require('../models/engineer')
const baseDate = require('../../config/date');

module.exports = {
  getAll: (req, res) => {
    let { limit, page, orderBy, orderFormat } = req.query
    if (!limit) {
      limit = 20
    }

    if (!page) {
      page = 1
    } else {
      page = (page - 1)*limit
    }

    if (!orderBy) {
      orderBy = 'id'
    } else {
      orderBy = req.query.orderBy
    }

    if (!orderFormat) {
      orderFormat = 'ASC'
    } else {
      orderFormat = req.query.orderFormat
    }
    
    getAllEngineerModel(orderFormat, orderBy, limit, page, result => {
      if(result.length) {
         res.json(result);
      }else{
        res.send({message: `Data tidak ditemukan`});
      }  
    })
  },

  getEngineerById: (req, res) => {
    const id = req.params.id
    getEngineerModelById(id, result => {
      if(result.length){
        res.send(result); 
      } else {
        res.send({message: `Id tidak ditemukan`});
      }
      
    })
  },

  crateEngineer: (req, res) => {
    const {nama, jobdesc, lokasi, status, deskripsi, skill} = req.body
    const entity = req.body
    baseDate(req, entity)
    createEgineerModel([nama, jobdesc, lokasi, status, deskripsi, skill], result => {
      res.send({message: `Data ditambahkan`, entity});
    })
  },

  deleteEngineer: (req, res) => {
    const id = req.params.id
    deleteEngineerModel(id, result => {
      if(result.affectedRows) {
        res.send({message: `Data di id ${id} dihapus`});
      } else {
        res.status(404).send({message: `Data tidak ditemukan`});
      }
    })
  },

  updateEngineer: (req, res) => {
    const id = req.params.id
    const {nama, jobdesc, lokasi, status, deskripsi, skill} = req.body
    const entity = req.body
    baseDate(req, entity)
    updateEngineerModel([nama, jobdesc, lokasi, status, deskripsi, skill], id, result => {
      if(result.affectedRows) {
        res.send({message: `Data di id ${id} berhasil diupdate`, entity});
      } else {
        res.send({message: `Data tidak ditemukan`});
      }
    })
  },

  getEngineerByParam: (req, res) => {
    let param = req.query
    let paramKey = ''
    let paramValue = ''

    if(typeof param == 'object') {
      paramKey = Object.keys(param)[0]
      paramValue = Object.values(param)[0]
    } else {
      paramKey = 'nama'
      paramValue = param || ''

    }

    getEngineerModelByParams(paramKey, paramValue,  result => {
      if(result.length) {
        res.send({data: result});
      } else {
        res.send({message: `Data tidak ditemukan`});
      }
    })
  }
}