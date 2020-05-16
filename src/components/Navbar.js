import React, { Fragment, useState } from 'react';

import { Link } from 'react-router-dom';

import {
  AppBar,
  Toolbar,
  ListItem,
  IconButton,
  ListItemText,
  Avatar,
  Divider,
  List,
  Typography,
  Box,
  ListItemIcon,
} from '@material-ui/core';

import MobilRightMenuSlider from '@material-ui/core/Drawer';

import {
  // ArrowBack,
  AssignmentInd,
  Home,
  Apps,
  // ContactMail, 

} from '@material-ui/icons';
import MenuRoundedIcon from '@material-ui/icons/MenuRounded';
import {
  red,
  // deepPurple, indigo,
  blue,
  // teal, cyan, 
  lightBlue,
  // grey
} from '@material-ui/core/colors';

import myAvatar from '../assets/avataaars.svg';

import { makeStyles } from '@material-ui/core/styles';

// import MyAvatar from 'avataaars'

const useStyles = makeStyles((theme) => ({
  menuSliderContainer: {
    width: 250,
    height: '100%',
    background: lightBlue[900],
  },
  avatar: {
    display: 'block',
    margin: '0.5rem auto',
    width: theme.spacing(13),
    height: theme.spacing(13),
  },
  listItem: {
    color: red[100],
  },
}));

const menuList = [
  {
    icon: <Home />,
    text: 'Home',
    listPath: '/',
  },
  {
    icon: <AssignmentInd />,
    text: 'Resume',
    listPath: '/resume',
  },
  {
    icon: <Apps />,
    text: 'Portfolio',
    listPath: '/portfolio',
  },
  // {
  //     icon: <Home />,
  //     text: "Home"
  // }
];

const Navbar = () => {
  const [state, setState] = useState({
    right: false,
  });

  const toggleSlider = (slider, open) => () => {
    setState({ ...state, [slider]: open });
  };

  const classes = useStyles();

  const SideList = (slider) => (
    <Box
      onClick={toggleSlider(slider, false)}
      className={classes.menuSliderContainer}
    >
      <Avatar src={myAvatar} className={classes.avatar} alt="avatar" />
      <Divider />
      <List>
        {menuList.map((item, key) => (
          <ListItem button key={key} component={Link} to={item.listPath}>
            <ListItemIcon className={classes.listItem}>
              {item.icon}
            </ListItemIcon>
            <ListItemText className={classes.listItem} primary={item.text} />
          </ListItem>
        ))}
      </List>
    </Box>
  );
  return (
    <Fragment>
      <Box component="nav" >
        <AppBar position="absolute" style={{ background: '#222' }}>
          <Toolbar>
            <IconButton onClick={toggleSlider('right', true)}>
              <MenuRoundedIcon style={{ color: lightBlue[200] }} />
            </IconButton>
            <Typography variant="h5" style={{ color: lightBlue[200] }}>
              Portfolio
            </Typography>
            <MobilRightMenuSlider
              onClose={toggleSlider('right', false)}
              anchor="right"
              open={state.right}
            >
              {SideList('right')}
            </MobilRightMenuSlider>
          </Toolbar>
        </AppBar>
      </Box>
    </Fragment>
  );
};

export default Navbar;
