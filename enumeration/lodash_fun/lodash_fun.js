var _ = require("lodash");

var myArray = [2, 2, 4, 4, 5];

_.forEach(myArray, function(item) {
  console.log("item:", item);
})

var doubled =  _.map(myArray, function(item) {
  return item * 2;
})

console.log(doubled);
console.log(myArray);