var clicks = 0;

var handleButtonClick = function() {
  var pTag = document.querySelector('#button-result');
  pTag.innerText = ("pure been clicked n that pal x " + counter());
}

var counter = function() {
  clicks += 1;
  return clicks;
}

var handleKeyPress = function() {
  var pTag = document.querySelector('#text-result');
  pTag.innerText = this.value;
}

var dropdownOutput = function() {
  var pTag = document.querySelector('#select-result');
  pTag.innerText = this.value;
}

var app = function() {
  var button = document.querySelector('button');
  button.onclick = handleButtonClick;

  var input = document.querySelector('input');
  input.onkeyup = handleKeyPress;

  var select = document.querySelector('select');
  select.onchange = dropdownOutput;
}

window.onload = app;
