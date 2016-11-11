var requestComplete = function() {
  if(this.status !== 200) return;
  var jsonString = this.responseText;
  var countries = JSON.parse(jsonString);
  var country = countries[0];
  console.log(country);
  console.log(countries);
}

var makeRequest = function(url, callback) {
  var request = new XMLHttpRequest();
  request.open("GET", url);
  request.onload = callback;
  request.send();
}

var app = function() {
  var url = "https://restcountries.eu/rest/v1";
  console.log('before');
  makeRequest(url, requestComplete);
  console.log('after')
}

window.onload = app;