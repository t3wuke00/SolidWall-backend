const express = require('express')
const {query} = require('../helpers/db')

const SolidWallRouter = express.Router()

SolidWallRouter.get("/" ,async(req,res) =>{
  
    try{
        const result = await query('select * from post')
        const rows = result.rows ? result.rows : []
        res.status(200).json(rows)
    }catch(error) {
        res.statusMessage = error
        res.status(500).json({error:error})
    }

})

module.exports = {
    SolidWallRouter
}

