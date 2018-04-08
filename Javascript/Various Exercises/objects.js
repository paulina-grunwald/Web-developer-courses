// Assigment w/ Dots

var animal = {};
animal.specie = "dog";
console.log(animal);
// { specie: 'dog' }


// Add items to the object

var box = {};
box["material"] = "metal";

box["size"] = {
  "height": 3,
  "width": 6
};

box["area"] = box.size.height * box.size.width;

console.log(box);
// { material: 'metal', size: { height: 3, width: 6 }, area: 18 }


// Iteration
var animal = {};
animal["type"] = "dog";
animal["sound"] = "bark";
animal["age"] = 3;

for(var item in animal) {
  console.log(item);
  console.log(animal[item]);
};
// type sound age
