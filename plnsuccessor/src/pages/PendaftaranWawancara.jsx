import { Button } from "@mui/material";
import React from "react";
import PendaftaranLogo from "../assets/icons/PendaftaranLogo";
const PendaftaranWawancara = () => {
    return (
    <div id="pagePendaftaranWawancara" className='container p-4'>
        <div className='pt-4 w-1000'>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <p className='breadcrumb-item fw-light'>Fit Proper</p>
                    <p className='breadcrumb-item fw-bold'>Pendaftaran Wawancara</p>
                </ol>
            </nav>
        </div>
        <div className="title" >
                <p className='h3'>Welcome to Wawancara</p>
        </div>
        <div>
            <Button href="/fitproper/pendaftaranWawancara/formPendaftaranWawancara" className="ButtonPendaftaranWawancara" variant="outlined">
                <p>pendaftaran</p>
                <PendaftaranLogo/>
            </Button>
        </div>
        <div className='pt-2'>
                <table className='table'>
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>NAMA</th>
                            <th>NIP</th>
                            <th>JABATAN</th>
                            <th>PROYEKSI</th>
                            <th>TGL FIT & PROPER</th>
                            <th>PENGUJI</th>
                            <th>FILE</th>
                            <th>EDIT</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>Alvin Andrian Rizki</td>
                            <td>201511003</td>
                            <td>Direktur Pemasaran</td>
                            <td>Integration 1</td>
                            <td>01-04-2022</td>
                            <td></td>
                            <td></td>
                            <td>EDIT</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Alvin Andrian Rizki</td>
                            <td>201511003</td>
                            <td>Direktur Pemasaran</td>
                            <td>Integration 1</td>
                            <td>01-04-2022</td>
                            <td></td>
                            <td></td>
                            <td>EDIT</td>
                        </tr>
                    </tbody>
                </table>
            </div>
    </div>
)
};

export default PendaftaranWawancara;