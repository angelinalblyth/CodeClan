import React, { Component } from 'react';
import PiggyBank from './PiggyBank';

class App extends Component {
  render() {
    return (
      <PiggyBank
        title="PiggyBank"
        owner="Angelina"
        depositAmount = {100}
      />
    );
  }
}

export default App;
