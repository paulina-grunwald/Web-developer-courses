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


```javascript
var
```



# Other references
