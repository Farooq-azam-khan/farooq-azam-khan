import React from 'react';

import {
    Card,
    CardActionArea,
    CardContent,
    CardActions,
    CardMedia,
    Button,
    Typography,
} from '@material-ui/core'

import PorfolioStyles from './PorfolioStyles'
import cardImage from './assets/mysongify.png'

const MySongify = () => {
    const classes = PorfolioStyles();
    return (
        <Card className={classes.cardContainer}>
            <CardActionArea>
                <CardMedia
                    component="img"
                    alt="My Songify Project"
                    height="140"
                    src={cardImage}
                />
                <CardContent gutterBottom>
                    <Typography variant="h5">My-Songify</Typography>
                    <Button className={classes.pill} size="small">
                        flask
                    </Button>
                    <Button className={classes.pill} size="small">
                        React
                    </Button>
                    <Button className={classes.pill} size="small">
                        Redux
                    </Button>

                    <Typography variant="body2" color="textSecondary">
                        Developed a spotify-like application that allows users to listen to songs, favourite songs, and create playlists.
                        This web appliation was created with python’s Flask Framework as RESTful backend and Facebook's ReactJS as a frontend framework.
                </Typography>
                </CardContent>
                <CardActions>
                    <Button size="small" color="primary" href="https://github.com/ Farooq-azam-khan/my-songify.git" target="_blank" >
                        Code
                    </Button>
                    <Button size="small" color="primary" href="https://farooq-azam-khan.github.io/my-songify/" target="_blank">
                        Live Demo
                    </Button>
                    <Button size="small" color="primary" href="https://my-songify.herokuapp.com/" target="_blank">
                        Backend API
                    </Button>
                </CardActions>
            </CardActionArea>
        </Card>
    )
}

export default MySongify
