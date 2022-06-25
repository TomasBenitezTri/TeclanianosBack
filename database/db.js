import { Sequelize } from "sequelize";

const db = new Sequelize('database_app', 'root', '',{
    host: 'localhost',
    dialect: 'mysql'
})

const mysql = require("mysql");
const dbConfig = require("../config/db.config.js");
var connection = mysql.createPool({
  host: dbConfig.HOST,
  user: dbConfig.USER,
  password: dbConfig.PASSWORD,
  database: dbConfig.DB
});
module.exports = connection;

export default db