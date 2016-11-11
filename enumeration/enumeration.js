var _ = require("lodash");

var myArray = [1, 2, 3, 4, 5];

var numbers = function(item) {
  console.log("number: " + item)
};

myArray.forEach(numbers);

var enumerator = function(array, callback) {
  var i = 0;
  var length = array.length;
  for ( ; i < length; i++) {
    callback(array[i]);
  }
}

