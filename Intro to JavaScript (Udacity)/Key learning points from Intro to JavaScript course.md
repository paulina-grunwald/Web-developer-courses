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

__***Exercise***__
Use the Celsius-to-Fahrenheit formula to set the fahrenheit varible: F = C x 1.8 + 32. Log the fahrenheit variable to the console.
 ```javascript
var celsius = 12;
var fahrenheit = celsius * 1.8 + 32;
console.log(fahrenheit);
```



# REFERENCES
- [JavaScript style guide](https://github.com/udacity/frontend-nanodegree-styleguide)
