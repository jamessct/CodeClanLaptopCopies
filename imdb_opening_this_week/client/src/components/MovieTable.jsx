var React = require('react')
var MovieRow = require('./MovieRow')

var MovieTable = function (props){

  var movieNodes = props.movies.map(function(movie, index) {
    return (
      <li>
        <MovieRow id={index} value={index} movie={movie} />
      </li>
    )
  })

  return(
    <div className='movie-table'>
      <ul>
        {movieNodes}
      </ul>
    </div>
  )
}

module.exports = MovieTable