const AdministrasiUsers = () => {
    return (
        <div id='body' className='container p-4'>
            <img src="./assets/icons/check.png" alt="" />
            <div className='pt-4'>
                <p className="fw-light">Pencarian Fit Proper</p>
                <p className='h3'>Welcome To Administrasi Users</p>
            </div>
            <div className='mt-5 shadow w-100'>
                <table className='table'>
                    <thead>
                        <tr>
                            <th>NO</th>
                            <th>EDIT HAK AKSES</th>
                            <th>NIP</th>
                            <th>NAMA</th>
                            <th>AKSES</th>
                            <th>ADMINISTRASI USER</th>
                            <th>MASTER</th>
                            <th>DAFTAR FP</th>
                            <th>NILAI FP</th>
                            <th>REPORT</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>1</td>
                            <td><button className="btn btn-primary">Edit Akses</button></td>
                            <td>201511003</td>
                            <td>Alvin Andrian Rizki</td>
                            <td>201511003</td>
                            <td>201511003</td>
                            <td>201511003</td>
                            <td>201511003</td>
                            <td>201511003</td>
                            <td>201511003</td>
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

export default AdministrasiUsers;