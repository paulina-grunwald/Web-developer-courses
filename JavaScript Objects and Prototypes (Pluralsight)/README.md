# Key learning points from Pluralsight [JavaScript Objects and Prototypes](https://app.pluralsight.com/library/courses/javascript-objects-prototypes/table-of-contents)

>Witten by Paulina Grunwald


### Content table:

1. Creating JavaScript Objects
2. JavaScript Object Properties
3. JavaScript Prototypes and Inheritance


# 1. Creating JavaScript Objects

#### 1.1 Dynamic nature of JavaScript

It's very easy to create an object in JavaScript and they can be changed after being created.

```javascript
'use strict';

// create new object
var cat = {
	name: 'Fluffy',
	color: 'White',
	speak: function() {display("Meeoow")}
}

// add age property to the cat object
cat.age = 3

// print speak function on the cat object
cat.speak()
```

#### 1.2 Using constructor function to create JS object

__this__ keyword refers to an object and this object is whatever object is executing current bit of code -  by default it's the global object. In the web browser it's a window object. Keyword __new__ creates new empty JavaScript object and sets the context of __this__ to the new object and then calls the cat function.

```javascript
'use strict';
function Cat() {
	this.name = 'Fluffy'
	this.color = 'White'
}

var cat = new Cat();
display(cat)
```

object literal
constructor function





# REFERENCES
