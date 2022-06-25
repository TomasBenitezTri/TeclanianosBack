import { Sequelize } from "sequelize";

const db = new Sequelize('database_app', 'root', '',{
    
    dialect: 'mysql'
})

export default db