# Pluralsight - Quick Start to JavaScript: Volume 1

#### Overview

Creating variable, using prompt and alert:
```JavaScript

myFavouriteMovie = "Totoro"
var myFavouriteMovie = prompt("What is your favourite movie?");
alert("My favourite movie is" + " " + );
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
- Opertors like ===, !=, &&, >, <, +, -, *,
