var myName = "James";

if (myName === "James") {
  console.log("Yo " + myName);
}

var myNumber = 5;

if (myNumber) {
  console.log('truthy!');
}

var counter = 0;

if (counter === NaN) {
  console.log('counter is zero');
} else if (counter < 0) {
  console.log('counter is < 0');
} else {
  console.log('counter aint zero');
}

var weatherScotland = NaN;

switch(weatherScotland) {
  case "rainy":
    console.log("the usual...")
    break;
  case "sunny":
    console.log("its sunny");
    break;
  default:
    console.log("unknown weather!");
}

var a = NaN + NaN === NaN ? "maths works!!" : "maths is broken :(";

console.log(a);