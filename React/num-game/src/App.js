import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';
import ReactDOM from 'react-dom';
import 'font-awesome/css/font-awesome.min.css'
import 'bootstrap/dist/css/bootstrap.min.css';
 
var _ = require('lodash');
var FontAwesome = require('react-fontawesome');


const Stars = (props) => {

  const numberOfStarts = 1 + Math.floor(Math.random()*9);
  

  return (
    <div className="col-5">
      {_.range(numberOfStarts).map(i => 
        <i key = {i} className="fa fa-star"></i>
      )}
    </div>
    );
}

const Button = (props) => {
  return (
      <div className="col-2">
        <button>=</button>
      </div>
    );
}

const Answer = (props) => {
  return (
      <div className="col-5">
        <span>5</span>
        <span>6</span>
      </div>
    );
};


const Numbers = (props) => {
  return (
    <div className="card text-center">
      <div>
        {Numbers.list.map((number, i) =>
          <span key={i}>{number}</span>
        )}
      </div>

    </div>
  )
};

Numbers.list = _.range(1,10);

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
  };
}

export default App;
