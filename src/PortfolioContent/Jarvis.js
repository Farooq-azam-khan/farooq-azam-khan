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

import JarvisImg from './assets/jarvis.png'
import PorfolioStyles from './PorfolioStyles';

const Jarvis = () => {
    const classes = PorfolioStyles();
    return (
        <Card className={classes.cardContainer}>
            <CardActionArea>
                <CardMedia
                    component="img"
                    alt="Project 1"
                    height="140"
                    src={JarvisImg}
                />
                <CardContent gutterBottom>
                    <Typography variant="h5">Jarvis The Typographer</Typography>
                    <Button className={classes.pill} size="small">
                        JavaScript
                    </Button>

                    <Typography variant="body2" color="textSecondary">
                        A Neural Network that determines the best output based on the traning set provided by the user.
                </Typography>
                </CardContent>
                <CardActions>
                    <Button size="small" color="primary" href="https://github.com/Farooq-azam-khan/Jarvis-the-Typographer" target="_blank" >
                        Code
                </Button>
                    <Button size="small" color="primary" href="https://farooq-azam-khan.github.io/Jarvis-the-Typographer/" target="_blank">
                        Live Demo
                </Button>
                </CardActions>
            </CardActionArea>
        </Card>
    )
}

export default Jarvis
