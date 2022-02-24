import React from 'react';
import "./ShowMembers.css"


const ShowMembers = (props) => {
    return(
    
        <div className='each-member'>
            <div className='member-components'>
                <p className='nims'>nim : {props.data.nim}</p>

                <p className='namas'>nama : {props.data.nama}</p>
            </div>

            <button className='btn-remove' onClick={() => props.remove(props.id)}>REMOVE</button>
        </div>
    
    )
}
//data ==> diterima dari hasil lempar nilai ke props
/*on CLick , ketika di klik akan memanggil function dari remove yang dikirim dari props , lalu 
function yang dipanggil akan diberikan props.id sebagai lemparan data untuk diproses guna sebagai id yg akan dihapus*/
export default ShowMembers;