import React, { Fragment } from 'react'

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
    Box
} from '@material-ui/core'

import {
    ArrowBack,
    AssignmentInd,
    Home,
    Apps,
    ContactMail
} from '@material-ui/icons'

import {
    red, deepPurple, indigo, blue, teal, cyan, lightBlue, grey
} from '@material-ui/core/colors'


import { makeStyles } from '@material-ui/core/styles'


import MyAvatar from 'avataaars'

const useStyles = makeStyles({
    menuSliderContainer: {
        width: 250,
        height: "30rem",
        background: blue[900]
    }
    ,
    avatar: {}
})


const Navbar = () => {
    const classes = useStyles()
    return (
        <Fragment>
            <Box className={classes.menuSliderContainer}>
                <Avatar className={classes.avatar} alt="avatar">
                    <MyAvatar
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
                </Avatar>
            </Box>
            <Box component="nav">
                <AppBar position="static" style={{ background: '#222' }}>
                    <Toolbar>
                        <IconButton>
                            <ArrowBack style={{ color: blue[500] }} />
                        </IconButton>
                        <Typography variant="h5" style={{ color: blue[200] }}>
                            Portfolio
                    </Typography>
                    </Toolbar>
                </AppBar>
            </Box >
        </Fragment>
    )
}

export default Navbar
