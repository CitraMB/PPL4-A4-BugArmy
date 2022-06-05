import * as React from 'react';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TableRow from '@mui/material/TableRow';
import Paper from '@mui/material/Paper';

function createData(NO,NAMA, NIP, JABATAN,PROYEKSI,TANGGAL,FILE) {
  return { NO,NAMA, NIP, JABATAN,PROYEKSI,TANGGAL,FILE};
}

const rows = [
  createData(1, "CHIKITA", "201511005", "mahasiswa", "dosen","16-04-2020","-"),
  createData('Ice cream sandwich', 237, 9.0, 37, 4.3),
  createData('Eclair', 262, 16.0, 24, 6.0),
  createData('Cupcake', 305, 3.7, 67, 4.3),
  createData('Gingerbread', 356, 16.0, 49, 3.9),
];

export default function PendaftaranWawancara() {
  return (
    <TableContainer component={Paper}>
      <Table sx={{ minWidth: 650 }} aria-label="simple table">
        <TableHead>
          <TableRow>
            <TableCell>NO</TableCell>
            <TableCell >NAMA</TableCell>
            <TableCell >NIP</TableCell>
            <TableCell >JABATAN</TableCell>
            <TableCell >PROYEKSI</TableCell>
            <TableCell >TANGGAL</TableCell>
            {/* <TableCell align="right">PENGUJI</TableCell> */}
            <TableCell>FILE</TableCell>
          </TableRow>
        </TableHead>
        <TableBody>
          {rows.map((row) => (
            <TableRow
            //   key={row.NO}
            //   sx={{ '&:last-child td, &:last-child th': { border: 0 } }}
            >
              <TableCell>{row.NO}</TableCell>
              <TableCell>{row.NAMA}</TableCell>
              <TableCell>{row.NIP}</TableCell>
              <TableCell>{row.JABATAN}</TableCell>
              <TableCell>{row.PROYEKSI}</TableCell>
              <TableCell>{row.TANGGAL}</TableCell>
              <TableCell>{row.FILE}</TableCell>
            </TableRow>
          ))}
        </TableBody>
      </Table>
    </TableContainer>
  );
}

