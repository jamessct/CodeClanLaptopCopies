var FilmQuery = require('../db/filmQuery');
var query = new FilmQuery();

var FilmApi = function(app) {
  
  var films = require('../client/src/models/films')();

  app.get('/', function (req, res) {
    res.sendFile(path.join(__dirname + '/client/build/index.html'));
  });

  //film index
  app.get('/api/films', function(req, res) {
    query.all(function(data) {
      res.json(data);
    });
  });

}
module.exports = FilmApi;