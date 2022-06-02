import { AppBar, Avatar, Breadcrumbs, Container, Grid, IconButton, InputBase, Pagination, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Toolbar, Typography } from "@mui/material";
import { styled, alpha } from "@mui/material";
import React, { useEffect, useState } from 'react';
import SearchIcon from "@mui/icons-material/Search";
import AddLogo from "../assets/icons/AddLogo";
import axios from 'axios';
import swal from "sweetalert";

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

    const deleteData = (id, nama) => {
      swal({
        title: "Apa Anda Yakin ?",
        text: "Data yang sudah terhapus tidak akan bisa dikembalikan",
        icon: "warning",
        buttons: true,
        dangerMode: true,
      })
      .then((willDelete) => {
        if (willDelete) {
          axios.delete("http://localhost:1337/api/pegawais/" + id)
          swal("Data " + nama + " berhasil dihapus!", {
            icon: "success",
          });
          axios.get(`http://localhost:1337/api/pegawais?filters[status_pegawai][$eq]=Peserta&sort[0]=NIP`).then(res => {        
            setData(res.data.data);
          })
        }
      });
    }

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
                <Typography fontSize={30} fontWeight="light"> Data Peserta </Typography>
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
                            <TableCell>{val.attributes.id}</TableCell>
                            <TableCell>{val.attributes.NAMA}</TableCell>
                            <TableCell>{val.attributes.NAMA}</TableCell>
                            <TableCell>
                            {/* Button Delete Peserta */}
                              <IconButton onClick={() => {deleteData(val.id, val.attributes.NAMA)}}>
                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <path fill-rule="evenodd" clip-rule="evenodd" d="M10 17.5C14.1421 17.5 17.5 14.1421 17.5 10C17.5 5.85786 14.1421 2.5 10 2.5C5.85786 2.5 2.5 5.85786 2.5 10C2.5 14.1421 5.85786 17.5 10 17.5ZM5.83333 11H14.1667V9H5.83333V11Z" fill="#FF3232"/>
                                </svg>
                              </IconButton>
                            {/* Button Edit Peserta */}
                              <IconButton href={"datapeserta/edit/" + val.attributes.NIP}>
                                <svg width="20" height="20" viewBox="0 0 20 20" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <path fill-rule="evenodd" clip-rule="evenodd" d="M11.7195 2.3799C11.747 2.47175 11.758 2.58156 11.78 2.80119C11.8215 3.21614 11.8422 3.42362 11.8945 3.55462C12.103 4.0768 12.701 4.32447 13.2176 4.10268C13.3473 4.04704 13.5086 3.915 13.8314 3.65093C14.0022 3.51117 14.0876 3.44129 14.172 3.39578C14.4996 3.21913 14.8982 3.23901 15.2065 3.44738C15.286 3.50105 15.364 3.57908 15.5201 3.73514L15.5201 3.73516L16.2646 4.47971C16.4207 4.63579 16.4987 4.71382 16.5524 4.79326C16.7608 5.10163 16.7807 5.5002 16.604 5.82778C16.5585 5.91217 16.4886 5.99758 16.3489 6.16841L16.3489 6.16842C16.0848 6.49118 15.9527 6.65256 15.8971 6.78219C15.6753 7.29887 15.923 7.89677 16.4451 8.1053C16.5761 8.15762 16.7836 8.17837 17.1986 8.21987L17.1986 8.21987C17.4183 8.24183 17.5281 8.25281 17.6199 8.28031C17.9765 8.38703 18.2442 8.68291 18.315 9.04829C18.3332 9.14243 18.3332 9.25279 18.3332 9.47353V10.5266C18.3332 10.7472 18.3332 10.8575 18.315 10.9516C18.2443 11.317 17.9765 11.613 17.6199 11.7197C17.528 11.7472 17.4183 11.7581 17.1987 11.7801L17.1987 11.7801C16.7839 11.8216 16.5765 11.8423 16.4456 11.8946C15.9233 12.1031 15.6756 12.7011 15.8975 13.2179C15.9531 13.3475 16.0851 13.5087 16.349 13.8313C16.4887 14.002 16.5585 14.0874 16.604 14.1717C16.7807 14.4994 16.7608 14.898 16.5524 15.2064C16.4987 15.2858 16.4208 15.3638 16.2648 15.5198L15.5201 16.2645C15.364 16.4205 15.286 16.4986 15.2066 16.5522C14.8982 16.7606 14.4996 16.7805 14.1721 16.6038C14.0877 16.5583 14.0023 16.4884 13.8314 16.3487C13.5087 16.0846 13.3473 15.9526 13.2177 15.8969C12.701 15.6751 12.1031 15.9228 11.8946 16.445C11.8422 16.576 11.8215 16.7835 11.78 17.1986L11.78 17.1986C11.758 17.4184 11.747 17.5283 11.7195 17.6202C11.6128 17.9766 11.3169 18.2444 10.9516 18.3151C10.8574 18.3333 10.747 18.3333 10.5262 18.3333H9.47337C9.25264 18.3333 9.14228 18.3333 9.04814 18.3151C8.68276 18.2444 8.38688 17.9766 8.28016 17.6201C8.25266 17.5282 8.24168 17.4184 8.21972 17.1988L8.21972 17.1988C8.17822 16.7838 8.15747 16.5763 8.10515 16.4453C7.89662 15.9231 7.29873 15.6755 6.78205 15.8972C6.65241 15.9529 6.49102 16.0849 6.16823 16.349L6.16822 16.349C5.99739 16.4888 5.91197 16.5587 5.82758 16.6042C5.50001 16.7809 5.10145 16.761 4.79308 16.5526C4.71364 16.4989 4.63559 16.4209 4.47951 16.2648L3.73498 15.5203L3.73497 15.5203C3.5789 15.3642 3.50086 15.2862 3.44718 15.2067C3.23882 14.8984 3.21894 14.4998 3.39559 14.1722C3.44109 14.0878 3.51098 14.0024 3.65076 13.8316L3.65077 13.8316C3.91484 13.5088 4.04688 13.3474 4.10252 13.2178C4.32431 12.7011 4.07664 12.1032 3.55447 11.8947C3.42347 11.8424 3.21599 11.8216 2.80103 11.7801L2.80101 11.7801C2.58141 11.7581 2.4716 11.7472 2.37975 11.7197C2.02321 11.613 1.75543 11.3171 1.68472 10.9517C1.6665 10.8575 1.6665 10.7472 1.6665 10.5265V9.47361C1.6665 9.2528 1.6665 9.14239 1.68474 9.04822C1.75547 8.6829 2.0232 8.38706 2.37967 8.28033C2.47156 8.25282 2.58142 8.24183 2.80113 8.21986L2.80114 8.21986C3.21627 8.17835 3.42384 8.15759 3.55489 8.10523C4.07696 7.89668 4.32457 7.29889 4.10288 6.78227C4.04724 6.65258 3.91512 6.49111 3.6509 6.16817C3.51103 5.99722 3.44109 5.91174 3.39557 5.82729C3.219 5.49978 3.23888 5.10131 3.44716 4.79299C3.50086 4.71349 3.57894 4.6354 3.73512 4.47923L4.47955 3.7348C4.63563 3.57871 4.71367 3.50067 4.79312 3.44699C5.10149 3.23864 5.50005 3.21876 5.82761 3.39539C5.91201 3.4409 5.99745 3.51081 6.16833 3.65063C6.49104 3.91466 6.65239 4.04667 6.78195 4.1023C7.2987 4.32419 7.89674 4.07648 8.10524 3.55418C8.15751 3.42323 8.17825 3.21585 8.21973 2.80108L8.21973 2.80107C8.24168 2.58155 8.25266 2.4718 8.28013 2.37999C8.38684 2.02338 8.68278 1.75555 9.04824 1.68486C9.14233 1.66666 9.25263 1.66666 9.47325 1.66666H10.5263C10.747 1.66666 10.8574 1.66666 10.9515 1.68487C11.3169 1.75559 11.6128 2.02336 11.7195 2.3799ZM9.99984 13.3333C11.8408 13.3333 13.3332 11.8409 13.3332 9.99999C13.3332 8.15904 11.8408 6.66666 9.99984 6.66666C8.15889 6.66666 6.6665 8.15904 6.6665 9.99999C6.6665 11.8409 8.15889 13.3333 9.99984 13.3333Z" fill="#5A6169"/>
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
            {/* <Pagination style={{display: "flex", justifyContent: "center"}} count={10} variant="outlined" shape="rounded" /> */}
          </Container>
        </div>  
    )
};

export default DataPeserta;