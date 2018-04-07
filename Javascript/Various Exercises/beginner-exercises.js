// variable

myObject = {
  firstValue: 'a',
  secondValue: 'b'
};

console.log(myObject.firstValue);

///////////// Escaping characters  ////////////////
console.log("Paulina'\s code")
console.log("              ")


///////////// typeof  ////////////////
console.log(typeof("mike"));
console.log(typeof(2));
console.log(typeof(null));
//object
console.log(typeof(undefined));
//undefined
console.log(typeof(true));
//boolean
console.log("              ")

///////////// math ////////////////
console.log(-10/0);
//-Infinity
console.log(0/0);
// NaN
console.log("              ")

///////////// Arrays  ////////////////

let names = ["Mike", "John", "Lynda"];
console.log(names[1]);
console.log(names.length);
names.push("Paul");
console.log(names);
//[ 'Mike', 'John', 'Lynda', 'Paul' ]

names.pop();
console.log(names);
// [ 'Mike', 'John', 'Lynda' ]

names.shift();
console.log(names);
// [ 'John', 'Lynda' ]

console.log("              ")




///////////// Boolean ////////////////

console.log(Boolean(""));
// false
console.log(Boolean(0));
// false
console.log(Boolean(null));
// false
console.log(Boolean(undefined));
// false


console.log(Boolean(-1));
// true
console.log(Boolean("a"));
// true
console.log(Boolean(" "));
// true


///////////// Functions ////////////////

// Basic funtion structure in javascript
 var square =  function(x) {
   return x * x;
 };
console.log(square(7));
// 49
