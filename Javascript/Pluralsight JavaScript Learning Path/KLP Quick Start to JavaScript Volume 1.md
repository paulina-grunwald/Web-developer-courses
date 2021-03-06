# Pluralsight - Quick Start to JavaScript: Volume 1

#### Overview

```JavaScript
//print "Hello World"
console.log("Hello World");
//print warning
console.warn("Warning!");
//print error
console.error("Error!")

```

Creating variable, using prompt and alert:
```JavaScript
//print the prompt
var myFavouriteMovie = prompt("What is your favorite movie?");
alert("My favorite movie is" + " " + myFavouriteMovie);
```

Creating random number using __Math.random()__:

```JavaScript
/*Generate random number*/
var randomNumber = Math.random();
alert(randomNumber);
```

#### Control Flow
Using __control flow__ allows us to run code only under certain conditions. For that we can use __if else__ statements.

```JavaScript
var answer = prompt("What is the capital of New York?")

if(answer === "Albany"){
  alert("You are correct!");
} else {
  alert("You are wrong!");
}
```

<em>__Exercise__</em>: Generate a random number between 0 and 15. If the result is divisible by 3 alert "fizz". If the number is divisible by 5, alert "buzz", otherwise print the number to the console. If a number is divisible by 3 AND 5, alert fizzbuzz. If a random number is 0, it should not return fizz, buzz or fizzbuzz.

```JavaScript
var number = Math.round(Math.random()*15);
//var number = 15;

if(number%3 === 0 && number !=0){
  if(number%5 === 0){
    alert("fizzbuzz");
  }
  else {
    ("fizz");
  }
}
else if (number%5 === 0 && number != 0){
  alert("buzz");
}
else {
  console.log(number);
}

}

```
!!Always make sure you rest all the conditions

__Math.round__() is rounding function to the numbers with decimals.

<em>__Exercise__</em>: Create a text adventure game with JS. Let's set a scenario in which we encounter a zombie, choose a weapon to fight the zombie with, and have a 50/50 chance of either defeating the zombie or getting bitten and loosing the game.

```JavaScript
alert("It's a zombie apocalypse. Zombie bursts through the door!");
var weapon = prompt("What weapon do you choose? Bow, arrow, an axe or a rubber chicken?");

//we have 50/50 chance to get 0 or 1
var randomNumber = Math.round(Math.random());

alert("You attack the zombie with a "+ weapon+"!");

if(randomNumber === 0){
  alert("The zombie bites you. You loose!");
} else if (randomNumber === 1) {
  alert("You kill the zombie with your" + " " + weapon)+". You win!";
}
```


__VOLUME1 Assignment__
Create adventure game using:
- strings,
- numbers,
- variables,
- if/else
- math.round()
- prompt()
- alert()
- confirm()
- Operators like ===, !=, &&, >, <, +, -, *


```JavaScript

// create random number between 1-6
var randomNumber = Math.round(Math.random()*6)
// create coinThrow number between 1-2
var coinThrow = Math.round(Math.random()*2)

alert("You are located in the forest in which there are a lot of monsters and other dangerous things. Be careful! You will have to throw the dice in order to go through the forest.");

//Start or exit the game
var startGame = prompt("Do you want to start the game and throw the dice?").toLowerCase();
if (startGame === "yes"){
  console.log("Ok! Now you can throw the dice");
}
else{
  console.log("Now you exit the game!");
}

console.log("You have thrown the dice and you are allowed to make " + randomNumber + " steps.");

alert("You are passing near very big oak tree. You can see big squirrel on that tree. Flip the coin - if you get heads you will pass safely and if you get tail squirrel will bite you.");
if(coinThrow === 1){
  console.log("You get heads. You can pass safely!");
} else {
  console.log("you are bitten by the squirrel and you die!");
  console.log("GAME OVER");
}

```
