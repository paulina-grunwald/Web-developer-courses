# Pluralsight - Quick Start to JavaScript: Volume 3

## 1. Objects and Method

__Object__ is a collection of <em>properties</em>, which are described in the form of <em>key/value</em> pairs.


```javascript

//create object
var myCoffee = {
  flavor: "espresso",
  temperature: "hot",
  ounces: 100,
  milk: true,

  //write reheat function to reheat coffee
  reheat: function(){
    if(myCoffee.temperature === "cold"){
      myCoffee.temperature = "hot";
      console.log("Your coffee has been reheated!")
    }
  }
};


//print the flavour property of myCoffee
console.log(myCoffee.flavor);

myCoffee.temperature = "cold"

//myCoffee["temperature"] = "warm";

//run reheat function
myCoffee.reheat();

```

## 2. Object Literals and Object Constructors

Now we will create object with multiple instances called also __object constructor__. We use a function to create multiple instances of an object. Each instance inherits the properties and methods from its constructor.

```javascript
//create object
var mark = {
  name: "Mark",
  hairColor: "brown"
};

//create Friend function with two arguments. it will create a Friend constructor
function Friend(name, hairColor) {
  this.name = name;
  this.hairColor = hairColor;

}

var denny = new Friend("denny", "black");
var Maria = new Friend("Maria", "blond")

function Friend(name, hairColor) {
  this.name = name;
  this.hairColor = hairColor;

}

//create new instances
var denny = new Friend("denny", "black");
var maria = new Friend("maria", "blond");

//print
console.log(denny.name);
console.log(Maria.hairColor);

```

## 3. What is object oriented programming?

## Other references
