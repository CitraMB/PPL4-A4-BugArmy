import { TableContainer, Table, TableHead, TableBody, TableRow, TableCell, Paper, TablePagination } from "@mui/material";
import PengujiLogo from "../../assets/icons/PengujiLogo";
import { useState, useEffect } from 'react';
import Axios from 'axios';
import * as React from 'react';

const columns = [
    { id: 'id', label: 'NO' },
    {
        id: 'nama',
        label: 'NAMA',
    },
    {
        id: 'nip',
        label: 'NIP',
        align: 'center',
    },
    {
        id: 'jabatan',
        label: 'JABATAN',
        align: 'center',
    },
    {
        id: 'proyeksi',
        label: 'PROYEKSI',
        align: 'center',
    },
    {
        id: 'tanggal',
        label: 'TANGGAL',
        align: 'center',
    },
];

export const TableFitProper = () => {

    const [data, setDatas] = useState([])
    const [page, setPage] = React.useState(0);
    const [rowsPerPage, setRowsPerPage] = React.useState(10);

    const handleChangePage = (event, newPage) => {
        setPage(newPage);
    };

    const handleChangeRowsPerPage = (event) => {
        setRowsPerPage(+event.target.value);
        setPage(0);
    };

    useEffect(() => {
        // Edit Endpoint Get List Pendaftaran Fit & Proper
        Axios.get('https://jsonplaceholder.typicode.com/posts')
            .then(res => {
                console.log("Getting from ::::", res.data)
                setDatas(res.data);
            }).catch(err => console.log(err))
    }, [])

    return (
        <Paper>
            <TableContainer sx={{ maxHeight: 440 }}>
                <Table aria-label="Fit Proper Tabel" stickyHeader>
                    <TableHead>
                        <TableRow>
                            {columns.map((column) => (
                                <TableCell
                                    key={column.id}
                                    align={column.align}
                                    style={{ paddingLeft: "30px" }}
                                >
                                    {column.label}
                                </TableCell>
                            ))}
                            <TableCell align="center">PENGUJI</TableCell>
                        </TableRow>
                    </TableHead>
                    <TableBody>
                        {data
                            .slice(page * rowsPerPage, page * rowsPerPage + rowsPerPage)
                            .map((data) => {
                                return (
                                    <TableRow hover role="checkbox" tabIndex={-1} key={data.code}>
                                        {columns.map((column) => {
                                            const value = data[column.id];
                                            return (
                                                <TableCell key={column.id} align={column.align} style={{ paddingLeft: "30px" }}>
                                                    {column.format && typeof value === 'number'
                                                        ? column.format(value)
                                                        : value}
                                                </TableCell>
                                            );
                                        })}
                                        <TableCell align="center"><a href="#"><PengujiLogo /></a></TableCell>
                                    </TableRow>
                                );
                            })}
                    </TableBody>
                </Table>
            </TableContainer >
            <TablePagination
                rowsPerPageOptions={[5, 10, 25]}
                component="div"
                count={data.length}
                rowsPerPage={rowsPerPage}
                page={page}
                onPageChange={handleChangePage}
                onRowsPerPageChange={handleChangeRowsPerPage}
            />
        </Paper >
    )
}

export default TableFitProper;