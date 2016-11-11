var express = require('express');
var app = express();
var path = require('path');
var bodyParser = require('body-parser');
app.use(bodyParser.json());
var CatApi = require('./cat_api');
// app.get('/', function(req, res) {
//   res.json({data: 'sup'});
// });

app.use(express.static('public'));

app.get('/', function(req, res) {
  res.sendFile(path.join(__dirname + '/index.html'));
});

app.listen(3000, function() {
  new CatApi(app);
  console.log('App running on port ' + this.address().port);
});