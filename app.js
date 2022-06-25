import express from "express"
import cors from 'cors'
import db from  "./database/db.js"
import blogRoutes from './routes/routes.js'

const app = express()

app.use(cors())
app.use(express.json())
app.use('/blogs', blogRoutes)

try {
    await db.authenticate()
    console.log('Conexión exitosa a la DB')
} catch (error) {
    console.log(`El error de conección es: ${error}`)
}
/*
app.get('/', (req, res)=>{
    res.send('Tu mama en 4')
})*/

module.exports = {
    HOST: "us-cdbr-east-05.cleardb.net",
    USER: "bc5b707b7c83c6",
    PASSWORD: "d2f7120b",
    DB: "heroku_e37b227742202c3"
};

app.listen(8000, ()=>{
    console.log('Server UP running in http://localhost:8000/')
})