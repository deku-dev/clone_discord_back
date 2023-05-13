const dotenv = require('dotenv');
const mysql = require('mysql2');
// const util = require('util');

// Env vars
dotenv.config();

let params = {
  host: process.env.MYSQL_URL, // Replace with your MySQL host
  user: process.env.MYSQL_USER, // Replace with your MySQL user
  password: process.env.MYSQL_PASS, // Replace with your MySQL password
  database: process.env.MYSQL_DB, // Replace with your MySQL database name
  port: Number(process.env.MYSQL_PORT),
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
}
let pool = mysql.createPool(params);

export let connection = pool.promise();
connection.getConnection()
    .then((state: any) => {
      console.log('Connected!');
      // Perform database operations using the connection
      // ...
      // Release the connection back to the pool when done
      state.release();
    })
    .catch((error: any) => {
      console.error('Error connecting to the database:', error);
    });
