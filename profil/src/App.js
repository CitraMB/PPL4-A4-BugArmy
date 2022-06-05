import { useState, useEffect } from 'react';
import './App.css';
import CardList from './components/CardList';
import CardAPI from './config/CardAPI';

function App() {
  const [anggotas, setAnggotas] = useState([]);

  useEffect(() => {
    CardAPI.find().then((res) => {
      console.log(res);
      setAnggotas(res.data);
    });
  }, []);

  return (
    <div>
      <header>
        <h1 className="fw-bold text-center py-4" >PROFIL KELOMPOK BugArmy</h1>
      </header>
      <CardList anggotas={anggotas} />
    </div>
  );
}

export default App;