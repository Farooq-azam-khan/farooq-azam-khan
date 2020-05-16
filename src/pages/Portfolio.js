import React from 'react'

import {
  Box,
  Grid,
} from '@material-ui/core'


import Navbar from '../components/Navbar';

import PorfolioStyles from '../PortfolioContent/PorfolioStyles'
import D3Js from '../PortfolioContent/D3Js'
import MySongify from '../PortfolioContent/MySongify'
import Jarvis from '../PortfolioContent/Jarvis'
import SportsTracker from '../PortfolioContent/SportsTracker'

const Portfolio = () => {
  const classes = PorfolioStyles();
  return (
    <Box component="div" className={classes.mainContainer}>
      <Navbar />
      <Grid container justify="center">
        {/* project 1 */}
        <Grid item xs={12} sm={8} md={6}>
          <D3Js />
        </Grid>

        {/* project 2 */}
        <Grid item xs={12} sm={8} md={6}>
          <MySongify />
        </Grid>

        {/* project 3 */}
        <Grid item xs={12} sm={8} md={6}>
          <Jarvis />
        </Grid>

        {/* project 4 */}
        <Grid item xs={12} sm={8} md={6}>
          <SportsTracker />
        </Grid>
      </Grid>
    </Box>
  );
};

export default Portfolio;
