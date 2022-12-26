const mysql = require('mysql2');

const pool = mysql.createPool({
    host: 'localhost',
    user: 'root',
    password: '06271003',
    database: 'douglascheung',
    queueLimit : 0,
    connectionLimit: 20,
    waitForConnections: true
})

const promisePool = pool.promise();

module.exports = promisePool;