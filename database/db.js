import { Sequelize } from "sequelize";

const db = new Sequelize('database_app', 'root', '',{
    host: 'localhost',
    port: '3308',
    dialect: 'mysql'
})

export default db