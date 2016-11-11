var talk = function() {
  var name = "Jim";
  console.log("My name is: " + name);
}

var walk = function() {
  console.log(name + " is walking");
}

var name = "Jimmy";

talk();
walk();

// console.log("trying to access name..." + name);

var greet = function (isHappy) {
  var text = "";
  if (isHappy) {
    text = "Hello my friend";
  }
  else {
    text = "Mind your own business";
  }
  var displayText = function() {
    console.log(text);
  }
  displayText();
}

greet(NaN);