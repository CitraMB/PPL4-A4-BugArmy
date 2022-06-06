import { TableContainer, Table, TableHead, TableBody, TableRow, TableCell, Paper, TablePagination } from "@mui/material";
import PengujiLogo from "../../assets/icons/PengujiLogo";
import FileLogo from "../../assets/icons/FileLogo";
import GearLogo from "../../assets/icons/GearLogo";
import DeleteLogo from "../../assets/icons/DeleteLogo";
import { useState, useEffect } from 'react';
import Axios from 'axios';
import * as React from 'react';
import IconButton from '@mui/material/IconButton';
import Menu from '@mui/material/Menu';
import MenuItem from '@mui/material/MenuItem';
import swal from 'sweetalert';

const columns = [
    { id: 'id', label: 'NO', align: 'center' },
    {
        id: 'NAMA',
        label: 'NAMA',
    },
    {
        id: 'NIP',
        label: 'NIP',
    },
    {
        id: 'JABATAN',
        label: 'JABATAN',
    },
    {
        id: 'PROYEKSI',
        label: 'PROYEKSI',
    },
    {
        id: 'TANGGAL_PENDAFTARAN',
        label: 'TANGGAL',
    },
];

const ITEM_HEIGHT = 48;

export const TableEditFitProper = () => {

    const [data, setDatas] = useState([])
    const [page, setPage] = React.useState(0);
    const [rowsPerPage, setRowsPerPage] = React.useState(10);
    const [anchorEl, setAnchorEl] = React.useState(null);

    const open = Boolean(anchorEl);
    const handleClick = (event) => {
        setAnchorEl(event.currentTarget);
    };
    const handleClose = () => {
        setAnchorEl(null);
    };

    const handleChangePage = (event, newPage) => {
        setPage(newPage);
    };

    const handleChangeRowsPerPage = (event) => {
        setRowsPerPage(+event.target.value);
        setPage(0);
    };

    useEffect(() => {
        getList();
    }, [])

    const getList = () => {
        // Edit Endpoint Get List Pendaftaran Fit & Proper
        // http://localhost:1337/api/fit-propers
        // http://localhost:1337/api/fit-propers?sort=id&populate=ID_RIWAYAT.ID_PESERTA
        Axios.get(`http://localhost:1337/api/fit-propers?sort=id&populate=ID_RIWAYAT.ID_PESERTA&populate=ID_RIWAYAT.ID_PENGUJI`)
            .then(res => {
                console.log("Getting from ::::", res.data.data)
                setDatas(res.data.data);
            }).catch(err => console.log(err))
    }

    const deleteList = (id) => {
        swal({
            title: "Are you sure?",
            text: "Once deleted, you will not be able to recover this list!",
            icon: "warning",
            buttons: true,
            dangerMode: true,
        })
            .then((willDelete) => {
                if (willDelete) {
                    swal("Poof! Your List has been deleted!", {
                        icon: "success",
                    });
                    Axios.delete(`http://localhost:1337/api/fit-propers/${id}`)
                        .then(res => {
                            getList();
                            console.log("Getting from ::::", res.data.data)
                        }).catch(err => console.log(err))
                } else {
                    swal("Your list is safe!");
                }
            });
    };

    return (
        <Paper>
            <TableContainer sx={{ maxHeight: 440 }}>
                <Table aria-label="Fit Proper Tabel" stickyHeader>
                    <TableHead>
                        <TableRow>
                            {columns.map((column) => (
                                <TableCell
                                    key={column.id}
                                    align={column.align} ta
                                >
                                    {column.label}
                                </TableCell>
                            ))}
                            <TableCell align="center">PENGUJI</TableCell>
                            <TableCell align="center">FILE</TableCell>
                            <TableCell colSpan={2} align="center">EDIT</TableCell>
                        </TableRow>
                    </TableHead>
                    <TableBody>
                        {Array.from(data)
                            .slice(page * rowsPerPage, page * rowsPerPage + rowsPerPage)
                            .map((data) => {
                                return (
                                    <TableRow hover role="checkbox" tabIndex={-1} key={data.id}>
                                        <TableCell align="center" >{data.id}</TableCell>
                                        <TableCell >{data.attributes.ID_RIWAYAT.data[data.attributes.ID_RIWAYAT.data.length - 1].attributes.ID_PESERTA.data.attributes.NAMA}</TableCell>
                                        <TableCell >{data.attributes.ID_RIWAYAT.data[data.attributes.ID_RIWAYAT.data.length - 1].attributes.ID_PESERTA.data.attributes.NIP}</TableCell>
                                        <TableCell >{data.attributes.JENJANG_JABATAN}</TableCell>
                                        <TableCell >{data.attributes.PROYEKSI}</TableCell>
                                        <TableCell >{data.attributes.TANGGAL_DAFTAR}</TableCell>
                                        <TableCell align="center" ><IconButton
                                            onClick={handleClick}
                                        >
                                            <PengujiLogo />
                                        </IconButton>
                                            <Menu
                                                id="long-menu"
                                                MenuListProps={{
                                                    'aria-labelledby': 'long-button',
                                                }}
                                                anchorEl={anchorEl}
                                                open={open}
                                                onClose={handleClose}
                                                PaperProps={{
                                                    style: {
                                                        maxHeight: ITEM_HEIGHT * 4.5,
                                                        width: '20ch',
                                                    },
                                                }}
                                            >
                                                {data.attributes.ID_RIWAYAT.data.map((data) => {
                                                    return (
                                                        <MenuItem key={data.id} onClick={handleClose}>
                                                            {data.attributes.ID_PENGUJI.data.attributes.NAMA}
                                                        </MenuItem>
                                                    )
                                                })}
                                            </Menu></TableCell>
                                        <TableCell align="center" ><a href="#"><FileLogo /></a></TableCell>
                                        <TableCell className="btnDelete" align="center" ><a onClick={() => deleteList(data.id)} ><DeleteLogo /></a></TableCell>
                                        <TableCell className="btnEdit" align="center" ><a href="#"><GearLogo /></a></TableCell>
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

export default TableEditFitProper;