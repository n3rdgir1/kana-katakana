import React, { Component } from 'react';
import { BrowserRouter, Switch, Route, Link } from 'react-router-dom';
import Home from './Home';
import Hiragana from './Hiragana';
import Katakana from './Katakana';
import NotFound from './NotFound';

class App extends Component {
  render() {
    return (
      <BrowserRouter>
        <div className="App">
          <header className="App-header">
            <h1 className="App-title">Kana Nav</h1>
            <Link to='/katakana'> Katakana </Link>
            <Link to='/hiragana'> Hiragana </Link>
          </header>

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
