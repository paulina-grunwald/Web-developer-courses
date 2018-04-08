var animal = {};
animal.name = "Mitten";
animal['tagline'] = "Pet me!"
console.log(animal);
// { name: 'Mitten', tagline: 'Pet me!' }
var noises = [];
animal.noises = noises;
console.log(animal);
// { name: 'Mitten', tagline: 'Pet me!', noises: [] }
