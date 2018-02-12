# KEY LEARNING POINTS FROM REACT TRAINING PATH ON PLURALSIGHT
[Here]( https://app.pluralsight.com/paths/skills/react) you can find link to the course path.

#### Content:
1. React.js: Getting Started
2. React Fundamentals
3. Building Applications with React and Flux
4. Building Applications with React and Redux in ES6
5. Building Scalable React Apps
6. Styling React Components
7. Advanced React.js
8. Advanced React.js
9. Building a Full-Stack App with React and Express


# React.js: Getting Started

## 1. Overview
React is a framework that uses javascript and builds user interfaces. Javascript library for building uder interfaces include: ```model```, ```controller``` and ```view```. On contrary React uses only ```view```.

React has three main design concepts:
- ```Components```:
  - Like functions
  - components are reusable and can contain other components,
  - private state can be used,
- ```Reactive updates```
  - When the state of the component changes the user interface it represents changes as well,
  - React updates automatically DOM when needed,
- ```Virtual views in memory```
  - write HTML in JavaScript,
  - Tree reconciliation.

##### Virtual DOM
In React, for every DOM object, there is a corresponding "virtual DOM object". A virtual DOM object is lightweight. Think of manipulating the virtual DOM as editing a blueprint, as opposed to moving rooms in an actual house.

##### React components

React components:
  - Function compontent,
  - Class Component (includes props and internal state)

Properties are called ``props`` in react. State can be changed but props are fixed values. ```Class component can change their internal state but not their properties.```

To create react component we need to simply define a function.
Properties in React are immutable.
The State of the component can be accessed only by this component.
Create button component using React and JSX:

```JavaScript
const Button = (props) => {
	return (
  	<button>GO</button>
  );
};
ReactDOM.render(<Button/>, mountNode);
```

Now let's create class component so we can add a state.

```javascript

class Button extends React.Component {
	state = {counter: 0};

  handleClick = () => {
  	this.setState((prevState) => {
    	return {
    	counter: this.state.counter + 1
      }});
  };

	// Render() returns the compontent's JSX
	render() {
  return (
  	<button onClick ={this.handleClick}>
    	{this.state.counter}
    </button>
  );
  }
}

ReactDOM.render(<Button/>, mountNode);
```

# REACT Fundamentals

## 1. Components


# References:
- https://app.pluralsight.com/paths/skills/react
-  https://www.accelebrate.com/blog/the-real-benefits-of-the-virtual-dom-in-react-js/
- https://www.codecademy.com/articles/react-virtual-dom
