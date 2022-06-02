import React from "react";
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
            <button style={{border:2,color:"blue"}} class="btn"> 
                <div style={{color:"blue"}}>Pendaftaran
                    <img style={{width:20, height:20}} src="../assets/icons/User_fill_add.png"/>
                </div> 
            </button>
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