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
console.log(greeting);
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
ESCAPING CHARACTTERS:
__Quotes within strings__ - If you want to use quotes inside a string, and have JavaScript not misunderstand your intentions, you’ll need a different way to write quotes. Thankfully, JavaScript has a way to do this using the ````backslash character ( __\__ )````. e.g

```JavaScript
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

__implicit type coercion__ - you do not need to specify data type writing javascript code. The code is interpreted by JavaScript engine and it will be automatically converted into the "appropriate" data types.

 __A strongly typed language__ is a programming language that is more likely to generate errors if data does not closely match an expected type. Because JavaScript is loosely typed, you don’t need to specify data types; however, this can lead to errors that are hard to diagnose due to implicit type coercion.

__Strict equality__ - normally used in JavAscipt to preform comparisons (===)

__Semicolons__ - In JavaScript semicolons make it clear where one statement ends and another begins.

Data types:
- Number
- String
- Boolean (A boolean represents a logical entity and can have one of two literal values: true, and false.)
- Symbol
- Null (A variable that contains null contains no valid number, string, boolean, array, or object. You can erase the contents of a variable (without deleting the variable) by assigning it the null value.)
- Undefined(The undefined value is returned when you use an object property that does not exist, or a variable that has been declared, but has never had a value assigned to it.)

JavaScript is a loosely typed or dynamic language, meaning you don't need to declare a variable's type ahead of time and the language automatically determines a variable's type while the program is being processed.


## Conditionals

```javascript
var price = 15.00;
var money = 20.00;

if(money >= price) {
  console.log("buy the hammer");
} else {
  console.log("don't buy hammer");
}
```
__Else if statement example__


```javascript
var weather = "sunny";

if (weather === "snow") {
  console.log("Bring a coat.");
} else if (weather === "rain") {
  console.log("Bring a rain jacket.");
} else {
  console.log("Wear what you have on.");
}
```

__Exercise__
Write an if...else statement that prints `even` if the number is even and prints `odd` if the number is odd.  Note - make sure to print only the string "even" or the string "odd"

```javascript
var number = 13;

if (number%2 === 0) {console.log("even");

} else {console.log("odd");

}
```


__Logical Operators__
1. value1 __&&__ value2 - Logical AND - returns true if both value1 and vale 2 evaluate to true.
2. value1 __||__ value2 - Logical OR - returns true if either value1 or value2 (or even both!) evaluate to true.
3. !value1 - Logical NOT - returns the opposite of value1. If value1 is true then !value1 is false.

__Short-circuiting__ - describes the event when later arguments in a logical expression are not considered because the first argument already satisfies the condition.

__Exercise__:

```javascript
var colt = "not busy";
var weather = "nice";

if (colt === "not busy" && weather === "nice") {
  console.log("go to the park");
}

```
__Exercise__:

Write a single if statement that logs out the message:
"I'd like two scoops of __________ ice cream in a __________ with __________."
 ...only if:
 - flavor is "vanilla" or "chocolate"
 - vessel is "cone" or "bowl"
 - toppings is "sprinkles" or "peanuts"

```javascript
var flavor = "chocolate";
var vessel = "bowl";
var toppings = "sprinkles";

// Add your code here

if (((flavor === "vanilla")|| (flavor=== "chocolate"))
&& ((vessel==="cone") || (vessel === "bowl"))
&& ((toppings === "sprinkles") || (toppings === "peanuts")))
{console.log("I'd like two scoops of "+ flavor +" ice cream in a "+
    vessel+" with "+toppings+".");
}

```

__Thruthy and Falsy__
Every value in JavaScript has an inherent boolean value. When that value is evaluated in the context of a boolean expression, the value will be transformed into that inherent boolean value.

A value is ``falsy`` if it converts to false when evaluated in a boolean context.

A value is ``truthy`` if it converts to true when evaluated in a boolean context


List of all of the falsy values:
``
- the Boolean value false
- the null type
- the undefined type
- the number 0
- the empty string ""
- the odd value NaN
``
List of some other examples of truthy values:
``
- true
- 42
- "pizza"
- "0"
- "null"
- "undefined"
- {}
- []
``

__Ternary operator__

Example of usage of ternary operator:
```JavAscipt
var isGoing = true;
var color = isGoing ? "green" : "red";
console.log(color);
```

# REFERENCES
- [JavaScript style guide](https://github.com/udacity/frontend-nanodegree-styleguide)
- https://www.hackerrank.com/challenges/js10-data-types/topics
- https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Grammar_and_types#Using_special_characters_in_strings
