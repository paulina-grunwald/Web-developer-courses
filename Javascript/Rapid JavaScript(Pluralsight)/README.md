# Rapid JavaScript Training


# 1. JavaScript Basics

- It is not allowed to embed comment in comment in JavaScript.



# Variables, Types, and Scope

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

__Primitive Types__

__Global Scope__

__Function Scope__
