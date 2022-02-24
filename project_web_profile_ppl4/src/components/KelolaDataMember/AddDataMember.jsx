import React from 'react';
import './AddDataMember.css';

AddDataMember = (props) => {
    return(
        
        <div className='box-form'>
            <p>Menambahkan Anggota Baru</p>
            <label htmlFor="nim" >NIM : </label>
            <input type="text" name='nim' placeholder='isikan nim' />
            <label htmlFor="nama">NAMA : </label>
            <input type="text" name='nama' placeholder='isikan nama' />
        </div>
    )

    
}