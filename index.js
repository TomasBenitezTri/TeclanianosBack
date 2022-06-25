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

app.listen(process.env.PORT || PORT, () => {
    console.log(`Server running on port ${PORT}`);
});


/*
app.get('/', (req, res)=>{
    res.send('Tu mama en 4')
})*/

/*
app.listen(8000, ()=>{
    console.log('Server UP running in http://localhost:8000/')
})*/