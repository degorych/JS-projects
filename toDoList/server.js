var express = require('express');
var bodyParser = require('body-parser');
var app = express();
var mysql = require("mysql");

app.listen(1000);
console.log('Server is run!');

var con = mysql.createConnection({
  host: "localhost",
  user: "toDoList",
  password: "1234",
  database: "toDoList"
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

app.use('/', bodyParser.urlencoded({
    extended: true
}));

app.post('/addNote', function(req, res) {
	console.log(req.body);
	var newNote = req.body;
	addNewNote(newNote);

  //res.json(newNote);

  con.query('SELECT * FROM messages ORDER BY id DESC LIMIT 1', function(err,response){
    if(err) throw err;
    res.json(response);
  });

});

app.post('/updateNote', function(req, res) {
	var newNote = req.body;
	console.log(req.body);
	updateNote(newNote, req.body.id);

	con.query('SELECT messageText, deleteText FROM messages WHERE id='+req.body.id, function(err,response){
  	if(err) throw err;
  	res.json(response);
  });
});

app.get('/notes', function(req, res) {
	con.query('SELECT id, messageText FROM messages WHERE deleteText=1', function(err,response){
  	if(err) throw err;
  	res.json(response);
  });
});

app.get('/delnotes', function(req, res) {
  con.query('SELECT id, messageText FROM messages WHERE deleteText=0', function(err,response){
    if(err) throw err;
    res.json(response);
  });
});

function addNewNote(newNote) {
  var sql = "INSERT INTO messages SET ?";

	con.query(sql, newNote, function(err,res){
  	if(err) throw err;
	});
}

function updateNote(newNote, id) {
	var sql = "UPDATE messages SET ? WHERE id=";

	con.query(sql+id, newNote, function(err,res){
  	if(err) throw err;
	});
}
