import React from 'react';

import {
  Box,
  Grid,
  Card,
  CardActionArea,
  CardContent,
  CardActions,
  CardMedia,
  Button,
  Typography,
} from '@material-ui/core';

import { makeStyles } from '@material-ui/core/styles';

import Navbar from '../components/Navbar';

const useStyles = makeStyles({
  mainContainer: {
    background: '#223',
    height: '100%',
  },
  cardContainer: {
    maxWidth: 345,
    // margin: '3rem',
    margin: '2rem auto',
  },
});

const Portfolio = () => {
  const classes = useStyles();
  return (
    <Box component="div" className={classes.mainContainer}>
      <Navbar />
      <Grid container justify="center">
        {/* project 1 */}
        <Grid item xs={12} sm={8} md={6}>
          <Card className={classes.cardContainer}>
            <CardActionArea>
              <CardMedia
                component="img"
                alt="Project 1"
                height="140"
                src="https://farooq-azam-khan.github.io//personal-website/static/media/d3.118c4c7c.PNG"
              />
              <CardContent gutterBottom>
                <Typography variant="h5">Project 1</Typography>

                <Typography variant="body2" color="textSecondary">
                  Enim duis culpa esse aliqua pariatur minim sunt minim proident
                  mollit aute laboris sint.Ut aliquip quis culpa laborum tempor
                  qui laboris adipisicing dolor irure nisi est elit dolor.Elit
                  commodo consectetur minim incididunt et ullamco dolor Lorem
                  ipsum.
                </Typography>
              </CardContent>
              <CardActions>
                <Button size="small" color="primary">
                  Share
                </Button>
                <Button size="small" color="primary">
                  Live Demo
                </Button>
              </CardActions>
            </CardActionArea>
          </Card>
        </Grid>

        {/* project 2 */}
        <Grid item xs={12} sm={8} md={6}>
          <Card className={classes.cardContainer}>
            <CardActionArea>
              <CardMedia
                component="img"
                alt="Project 2"
                height="140"
                src="https://farooq-azam-khan.github.io//personal-website/static/media/d3.118c4c7c.PNG"
              />
              <CardContent gutterBottom>
                <Typography variant="h5">Project 3</Typography>

                <Typography variant="body2" color="textSecondary">
                  Enim duis culpa esse aliqua pariatur minim sunt minim proident
                  mollit aute laboris sint.Ut aliquip quis culpa laborum tempor
                  qui laboris adipisicing dolor irure nisi est elit dolor.Elit
                  commodo consectetur minim incididunt et ullamco dolor Lorem
                  ipsum.
                </Typography>
              </CardContent>
              <CardActions>
                <Button size="small" color="primary">
                  Share
                </Button>
                <Button size="small" color="primary">
                  Live Demo
                </Button>
              </CardActions>
            </CardActionArea>
          </Card>
        </Grid>

        {/* project 3 */}
        <Grid item xs={12} sm={8} md={6}>
          <Card className={classes.cardContainer}>
            <CardActionArea>
              <CardMedia
                component="img"
                alt="Project 3"
                height="140"
                src="https://farooq-azam-khan.github.io//personal-website/static/media/d3.118c4c7c.PNG"
              />
              <CardContent gutterBottom>
                <Typography variant="h5">Project 3</Typography>

                <Typography variant="body2" color="textSecondary">
                  Enim duis culpa esse aliqua pariatur minim sunt minim proident
                  mollit aute laboris sint.Ut aliquip quis culpa laborum tempor
                  qui laboris adipisicing dolor irure nisi est elit dolor.Elit
                  commodo consectetur minim incididunt et ullamco dolor Lorem
                  ipsum.
                </Typography>
              </CardContent>
              <CardActions>
                <Button size="small" color="primary">
                  Share
                </Button>
                <Button size="small" color="primary">
                  Live Demo
                </Button>
              </CardActions>
            </CardActionArea>
          </Card>
        </Grid>

        {/* project 4 */}
        <Grid item xs={12} sm={8} md={6}>
          <Card className={classes.cardContainer}>
            <CardActionArea>
              <CardMedia
                component="img"
                alt="Project 4"
                height="140"
                src="https://farooq-azam-khan.github.io//personal-website/static/media/d3.118c4c7c.PNG"
              />
              <CardContent gutterBottom>
                <Typography variant="h5">Project 4</Typography>

                <Typography variant="body2" color="textSecondary">
                  Enim duis culpa esse aliqua pariatur minim sunt minim proident
                  mollit aute laboris sint.Ut aliquip quis culpa laborum tempor
                  qui laboris adipisicing dolor irure nisi est elit dolor.Elit
                  commodo consectetur minim incididunt et ullamco dolor Lorem
                  ipsum.
                </Typography>
              </CardContent>
              <CardActions>
                <Button size="small" color="primary">
                  Share
                </Button>
                <Button size="small" color="primary">
                  Live Demo
                </Button>
              </CardActions>
            </CardActionArea>
          </Card>
        </Grid>
      </Grid>
    </Box>
  );
};

export default Portfolio;
