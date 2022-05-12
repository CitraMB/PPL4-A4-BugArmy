import { AppBar, Toolbar, Grid, IconButton, Avatar } from '@mui/material';
import ArrowDropDownOutlinedIcon from '@mui/icons-material/ArrowDropDownOutlined';

const HeaderTanpaPencarian = () => {
    return (
        <AppBar position="static" className="AppBar">
            <Toolbar>
                <Grid container className="Grid-Header">
                    <Grid item sm={1.8}>
                        <IconButton sx={{ p: 0 }}>
                            <Avatar className="avatar" alt="Remy Sharp" src="/static/images/avatar/2.jpg" />
                            <p className="profile">Sierra Brooks</p>
                            <ArrowDropDownOutlinedIcon />
                        </IconButton>
                    </Grid>
                </Grid>
            </Toolbar>
        </AppBar>
    )
};

export default HeaderTanpaPencarian;