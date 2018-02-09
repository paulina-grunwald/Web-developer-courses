# Rapid JavaScript Training


# 1. JavaScript Basics

- It is not allowed to embed comment in comment in JavaScript.



# 1. Variables, Types, and Scope

__Hoisting__ - it refers to having access to variables before they are declared. This concept doesn't exist in other languages. Hoisting works with variables and functions. It can be also called as ```two pass compilation``` in JavaScript.

Pass 1: All declarations are located and identifiers are known by the compiler.
Pass 2: Execution occurs in Pass2 because all variables are known from Pass1, they may be accesses before they are declared.

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
### Boolean values
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

### undefined and null

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

### Global scope
In node.js Global would be the global object but in browser it is window.


# Operators
### Addition

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

### Subtraction


# Array and Reference Types

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

# References

- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/join
- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/shift
- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/unshift
- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Array/concat
