var CatApi = function(app) {
  var cats = ["Bengal", "British Shorthair", "Siamese"];

  app.get('/cats', function(req, res) {
    res.json({data: cats});
  })

  app.get('/cats/:id', function(req, res) {
    var foundCat = req.params.id;
    res.json({data: cats[foundCat]});
  })

  app.post('/cats', function(req, res) {
    cats.push(req.body.cats);
    res.json({data: cats});
  })

  app.delete('/cats/:id', function(req, res) {
    var foundCat = req.params.id;
    cats.splice(foundCat, 1);
    res.json({data: cats});
  })

  app.put('/cats/:id', function(req, res) {
    cats[req.params.id] = req.body.cats;
    res.json({data: cats});
  })
}

module.exports = CatApi;