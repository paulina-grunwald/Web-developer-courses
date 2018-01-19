'use strict';

var cat = {
	name: 'Fluffy', 
	color: 'White',
	speak: function() {display("Meeoow")}
}

cat.age = 3

cat.speak()


// create constructor function
function Cat(name, color) {
	this.name = name
	this.color = color

}

var cat = new Cat('Fluffy', 'White');
display(cat)






var cat = Object.create(Object.prototype,
	{
		name: { 
			value: 'Fluffy',
			enumerable: true,
			writable: true,
			configurable: true
		},
		color: {
			value: 'White',
			enumerable: true,
			writable: true,
			configurable: true
		}
	})


class Cat {
	constructor(name, color) {
		this.name = name
		this.color = color
	}

	speak() {
		display('Meeeeeeow')
	}
}

cat.speak()
