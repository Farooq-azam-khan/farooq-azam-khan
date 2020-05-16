import React from 'react';

import { Typography, Box } from '@material-ui/core';

import List from '@material-ui/core/List';
import ListItem from '@material-ui/core/ListItem';
import ListItemText from '@material-ui/core/ListItemText';

import ResumeStyles from './ResumeStyles'

const Year2018 = () => {
    const classes = ResumeStyles();

    return (
        <Box component="div">
            {/* 2018 */}

            <Typography
                className={`${classes.timeLineYear} ${classes.timeLineItem}`}
                variant="h2"
            >
                2018
          </Typography>
            <Box component="div" className={classes.timeLineItem}>
                <Typography
                    variant="h5"
                    align="left"
                    className={classes.subHeading}
                >
                    Math Energetics
                </Typography>
                <Typography
                    variant="body1"
                    align="left"
                    className={classes.subSubHeading}
                >
                    Social Venture
                </Typography>
                <Typography
                    variant="subtitle1"
                    align="left"
                    className={classes.subtitle}
                >
                    <List component="ul" dense={true}>
                        <ListItem button={true} component={'li'}>
                            <ListItemText primary="Developed a social venture designed to help student in mathematics and provide a conception understanding of core topics." />
                        </ListItem>
                        <ListItem button={true} component={'li'}>
                            <ListItemText primary="Developed an infrastructure for the company. The responsibilities included: budgeting, marketing, website development, presenting updates, etc." />
                        </ListItem>
                    </List>
                </Typography>
            </Box>
        </Box>
    )
}

export default Year2018
