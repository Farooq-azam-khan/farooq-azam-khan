import React from 'react';

import { Typography, Avatar, Grid, Box } from '@material-ui/core';

import { makeStyles } from '@material-ui/core/styles';

import Typed from 'react-typed';

import {
  // red,
  // deepPurple,
  indigo,
  // blue,
  // teal, cyan, lightBlue, grey
} from '@material-ui/core/colors';

import myAvatar from '../assets/avataaars.svg';

const useStyles = makeStyles((theme) => ({
  typedContainer: {
    position: 'absolute',
    top: '50%',
    left: '50%',
    transform: 'translate(-50%, -50%)',
    width: '100%',
    textAlign: 'center',
    zIndex: 1,
  },
  avatar: {
    width: theme.spacing(15),
    height: theme.spacing(15),
    margin: theme.spacing(1),
  },
  title: {
    color: indigo[500],
  },
  subtitel: {
    color: indigo[800],
    marginBottom: '3rem',
  },
}));

export default function Header() {
  const classes = useStyles();
  return (
    <Box className={classes.typedContainer}>
      <Grid container justify="center">
        <Avatar className={classes.avatar} src={myAvatar} alt="avatar" />
      </Grid>
      <Typography className={classes.title} variant="h4">
        <Typed strings={['Farooq A. Khan']} typeSpeed={50} />
      </Typography>
      <Typography className={classes.subtitle} variant="h5">
        <Typed
          strings={['Web Development', 'Machine Learning', 'Mathematics']}
          typeSpeed={40}
          loop
        />
      </Typography>
    </Box>
  );
}
