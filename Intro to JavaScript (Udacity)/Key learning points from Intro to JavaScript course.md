# Key learning points from Udacity [Intro to JavaScript course](https://eu.udacity.com/course/intro-to-javascript--ud803)


## General overview

__JavaScript__ is one of the 3 languages all web developers must learn: 1. HTML to define the content of web pages. 2. CSS to specify the layout of web pages. 3.

 __Console.log__ is used to display content to the JavaScript console. Run the following code in the console:

```javascript
console.log("hiya friend!");
```

This is other example of JavaScript code. This code represents a __loop__:
```javascript
for (var i = 0; i < 10; i++) {
  console.log(i);
}
```

This is how you can add two variables:
```javascript
for(var a=5; b=4;){
	console.log(a+b);
}
```

This code allows us to change h1 heading to red color:
```javascript
document.getElementsByTagName("h1"
)[0].style.color = "#ff0000";
```

This code adds image to the website every time we click on it:
```javascript
document.body.addEventListener('click', function () {
     var myParent = document.getElementById("Banner");
     var myImage = document.createElement("img");
     myImage.src = 'https://thecatapi.com/api/images/get?format=src&type=gif';
     myParent.appendChild(myImage);
     myImage.style.marginLeft = "160px";
});
```

## Data Types & Variables

In JavaScript you can perform arithmetical operations and comparisions.

Operator	Meaning:
```
<	Less than
>	Greater than
<=	Less than or Equal to
>=	Greater than or Equal to
==	Equal to
!=	Not Equal to
```

In Java script comments can be introduced using __//__ (for one line comment) or ```/*  */``` for a block of comments.

Quotes need to be used to signify the strong e.g "this is a string".

Storing the value of a string in a variable is like packing it away for later use.

```javascript
var greeting = "Hello";
```
You can also change the start of the greeting by __reassigning__ the variable greeting to a new string value.

```javascript
greeting = "Hola";
greeting + " World!";
```

It's recommended to use __camelCase__ wen creating names of variables in javascript.

__***Exercise 1***__

Use the Celsius-to-Fahrenheit formula to set the fahrenheit varible: F = C x 1.8 + 32. Log the fahrenheit variable to the console.
 ```javascript
var celsius = 12;
var fahrenheit = celsius * 1.8 + 32;
console.log(fahrenheit);
```

__Indexing__ works the same way as in python.
```javascript
var name = "James";
name[0];
//Returns: "J"
```
__Quotes within strings__ - If you want to use quotes inside a string, and have JavaScript not misunderstand your intentions, you’ll need a different way to write quotes. Thankfully, JavaScript has a way to do this using the backslash character ( __\__ ). e.g
```code
console.log("The man whispered, \"please speak to me.\"")
```

__Special characters__
```
Code     Character
\\	     \ (backslash)
\"	     '' (double quote)
\'	     ' (single quote)
\n	     newline
\t	     tab
```

__Null, Undefined, and NaN__

__null__ - data type that has no value
```javascript
var x = null;
```

__undefined__ - data type that indicates absence of value
```javascript
var x;
console.log(x);
```
__NaN__ stands for __"Not-A-Number"__ and it's often returned indicating an error with number operations. For instance, if you wrote some code that performed a math calculation, and the calculation failed to produce a valid number, NaN might be returned.

__implicit type coercion__ - you do not need to specify data type writing javascript code. The code is interpreted by JavaScript engine and it will be automatically converted into the "appropiate" data types.

 __A strongly typed language__ is a programming language that is more likely to generate errors if data does not closely match an expected type. Because JavaScript is loosely typed, you don’t need to specify data types; however, this can lead to errors that are hard to diagnose due to implicit type coercion.

__Strict equality__ - normally used in JavAscipt to perfom comparision (===)

__Semicolons__ - In JavaScript semicolons make it clear where one statement ends and another begins.

## Conditionals

# REFERENCES
- [JavaScript style guide](https://github.com/udacity/frontend-nanodegree-styleguide)
