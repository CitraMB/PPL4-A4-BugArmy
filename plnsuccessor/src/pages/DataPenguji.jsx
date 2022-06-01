import { AppBar, Avatar, Breadcrumbs, Button, Container, Dialog, DialogActions, DialogContent, Grid, IconButton, Input, InputBase, Pagination, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, TextField, Toolbar, Typography } from "@mui/material";
import { styled, alpha } from "@mui/material";
import React, { useState, useCallback, useEffect } from 'react';
import SearchIcon from "@mui/icons-material/Search";
import AddLogo from "../assets/icons/AddLogo";
import axios from "axios";

const columnTitle = ["NO","NAMA","NIP","JABATAN","GRADE","JENJANG","EDIT"];
const dataPerson = [
  {
    id: 1,
    data: [1, "Alvin Andrian Rizki","201511003","Direktur Pemasaran","Integration 1","Fungsional 1","Edit"]
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
                <IconButton href="datapenguji/insert">
                  <AddLogo />
                </IconButton>
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
                      {dataPerson.map((val, index) => {
                        return (
                          <TableRow>
                          {/* <TableCell  key={index}>{index + 1}</TableCell>
                          <TableCell>{val.attributes.NAMA}</TableCell>
                          <TableCell>{val.attributes.NIP}</TableCell>
                          <TableCell>{val.attributes.NAMA}</TableCell>
                          <TableCell>{val.attributes.NAMA}</TableCell>
                          <TableCell>{val.attributes.NAMA}</TableCell> */}
                            <TableCell>{val.data[0]}</TableCell>
                            <TableCell>{val.data[1]}</TableCell>
                            <TableCell>{val.data[2]}</TableCell>
                            <TableCell>{val.data[3]}</TableCell>
                            <TableCell>{val.data[4]}</TableCell>
                            <TableCell>{val.data[5]}</TableCell>
                            <TableCell>
                            {/* Button Delete Penguji */}
                              <IconButton href="datapenguji/delete/">
                                <svg width="30" height="30" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <path fill-rule="evenodd" clip-rule="evenodd" d="M25 43.75C35.3553 43.75 43.75 35.3553 43.75 25C43.75 14.6447 35.3553 6.25 25 6.25C14.6447 6.25 6.25 14.6447 6.25 25C6.25 35.3553 14.6447 43.75 25 43.75ZM14.5833 26H35.4167V24H14.5833V26Z" fill="#FF3232"/>
                                </svg>
                              </IconButton>
                            {/* Button Edit Penguji */}
                              <IconButton href="datapenguji/edit/">
                                <svg width="30" height="30" viewBox="0 0 50 50" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <path fill-rule="evenodd" clip-rule="evenodd" d="M29.3466 5.96763V5.96765L29.6634 9.13563C29.8268 10.7692 29.9084 11.5859 30.4612 11.8149C31.0141 12.0439 31.6494 11.5241 32.92 10.4845L35.384 8.46848C36.0498 7.92376 36.3827 7.65141 36.7675 7.6706C37.1523 7.6898 37.4565 7.99392 38.0647 8.60218L41.3976 11.935C42.0058 12.5433 42.31 12.8474 42.3292 13.2323C42.3484 13.6171 42.076 13.95 41.5313 14.6157L39.5152 17.0799C38.4756 18.3505 37.9558 18.9858 38.1848 19.5386C38.4138 20.0914 39.2305 20.1731 40.8641 20.3364L44.0322 20.6532C44.8881 20.7388 45.3161 20.7816 45.5746 21.0673C45.8332 21.353 45.8332 21.7831 45.8332 22.6433V27.3567C45.8332 28.2169 45.8332 28.647 45.5746 28.9327C45.3161 29.2184 44.8881 29.2612 44.0322 29.3468L40.8649 29.6635C39.2313 29.8268 38.4146 29.9085 38.1856 30.4613C37.9566 31.0141 38.4764 31.6494 39.5159 32.92L39.516 32.92L41.5314 35.3833C42.0761 36.0491 42.3484 36.382 42.3293 36.7668C42.3101 37.1516 42.0059 37.4558 41.3977 38.064L38.0648 41.3969C37.4566 42.0051 37.1524 42.3093 36.7676 42.3285C36.3828 42.3476 36.0499 42.0753 35.3841 41.5306L32.92 39.5145C31.6495 38.4749 31.0142 37.9552 30.4613 38.1841C29.9085 38.4131 29.8268 39.2299 29.6635 40.8634L29.3466 44.0323C29.261 44.8883 29.2182 45.3162 28.9325 45.5748C28.6468 45.8333 28.2167 45.8333 27.3565 45.8333H22.6431C21.7829 45.8333 21.3528 45.8333 21.0672 45.5748C20.7815 45.3162 20.7387 44.8883 20.6531 44.0323L20.3363 40.8642C20.1729 39.2307 20.0912 38.4139 19.5384 38.185C18.9856 37.956 18.3503 38.4758 17.0797 39.5153L14.6155 41.5315C13.9497 42.0762 13.6168 42.3486 13.232 42.3294C12.8472 42.3102 12.5431 42.0061 11.9348 41.3978L8.60193 38.065C7.99368 37.4567 7.68955 37.1526 7.67036 36.7677C7.65116 36.3829 7.92352 36.05 8.46823 35.3843L10.4844 32.9201C11.5239 31.6495 12.0437 31.0142 11.8148 30.4614C11.5858 29.9086 10.769 29.8269 9.13547 29.6635L5.9675 29.3468H5.96748C5.11156 29.2612 4.6836 29.2184 4.42505 28.9327C4.1665 28.647 4.1665 28.2169 4.1665 27.3567L4.1665 22.6433C4.1665 21.7831 4.1665 21.353 4.42505 21.0673C4.6836 20.7816 5.11156 20.7388 5.96748 20.6532H5.9675L9.13624 20.3363C10.7698 20.173 11.5866 20.0913 11.8155 19.5385C12.0445 18.9857 11.5247 18.3504 10.4852 17.0798L10.4852 17.0798L8.46833 14.6148C7.92361 13.949 7.65126 13.6161 7.67045 13.2313C7.68965 12.8465 7.99377 12.5424 8.60203 11.9341L11.9349 8.60123C12.5431 7.99298 12.8473 7.68885 13.2321 7.66966C13.6169 7.65046 13.9498 7.92282 14.6156 8.46753L17.0798 10.4837C18.3504 11.5233 18.9857 12.0431 19.5385 11.8141C20.0913 11.5851 20.173 10.7683 20.3364 9.13481L20.6531 5.96765V5.96763C20.7387 5.11171 20.7815 4.68375 21.0672 4.4252C21.3528 4.16666 21.7829 4.16666 22.6431 4.16666H27.3565C28.2167 4.16666 28.6468 4.16666 28.9325 4.4252C29.2182 4.68375 29.261 5.11171 29.3466 5.96763ZM24.9998 33.3333C29.6022 33.3333 33.3332 29.6024 33.3332 25C33.3332 20.3976 29.6022 16.6667 24.9998 16.6667C20.3975 16.6667 16.6665 20.3976 16.6665 25C16.6665 29.6024 20.3975 33.3333 24.9998 33.3333Z" fill="#5A6169"/>
                                </svg>
                              </IconButton>
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