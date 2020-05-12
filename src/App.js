import React, { Fragment } from 'react';

import CssBaseline from '@material-ui/core/CssBaseline';
import { Route } from 'react-router-dom';

import Home from './pages/Home';
import Resume from './pages/Resume';
import Portfolio from './pages/Portfolio';

function App() {
  return (
    <Fragment>
      <CssBaseline />
      <Route exact path="/" component={Home} />
      <Route exact path="/resume" component={Resume} />
      <Route exact path="/portfolio" component={Portfolio} />
    </Fragment>
  );
}

export default App;
