window.onload = function() {
  var canvas = document.getElementById('main');
  console.log(canvas);

  var context = canvas.getContext('2d');
  console.log(context);

  context.fillStyle = "tomato";
  context.fillRect(70, 70, 40, 40);

  context.strokeStyle = "green";
  context.strokeRect(20, 20, 100, 100);
  
  context.beginPath();
  context.moveTo(100, 100);
  context.lineTo(100, 200);
  context.stroke();

  context.beginPath();
  context.moveTo(200, 200);
  context.lineTo(200, 300);
  context.lineTo(100, 300);
  context.closePath();
  context.strokeStyle = "orange";
  context.stroke();

  circle....

  var drawCircle = function(x, y) {
    context.beginPath();
    context.arc(x, y, 50, 0, Math.PI*2, false);
    context.stroke();
  }

  canvas.onmousemove = function(event) {
    drawCircle(event.x, event.y);
  }

  // images.....

  var img = document.createElement('img');
  img.src = "https://img.buzzfeed.com/buzzfeed-static/static/2014-11/4/14/enhanced/webdr09/enhanced-2603-1415128848-6.jpg"

  var drawKitty = function() {
    context.drawImage(img, 200, 200, 90, 90);
  }

  img.onload = drawKitty;

  ////colour picker

  var changeColour = function() {
    console.log(this.value);
    context.strokeStyle = this.value;
  }

  var colourPicker = document.querySelector('#input-color');

  colourPicker.onchange = changeColour; 
}