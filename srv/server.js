require('dotenv').config()           // load .env first
const cds = require('@sap/cds')

cds.on('bootstrap', () => {
  cds.env.requires.db.credentials = {
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    database: process.env.DB_DATABASE,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
  }
})

module.exports = cds.server          // hand back control to CDS