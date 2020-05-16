import { makeStyles } from '@material-ui/core/styles';

import grey from '@material-ui/core/colors/grey'
const useStyles = makeStyles({
    mainContainer: {
        margin: 'auto',
        background: '#223',
        // height: '100%',
    },
    cardContainer: {
        maxWidth: 400,
        // margin: '3rem',
        margin: '2rem auto',
    },
    pill: {
        borderRadius: '500px',
        background: grey[600],
        color: 'white',
        padding: '0.4 0.7rem',
        margin: '0.4em 0.2rem',
        fontSize: '0.7rem'

    }
});

export default useStyles; 