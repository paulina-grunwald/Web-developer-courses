// This is update task.js application that shows usage of
// contructor function

var Task = function(name) {
  this.name = name;
  this.completed = false;
}

Task.prototype.complete = function(){
  console.log('completing task: ' + this.name)
  this.completed = true;
};

Task.prototype.save = function() {
  console.log('saving Task: ' + this.name);
};


var task1 = new Task('Wash dishes');
var task2 = new Task('Clean floor');
var task3 = new Task('Do the homework');
var task4 = new Task('Cook dinner');

task1.complete();
task2.save();
task3.save();
task4.save();
