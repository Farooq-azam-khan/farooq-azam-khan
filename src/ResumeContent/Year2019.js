import React from 'react';

import { Typography, Box } from '@material-ui/core';

import List from '@material-ui/core/List';
import ListItem from '@material-ui/core/ListItem';
import ListItemText from '@material-ui/core/ListItemText';


import ResumeStyles from './ResumeStyles'

const Year2019 = () => {
    const classes = ResumeStyles();

    return (
        <Box component="div">
            {/* 2019 */}

            <Typography
                className={`${classes.timeLineYear} ${classes.timeLineItem}`}
                variant="h2"
            >
                2019
          </Typography>
            <Box component="div" className={classes.timeLineItem}>
                <Typography
                    variant="h5"
                    align="left"
                    className={classes.subHeading}
                >
                    Symcor
            </Typography>

                <Typography
                    variant="body1"
                    align="left"
                    className={classes.subSubHeading}
                >
                    Full Stack Web Developer
                </Typography>
                <Typography
                    variant="subtitle1"
                    align="left"
                    className={classes.subtitle}
                >
                    <List>
                        <ListItem button={true} component={'li'}>
                            <ListItemText
                                primary="Helping to develop front-end and back-end software with PHP and mySQL."
                            />
                        </ListItem>
                        <ListItem button={true} component={'li'}>
                            <ListItemText
                                primary="Learned Valuable skills when dealing web and database security. Created validators to protect against SQL-Injections, and secure routes to protect against XSS attacks."
                            />
                        </ListItem>
                        <ListItem button={true} component={'li'}>
                            <ListItemText
                                primary="Developed a responsive and user friendly webpage with bootstrap and AJAX."
                            />
                        </ListItem>
                    </List>

                </Typography>
            </Box>
            <Box component="div" className={classes.timeLineItem}>
                <Typography
                    variant="h5"
                    align="left"
                    className={classes.subHeading}
                >
                    Ryerson University
                </Typography>
                <Typography
                    variant="body1"
                    align="left"
                    className={classes.subSubHeading}
                >
                    UnderGrad Machine Learning Researcher
                </Typography>
                <Typography
                    variant="subtitle1"
                    align="left"
                    className={classes.subtitle}
                >
                    <List component="ul" dense={true}>
                        <ListItem button={true} component={'li'}>
                            <ListItemText primary="Helping to develop machine learning models to do feature extraction, analysis, and prediction on medical data." />
                        </ListItem>
                        <ListItem button={true} component={'li'}>
                            <ListItemText primary="Developed analytical skills through exploring huge data sets and feature extraction." />
                        </ListItem>
                        <ListItem button={true} component={'li'}>
                            <ListItemText primary="Used matpltolib library for data visualization. Helped develop a deep understating of data for further feature extraction and data pro-cessing." />
                        </ListItem>
                    </List>
                </Typography>
            </Box>
        </Box >
    )
}

export default Year2019
