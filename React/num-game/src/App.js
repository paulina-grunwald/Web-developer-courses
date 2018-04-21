import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import ReactDOM from 'react-dom';
import 'font-awesome/css/font-awesome.min.css'
import 'bootstrap/dist/css/bootstrap.min.css';
 

var FontAwesome = require('react-fontawesome');
 


const Stars = (props) => {

  const numberOfStarts = 5;
  let stars = [];
  for (let i=0; i < numberOfStarts; i++) {
    stars.push(<i key={i} className="fa fa-star"></i>);
  }

  return (
    <div className="col-5">
      {stars}
    </div>
    );
}

const Button = (props) => {
  return (
      <div className="col-2">
        <button>+1</button>
      </div>
    );
}

const Answer = (props) => {
  return (
      <div className="col-5">
        ...
      </div>
    );
}


const Numbers = (props) => {
  return (
    <div className="card text-center">
      <div>
        <span>1</span>
        <span className="selected">2</span>
        <span className="used">3</span>
        <span>4</span>
      </div>

    </div>
  )
}

class App extends Component {
  render() {
    return (
      <div className="App container">
        <h2>Play Nine</h2>
        <hr />
        <div className="row">
          <Stars />
          <Button />
          <Answer />
        </div>
        <br />
        <Numbers />
        
      </div>
    );
  }
}

export default App;
