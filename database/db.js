import { Sequelize } from "sequelize";

const db = new Sequelize('database_app', 'root', '',{
    host: 'mysql',
    dialect: 'mysql'
})

export default db