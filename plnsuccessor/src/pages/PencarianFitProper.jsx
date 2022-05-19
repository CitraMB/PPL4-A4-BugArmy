import { Button, Container, Grid, TextField, Typography, Box, Table, TableContainer, TableCell, TableHead, TableRow, TableBody } from "@mui/material";
import PencarianFP from "../assets/icons/PencarianFP";

const columnTitle = [
  "NO",
  "NIP",
  "NAMA",
  "JABATAN PROYEKSI",
  "TGL uJIAN",
  "HASIL NILAI",
  "LIHAT REPORT NILAI"
];

const user = [

];

const PencarianFitProper = () => {
  return (
      <>
        <Container>
          <Typography>Pencarian Fit Proper</Typography>
          <Typography variant="h5">Welcome To Pencarian Fit & Proper</Typography>

          <Box>
            <Grid container>
              <Grid item sx={1}>
                <PencarianFP />
              </Grid>
              <Grid item sx={4}>
                <Typography>Pencarian NIP Peserta</Typography>
              </Grid>
            </Grid>
            <Grid container spacing={2}>
              <Grid item sx={{
                height: 10,
                width: 500,
              }} >
                <TextField fullWidth variant="outlined" />
              </Grid>
              <Grid item sx={1}>
                <Button variant="outlined" startIcon={<CheckLogo  />}>Submit</Button>
              </Grid>
            </Grid>
          </Box>

          <Box>
            <TableContainer>
              <Table>
                <TableHead>
                  <TableRow>
                   {columnTitle.map((col) =>
                      <TableCell>{col}</TableCell>
                    )}
                  </TableRow>
                </TableHead>
                <TableBody>

                </TableBody>
              </Table>
            </TableContainer>
          </Box>

        </Container>
      </>


        // <div id='body' className='container p-4'>
        //     <img src="./assets/icons/check.png" alt="" />
        //     <div className='pt-4'>
        //         <p className="fw-light">Pencarian Fit Proper</p>
        //         <p className='h3'>Welcome To Pencarian Fit Proper</p>
        //     </div>
        //     <div className="card shadow">
        //         <div className="card-body">
        //             <p className="card-title">Pencarian NIP Peserta</p>
        //             <form action="">
        //                 <div className="d-flex">
        //                     <input type="text" className="me-3"/>
        //                     <button className="btn btn-outline-info"><DataLogo />Submit</button>
        //                 </div>
        //             </form>
        //         </div>
        //     </div>
        //     <div className='mt-5 shadow'>
        //         <table className='table'>
        //             <thead>
        //                 <tr>
        //                     <th>NO</th>
        //                     <th>NIP</th>
        //                     <th>NAMA</th>
        //                     <th>JABATAN PROYEKSI</th>
        //                     <th>TGL UJIAN</th>
        //                     <th>HASIL NILAI</th>
        //                     <th>LIHAT REPORT NILAI</th>
        //                 </tr>
        //             </thead>
        //             <tbody>
        //                 <tr>
        //                     <td>1</td>
        //                     <td>201511003</td>
        //                     <td>Alvin Andrian Rizki</td>
        //                     <td>Direktur Pemasaran</td>
        //                     <td>20-04-2022</td>
        //                     <td>Tidak Diserahkan</td>
        //                     <td><button className="btn btn-primary">Lihat Nilai</button></td>
        //                 </tr>
        //             </tbody>
        //         </table>
        //     </div>

        //     <div>
        //         <footer className="fixed-bottom bg-primary">
        //           <div className="container">
        //             <span className="text-muted">Place sticky footer content here.</span>
        //           </div>
        //         </footer>
        //     </div>  
        // </div>  
    );
};


function CheckLogo() {
  return (
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width="25"
      height="25"
      fill="none"
      viewBox="0 0 48 48"
    >
      <circle cx="24" cy="24" r="16" fill="#007BFF"></circle>
      <path
        stroke="#fff"
        strokeLinecap="round"
        strokeWidth="5"
        d="M17 22l5.293 5.293a1 1 0 001.414 0L39 12"
      ></path>
    </svg>
  );
}

export default PencarianFitProper;