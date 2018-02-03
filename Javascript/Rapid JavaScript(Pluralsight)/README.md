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
You can put strings in single or double quotes. It makes no difference.

We can

```javaScript
console.log('Nike\'s Order');

```

__Primitive Types__

__Global Scope__

__Function Scope__
