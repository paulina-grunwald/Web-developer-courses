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
// 1
funcStorage();
// 2
funcStorage();
// 3


console.log("    ");

///// Closure example

var add = function(num) {
  var num1 = num;
  var addNums = function(num2) {
      return num1+num2;
  };
  return addNums;
};


var add4= add(4);
console.log(add4(2));
// 6


/// Closure Exercise 2
console.log("     ");

function counter() {
  var n = 0;
  return {
    count: function() { return n++; },
    reset: function() { return n = 0; }
  };
};

var myCounter = counter();
myCounter.count();
//myCounter.reset();
