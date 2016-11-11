var React = require('react');

// var CountryDetail = React.createClass({
//   render:function(){

//     if(!this.props.country) {
//       return <h3>Afghanistan</h3>
//     }

//     return(
//       <div>
//       <h3>
//         {this.props.country.name}
//       </h3>
//       <h3>
//         {this.props.country.capital}
//       </h3>
//       <h3>
//         {this.props.country.demonym}
//       </h3>
//       </div>
//     )
//   }
// })

var CountryDetail = function(props) {
  if(!props.country) return <h3>No country selected</h3>

  return (
    <div>
      <h3>{props.country.name}</h3>
      <h3>{props.country.capital}</h3>
      <h3>{props.country.demonym}</h3>
    </div>
  )
}

// var myComponent = function(props) {
//   return <h1>{title}</h1>
// }

module.exports = CountryDetail;
