var guitars = ["fender", "gibson", "gretcsh"];
console.log("guitars:", guitars);

var drums = new Array();
drums.push("gretsch");
drums.push("yamaha");
console.log("drums", drums);

console.log(guitars[0]);
console.log(drums[1]);
console.log(guitars[4]);

guitars[30] = "Ibanez";

guitars.pop();

console.log("guitars", guitars);
console.log(guitars.length);

var instruments = guitars.concat(drums);

instruments.sort();

console.log(instruments);

