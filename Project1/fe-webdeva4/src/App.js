import { useState, useEffect } from 'react';
import './App.css';
import CardList from './components/CardList';
import CardAPI from './config/CardAPI';

function App() {
  const [mahasiswas, setMahasiswas] = useState([]);

  useEffect(() => {
    CardAPI.find().then((res) => {
      console.log(res);
      setMahasiswas(res.data);
    });
  }, []);

  return (
    <div>
      <header>
        <h1 className="fw-bold text-center py-4" >Profil Kelompok BugArmy</h1>
      </header>
      <CardList mahasiswas={mahasiswas} />
    </div>
  );
}

export default App;