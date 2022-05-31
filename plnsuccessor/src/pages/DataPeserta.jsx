import { AppBar, Avatar, Breadcrumbs, Container, Grid, IconButton, InputBase, Pagination, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Toolbar, Typography } from "@mui/material";
import { styled, alpha } from "@mui/material";
import React, { useEffect, useState } from 'react';
import SearchIcon from "@mui/icons-material/Search";
import AddLogo from "../assets/icons/AddLogo";
import axios from 'axios';

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






const DataPeserta = () => {
    const [data, setData] = useState([]);

    useEffect(() => {
      if(data.length === 0){
        axios.get(`http://localhost:1337/api/pegawais?filters[status_pegawai][$eq]=Peserta&sort[0]=NIP`).then(res => {        
          setData(res.data.data);
        })
      }
    },[]);

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
              <Typography fontWeight="bold">Data Peserta</Typography>
            </Breadcrumbs>

            <Grid container>
              <Grid item>
                <Typography fontSize={30} fontFamily="sans-serif"> Data Peserta </Typography>
              </Grid>
              <Grid item>
                <IconButton><AddLogo/></IconButton>
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
                      {data.map((val, index) => {
                        console.log(val.attributes);
                        return (
                          <TableRow>
                            <TableCell>{index + 1}</TableCell>
                            <TableCell>{val.attributes.NAMA}</TableCell>
                            <TableCell>{val.attributes.NIP}</TableCell>
                            <TableCell>{val.attributes.NAMA}</TableCell>
                            <TableCell>{val.attributes.NAMA}</TableCell>
                            <TableCell>{val.attributes.NAMA}</TableCell>
                          </TableRow>
                        )
                      })}
                </TableBody>
              </Table>
            </TableContainer>
            </div>

            <br/>
            {/* <Pagination style={{display: "flex", justifyContent: "center"}} count={10} variant="outlined" shape="rounded" /> */}
          </Container>
        </div>  
    )
};

export default DataPeserta;