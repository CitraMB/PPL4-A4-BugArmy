/*merupakan halaman awal dari website berisi beberapa menu yang tersedia
* 
*/

import React,{Component, Fragment} from 'react';
import './Wellcome.css';
import ShowMembers from '../../components/KelolaDataMember/ShowMembers';
import axios from 'axios';

class Wellcome extends Component{
    state = {
        members : [],
        /*objek yang digunakan untuk menyimpan data input dari user*/ 
        formAddMembers : {
            nim : 12329,
            nama : 'jalan' 
        }
    }

    getAndShowDataMember = () => {
        axios.get(`http://localhost:1337/api/members`)
        .then((response) => {
            this.setState({
                members : response.data.data
            })
        })
    }

    RemoveHandler = (data) => {
        console.log(data);
        axios.delete(`http://localhost:1337/api/members/${data}`).then((result) => {
            this.getAndShowDataMember();
        })
        /*Jalankan API ini (axios.delete)
        Kemudian lakukan this.getAndShowDataMember, memanggil semua data kembali */
    } 


    InputHandler = (event) => {
        //console.log(event.target.value); //melakukan uji coba apakah event tersebut berhasil atau tidak
        //console.log(event.target);
        //mengambil target
        let title = event.target.value
        this.setState({
            formAddMembers : title
        })

    }

    componentDidMount(){
        this.getAndShowDataMember();
    }

    render(){
        return(
            <Fragment>
            <div className='all-container'>
                <div className='header'>
                    <p className='header-title'>WEB PROFIL KELOMPOK</p>
                </div>

                <div className='all-body'>
                    <div className='left-body'>
                       
                    </div>

                    <div className='right-body'>

                            <div className='box-form'>
                                <p>Menambahkan Anggota Baru</p>
                                <label htmlFor="nim" >NIM : </label>
                                <input type="text" name='nim' placeholder='isikan nim' onChange={this.InputHandler}/>
                                <label htmlFor="nama">NAMA : </label>
                                <input type="text" name='nama' placeholder='isikan nama' onChange={this.InputHandler}/>
                                <button className='btn-simpandata'>SIMPAN</button>
                                
                            </div>
                            <br />


                        {
                            this.state.members.map(members => {
                                return <ShowMembers key={members.id} id={members.id} data={members.attributes} remove={this.RemoveHandler}/>
                            })
                        }
                    </div>

                </div>
            </div>
            </Fragment>
        )
    }
}

export default Wellcome;