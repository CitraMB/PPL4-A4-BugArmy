import { AppBar, Avatar, Breadcrumbs, Button, Container, Dialog, DialogActions, DialogContent, Grid, IconButton, InputBase, Pagination, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Toolbar, Typography } from "@mui/material";
import { styled, alpha } from "@mui/material";
import React, { useState } from 'react';
import SearchIcon from "@mui/icons-material/Search";
import AddLogo from "../assets/icons/AddLogo";

const columnTitle = ["NO","NAMA","NIP","JABATAN","GRADE","JENJANG","EDIT"];
const dataPerson = [
  {
    id: 1,
    data: [1,"Alvin Andrian Rizki","201511003","Direktur Pemasaran","Integration 1","Fungsional 1","Edit"]
  },
  {
    id: 2,
    data: [2,"Alvin Andrian Rizki","201511003","Direktur Pemasaran","Integration 1","Fungsional 1","Edit"]
  },
  {
    id: 3,
    data: [3,"Alvin Andrian Rizki","201511003","Direktur Pemasaran","Integration 1","Fungsional 1","Edit"]
  }
];

const Search = styled('div')(({ theme }) => ({
  position: 'relative',
  borderRadius: theme.shape.borderRadius,
  backgroundColor: alpha(theme.palette.common.white, 0.15),
  '&:hover': {
    backgroundColor: alpha(theme.palette.common.white, 0.25),
  },
  marginRight: theme.spacing(2),
  marginLeft: 0,
  width: '100%',
  [theme.breakpoints.up('sm')]: {
    marginLeft: theme.spacing(3),
    width: 'auto',
  },
}));

const SearchIconWrapper = styled('div')(({ theme }) => ({
  padding: theme.spacing(0, 2),
  height: '100%',
  position: 'absolute',
  pointerEvents: 'none',
  display: 'flex',
  alignItems: 'center',
  justifyContent: 'center',
}));

const StyledInputBase = styled(InputBase)(({ theme }) => ({
  color: 'inherit',
  '& .MuiInputBase-input': {
    padding: theme.spacing(1, 1, 1, 0),
    // vertical padding + font size from searchIcon
    paddingLeft: `calc(1em + ${theme.spacing(4)})`,
    transition: theme.transitions.create('width'),
    width: '100%',
    [theme.breakpoints.up('md')]: {
      width: '20ch',
    },
  },
}));

// const modalDialog = () => {
//   return (
    
//   )
// }

const DataPenguji = () => {
    const [btnInsert, setBtnInsert] = useState(false);
    const closeModal = setBtnInsert(false);
    const openModal = setBtnInsert(true);

    return (
        <div id='pageDataPenguji' className='container'>
            {/*TODO: buat bar pencarian disini*/}
          
            <AppBar position="static">
              <Toolbar variant="dense" style={{margin: 5}}>
                  <Grid container alignItems="center" spacing={2}>
                    <Grid item xs={8.6}>
                      <Search>
                        <SearchIconWrapper>
                          <SearchIcon />
                        </SearchIconWrapper>
                        <StyledInputBase
                        placeholder="Search…"
                        inputProps={{ 'aria-label': 'search' }}
                        />          
                      </Search>
                    </Grid>
                    <Grid item xs={0.5}>
                      <Avatar alt="Siera Brooks" src="../assets/images/siera.png"/>
                    </Grid>
                    <Grid item xs={2}>
                      <Typography variant="h5">
                        Siera Brooks
                      </Typography>
                    </Grid>
                    
                  </Grid>
              </Toolbar>
            </AppBar>

          <Container style={{paddingTop: 20}}>
            <Breadcrumbs>
              <Typography>Master</Typography>
              <Typography fontWeight="bold">Data Penguji</Typography>
            </Breadcrumbs>

            <Grid container>
              <Grid item>
                <Typography fontSize={30} fontFamily="monospace"> Data Penguji </Typography>
              </Grid>
              <Grid item>
                <IconButton onClick={openModal}><AddLogo/></IconButton>
              </Grid>
            </Grid>

            <div className="container">
            <TableContainer >
              <Table stickyHeader>
                <TableHead>
                  <TableRow>
                    {columnTitle.map((col) =>
                      <TableCell>{col}</TableCell>
                    )}
                  </TableRow>
                </TableHead>
                <TableBody>
                      {dataPerson.map((col) =>
                        <TableRow>
                          {col.data.map((data) =>
                            <TableCell>{data}</TableCell>
                          )}
                        </TableRow>
                      )}
                  
                </TableBody>
              </Table>
            </TableContainer>
            </div>

            <br/>
            <Pagination style={{display: "flex", justifyContent: "center"}} count={10} variant="outlined" shape="rounded" />

            <div>
              <Dialog open={btnInsert}>
                <DialogContent>
                  <Typography>Insert Data Penguji Baru</Typography>
                </DialogContent>
                <DialogActions>
                  <Button onClick={closeModal}>Cancel</Button>
                  <Button onClick={closeModal}>Save</Button>
                </DialogActions>
              </Dialog>
            </div>
          </Container>
        </div>  
    )
};

export default DataPenguji;