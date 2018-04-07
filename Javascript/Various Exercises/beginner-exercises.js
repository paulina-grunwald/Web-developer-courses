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


nums = [1,2,3,4,5];
console.log(nums.pop());
// 5
console.log(nums.shift());
// 1

console.log("              ")

numbers = [1,2,3,4,5,6,7,8,9,10];
numbers.splice(4,2);
console.log(numbers);
// [ 1, 2, 3, 4, 7, 8, 9, 10 ]


numbers2 = [1,2,4, 6 ,7];
numbers2.splice(2,0,5);
console.log(numbers2);
// [ 1, 2, 5, 4, 6, 7 ]

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

///////////// Conditionals  ////////////////

let type = "fruit"

if (type === "fruit") {
  console.log("This is fruit");
}
else {
  console.log("This is vegeable");
}


let country = "Romania";
switch(country){
  case "Romania":
    break;
  case "Poland":
    console.log("Warsaw");
    break;
  default:
    console.log("Unknown");
    break;
}
// Bucharest

console.log("              ")


///////////// Loops ////////////////
for (let i = 0; i < 3; i++) {
  console.log(i)
}
// 0 1 2

console.log("              ")

///////////// Functions ////////////////

// Basic funtion structure in javascript
 var square =  function(x) {
   return x * x;
 };
console.log(square(7));
// 49
