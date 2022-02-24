import { useEffect, useState } from 'react';
import './App.css';
import CardList from './components/CardList';
import ApiStrapi from './config/ApiStrapi';

function App(){
  const [anggotas,setAnggotas]=useState([]);
  useEffect(()=>{
    ApiStrapi.find().then((res) =>{
      console.log(res);
      setAnggotas(res);
    });
  },[]);
  return (
    <div>
      <h1 className='Title'>MEMBER PROFILE</h1>
      <CardList anggotas={[anggotas]}/>
    </div>
  );
}

export default App;
