window.onload = function() {
  var canvas = document.getElementById('main');

  var context = canvas.getContext('2d');
  console.log(context);

  var upButton = document.querySelector('#up');
  var downButton = document.querySelector('#down');
  var leftButton = document.querySelector('#left');
  var rightButton = document.querySelector('#right');

  console.log(upButton);

  upButton.onclick = function(event) {
    context.beginPath();
    context.moveTo(100, 100);
    context.lineTo(400, 400);
    context.stroke();
  }
}