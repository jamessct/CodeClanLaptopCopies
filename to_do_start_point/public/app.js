var tasks = ['Go to the pub'];

var populateList = function(toDoList) {
  tasks.push(toDoList);
}

var handleButtonClick = function() {
  var input = document.queryselector("input");
  localStorage.setItem("item", input.value);
  input.value = "";
  populateList(input.value);
}

var displayText = function(list) {
  var list = document.querySelector("#to-do-list");
  tasks.forEach(function(item) {
    list.innerText = item;
  })
}

var app = function() {
  var button = document.querySelector("button");
  button.onclick = handleButtonClick;
  var saved = localStorage.getItem("item");
  displayText(saved);
}

window.onload = app;
