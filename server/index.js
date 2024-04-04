const express = require('express')
const cors = require('cors')
const { SolidWallRouter} = require("./routes/SolidWall")


const port = 3001

const app = express()
app.use(cors())

app.use('/', SolidWallRouter)

app.listen(port,() =>{
    console.log(`Server is listening on port ${port}`)
})