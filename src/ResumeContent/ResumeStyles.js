import { makeStyles } from '@material-ui/core/styles';

import {
    indigo,
    red,
    lightBlue,
    grey,
    blue,
    blueGrey
}
    from '@material-ui/core/colors'

// default background
const useStyles = makeStyles((theme) => ({
    mainContainer: { background: blueGrey[900], marginTop: '2rem' },
    timeLine: {
        position: 'relative',
        padding: '1rem',
        margin: '0 auto',
        '&:before': {
            content: '""',
            position: 'absolute',
            height: '100%',
            border: `1px solid ${grey[50]}`,
            right: '40px',
            top: 0,
        },
        '&:after': {
            content: '""',
            display: 'table',
            clear: 'both',
        },
        [theme.breakpoints.up('md')]: {
            padding: '2rem',
            '&:before': {
                left: 'calc(50% - 1px)',
                right: 'auto',
            },
        },
    },
    timeLineItem: {
        borderRadius: '3px',
        padding: '1rem',
        background: grey[700],
        borderBottom: `2px solid ${grey[50]}`,
        position: 'relative',
        margin: '1rem 3rem 1rem 1rem',
        clear: 'both',
        '&:after': {
            content: '""',
            position: 'absolute',
        },
        '&:before': {
            content: '""',
            position: 'absolute',
            right: '-0.625rem',
            top: 'calc(50% - 5px)',
            borderStyle: 'solid',
            borderColor: `${grey[900]} ${grey[900]} transparent transparent`,
            transform: 'rotate(45deg)',
        },
        [theme.breakpoints.up('md')]: {
            width: '44%',
            margin: '1rem',
            '&:nth-of-type(2n)': {
                float: 'right',
                margin: '1rem',
                borderColor: grey[50],
            },
            '&:nth-of-type(2n):before': {
                right: 'auto',
                left: '-0.625rem',
                borderColor: `transparent transparent ${grey[50]} ${grey[50]}`,
            },
        },
    },
    timeLineYear: {
        textAlign: 'center',
        maxWidth: '9.375rem',
        margin: '0 3rem 0 auto',
        fontSize: '1.8rem',
        background: blue[200],
        color: grey[900],
        lineHeight: 1,
        padding: '0.5rem 0 1rem',
        '&:before': {
            display: 'none',
        },
        [theme.breakpoints.up('md')]: {
            textAlign: 'center',
            margin: '0 auto',
            '&:nth-of-type(2n)': {
                float: 'none',
                margin: '0 auto',
            },
            '&:nth-of-type(2n):beore': {
                display: 'none',
            },
        },
    },
    heading: {
        color: indigo[50],
        padding: '3rem 0',
        textTransform: 'uppercase',
    },
    subHeading: {
        color: 'white',
        padding: '0',
        textTransform: 'uppercase',
    },
    subtitle: {
        color: 'white'
    },
    subSubHeading: {
        marginTop: '1rem',
        color: lightBlue[200]
    }
}));

export default useStyles