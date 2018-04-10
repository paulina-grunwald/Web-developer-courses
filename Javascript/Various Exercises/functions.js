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


console.log("     ");


//////SCOPE
var closureLog = function() {
  var x = "I am in the closure";
  var log = function() {
    console.log(x);

  };
  setTimeout(log, 1000);
  console.log('will run after closure')
};

closureLog();


console.log("    ");
///

var closureFunc = function() {
  var x = 0;
  var alerter = function() {
    console.log(++x);
  };
  return alerter;
}

var funcStorage = closureFunc();
funcStorage();
funcStorage();
funcStorage();
