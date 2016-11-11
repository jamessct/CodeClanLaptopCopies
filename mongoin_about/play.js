use farm;

db.animals.insert({ 
  name: "Erik",
  type: "polar bear"
});

db.animals.insert({
  name: "Fred",
  type: "Fox"
})

db.animals.update(
  {name: "Fred"},
  {$set: {
    type: "Goose"
  }}
);

db.animals.find({name: "Fred"});

db.animals.remove({
  name: "Erik"
});

db.animals.find();

db.dropDatabase(); 

