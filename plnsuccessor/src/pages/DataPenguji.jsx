import { AppBar, Avatar, Breadcrumbs, Button, Container, Dialog, DialogActions, DialogContent, Grid, IconButton, Input, InputBase, Pagination, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, TextField, Toolbar, Typography } from "@mui/material";
import { styled, alpha } from "@mui/material";
import React, { useState, useCallback, useEffect } from 'react';
import SearchIcon from "@mui/icons-material/Search";
import InsertDataPenguji from "./insert/InsertDataPenguji";
import axios from "axios";

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

const DataPenguji = () => {
    const [data, setData] = useState([]);
    const [key, setKey] = useState("");
    const [loading, setLoading] = useState(true);

    useEffect(() => {
      if(data.length === 0){
        axios.get(`http://localhost:1337/api/pegawais?filters[status_pegawai][$eq]=Penguji&sort[0]=NIP`).then(res => {        
          setData(res.data.data);
        })
      }
    });

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
                        <TextField 
                          fullWidth
                          variant="standard"
                          style={{ paddingLeft: 80, height: 40, alignContent: 'center'}}
                          InputProps={{
                            disableUnderline: true,
                          }}
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
              <Grid item xs={0}>
                <Typography fontSize={30} fontFamily="sans-serif"> Data Penguji </Typography>
              </Grid>
              <Grid item>
                <InsertDataPenguji />
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
                        return (
                          <TableRow>
                            <TableCell  key={index}>{index + 1}</TableCell>
                            <TableCell>{val.attributes.NAMA}</TableCell>
                            <TableCell>{val.attributes.NIP}</TableCell>
                            <TableCell>{val.attributes.NAMA}</TableCell>
                            <TableCell>{val.attributes.NAMA}</TableCell>
                            <TableCell>{val.attributes.NAMA}</TableCell>
                            <TableCell>
                              <Button variant="contained">Edit</Button>
                            </TableCell>
                          </TableRow>
                        )
                      })}
                </TableBody>
              </Table>
            </TableContainer>
            </div>

            <br/>
            <TableContainer>
              <Table>
                <TableBody>
                  <TableRow>
                    
                  </TableRow>
                </TableBody>
              </Table>
            </TableContainer>

          </Container>
        </div>  
    )
};

export default DataPenguji;