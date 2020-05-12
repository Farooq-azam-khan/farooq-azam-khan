import React, { Fragment, useState } from 'react'

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
    ListItemIcon
} from '@material-ui/core'

import MobilRightMenuSlider from '@material-ui/core/Drawer'

import {
    ArrowBack,
    AssignmentInd,
    Home,
    Apps,
    // ContactMail
} from '@material-ui/icons'

import {
    red,
    // deepPurple, indigo, 
    blue,
    // teal, cyan, lightBlue, grey
} from '@material-ui/core/colors'


import myAvatar from '../assets/avataaars.svg'

import { makeStyles } from '@material-ui/core/styles'


// import MyAvatar from 'avataaars'

const useStyles = makeStyles(theme => ({
    menuSliderContainer: {
        width: 250,
        height: "100%",
        background: blue[900]
    }
    ,
    avatar: {
        display: 'block',
        margin: '0.5rem auto',
        width: theme.spacing(13),
        height: theme.spacing(13)
    },
    listItem: {
        color: red[100]
    }
}))

const menuList = [
    {
        icon: <Home />,
        text: "Home"
    }, {
        icon: <AssignmentInd />,
        text: "Resume"
    }, {
        icon: <Apps />,
        text: "Portfolio"
    },
    // {
    //     icon: <Home />,
    //     text: "Home"
    // }
]

const Navbar = () => {
    const [state, setState] = useState({
        right: false
    })

    const toggleSlider = (slider, open) => () => {
        setState({ ...state, [slider]: open })
    }

    const classes = useStyles()

    const SideList = (slider) => (
        <Box
            onClick={toggleSlider(slider, false)}
            className={classes.menuSliderContainer}>
            <Avatar src={myAvatar} className={classes.avatar} alt="avatar" />
            <Divider />
            <List>
                {menuList.map((item, key) => (
                    <ListItem button key={key}>
                        <ListItemIcon className={classes.listItem}>
                            {item.icon}
                        </ListItemIcon>
                        <ListItemText className={classes.listItem} primary={item.text} />
                    </ListItem>
                ))}
            </List>
        </Box>)
    return (
        <Fragment>

            <Box component="nav">
                <AppBar position="static" style={{ background: '#222' }}>
                    <Toolbar>
                        <IconButton onClick={toggleSlider('right', true)}>
                            <ArrowBack style={{ color: blue[500] }} />
                        </IconButton>
                        <Typography variant="h5" style={{ color: blue[200] }}>
                            Portfolio
                    </Typography>
                        <MobilRightMenuSlider
                            onClose={toggleSlider('right', false)} anchor="right" open={state.right}>
                            {SideList('right')}
                        </MobilRightMenuSlider>
                    </Toolbar>
                </AppBar>
            </Box >
        </Fragment>
    )
}

export default Navbar
