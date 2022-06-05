import React, { useState } from "react";

const DataPeserta = () => {
    return (
        <div id='pageDataPenguji' className='container p-4'>
            {/*TODO: buat bar pencarian disini*/}
            <div className='navbar h-136'>
                <div>
                    <form className="input-group">
                        <button className="btn " type="submit">Search</button>
                        <input className="form-control" type="search" placeholder="Search" aria-label="Search"/>
                    </form>
                </div>
                <div></div>
                <div></div>
            </div>

            <div className='pt-4 w-1000'>
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                    <p className='breadcrumb-item fw-light'>Master</p>
                    <p className='breadcrumb-item fw-bold'>Data Peserta</p>
                  </ol>
                </nav>
            </div>

            <div className="title" >
                <p className='h3'>Data Peserta</p>
            </div>

            <div className='pt-2'>
                <table className='table'>
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>NAMA</th>
                            <th>NIP</th>
                            <th>JABATAN</th>
                            <th>GRADE</th>
                            <th>JENJANG</th>
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
                            <td>Fungsional 1</td>
                            <td>EDIT</td>
                        </tr>
                        <tr>
                            <td>2</td>
                            <td>Alvin Andrian Rizki</td>
                            <td>201511003</td>
                            <td>Direktur Pemasaran</td>
                            <td>Integration 1</td>
                            <td>Fungsional 1</td>
                            <td>EDIT</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div className=''>
                <ul class="pagination">
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&#10094;</span>
                  </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                  <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&#10095;</span>
                  </a>
                </li>
              </ul>
            </div>

            <div>
                <footer className="fixed-bottom bg-primary">
                  <div className="container">
                    <span className="text-muted">Place sticky footer content here.</span>
                  </div>
                </footer>
            </div>  
      </div>  
    )
};

export default DataPeserta;