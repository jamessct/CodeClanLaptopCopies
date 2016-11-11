var React = require('react');
var CountrySelector = require('./CountrySelector');
var CountryDetail = require('./CountryDetail');

var CountryBox = React.createClass({
  getInitialState:function(){
    return { countries: [], focusCountry: null }
  },

  componentDidMount: function() {
    var url = 'https://restcountries.eu/rest/v1/all';
    var request = new XMLHttpRequest();
    request.open("GET", url);
    request.onload = function() {
      var jsonString = request.responseText;
      var data = JSON.parse(jsonString);
      this.setState({countries: data})
      console.log(data);
    }.bind(this)
    request.send();
  },

  setFocusCountry: function(index) {
    var newCountry = this.state.countries[index];
    this.setState({focusCountry: newCountry});
  },

  render:function(){
    return(
      <div>
        <h2>Country Box</h2>
        <CountrySelector 
          countries={this.state.countries}
          selectCountry={this.setFocusCountry}></CountrySelector>
        <CountryDetail
          country={this.state.focusCountry}>
          
        </CountryDetail>
      </div>
    )
  }
})

module.exports = CountryBox;