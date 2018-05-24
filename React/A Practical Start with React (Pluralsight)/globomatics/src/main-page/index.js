import React, { Component } from 'react';
import logo from './logo.svg';
import './main-page.css';
import Header from './header';

class App extends Component {
  fetchHouses = () => {
    fetch('/houses.json')
    .then(rsp => rsp.json())
    .then(allHouses => {
      this.allHouses = allHouses;
    })
  }

  render() {
    return (
      <div className="container-fluid">
        <Header subtitle="Providing houses world wide"/>
      </div>
    );
  }
}

export default App;
