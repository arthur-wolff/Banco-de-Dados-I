const   express = require('express');
const   mysql   = require('mysql2');
const   cors    = require('cors');

const   connection = mysql.connect({
    host: 'localhost',
    user: 'root',
    password: 'root',
    database: 'manual_dos_monstros'
});

const app = express();
app.use(cors());

app.get('/', (req, res) => {
    connection.query('SELECT M.NomeCriatura, M.Tipo, M.Tamanho,M.Tendencia, C.CA, C.PV,C.Deslocamento,H.Força,H.Destreza,H.Constituição,H.Inteligencia,H.Sabedoria,H.Carisma, CA.Pericias,CA.Sentidos,CA.Idiomas,CA.NivelDesafio FROM  criatura M, cstatus C, habilidades H, caracteristicas CA WHERE M.idStatus = C.idStatus AND M.idHabilidades = H.idHabilidades AND M.idCaracteristicas = CA.idCaracteristicas AND M.NomeCriatura = ?',['Goblin'], function (err, result, fields) {
        
        console.log(result);
        res.send(result);
    });
});

app.listen('3030', (req, res) => {
    console.log('listening on   http://localhost:3030');
});

