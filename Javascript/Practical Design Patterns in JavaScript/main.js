// Require module
var Task = require('./task_cf');

var task1 = new Task('Wash dishes');
var task2 = new Task('Clean floor');
var task3 = new Task('Do the homework');
var task4 = new Task('Cook dinner');

task1.complete();
task2.save();
task3.save();
task4.save();
