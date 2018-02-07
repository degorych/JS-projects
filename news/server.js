var express = require('express');
var app = express();
var mysql = require("mysql");

app.listen(1000);
console.log('Server is run!');

var con = mysql.createConnection({
  host: "localhost",
  user: "tester",
  password: "12345",
  database: "tester"
});

con.connect(function(err){
  if(err){
    console.log('Error connecting to Db');
    return;
  }
  console.log('Connection established');
});

app.get('/', function(req, res) {
  res.sendfile('index.html');
});

app.get('/getnews', function(req, res) {
	con.query('SELECT header, description FROM news', function(err,response){
  	if(err) throw err;
  	res.json(response);
  });
});
