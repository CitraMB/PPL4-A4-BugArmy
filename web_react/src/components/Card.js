import React from 'react';
export default function Card({data}){
    return(
        <div className="card">
            <div className="card-body">
                <h5 className="card-title">{data.attributes.Nim}</h5>
                <p className="card-text">{data.attributes.Nama}</p>
                <p className="card-text">{data.attributes.peran.data.attributes.status}</p>
                <a href="#" className="btn btn-primary">detail</a>
            </div>
        </div>
    )
}