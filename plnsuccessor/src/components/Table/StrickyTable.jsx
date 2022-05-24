import * as React from 'react';
import Paper from '@mui/material/Paper';
import Table from '@mui/material/Table';
import TableBody from '@mui/material/TableBody';
import TableCell from '@mui/material/TableCell';
import TableContainer from '@mui/material/TableContainer';
import TableHead from '@mui/material/TableHead';
import TablePagination from '@mui/material/TablePagination';
import TableRow from '@mui/material/TableRow';
import PengujiLogo from '../../assets/icons/PengujiLogo'
import { Button } from '@mui/material';

const columns = [
    { id: 'nomor', label: 'NO', minWidth: 5 },
    { id: 'name', label: 'NAMA', minWidth: 100 },
    {
        id: 'nip',
        label: 'NIP',
        minWidth: 10,
        align: 'left'
    },
    {
        id: 'jabatan',
        label: 'JABATAN',
        minWidth: 100,
        align: 'left'
    },
    {
        id: 'proyeksi',
        label: 'PROYEKSI',
        minWidth: 100,
        align: 'left'
    },
    {
        id: 'tglFitProper',
        label: 'TANGGAL',
        minWidth: 10,
        align: 'left'
    },
    {
        id: 'penguji',
        label: 'PENGUJI',
        minWidth: 10
    },
    {
        id: 'file',
        label: 'FILE',
        minWidth: 10
    },
    {
        id: 'edit',
        label: 'EDIT',
        minWidth: 20
    }
];

function createData(nomor, name, nip, jabatan, proyeksi, tglFitProper, penguji, file, edit) {
    return { nomor, name, nip, jabatan, proyeksi, tglFitProper, penguji, file, edit };
}

const rows = [
    createData(1, 'Alvin Andrian Rizki', 201511003, "Direktur Pemasaran", "Integration I", "01-04-2022", <Button><PengujiLogo /></Button>),
    createData(2, 'Hilman Wasiandi Khairurrizal', 201511003, "Direktur Pemasaran", "Fungsional IV", "01-04-2022", <Button><PengujiLogo /></Button>),
    createData(3, 'Muhammad Rafid', 201511003, "Junior Analyst Pelayanan Pelanggan", "Integration I", "01-04-2022", <Button><PengujiLogo /></Button>),
    createData(4, 'Muhammad Taufik', 201511003, "Direktur Pemasaran", "Integration I", "01-04-2022", <Button><PengujiLogo /></Button>),
    createData(5, 'Nadhifah Nur Shadrina', 201511003, "Direktur Pemasaran", "Integration I", "01-04-2022", <Button><PengujiLogo /></Button>),
    createData(6, 'Oky Bagus Permana', 201511003, "Direktur Pemasaran", "Integration I", "01-04-2022", <Button><PengujiLogo /></Button>),
    createData(7, 'Ragil Aziz Ahmad Permana', 201511003, "Direktur Pemasaran", "Integration I", "01-04-2022", <Button><PengujiLogo /></Button>),
    createData(8, 'Yosua Lumbanraja', 201511003, "Direktur Pemasaran", "Integration I", "01-04-2022", <Button><PengujiLogo /></Button>),
    createData(9, 'Adrianus Simarmata', 201511003, "Direktur Pemasaran", "Integration I", "01-04-2022", <Button><PengujiLogo /></Button>),
    createData(10, 'Athirah Naurah Firdaus', 201511003, "Direktur Pemasaran", "Integration I", "01-04-2022", <Button><PengujiLogo /></Button>),
    createData(11, 'Wanda Nuriza Riyana', 201511003, "Direktur Pemasaran", "Integration I", "01-04-2022", <Button><PengujiLogo /></Button>),
    createData(12, 'Naufal DALHATS ZHALIFUNNAS', 201511003, "Direktur Pemasaran", "Integration I", "01-04-2022", <Button><PengujiLogo /></Button>),
    createData(13, 'Muhammad Aimar Aziz', 201511003, "Direktur Pemasaran", "Integration I", "01-04-2022", <Button><PengujiLogo /></Button>),
    createData(14, 'Muhammad Ali Kusnadin', 201511003, "Direktur Pemasaran", "Integration I", "01-04-2022", <Button><PengujiLogo /></Button>),
    createData(15, 'Diwan Purnama', 201511003, "Direktur Pemasaran", "Integration I", "01-04-2022", <Button><PengujiLogo /></Button>),
];

export default function StickyTable() {
    const [page, setPage] = React.useState(0);
    const [rowsPerPage, setRowsPerPage] = React.useState(10);

    const handleChangePage = (event, newPage) => {
        setPage(newPage);
    };

    const handleChangeRowsPerPage = (event) => {
        setRowsPerPage(+event.target.value);
        setPage(0);
    };

    return (
        <Paper sx={{ width: '100%', overflow: 'hidden' }}>
            <TableContainer sx={{ maxHeight: 440 }}>
                <Table stickyHeader aria-label="sticky table">
                    <TableHead>
                        <TableRow>
                            {columns.map((column) => (
                                <TableCell
                                    key={column.id}
                                    align={column.align}
                                    style={{ minWidth: column.minWidth }}
                                >
                                    {column.label}
                                </TableCell>
                            ))}
                        </TableRow>
                    </TableHead>
                    <TableBody>
                        {rows
                            .slice(page * rowsPerPage, page * rowsPerPage + rowsPerPage)
                            .map((row) => {
                                return (
                                    <TableRow hover role="checkbox" tabIndex={-1} key={row.code}>
                                        {columns.map((column) => {
                                            const value = row[column.id];
                                            return (
                                                <TableCell key={column.id} align={column.align}>
                                                    {column.format && typeof value === 'number'
                                                        ? column.format(value)
                                                        : value}
                                                </TableCell>
                                            );
                                        })}
                                    </TableRow>
                                );
                            })}
                    </TableBody>
                </Table>
            </TableContainer>
            <TablePagination
                rowsPerPageOptions={[10, 25, 100]}
                component="div"
                count={rows.length}
                rowsPerPage={rowsPerPage}
                page={page}
                onPageChange={handleChangePage}
                onRowsPerPageChange={handleChangeRowsPerPage}
            />
        </Paper>
    );
}
