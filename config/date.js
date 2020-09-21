module.exports = (req, entity) => {
  const date =  new Date()

  if(req.method === 'POST') {
    entity['createdAt'] = date.now
    entity['updatedAt'] = date.now
  }

  if(req.method === 'PUT' ) {
    entity['updatedAt'] = date
  }
}