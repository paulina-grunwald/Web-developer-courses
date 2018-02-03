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


__Primitive Types__


__Global Scope__

__Function Scope__
