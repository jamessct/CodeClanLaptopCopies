use codeclan;

db.students.insert([
  {
    name: "John",
    favouriteFood: "Burritos and pesto"
  },
  {
    name: "Robbie",
    favouriteFood: "Haggis and pesto"
  }
]);

db.instructors.insert([
  {
    name: "Val",
    favouriteFood: "Cheese toastie"
  },
  {
    name: "Beth",
    favouriteFood: "bread"
  }
]);

show collections;

db.dropDatabase();