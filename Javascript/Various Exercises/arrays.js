var animal = {};
animal.name = "Mitten";
animal['tagline'] = "Pet me!"
console.log(animal);
// { name: 'Mitten', tagline: 'Pet me!' }
var noises = [];
animal.noises = noises;
console.log(animal);
// { name: 'Mitten', tagline: 'Pet me!', noises: [] }

var count = 0;
for(var key in animal) {
  count++;
  if (key === 'name') {
    console.log("Hi my name is" + animal[key]);
  } else if (key === "tagline") {
    console.log("Just " + animal[key]);
  }
}

console.log("    ")

//////// Access and Assigment ////////
var country = [];
country[0] = "Poland";
country[1] = "Romania";
// add object tp the array at the end
country.push({"Hungary" : "Budapest"});
// remove first item from the array
country.shift()
// Add item in the first position
country.unshift("England");
console.log(country);


//////// Iteration ////////
var animals = [];
animals["cat"] = "kitty";
animals["dog"] = "katsu";
animals["bird"] = "tweety";

console.log(animals);
// [ cat: 'kitty', dog: 'katsu', bird: 'tweety' ]
console.log(animals.cat);
// kitty

function iterFunc (item, index) {
  for( var key in item) {
    console.log(item[key])
  }
}

animals.forEach(iterFunc);


names = ["mike", "anna", "john", "robert"];
for(var i = 0; i < names.length; i++) {
  console.log(names[i]);
}
