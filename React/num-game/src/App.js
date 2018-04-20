import React, { Component } from 'react';
import logo from './logo.svg';
import './App.css';

import ReactDOM from 'react-dom';
import 'font-awesome/css/font-awesome.min.css'

 

var FontAwesome = require('react-fontawesome');
 


const Stars = (props) => {
  return (
      <div>
        <i className="fa fa-star"></i>
        <i className="fa fa-star"></i>
        <i className="fa fa-star"></i>
        <i className="fa fa-star"></i>
      </div>
    );
}


class App extends Component {
  render() {
    return (
      <div className="App">
        <h3>Play Nine</h3>
        <Stars />
      
      </div>
    );
  }
}

export default App;
