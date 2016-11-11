var Film = require('./film');
var Review = require('./review');

var Films = function(){
  
}

Films.prototype = { 
  all: function(onCompleted) {
    var self = this;
    var url = "http://localhost:3000/api/films";
    this.makeRequest(url, function() {
      if(this.status != 200) return;
      var jsonString = this.responseText;
      var results = JSON.parse(jsonString);

      var films = self.populateFilms(results);
      onCompleted(films);
    });
  },
  populateFilms: function(results) {
    var films = [];
    for(var result of results) {
      var film = new Film(result);
      films.push(film);
    }
    return films;
  },
  makeRequest: function(url, callback){ 
    var request = new XMLHttpRequest();
    request.open("GET", url);
    request.onload = callback;
    request.send();
  }
}

module.exports = Films;