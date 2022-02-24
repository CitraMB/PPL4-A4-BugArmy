import React from "react";
import Card from "./Card";
export default function CardList({anggotas}){
    return(
        <>
            <div className="row">
            {
                anggotas.length === 0 ? ( 
                <h3>Anggotas is empty</h3>
                ) : (
                    anggotas.map(anggota =>{
                    return(
                        <div className="col-md-2">
                        <Card/>
                        </div>
                    );
                })
            )}
            </div>
        </>
    )
}