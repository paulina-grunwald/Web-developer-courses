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

// Export Task
module.exports = Task;
