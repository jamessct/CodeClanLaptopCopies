hello();
function hello() {
  console.log("Hello");
}

var hiya = function() {
  console.log("hi");
}
hiya();

function add(number1, num2, no3, n4) {
  return number1 + num2;
}

console.log(add(8, 8));
console.log(add(1, 3, 2, 8));

function printName(name, age) {
  console.log(name + " is " + age + " years old");
}

printName("James", 24);

function sum() {
  var total = 0;
  for (var i = 0; i < arguments.length; i++) {
    total += arguments[i];
  }
  return total;
}

console.log(sum(1, 3, 4, 2, 13, 5));

var sum = add(2, 5);
console.log(sum);

// var greater = function(a, b) {
//   if (a > b) return a;
//   return b;
// }

var greater = function(a, b) {
  if (a > b) {
    return a;
  }
  return b;
}

console.log("the return value is: " + greater(3, 2));

var functionCallingFunctions = function(functionCall) {
  console.log(functionCall(5, 9));
}

functionCallingFunctions(greater);

var theNameFunction = function(firstName, secondName) {
  console.log("Howdy " + firstName + " " + secondName);
}

theNameFunction("James", "Scott");

var times = function(number1, number2) {
  return number1 * number2;
}

console.log(times(2, 2));

var getFirstElementFromArray = function(arrayName) {
  return arrayName.shift()
}

names = ["James", "James", "James", "David", "David"];
console.log(getFirstElementFromArray(names));

var printShitOut = function() {
  for (var i = 0; i < arguments.length; i++) {
    console.log(arguments[i]);
  }
}

console.log(printShitOut("arguments", "words", "yeah"));
