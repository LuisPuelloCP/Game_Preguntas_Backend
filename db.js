const mysql = require('mysql2');

var pool = null;

const config = {
    host: "127.0.0.1",
    user: "root",
    password: "admin",
    database: "mydb",
    port: "3306"
}

const getPool = () => {
    if (pool == null) {
        pool = mysql.createPool(config);
        console.log('conexión a DB creada');
    }
    console.log('usando conexión a la DB');
    
    return pool;
}

module.exports = {
    pool: getPool()
}