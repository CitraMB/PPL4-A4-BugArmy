import { AppBar, Toolbar, Grid, IconButton, Avatar } from '@mui/material';
import ArrowDropDownOutlinedIcon from '@mui/icons-material/ArrowDropDownOutlined';

const HeaderTanpaPencarian = () => {
    return (
        <AppBar position="static" className="AppBar">
            <Toolbar container className="Bar">
                <Grid>
                    <Grid item sm={2}>
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