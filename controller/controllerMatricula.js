var mysql = require('mysql');
var connection = mysql.createConnection({
    host : 'localhost',
    user : 'root',
    password : 'root',
    port : '3306',
    database : 'ServicioREST'
});

module.exports.get = function(req, res, next) {
    connection.query('SELECT * FROM Matricula', function(err, rows) {
        if (!err)
            res.json(rows);
        else 
            res.json({err: "Error en la consulta"})
    });
}

module.exports.post = function(req, res, next) {
    
}

module.exports.put = function(req, res, next) {
    
}

module.exports.delete = function(req, res, next) {
    
}