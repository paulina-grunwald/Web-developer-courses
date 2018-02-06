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

```Primitive Type Storage```

```javaScript
var n = 42;
var a = n;
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
JavaScript will copy pointer from o to o2 but will not copy the object. The pointer will point to the memory location (it is the same for o and o2).

```javaScript
o2.name = "Jack";
console.log(o2);
// {name: "Jack"}
console.log(o);
// {name: "Jack"}
```
If we change value of o2 it will automatically change the value of o as they have the same pointers to the memory location.
