import React from 'react'

import {
    Typography,
    Avatar,
    Grid,
    Box
} from '@material-ui/core';

import myAvatar from '../assets/avataaars.svg'

export default function Header() {
    return (
        <Box>
            <Avatar src={myAvatar} alt="avatar" />
        </Box>
    )
}
