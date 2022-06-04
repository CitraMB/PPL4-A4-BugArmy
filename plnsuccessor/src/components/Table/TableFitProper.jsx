import { TableContainer, Table, TableHead, TableBody, TableRow, TableCell, Paper, TablePagination } from "@mui/material";
import PengujiLogo from "../../assets/icons/PengujiLogo";
import { useState, useEffect } from 'react';
import Axios from 'axios';
import * as React from 'react';
import { render } from "react-dom";

const row = [
    {
        "id": 1,
        "attributes": {
            "TANGGAL_DAFTAR": "2022-05-02",
            "PROYEKSI": "JABATAN MD 3",
            "JENJANG_JABATAN": "Manajemen Dasar",
            "JENIS_FITPROPER": "Vcon",
            "URJAB": "Jabatan yang memiliki jenjang manajemen dasar pada PLN unit 1",
            "PPT_FITPROPER": "ppt03.pptx",
            "CV_FITPROPER": "cv03.pdf",
            "TANGGAL_UJI": "2022-05-09",
            "createdAt": "2022-05-07T09:40:03.152Z",
            "updatedAt": "2022-05-07T09:40:04.821Z",
            "publishedAt": "2022-05-07T09:40:04.804Z",
            "ID_RIWAYAT": {
                "data": [
                    {
                        "id": 1,
                        "attributes": {
                            "createdAt": "2022-06-04T05:40:32.920Z",
                            "updatedAt": "2022-06-04T05:40:49.766Z",
                            "publishedAt": "2022-06-04T05:40:49.751Z",
                            "ID_PESERTA": {
                                "data": {
                                    "id": 1,
                                    "attributes": {
                                        "NIP": "2015111000",
                                        "NAMA": "Aa Abdurahman",
                                        "EMAIL": "aa@gmail.com",
                                        "TEMPAT_LAHIR": "Bandung",
                                        "TANGGAL_LAHIR": "1986-05-16",
                                        "NO_HP": "088229479319",
                                        "JNS_KELAMIN": "Pria",
                                        "AGAMA": "Islam",
                                        "STATUS_PEGAWAI": "Peserta",
                                        "createdAt": "2022-05-07T09:40:03.152Z",
                                        "updatedAt": "2022-06-02T15:51:14.909Z",
                                        "publishedAt": "2022-05-07T09:40:04.804Z"
                                    }
                                }
                            }
                        }
                    }
                ]
            }
        }
    },
    {
        "id": 2,
        "attributes": {
            "TANGGAL_DAFTAR": "2022-06-01",
            "PROYEKSI": "JABATAN MD 1",
            "JENJANG_JABATAN": "Manajemen Dasar",
            "JENIS_FITPROPER": "Regular",
            "URJAB": "Jabatan yang memiliki jenjang manajemen dasar pada PLN unit 2",
            "PPT_FITPROPER": "ppt04.pptx",
            "CV_FITPROPER": "cv04.pdf",
            "TANGGAL_UJI": null,
            "createdAt": "2022-05-07T09:40:03.152Z",
            "updatedAt": "2022-05-07T09:40:04.821Z",
            "publishedAt": "2022-05-07T09:40:04.804Z",
            "ID_RIWAYAT": {
                "data": [
                    {
                        "id": 1,
                        "attributes": {
                            "createdAt": "2022-06-04T05:57:57.899Z",
                            "updatedAt": "2022-06-04T06:22:53.061Z",
                            "publishedAt": "2022-06-04T06:22:53.045Z",
                            "ID_PESERTA": {
                                "data": {
                                    "id": 1,
                                    "attributes": {
                                        "NIP": "2015111001",
                                        "NAMA": "Ab Skehens",
                                        "EMAIL": "ab@gmail.com",
                                        "TEMPAT_LAHIR": "Taoling",
                                        "TANGGAL_LAHIR": "1988-12-02",
                                        "NO_HP": "088229479320",
                                        "JNS_KELAMIN": "Pria",
                                        "AGAMA": "Islam",
                                        "STATUS_PEGAWAI": "Peserta",
                                        "createdAt": "2022-05-07T09:40:03.152Z",
                                        "updatedAt": "2022-06-02T13:19:12.084Z",
                                        "publishedAt": "2022-05-07T09:40:04.804Z"
                                    }
                                }
                            }
                        }
                    }
                ]
            }
        }
    }
]

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

class TableFitProper extends React.PureComponent {

    constructor() {
        super();
        this.state = {
            data: []
        }
    }

    componentWillMount() {
        // Edit Endpoint Get List Pendaftaran Fit & Proper
        // http://localhost:1337/api/fit-propers
        // http://localhost:1337/api/fit-propers?sort=id&populate=ID_RIWAYAT.ID_PESERTA
        Axios.get('http://localhost:1337/api/fit-propers?sort=id&populate=ID_RIWAYAT.ID_PESERTA')
            .then(res => {
                console.log("Getting from ::::", res.data.data)
                this.setState({
                    data: res.data.data
                })
            }).catch(err => console.log(err))
    }

    render() {
        const { data } = this.state
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
                                    >
                                        {column.label}
                                    </TableCell>
                                ))}
                                <TableCell align="center">PENGUJI</TableCell>
                            </TableRow>
                        </TableHead>
                        <TableBody>
                            {data
                                // .slice(page * rowsPerPage, page * rowsPerPage + rowsPerPage)
                                .map((data, id) => {
                                    return (
                                        <TableRow hover role="checkbox" key={id}>
                                            <TableCell align="center" >{data.id}</TableCell>
                                            <TableCell >{data.attributes.ID_RIWAYAT.data[0].attributes.ID_PESERTA.data.attributes.NAMA}</TableCell>
                                            <TableCell ></TableCell>
                                            <TableCell >{data.attributes.JENJANG_JABATAN}</TableCell>
                                            <TableCell >{data.attributes.PROYEKSI}</TableCell>
                                            <TableCell >{data.attributes.TANGGAL_DAFTAR}</TableCell>
                                            <TableCell align="center" ><a href="#"><PengujiLogo /></a></TableCell>
                                        </TableRow>
                                    );
                                })}
                        </TableBody>
                    </Table>
                </TableContainer >
                {/* <TablePagination
                    rowsPerPageOptions={[5, 10, 25]}
                    component="div"
                    count={data.length}
                    rowsPerPage={rowsPerPage}
                    page={page}
                    onPageChange={handleChangePage}
                    onRowsPerPageChange={handleChangeRowsPerPage}
                /> */}
            </Paper >
        )
    }
}

export default TableFitProper;