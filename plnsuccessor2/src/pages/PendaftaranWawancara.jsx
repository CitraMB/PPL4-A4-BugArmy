// import { Button } from "@mui/material";
// import React from "react";
// import PendaftaranLogo from "../assets/icons/PendaftaranLogo";
// const PendaftaranWawancara = () => {
//     return (
//     <div id="pagePendaftaranWawancara" className='container p-4'>
//         <div className='pt-4 w-1000'>
//             <nav aria-label="breadcrumb">
//                 <ol class="breadcrumb">
//                     <p className='breadcrumb-item fw-light'>Fit Proper</p>
//                     <p className='breadcrumb-item fw-bold'>Pendaftaran Wawancara</p>
//                 </ol>
//             </nav>
//         </div>
//         <div className="title" >
//                 <p className='h3'>Welcome to Wawancara</p>
//         </div>
//         <div>
//             <Button href="/fitproper/pendaftaranWawancara/formPendaftaranWawancara" className="ButtonPendaftaranWawancara" variant="outlined">
//                 <p>pendaftaran</p>
//                 <PendaftaranLogo/>
//             </Button>
//             <Button href="#" className="ButtonEditPendaftaranFitProper" variant="outlined">
//                 <p>Edit List</p>
//             </Button>
//         </div>
//         <div className="tabelPendaftaranFitProper">
//                 <TableFitProper />
//         </div>
//         {/* <div className='pt-2'>
//                 <table className='table'>
//                     <thead>
//                         <tr>
//                             <th>NO</th>
//                             <th>NAMA</th>
//                             <th>NIP</th>
//                             <th>JABATAN</th>
//                             <th>PROYEKSI</th>
//                             <th>TGL FIT & PROPER</th>
//                             <th>PENGUJI</th>
//                             <th>FILE</th>
//                             <th>EDIT</th>
//                         </tr>
//                     </thead>
//                     <tbody>
//                         <tr>
//                             <td>1</td>
//                             <td>Alvin Andrian Rizki</td>
//                             <td>201511003</td>
//                             <td>Direktur Pemasaran</td>
//                             <td>Integration 1</td>
//                             <td>01-04-2022</td>
//                             <td></td>
//                             <td></td>
//                             <td>EDIT</td>
//                         </tr>
//                         <tr>
//                             <td>2</td>
//                             <td>Alvin Andrian Rizki</td>
//                             <td>201511003</td>
//                             <td>Direktur Pemasaran</td>
//                             <td>Integration 1</td>
//                             <td>01-04-2022</td>
//                             <td></td>
//                             <td></td>
//                             <td>EDIT</td>
//                         </tr>
//                     </tbody>
//                 </table>
//             </div> */}
//     </div>
// )
// };

// export default PendaftaranWawancara;
import HeaderTanpaPencarian from "../components/Header/HeaderTanpaPencarian";
import { Button } from "@mui/material";
import PendaftaranLogo from "../assets/icons/PendaftaranLogo";
import tableWawancara from "../Table/tableWawancara";

const PendaftaranWawancara = () => {
    return (
        <div className="PendaftaranFitProper">
            <HeaderTanpaPencarian />
            <div className="Title">
                <p className="TitleUtama">Pencarian Fit Proper / <span>Pendaftaran Peserta Fit & Proper</span></p>
                <p className="TitleSecond">Welcome To Pendaftaran Peserta  Fit  & Proper</p>
            </div>
            <Button href="/fitproper/pendaftaranWawancara/formPendaftaranWawancara" className="ButtonPendaftaranFitProper" variant="outlined">
                <p>Pendaftaran</p>
                <PendaftaranLogo />
            </Button>
            <Button href="#" className="ButtonEditPendaftaranFitProper" variant="outlined">
                <p>Edit List</p>
            </Button>
            <div className="tabelPendaftaranFitProper">
                <tableWawancara/>
            </div>
        </div>
    );
};

export default PendaftaranWawancara;