import { Breadcrumbs, Container, Grid, AppBar, Avatar, Toolbar, Typography } from "@mui/material";
import React, { useEffect, useState } from 'react';
import axios from 'axios';

const Dashboard = () => {
    const [peserta, setPeserta] = useState(0);
    const [penguji, setPenguji] = useState(0);
    const [fitproper, setFitproper] = useState(0);
    const [wawancara, setWawancara] = useState(0);

    useEffect(() => {
        if(peserta === 0){
          axios.get(`http://localhost:1337/api/pegawais?filters[status_pegawai][$eq]=Peserta`).then(res => {
            setPeserta(res.data.meta.pagination.total);
            if(penguji === 0){
              axios.get(`http://localhost:1337/api/pegawais?filters[status_pegawai][$eq]=Penguji`).then(res => {
                setPenguji(res.data.meta.pagination.total);
                if(fitproper === 0){
                  axios.get(`http://localhost:1337/api/fit-propers`).then(res => {
                    setFitproper(res.data.meta.pagination.total);
                    if(wawancara === 0){
                      axios.get(`http://localhost:1337/api/wawancaras`).then(res => {
                        setWawancara(res.data.meta.pagination.total);
                      })
                    }
                  })
                }
              })
            }
          })
        }
      },0);


    return (
        <div id='pageDashboard' className='container'>
          <AppBar position="static" sx={{backgroundColor: '#fff', color: '#000'}}>
            <Toolbar variant="dense" style={{margin: 5}}>
              <Grid container alignItems="center" spacing={2}>
                <Grid item xs={8.6}>
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
                <Typography fontWeight="bold">Dashboard</Typography>
              </Breadcrumbs>
              <Grid container>
                <Grid item>
                  <Typography fontSize={30} fontWeight="light">Welcome to Dashboard </Typography>
                </Grid>
              </Grid>
              <br />
              <br />

              <div className="row">
                <div className="col-lg-3 col-6">
                  <div className="small-box bg-info">
                    <div className="inner">
                      <h3>{peserta}</h3>
                      <p>Peserta</p>
                    </div>
                    <div className="icon">
                      <i className="ion ion-person-stalker" />
                    </div>
                    <a href="/master/datapeserta" className="small-box-footer">
                      More info <i className="fas fa-arrow-circle-right" />
                    </a>
                  </div>
                </div>

                <div className="col-lg-3 col-6">
                  <div className="small-box bg-success">
                    <div className="inner">
                      <h3>{penguji}</h3>
                      <p>Penguji</p>
                    </div>
                    <div className="icon">
                      <i className="ion ion-person" />
                    </div>
                    <a href="/master/datapenguji" className="small-box-footer">
                      More info <i className="fas fa-arrow-circle-right" />
                    </a>
                  </div>
                </div>
        
                <div className="col-lg-3 col-6">
                  <div className="small-box bg-warning">
                    <div className="inner text-white">
                      <h3>{fitproper}</h3>
                      <p>Fitroper</p>
                    </div>
                    <div className="icon">
                      <i className="ion ion-shuffle" />
                    </div>
                    <a href="/fitproper/pendaftaranfitproper" className="small-box-footer">
                      <a className="text-white">More info</a> <i className="fas fa-arrow-circle-right text-white" />
                    </a>
                  </div>
                </div>

                <div className="col-lg-3 col-6">
                  <div className="small-box bg-danger">
                    <div className="inner">
                      <h3>{wawancara}</h3>
                      <p>Wawancara</p>
                    </div>
                    <div className="icon">
                      <i className="ion ion-calendar" />
                    </div>
                    <a href="/fitproper/pendaftaranwawancara" className="small-box-footer">
                      More info <i className="fas fa-arrow-circle-right" />
                    </a>
                  </div>
                </div>
              </div>
          </Container>
        </div>
    );
};

export default Dashboard;