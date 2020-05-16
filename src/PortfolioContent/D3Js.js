import React from 'react';

import {
    Card,
    CardActionArea,
    CardContent,
    CardActions,
    CardMedia,
    Button,
    Typography,
} from '@material-ui/core';

import PorfolioStyles from './PorfolioStyles';

const D3Js = () => {
    const classes = PorfolioStyles();
    return (
        <Card className={classes.cardContainer}>
            <CardActionArea>
                <CardMedia
                    component="img"
                    alt="Project 1"
                    height="140"
                    src="https://farooq-azam-khan.github.io//personal-website/static/media/d3.118c4c7c.PNG"
                />
                <CardContent gutterBottom>
                    <Typography variant="h5">D3Js</Typography>
                    <Button className={classes.pill} size="small">
                        JavaScript
                    </Button>

                    <Typography variant="body2" color="textSecondary">
                        Learned the basis of svg tag in HTML and gradually moved on to graphing with the d3.js library.
                        Worked on graphing maps trees, and various types of data.
                </Typography>
                </CardContent>
                <CardActions>
                    <Button size="small" color="primary" href="https://github.com/Farooq-azam-khan/d3js-tutorials" target="_blank" >
                        Code
                </Button>
                    <Button size="small" color="primary" href="https://farooq-azam-khan.github.io/d3js-tutorials/" target="_blank">
                        Live Demo
                </Button>
                </CardActions>
            </CardActionArea>
        </Card>
    )
}

export default D3Js
