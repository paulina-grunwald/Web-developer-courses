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
This is how it works:

The switch expression is evaluated once.
The value of the expression is compared with the values of each case.
If there is a match, the associated block of code is executed. The if-else ladder is of type strict condition check, while switch is of type jump value catching.

__Key Differences Between if-else and switch__:

1. Expression inside if statement decide whether to execute the statements inside if block or under else block. On the other hand, expression inside switch statement decide which case to execute.
2. You can have multiple if statement for multiple choice of statements. In switch you only have one expression for the multiple choices.
If-esle statement checks for equality as well as for logical expression . On the other hand, switch checks only for equality.
The if statement evaluates integer, character, pointer or floating-point type or boolean type. On the other hand, switch statement evaluates only character or a integer datatype.
Sequence of execution is like either statement under if block will execute or statements under else block statement will execute. On the other hand the expression in switch statement decide which case to execute and if you do not apply a break statement after each case it will execute till the end of switch statement.
If expression inside if turn outs to be false, statement inside else block will be executed. If expression inside switch statement turn out to be false then default statements is executed.
It is difficult to edit if-else statements as it is tedious to trace where the correction is required. On the other hand it is easy to edit switch statements as they are easy to trace.
8.6k Views · 8 Upvotes

### 2. For Loops
### 3. Revisiting exercise from Volume 1
### 4. While Loops
### 5. Functions
### 6. Additional Practice
### 7. Arrays
### 8. Looping over an Array
### 9 Creating a JavaScript file
### 10. Plan then Create



# Other references
- https://www.w3schools.com/js/js_switch.asp
- https://www.quora.com/What-is-the-difference-between-switch-and-if-else-statements-Which-is-better-in-different-cases-Why
