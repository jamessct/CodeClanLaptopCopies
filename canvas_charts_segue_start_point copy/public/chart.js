document.addEventListener('DOMContentLoaded', function() {
  var data = ourFavouriteProgrammingLanguages;

  var canvas = document. querySelector('canvas');
  var context = canvas.getContext('2d');

  var width = canvas.width;
  var height = canvas.height;

  var leftGutter = 40;
  var topGutter = 40;
  var bottomGutter = 40;
  var rightGutter = 40;

  console.log(data, width, height);

  var yAxisMax = (function() {
    var maxSoFar = 0;
    data.forEach(function(dataItem) {
      if (dataItem.value > maxSoFar) {
        maxSoFar = dataItem.value;
      }
    });
    return maxSoFar;
  }());

  console.log(yAxisMax)

  var makeYAxisLabel = function(number) {

    var y = (yAxisMax - number) * (height)

    context.fillStyle = 'black';
    context.font = "12px sans-serif";
    context.fillText(number, leftGutter, y / yAxisMax);
  };

  var renderAxes = function() {
    context.fillRect(
      leftGutter, 
      topGutter, 
      1, 
      height - topGutter - bottomGutter
    );

    context.fillRect(
      leftGutter,
      height - bottomGutter,
      width - leftGutter - rightGutter,
      1
    );
    makeYAxisLabel(0);
  };
  renderAxes();
});

