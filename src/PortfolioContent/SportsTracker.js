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

import SportsTrackerImg from './assets/sport_tracker.png'
import PorfolioStyles from './PorfolioStyles';

const SportsTracker = () => {
    const classes = PorfolioStyles();
    return (
        <Card className={classes.cardContainer}>
            <CardActionArea>
                <CardMedia
                    component="img"
                    alt="Project 1"
                    height="140"
                    src={SportsTrackerImg}
                />
                <CardContent gutterBottom>
                    <Typography variant="h5">Sports Tracker</Typography>
                    <Button className={classes.pill} size="small">
                        Django
                    </Button>

                    <Typography variant="body2" color="textSecondary">
                        Implementing a Restful API that keeps tracks of each type of sports league.
                </Typography>
                </CardContent>
                <CardActions>
                    <Button size="small" color="primary" href="https://github.com/Farooq-azam-khan/Sports-Stats-Tracker" target="_blank" >
                        Code
                </Button>
                    <Button size="small" color="primary" href="http://rest-sports-stats.herokuapp.com/" target="_blank">
                        Live Demo
                </Button>
                </CardActions>
            </CardActionArea>
        </Card>
    )
}

export default SportsTracker
