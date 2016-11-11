var pets = ["dog", "cat", "pikachu"];

var testScores = {
  student1: 3, 
  student2: 12, 
  student4: 30
}

for (var key in testScores) {
  console.log(key + " = " + testScores[key])
}

for (var pet of pets) {
  console.log(pet);
}

for (var i = 0; i < pets.length; i++) {
  console.log(pets[i]);
}

// 

var i = 0

while (i < 10) {
  console.log("loop:", i);
  i++;
}