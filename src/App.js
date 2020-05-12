import React from 'react';
import logo from './logo.svg';
import './App.css';
import Avatar from 'avataaars'
function App() {
  return (
    <div className="App">
      <header className="App-header">
        <Avatar
          avatarStyle='Circle'
          topType='ShortHairShortWaved'
          accessoriesType='Prescription02'
          hairColor='Black'
          facialHairType='BeardLight'
          facialHairColor='Black'
          clotheType='BlazerShirt'
          eyeType='Default'
          eyebrowType='Default'
          mouthType='Default'
          skinColor='Brown'
        />
        <p>
          Edit <code>src/App.js</code> and save to reload.
        </p>
        <a
          className="App-link"
          href="https://reactjs.org"
          target="_blank"
          rel="noopener noreferrer"
        >
          Learn React
        </a>
      </header>
    </div>
  );
}

export default App;
