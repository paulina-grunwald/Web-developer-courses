var task = {
  title: 'My Title',
  description: 'My description'
};

Object.defineProperty(task, 'toString', {
  value: function () {
    return this.title + ' ' + this.description;
  },
  writable: false,
  enumerable: false,
  configurable: false
});

// Object.defineProperty(task, 'toString', {
//  enumerable: false
//});

var urgentTask = Object.create(task);
Object.defineProperty(urgentTask, 'to String', {
  value: function () {
    return this.title + ' is urgent';
  },
  writable: false,
  enumerable: false,
  configurable: false
});

console.log(Object.keys(task));

console.log(urgentTask.toString());
