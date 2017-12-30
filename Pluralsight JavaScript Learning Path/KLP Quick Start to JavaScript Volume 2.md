# Pluralsight - Quick Start to JavaScript: Volume 2

### 1. Switch Statements

Another way of using control flow is using __switch statement__. This is similar to how an if/else statement check for multiple "if" conditions, and runs code if those conditions have been met.

Syntax of switch statements:
```JavaScript
switch(expression) {
    case n:
        code block
        break;
    case n:
        code block
        break;
    default:
        code block
}

```
<em>This is how it works</em>:

The switch expression is evaluated once.
The value of the expression is compared with the values of each case.
If there is a match, the associated block of code is executed. The if-else ladder is of type strict condition check, while switch is of type jump value catching.

__Key Differences Between if-else and switch__:

1. Expression inside if statement decide whether to execute the statements inside if block or under else block. On the other hand, expression inside switch statement decide which case to execute.
2. You can have multiple if statement for multiple choice of statements. In switch you only have one expression for the multiple choices.
3. If-esle statement checks for equality as well as for logical expression . On the other hand, switch checks only for equality.
4. The if statement evaluates integer, character, pointer or floating-point type or boolean type. On the other hand, switch statement evaluates only character or a integer datatype.
5. Sequence of execution is like either statement under if block will execute or statements under else block statement will execute. On the other hand the expression in switch statement decide which case to execute and if you do not apply a break statement after each case it will execute till the end of switch statement.
6. If expression inside if turn outs to be false, statement inside else block will be executed. If expression inside switch statement turn out to be false then default statements is executed.
It is difficult to edit if-else statements as it is tedious to trace where the correction is required. On the other hand it is easy to edit switch statements as they are easy to trace.

<em>__Exercise using Switch statements:__</em>

```JavaScript
var sign = prompt("What is your astrological sign?").toLowerCase();

alert("Sensing your future...");

switch(sign){
  case "taurus":
    alert("An unexpected visit or call from a friend could bring exciting news. You might decide to get together with this person and celebrate. ");
    break;
  case "viro":
    alert("You will be successful! ");
    break;
  case "leo":
    alert("You will have a bad day today!");
    break;
  default:
    alert("Please type a valid sign");
    break;

}
```

### 2. For Loops

__Loops__ are another form of control flow. They will loop through a block of code until an original specified condition is no longer true.

<em>__Exercise 1:__</<em>
```JavaScript
//print numbers 1-10 to the console
//++ it's increment
for (var i = 0; i < 11; i++){
  console.log(i);
}

### 3. Revisiting exercise from Volume 1

```
<em>__Exercise 2:__</em>
Print all numbers from 1 to 100 with three exceptions:
- if number is divisible by 3, print fizz
- if number is divisible by 5, print buzz
- if number is divisible by 3 and 5, print fizzbuzz


```JavaScript
//print variable from 0 to 100
for (var i = 0; i <= 100; i++ ){
  if( i%3 === 0){
    if (i%5 === 0){
      console.log("fizzbuzz");
    }
    else {
      console.log("fizz")
    }
  }
  else if (i%5 === 0) {
    console.log("buzz");
  }
  else {
    console.log("i");
  }
}
```


### 4. While Loops
__Do...while__ loops execute once and continue as long as the specified confition is true.

```JavaScript
//do..while loop
var i = 0;
do{
  console.log("i");
  i++;
}
  while(i < 11);

/*similar example with while loop*/
var i = 0;
while (i < 11){
    console.log(i)
    i++;
}
```

For loop is useful if we know how many times the loop will have to run. If we are unsure of how many times our loop will have to run it's better to use do..while or while loops.

### 5. Functions
Functions allow us to associate a command with a action.

Example of a function syntax:
```JavaScript
function sayHello(name){
  console.log("Oh hi " + name)
}
//run function
sayHello("Mark");
```

### 6. Arrays

```JavaScript
//create array
var friends = ["Mark", "Paulina", "Alex"]

//call Mark
console.log([0]);

//add item to the array on 3rd position
friends[3] = "Mike"

```
### 7. Looping over an Array
This example will show how to use array and loop in combination.

```JavaScript
//create array
var friends = ["Mark", "Paulina", "Alex", "Maria", "Marco", "Joseph"];

function greetFriends(){
  for(var i = 0; i < friends.length; i++){
    console.log("Hello " + friends[i]);
  }
}

greetFriends();
```

### 8 Creating a JavaScript file
See Assignment 1

### 9. Plan then Create
See Assignment 2


# Other references
- https://www.w3schools.com/js/js_switch.asp
- https://www.quora.com/What-is-the-difference-between-switch-and-if-else-statements-Which-is-better-in-different-cases-Why
