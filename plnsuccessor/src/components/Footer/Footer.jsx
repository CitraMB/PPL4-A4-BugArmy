import { Toolbar, AppBar, Grid } from "@mui/material"

const Footer = () => {
    return (
        <AppBar position="static" className="Footer">
            <Toolbar container className="Bar">
                <Grid>
                    <Grid item sm={3}>
                        <p className="CopyrightPLN">
                            Copyright © 2022 PLNSuccessor
                        </p>
                    </Grid>
                </Grid>
            </Toolbar>
        </AppBar>
    )
}

export default Footer;