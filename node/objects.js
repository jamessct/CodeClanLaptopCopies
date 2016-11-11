var myPerson = {
  name: "Guybrush",
  age: 32,
  weapon: "cutlass",
  address: {
    street: "Pirate Way", 
    postcode: "PR8 M8E"
  }
}

var myProperty = "weapon"

console.log(myPerson[myProperty]);
console.log(myPerson.weapon);

console.log(myPerson.address.street);

var caeser = {city: "Rome"}
var cleopatra = {city: "Cairo"}
var cicero = {city: "Rome"}

var ancientFolk = [caeser, cleopatra, cicero];

cleopatra.city = NaN;

console.log(ancientFolk);