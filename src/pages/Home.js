import React, { Fragment } from 'react';

import Particles from 'react-particles-js';
import { makeStyles } from '@material-ui/core/styles';
import lightBlue from '@material-ui/core/colors/lightBlue';

import Navbar from '../components/Navbar';
import Header from '../components/Header';

const useStyles = makeStyles({
  particlesCanvas: {
    position: 'absolute',
    opacity: 0.4,
  },
});

const Home = () => {
  const classes = useStyles();
  return (
    <Fragment>
      <Navbar />
      <Header />
      <Particles
        canvasClassName={classes.particlesCanvas}
        params={{
          particles: {
            number: {
              value: 50,
              density: {
                enable: true,
                value_area: 900,
              },
            },
            shape: {
              type: 'circle',
              stroke: {
                width: 1,
                color: lightBlue[900],
              },
            },
            size: {
              value: 2,
              random: true,
              animation: {
                enable: true,
                speed: 10,
                size_min: 0.1,
                sync: true,
              },
            },
            opacity: {
              value: 1,
              random: true,
              animation: {
                enable: true,
                speed: 1,
                opacity_min: 0.3,
                sync: true,
              },
            },
            line_linked: {
              shadow: {
                enable: true,
                color: lightBlue[500], //'#3CA9D1',
                blur: 1,
              },
            },
          },
        }}
        style={{
          width: '100%',
          // backgroundColor: 'green'
        }}
      />
    </Fragment>
  );
};

export default Home;
