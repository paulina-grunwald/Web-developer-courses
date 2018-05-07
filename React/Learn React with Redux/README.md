
[Learning React with Redux and Flux: Create cutting-edge applications with Redux, Flux, and React]
(https://www.safaribooksonline.com/library/view/learning-react-with/9781787285996/)


# 1. Getting started with React

1. Create React app globally:

  ``
npm install -g create-react-app
``
2. Create new React App:

  ``
create-react-app app-name
``
3. Start app:

  ``npm start``

Now if you run npm start in the project folder and open http://localhost:3000 in the browser.

React is a declarative, efficient, and flexible JavaScript library for building user interfaces.

We use ``React DOM`` to bind React application to an element in the HTML document. App component contains hierarchy of react components that create virtual DOM. Virtual DOM is rendered to real HTML using the React DOM library.

In React components can render other components as their children. There are two types of components: ``component class`` and ``component ``.

[Styled components](https://github.com/styled-components/styled-components) tilises tagged template literals to style your components. It removes the mapping between components and styles. This means that when you're defining your styles, you're actually creating a normal React component, that has your styles attached to it.

Install styled components:
``
npm install --save styled-components
``

# References:
- https://medium.com/@joshuawcomeau/array-filter-as-a-react-component-8a6570a2be82
- https://www.styled-components.com/docs/basics#getting-started
