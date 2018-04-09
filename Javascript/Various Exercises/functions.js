function Fruits(name) {
  return {
    desc: function () {
        console.log("This is ", name);
    },
    name: name
  };
};

var fruitNames = ["Banana", "Apple", "Mango"];

var fruitsCollection = [];

for(var i = 0; i < fruitNames.length; i++) {
  var fruit = Fruits(fruitNames[i]);
  fruitsCollection.push(fruit);
}


for(var i = 0; i < fruitNames.length; i++) {
  fruitsCollection[i].desc();
}
