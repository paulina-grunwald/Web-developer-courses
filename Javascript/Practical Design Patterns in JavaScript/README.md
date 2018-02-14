# Key learning points from Pluralsight [Practical Design Patterns in JavaScript](https://app.pluralsight.com/library/courses/javascript-practical-design-patterns/table-of-contents)

>Witten by Paulina Grunwald


### Content table:

1. Objects in JavaScript
2. Creational Design Patterns
3. Structural Design Patterns
4. Behavioral Design Patterns

# 1. Objects in JavaScript

### 1.1 Creating Objects in JavaScript

```JavaScript
//Create new object using {}
var obj = {}

// Create new object using Object.create
var nextObj = Object.create(Object.prototype);

// Create a new object using new keyword
var lastObj = new Object();
```

### 1.2 Reading and Writing Attributes

```Javascript
// Use dot notation
var object = {};
// Add parameter and asign new value to it (here it's a string)
obj.param = 'new value';
console.log(obj.param); //new value


// Use square bracket notation
var obj = {};
obj['param'] = 'new value';
console.log(obj['param']); //new value
```

Advantage of bracket notation is that it can be used using variables.

### 1.3 Demo - Create task application

1. Create task object
``` JavaScript  
var task = {};

task.title = 'My task';
task.description = 'My description';

task.toString = function () {
  return this.title + ' ' + this.description;
};

console.log(task.toString());
console.log(task.description)
```

# 2. Creational Design Patterns
Creational patterns deal with creation of a new object. There are numeber of creational design patterns:
- Constructor
- Module
- Factory
- Singleton


# 3. Structural Design Patterns
Structural design pattern deal with the make up of the objects themselves.
The most popular structural design patterns are:
- Decorator
- Facade
- Flyweight

# 4. Behavioral Design Patterns
Behavioral

The most popular structural design patterns are:
- command
- mediator
- observer

### REFERENCES
- [Design Patterns, Elements of Reusable Object-Oriented Software](https://github.com/dieforfree/edsebooks/blob/master/ebooks/Design%20Patterns%2C%20Elements%20of%20Reusable%20Object-Oriented%20Software.pdf)
