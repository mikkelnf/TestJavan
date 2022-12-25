const Pool = require('pg').Pool
const pool = new Pool({
  user: 'postgres',
  host: 'localhost',
  database: 'db_test_javan',
  password: '1234',
  port: 5432,
})

pool.connect();

module.exports = pool