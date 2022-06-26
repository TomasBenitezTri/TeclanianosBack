import express from "express"
import cors from 'cors'
import db from  "./database/db.js"
import blogRoutes from './routes/routes.js'

const app = express()

app.use(cors())
app.use(express.json())
app.use('/', blogRoutes)

try {
    await db.authenticate()
    console.log('Conexión exitosa a la DB')
} catch (error) {
    console.log(`El error de conección es: ${error}`)
}

const port = process.env.PORT || 3306;

app.listen(port, ()=>{
    console.log('Server UP running in http://localhost:8000/')
})