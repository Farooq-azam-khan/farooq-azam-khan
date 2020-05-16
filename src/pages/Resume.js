import React, { Fragment } from 'react'

// import { makeStyles } from '@material-ui/core/styles'
import { Typography, Box } from '@material-ui/core'

// material colors 
// import indigo from '@material-ui/core/colors/indigo';

// navbar
import Navbar from '../components/Navbar'

// styles 
import ResumeStyles from '../ResumeContent/ResumeStyles'

// content per year 
import Year2019 from '../ResumeContent/Year2019'
import Year2018 from '../ResumeContent/Year2018'

// default background: #233
// const useStyles = makeStyles((theme) => ({
//   mainContainer: { background: indigo[700], marginTop: '2rem' },
//   timeLine: {
//     position: 'relative',
//     padding: '1rem',
//     margin: '0 auto',
//     '&:before': {
//       content: '""',
//       position: 'absolute',
//       height: '100%',
//       border: '1px solid tan',
//       right: '40px',
//       top: 0,
//     },
//     '&:after': {
//       content: '""',
//       display: 'table',
//       clear: 'both',
//     },
//     [theme.breakpoints.up('md')]: {
//       padding: '2rem',
//       '&:before': {
//         left: 'calc(50% - 1px)',
//         right: 'auto',
//       },
//     },
//   },
//   timeLineItem: {
//     padding: '1rem',
//     borderBottom: `2px solid ${indigo[200]}`,
//     position: 'relative',
//     margin: '1rem 3rem 1rem 1rem',
//     clear: 'both',
//     '&:after': {
//       content: '""',
//       position: 'absolute',
//     },
//     '&:before': {
//       content: '""',
//       position: 'absolute',
//       right: '-0.625rem',
//       top: 'calc(50% - 5px)',
//       borderStyle: 'solid',
//       borderColor: 'tomato tomato transparent transparent',
//       transform: 'rotate(45deg)',
//     },
//     [theme.breakpoints.up('md')]: {
//       width: '44%',
//       margin: '1rem',
//       '&:nth-of-type(2n)': {
//         float: 'right',
//         margin: '1rem',
//         borderColor: 'tan',
//       },
//       '&:nth-of-type(2n):before': {
//         right: 'auto',
//         left: '-0.625rem',
//         borderColor: 'transparent transparent tomato tomato',
//       },
//     },
//   },
//   timeLineYear: {
//     textAlign: 'center',
//     maxWidth: '9.375rem',
//     margin: '0 3rem 0 auto',
//     fontSize: '1.8rem',
//     background: 'tomato',
//     color: 'white',
//     lineHeight: 1,
//     padding: '0.5rem 0 1rem',
//     '&:before': {
//       display: 'none',
//     },
//     [theme.breakpoints.up('md')]: {
//       textAlign: 'center',
//       margin: '0 auto',
//       '&:nth-of-type(2n)': {
//         float: 'none',
//         margin: '0 auto',
//       },
//       '&:nth-of-type(2n):beore': {
//         display: 'none',
//       },
//     },
//   },
//   heading: {
//     color: 'tomato',
//     padding: '3rem 0',
//     textTransform: 'uppercase',
//   },
//   subHeading: {
//     color: 'white',
//     padding: '0',
//     textTransform: 'uppercase',
//   },
// }));

const Resume = () => {
  const classes = ResumeStyles();
  return (
    <Fragment>
      <Navbar />
      <Box className={classes.mainContainer} component="header">
        <Typography className={classes.heading} variant="h4" align="center">
          Working Experince
        </Typography>
        <Box className={classes.timeLine} component="div">
          {/* yeear 2019 */}
          <Year2019 />

          {/* year 2018 */}
          <Year2018 />


          {/* ------------------------ */}
          {/* <Typography
            className={`${classes.timeLineYear} ${classes.timeLineItem}`}
            variant="h2"
          >
            2017
          </Typography>
          <Box component="div" className={classes.timeLineItem}>
            <Typography
              variant="h5"
              align="left"
              className={classes.subHeading}
            >
              Web Design
            </Typography>

            <Typography
              variant="body1"
              align="left"
              style={{ color: 'tomato' }}
            >
              Company name place where worked
            </Typography>
            <Typography
              variant="subtitle1"
              align="left"
              style={{ color: 'tan' }}
            >
              Qui mollit fugiat magna laborum ut irure ex anim anim
              aliqua.Proident tempor anim ut eu incididunt reprehenderit
              officia.Incididunt ut nulla ad nostrud consectetur sit mollit
              deserunt.
            </Typography> */}
        </Box>
        {/* 2018 */}
        {/* <Typography
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
              Machine Learning
            </Typography>

            <Typography
              variant="body1"
              align="left"
              style={{ color: 'tomato' }}
            >
              Company name place where worked
            </Typography>
            <Typography
              variant="subtitle1"
              align="left"
              style={{ color: 'tan' }}
            >
              Qui mollit fugiat magna laborum ut irure ex anim anim
              aliqua.Proident tempor anim ut eu incididunt reprehenderit
              officia.Incididunt ut nulla ad nostrud consectetur sit mollit
              deserunt.
            </Typography>
          </Box> */}

        {/* 2019 */}

        {/* <Typography
            className={`${classes.timeLineYear} ${classes.timeLineItem}`}
            variant="h2"
          >
            2019
          </Typography> */}
        {/* <Box component="div" className={classes.timeLineItem}>
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
              style={{ color: 'tomato' }}
            >
              Company name place where worked
            </Typography>
            <Typography
              variant="subtitle1"
              align="left"
              style={{ color: 'tan' }}
            >
              Qui mollit fugiat magna laborum ut irure ex anim anim
              aliqua.Proident tempor anim ut eu incididunt reprehenderit
              officia.Incididunt ut nulla ad nostrud consectetur sit mollit
              deserunt.
            </Typography>
          </Box> */}
        {/* <Box component="div" className={classes.timeLineItem}>
            <Typography
              variant="h5"
              align="left"
              className={classes.subHeading}
            >
              Some other job here
            </Typography>

            <Typography
              variant="body1"
              align="left"
              style={{ color: 'tomato' }}
            >
              Company name place where worked
            </Typography>
            <Typography
              variant="subtitle1"
              align="left"
              style={{ color: 'tan' }}
            >
              Qui mollit fugiat magna laborum ut irure ex anim anim
              aliqua.Proident tempor anim ut eu incididunt reprehenderit
              officia.Incididunt ut nulla ad nostrud consectetur sit mollit
              deserunt.
            </Typography>
          </Box> */}
        {/* </Box> */}
      </Box>
    </Fragment >
  );
};

export default Resume;
