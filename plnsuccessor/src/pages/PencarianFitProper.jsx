import DataLogo from "../assets/icons/CheckLogo";

const PencarianFitProper = () => {
    return (
        <div id='body' className='container p-4'>
            <img src="./assets/icons/check.png" alt="" />
            <div className='pt-4'>
                <p className="fw-light">Pencarian Fit Proper</p>
                <p className='h3'>Welcome To Pencarian Fit Proper</p>
            </div>
            <div className="card shadow">
                <div className="card-body">
                    <p className="card-title">Pencarian NIP Peserta</p>
                    <form action="">
                        <div className="d-flex">
                            <input type="text" className="me-3"/>
                            <button className="btn btn-outline-info"><DataLogo />Submit</button>
                        </div>
                    </form>
                </div>
            </div>
            <div className='mt-5 shadow'>
                <table className='table'>
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>NIP</th>
                            <th>NAMA</th>
                            <th>JABATAN PROYEKSI</th>
                            <th>TGL UJIAN</th>
                            <th>HASIL NILAI</th>
                            <th>LIHAT REPORT NILAI</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td>201511003</td>
                            <td>Alvin Andrian Rizki</td>
                            <td>Direktur Pemasaran</td>
                            <td>20-04-2022</td>
                            <td>Tidak Diserahkan</td>
                            <td><button className="btn btn-primary">Lihat Nilai</button></td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div>
                <footer className="fixed-bottom bg-primary">
                  <div className="container">
                    <span className="text-muted">Place sticky footer content here.</span>
                  </div>
                </footer>
            </div>  
        </div>  
    );
};

export default PencarianFitProper;