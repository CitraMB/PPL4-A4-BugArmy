import React from 'react';
import "./ShowAllDataMember.css"


const ShowAllDataMember = (props) => {
    return(
    
        <div className='each-member'>
            <div className='member-components'>
                <p className='nims'>nim : {props.nim}</p>

                <p className='namas'>nama : {props.nama}</p>
            </div>

        </div>
    
    )
}

export default ShowAllDataMember;