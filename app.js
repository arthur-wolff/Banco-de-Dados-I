const   express = require('express');
const   mysql   = require('mysql2');

const   connection = mysql.connect({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'mydb'
});

const app = express();

app.get('/', (req, res) => {
    connection.query('SELECT * FROM criatura', function (err, result, fields) {
        console.log(result);
        console.log(fields);
        res.send(result);
    });
});

app.listen('3030', (req, res) => {
    console.log('listening on   http://localhost:3030');
});

