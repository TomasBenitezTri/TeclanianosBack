import { Sequelize } from "sequelize";

const db = new Sequelize('tomas_backteclab', 'tomas_userteclab', 'adivinala',{
    host: 'mysql-tomas.alwaysdata.net',
    dialect: 'mysql'
})

export default db