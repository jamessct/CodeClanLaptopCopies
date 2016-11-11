var Films = require('./client/src/models/films')

var FilmsApi = function(app) {
  var films = new Films();

  app.get('/films', function(req, res) {
    res.json({data: films});
  })

  app.get('/films/:id', function(req, res) {
    var foundFilm = req.params.id;
    // res.json({data: films[foundFilm]});
    res.json(films[foundFilm]);
  })

  app.post('/films', function(req, res) {
    films.push(req.body.films);
    res.json({data: films});
  })

  app.delete('/films/:id', function(req, res) {
    var foundFilm = req.params.id;
    films.splice(foundFilm, 1);
    res.json({data: films});
  })

  app.put('/films/:id', function(req, res) {
    films[req.params.id] = req.body.films;
    res.json({data: films});
  })
}

module.exports = FilmsApi;