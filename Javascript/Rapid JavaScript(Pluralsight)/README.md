Observables# Key learning points from [Rapid JavaScript Training Course](https://app.pluralsight.com/library/courses/rapid-javascript-training/table-of-contents)


# 1. JavaScript Basics

- It is not allowed to embed comment in comment in JavaScript.



# 2. Variables, Types, and Scope

__Hoisting__ - it refers to having access to variables before they are declared. This concept doesn't exist in other languages. Hoisting works with variables and functions. It can be also called as ```two pass compilation``` in JavaScript.

``Pass 1:`` All declarations are located and identifiers are known by the compiler.
``Pass 2:`` Execution occurs in Pass2 because all variables are known from Pass1, they may be accesses before they are declared.

Hoisted variables are initialized to undefined.

```javaScript
console.log(productId);
// ReferenceError: productId is not defined.
```

```javaScript
console.log(productId);
productId = '1928id';
// undefined
```

Function declaration in comparison to function expressions can be hoisted.

```javaScript
showProduct();
function showProduct(){
  console.log('Showing a Product');
}
// Showing a Product
```

Most of developers do not use hoisting!


### Numbers

We can access MIN_VALUE AND MAX_VALUE e.g

```javaScript
console.log(Number.MAX_VALUE);
// 1.279763......

var n = Number.MAX_VALUE * 2;
console.log(n);
// Infinity
```
When numbers get to big they get to Infinity and when to small to negative Infinity. The data type of infinity is number.

```javaScript
console.log(typeof Infinity);
// number
```

Whenever Javascript is trying to perform calculations and one of the items is not defined it will not throw exception but it will create result as NaN. The typeof NaN is number.

```javaScript
var count;
var price = 2;
console.log(price / count);
// Nan

console.log(typeof NaN);
// number
```

If you want to check if variable is NaN you can use following function:
```javaScript
var n = NaN;
if (isNan(n))
  console.log('This value is NaN!');
// This value is NaN!
```

### Strings
You can put strings in single or double quotes. It makes no difference. Strings are also mutable.

We can

```javaScript
console.log('Nike\'s Order');

```

We can also calculate lenght of the string using ```.length property```:

```javaScript
var productType = 'Hardware';
console.log(productType.length);
// 8
```

If we would like to remove all white spaces we can use property ```.trim()```:
```javaScript
var productType = '    Hardware   ';
console.log('[' + productType.trim() + ']')
// [Hardware]
```

We can also modify the entire string to lower or upper case using: ```.toUpperCase()``` and ```.toLowerCase()``` e.g

```javaScript
var animal = 'elephant';
console.log(animal.toUpperCase());
```
#### Boolean values
Always use true instead of True. Using True will casuse ReferenceError: True is not defined.

```javaScript
var isSpecial = true;
if (isSpecial)
  console.log('It is true');
// It is true
```

```javaScript
console.log( Boolean("Hello"));
// true
console.log( Boolean(""));
// false
console.log( Boolean(" "));
// true
console.log( Boolean(5));
// true
console.log( Boolean(0));
// false
console.log( Boolean(undefined));
// false
console.log( Boolean(null));
// false
console.log( Boolean(NaN));
// false
console.log( Boolean(false));
// false
console.log( Boolean());
// false
```

! convers string, number and boolean to the Boolean.

```javaScript
var value = 9.99;
console.log(typeof !!value);

var value = 9.99;
console.log(!!value);
// true
```

#### undefined and null

Developts do not use undefined. If they want to wipe out variable null is used.

```javaScript
var product
console.log(typeof product);
// undefined
```

If we call variable that is not even initialized we will also get undefined.

```javaScript
console.log(typeof animal);
// undefined
```

When we asign null to the variable it becomes an object.

```javaScript
var animal = null;
console.log(typeof animal);
// object
```

Thus we can conclude that typeoff null is an object.

```javaScript
console.log(typeof null);
// object
console.log(typeof undefined);
// undefined
console.log(undefined == null);
// true
console.log(undefined === null);
// false
```

#### Global scope
In node.js Global would be the global object but in browser it is window.


# 3. Operators
#### Addition

Additiona of floating point numbers in JS is very fast but it can lead to not correct answers.
```javaScript
var total = 5.1 + 3.3;
console.log(total);
// 8.39999999999999999
```

To solve this problem method ```.toFixed()``` can be used.

```javaScript
var total = 5.1 + 3.3;
console.log(total.toFixed(2)); // round to two decimal places
// 8.40
```


```javaScript
var id = 2000 + undefined;
console.log(id);
// NaN

var id = "PRD" + undefined;
console.log(id);
// PRDundefined
```

In a numeric context null is treated as 0.

```javaScript
var num = 100 + null;
console.log(num);
// 100
```
but it's different in string context:

```javaScript
var = "PRD" + null;
console.log(id)
// PRDnull
```

When we wnt to add number to NaN JavaScript does not know how to deal with this operation. The result will be NaN.

```javaScript
var id = 2000 + NaN;
console.log(id);
// NaN
```

#### Subtraction


# 4. Array and Reference Types

Reference types include things like array and objects, dates, RegExp's, Functions and Primitives (via Wrappers).

#### Primitive Type Storage

```javaScript
var n = 42;
var a = n;
console.log(a);
// 42
```
var a is a copy of n into - those are two distinct memory locations.

``Reference Type Storage``
```javaScript
var o = {
  name: "Mike"
};
```
JavaScript will create memory location for o but it will not put the value there but a <em>pointer</em>. We do not have access to this pointer. We know it points to the unknown memory location (there the object gets stored).

```javaScript
var o2 = o;
```
JavaScript will copy pointer from o to o2 but will not copy the object. The pointer will point to the memory location (it is the same for o and o2). These are __reference type__. They reference the same object.

```javaScript
o2.name = "Jack";
console.log(o2);
// {name: "Jack"}
console.log(o);
// {name: "Jack"}
```

If we change value of o2 it will automatically change the value of o as they have the same pointers to the memory location.

```javaScript
var person = {
  name: 'Mike'
};
var newPerson = person;
console.log(newPerson.name);
// Mike
```

#### Array Fundamentals

The <em>instanceof</em> operator tests whether the prototype property of a constructor appears anywhere in the prototype chain of an object.

```javaScript
var entries = new Array('Mike', 'Adam', 'Maria');
console.log(entries instanceof Array);
```
It is also easy to print out first item from the array.

```javaScript
var names =['Mike', 'Angela', 'Lory'];
console.log(names[1]);
// Angela
```

If we will try to access entry beyond the array:

```javaScript
var names =['Mike', 'Angela', 'Lory'];
console.log(names[5]);
// undefined
```
we will get ```undefined```.


If we want to print lenght of the array we will use .length method:
```javaScript
var animal = new Array('dog', 'cat', 'bird');
console.log(animal.length);
// 3
animal[10] = 'camel';
console.log(animal.length);
// 11
```

The ```toString()``` method returns a string representing the object.
```javaScript
var fruits = new Array('banana', 'cherry', 'apple');
console.log(fruits.toString());
// banana,cherry,apple
```

The ```valueOf()``` method returns the primitive value of the specified object.
```javaScript
var nums = [1,2,4];
console.log(nums.valueOf());
// [1,2,4]
```

The ```join()``` method joins all elements of an array (or an array-like object) into a string and returns this string.
```javaScript
var nums = [1,2,4];
console.log(nums.join('-'));
// 1-2-4
```

#### Array Features
The ```push()``` method adds one or more elements to the end of an array and returns the new length of the array.

```javaScript
var cars = ['tesla', 'ford'];
cars.push('fiat');
console.log(cars);
// ["tesla", "ford", "fiat"]
```

The ```shift()``` method removes the first element from an array and returns that removed element. This method changes the length of the array.

```javaScript
var num = [1, 2, 3];
var firstElement = num.shift();
console.log(num);
// [2, 3]
console.log(firstElement);
// 1
```

The ```unshift()``` method adds one or more elements to the beginning of an array and returns the new length of the array.

```javaScript
var country = ['Poland', 'USA']
var newCountry = country.unshift('Brazil');
console.log(country);
// ["Brazil", "Poland", "USA"]
```

The ```concat()``` method is used to merge two or more arrays. This method does not change the existing arrays, but instead returns a new array.
```javaScript
var num1 = [1,2,3,4];
var num2 = [5,8,9];
console.log(num1.concat(num2));
// [1, 2, 3, 4, 5, 8, 9]
```

The ```slice()``` method returns a shallow copy of a portion of an array into a new array object selected from begin to end (end not included). The original array will not be modified.

```javaScript
var city = ['Warsaw', 'Budapest', 'Tokyo', 'Paris', 'Amsterdam'];
console.log(city.slice(2));
//  ["Tokyo", "Paris", "Amsterdam"]
var animals = ['ant', 'bison', 'camel', 'duck', 'elephant'];
console.log(animals.slice(1,4));
//["bison", "camel", "duck"]
```

If we put negative value in the .slice method it will start counting from the end of the array.
```javaScript
var animals = ['ant', 'bison', 'camel', 'duck', 'elephant'];
console.log(animals.slice(-2));
//["duck", "elephant"]
```

The ```splice()``` method changes the contents of an array by removing existing elements and/or adding new elements.

```javaScript
var items = ['toy,', 'pen', 'laptop']
items.splice(1,1, 'spoon');
console.log(items);
// ["toy,", "spoon", "laptop"]
```

The ```reverse()``` method reverses an array in place. The first array element becomes the last, and the last array element becomes the first.
```javaScript
var nums = ['one', 'two', 'three'];
console.log(nums.reverse());
// ["three", "two", "one"]
```


The ``sort()`` method sorts the elements of an array in place and returns the array. The sort is not necessarily stable. The default sort order is according to string Unicode code points.
```javaScript
nums = [33, 12, 5, 1, 67, 100];
nums.sort();
console.log(nums);
// [1, 100, 12, 33, 5, 67]

nums = [33, 12, 5, 1, 67, 100];
nums.sort(function(value1,value2) {
  return value1 - value2;
});
console.log(nums.toString());
// 1,5,12,33,67,100
```

The ```indexOf()``` method returns the first index at which a given element can be found in the array, or -1 if it is not present.

```javaScript
var dogs = ['beagle', 'husky', 'shiba inu', 'akita'];
console.log(dogs.indexOf('husky'));
// 1
```

If ```indexOf``` can not find a value it returns -1.


#### Data Fundamentals

Creates a JavaScript ```Date instance``` that represents a single moment in time.

```javaScript
var date = new Date();
console.log(date);
// Fri Feb 09 2018 10:46:53 GMT+0100 (Central Europe Standard Time)
```
Passing a 0 to Date() will result in standard time on January 1st 1970.

#### RegExp
Regular expressions are patterns used to match character combinations in strings. These patterns can be used with the:
``exec``, ``test``, ``match``, ``replace``, ``search`` and ``split`` methods.

Using RegExp first argument is the string we are looking for and the second is a flag e.g ``g`` - global, ``i`` - case insensitive.

```javaScript
var text = 'I love JavaScript';
var pattern = new RegExp('love', 'g');
console.log(pattern instanceof RegExp);
// true
var pattern2 = /I/g;
console.log(pattern instanceof RegExp);
// true
console.log(pattern2.test(text));
// true
```
If we will use .test() mutiple times it will find all patterns that match in entire string.

We can use exec method to find pattern in a string:

```javaScript
var sentence = "My name is Mike and I code"
var pattern = /a/g;
console.log(pattern.exec(sentence));
// ["a", index: 4, input: "My name is Mike and I code"]
console.log(pattern.exec(sentence));
// ["a", index: 16, input: "My name is Mike and I code"]
```
We can treat result of pattern.exec as a array!

```javaScript
var sentence = "My name is Mike and I code"
var pattern = /is/g;
var result = (pattern.exec(sentence));
console.log(result.index);
// 8
```

The ``. symbol`` represents any character.

```javascript
var text = "Today is a nice day";
console.log(text.match(/.a/g));
// ["da", " a", "da"]
```

# 5. Objects, JSON, and Prototypes

#### Simple Objects
```javaScript
var fruit = new Object();
fruit.name = 'banana';
fruit.color = 'yellow';
console.log(fruit);
// {name: "banana", color: "yellow"}
console.log(fruit.name);
// banana
console.log(fruit['color']);
// yellow
```

```javaScript
var country = {
  name: 'Netherland',
  people: 'Dutch',
  language: 'Dutch',
  capitol: 'Amsterdam',
  mainCities: ['Amsterdam', 'Rotterdam', 'Utrecht', 'Haarlem']
};
console.log(country.mainCities[2]);
// Utrecht
```

Call an item from JSON:

```javascript
var project = {
  tasks: [
    {
      taskName: 'first'
    },
    {
      taskName: 'second'
    }
  ]
};
console.log(project.tasks[1].taskName);
// second
```
#### Prototype

Every JavaScript Object has a ``prototype property``. We do not always have access to it. The prototype property is simply an object. The prototype property is most easily accessed on constructor functions.

Object.prototype exists as an object.

```javaScript
console.log(tyoeof Object.prototype);
// object
console.log(tyoeof Object.prototype.toString);
// function
```
Every object has an prototype attached to it.


### Object.create() and Prototypes

When we want to to have control over the prorotypes we need to use ``Object.create``. The ``Object.create() method`` creates a new object with the specified prototype object and properties.

```javaScript
var animal = {
  color: "black"
};
console.log(typeof animal);
// object

var newAnimal = Object.create(animal);
console.log(newAnimal.color);
console.log(animal);
// {color: "black"}
console.log(newAnimal);
// {}__proto__: color: "black"__proto__: Object
```

The prototype of newAnimal is Animal. When we access newAnimal.color color will not be found directly under newAnimal.


###  Object.defineProperty()

``The Object.defineProperty() method`` defines a new property directly on an object, or modifies an existing property on an object, and returns the object

There are a lot of flags we can set on properties besides ``value``:
- ``writable`` - read-only unless true,
- ``enumerable`` - not listed unless true,
- ``configurable`` - can't be deleted and attributes can't be modified unless true.


```javaScript
var car = {};
Object.defineProperty(car, 'text', {
  value: 'This car is red.',
  // Make property writable
  writable: true,
  enumerable: true,
  configurable: false
});
console.log(car.text);
// This car is red

car.text = car.text + ' and is electric.';
console.log(car.text.);
// This car is red. and is electric. and is electric.

// Print every field in car
for (var i in car)
  console.log(i);
// text

```

Now we will check what happens if we set writable and configurable to false.

```javaScript
var bike = {};
Object.defineProperty(car, 'text', {
  value: 'This is a roadbike.',
  // Make property writable
  writable: false,
  enumerable: true,
  configurable: false
});

Object.defineProperty(car, 'text', {
  value: 'This car is a city bike'
});
console.log(car.text);
// Uncaught TypeError: Cannot redefine property: text
// at Function.defineProperty (<anonymous>)  at <anonymous>:1:8
```


### Other Object Functions
1. hasOwnProperty() function

The ``hasOwnProperty()`` method returns a Boolean indicating whether the object has the specified property as own (not inherited) property.

```javaScript
fruit = new Object();
fruit.color = 'yellow';
console.log(fruit.hasOwnProperty('color'));
// true
```

# 6. Functions

### Functions Names

An ``anonymous function`` is a function that was declared without any named identifier to refer to it. As such, an anonymous function is usually not accessible after its initial creation. It's easier to debug if we name function instead using anonymous functions.

```javaScript
var hireEmployee =  function myHireEmploeeFn(name) {
  throw('Error');
};

var action = hireEmployee;
action('JJ');
// Uncaught Error - myHireEmploeeFn
```

### Constructor Functions

Object is in fact constructor function. Constructor function always began with capitol letter and has access to the prototype.

Type of ``Object`` is not object but a ``constructor function``.
```javaScript
console.log(typeof Object);
// function
```

``When we work with constructor functions we do have access to the .prototype. When we work with JSON object we don't. The only way to access prototype using JSON is to use .proto``

Below example of the constructor function can be found. The ``this`` keyword refers to the current object (object that is passed to the function).

```javaScript
var Animal = function (type, name) {
  this.type = type;
  this.name = name;
};

var newAnimal = new Animal('cat', 'Neko');
console.log(typeof newAnimal);
// object

console.log(newAnimal.type);
// cat
console.log(newAnimal.name);
// Neko

console.log(typeof newAnimal.type);
// string
```

When we work with the constructor functions we have access to the prototype.

```javaScript
var Car = function (name) {
  this.name = name;
  this.price = function () {
  };
};

var car1 = new Car('ford');
var car2 = new Car('tesla');
console.log(car1.price === car2.price);
// false
console.log(typeof Employee.prototype);
// object
```

It's not good practice to add functions to the constructor functions because the function will be duplicated number of times. We will add it to constructor function.prototype.


```javaScript
var Employee = funcion (name) {
  this.name = name;
  this.salary = 50000;
};

Employee.prototype.giveRaise = function (raise) {
  this.salary += raise;
};

var e1 = new Employee('JJ');
var e2 = new Employee('JV');
console.log(e1.giveRaise === e2.giveRaise);
// true

e1.giveRaise(1000);
console.log(e1.salary);
```



### This keyword
Check type of ``this``:

```javaScript
console.log(typeof this);
// object

console.log(this === window);
// true -  this will not work in the node as it works on server

var name = 'Paulina';
console.log(this.name);
// Paulina
```

In the global environment this is assign to the object in following example:

```javaScript
var person = {
  name: "Paulina",
  updateSalary: function () {
    console.log(this);
  }
};

person.updateSalary();
// {name: "Paulina", updateSalary: ƒ}
```



### Calling functions using call() and apply()

The fundamental difference between ``call()`` and ``apply()`` is that call() accepts an argument list, while apply() accepts a single array of arguments.

When we want to have more control over this we can use call() and apply().

```javaScript
var animal = function (){
  console.log(this);
};
animal.call({type: 'elephant'});
// {type: "elephant"}
```
It is also possible to call functions with multiple variables:

```javaScript
var updateZipCode = function(newZip, country) {
  console.log(newZip + ' ' + country);
};
var zipCode = {
  zip: '1234'
};
updateZipCode.call(zipCode, '12345', 'us');
```

The ```apply()``` method calls a function with a given this value, and arguments provided as an array (or an array-like object).

```javaScript
var nums = [15, 64, 22, 3, 1];
var max = Math.max.apply(null, nums);
console.log(max);
// 64
```


### Closures
A ``closure`` is the combination of a function and the lexical environment within which that function was declared.

```javaScript
var priceDicount = function(price) {
  var discount = function() {
    currentPrice = price - 20;
    return currentPrice;
  };
  // gives access to the closure
  return discount;
};

var updateFn = priceDicount(70);
console.log(updateFn());
// 50
```

``Event handlers`` are common places to see closures.

### IIFEs

``IIFE (Immediately Invoked Function Expression)`` is a JavaScript function that runs as soon as it is defined. The main purpose of using IFFEs is to avoid code polluting the global space.
Example of IIFE:
```javaScript
(function () {
  console.log('Executed');
})();
// Executed!
```

```javaScript
var app = {};
(function (ns) {
  ns.name = 'MyApp'
})(app);
console.log(app.name);
// MyApp
```

### Recursion

``Recursion`` in JavaScript is, simply put, the ability to call a function from within itself. When constructing a recursive function in JavaScript there must always be a ``Leave Event``. Leave Event is control statement that allows the function to exit the recursive loop.

```javaScript
function countDown(n) {
  console.log(n);
  if(n >= 1) countDown(n-1);
}
countDown(5);
```
When the function can call itself it's better to name that function rather than keeping it anonymous.


# 7. Programming the BOM and DOM
DOM - Document Object Model
BOM- Browser Object Model

### The window Object and Timers
Timers are part of the browser and they can be accessed by the window object.

```javaScript
console.log(window.screenLeft + ', ' + window.screenRight);

console.log(window.innerWidth + ', ' + window.outerWidth);
```

Find the current day time and then

```javaScript
console.log(new Date().getSeconds());
setTimeout(function () {
  console.log(new Date().getSeconds());
}, 1000);
```

### System Dialogs

### The location Object

### Document Basics

### Query Selectors


# 8. Event Handlers

### Events
__User Interface Eevents:__
load - used when webpage is loaded
unload - when a page unloads
abort - if loading gets interrupted
error - if there is error in the browser
select - if users selects something in the browser (e.g with mouse or keyboard)
resize - one of the viewport resizes
scroll - fired when user scrolls the webpage

__Mouse and Mouse Wheel Events:__
click
dbclick
mousedown
mouseenter
mouseleave
mousemove
mouseout
mouseover

__Keyboard and Text Events:__
keydown  
keypress
keyup
TextInput

__Focus Events:__
blur
focus
focusin
focusout

__HTML5 Events:__

contextmenu
beforeunload

__Touch Events:__
touchstart
touchmove
touchend
touchcancel


### The Event Object


### Handling Events
### Event Bubbling

# 9. Built-in Objects and Functions
### Global Functions
### The Math Object
### The String Object
### Arguments

# 10. Miscellaneous JavaScript Topics
### Error Handling Using try, catchm
### Promises and Observables
### Strict Mode
### JSLint and JSHint
### Modular JavaScript
- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/join
- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/shift
- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/unshift
- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/concat
- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/reverse
- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/indexOf
- https://www.google.nl/search?safe=strict&ei=Cq19Wr69DofhkgXL3IbAAw&q=regexp+javascript&oq=regExp+javasc&gs_l=psy-ab.3.0.0i67k1j0i10k1l4j0l5.1388.2365.0.3087.7.7.0.0.0.0.119.544.5j2.7.0....0...1c.1.64.psy-ab..0.7.542...0i10i67k1.0.dwsXx1XGAik
- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/proto
- https://medium.com/@zfrisch/understanding-recursion-in-javascript-992e96449e03
