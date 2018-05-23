import React, { Component } from 'react';
import { BrowserRouter, Switch, Route, Link } from 'react-router-dom';
import Home from './Home';
import Hiragana from './Hiragana';
import Katakana from './Katakana';
import NotFound from './NotFound';
import './App.css';

class App extends Component {
  render() {
    return (
      <BrowserRouter>
        <div className="main">
          <nav className="navbar navbar-expand-lg navbar-light bg-light">
            <a className="navbar-brand" href="/">Kanas</a>
            <div className="navbar" id="navbarNav">
              <Link to='/katakana' className="nav-item nav-link"> Katakana </Link>
              <Link to='/hiragana' className="nav-item nav-link"> Hiragana </Link>
            </div>
          </nav>

          <Switch>
            <Route exact path='/' component={Home}/>
            <Route path='/katakana' component={Katakana}/>
            <Route path='/hiragana' component={Hiragana}/>
            <Route component={NotFound}/>
          </Switch>

        </div>
      </BrowserRouter>
    );
  }
}

export default App;
