import './App.css';
import 'bootstrap/dist/css/bootstrap.min.css';
import { BrowserRouter as Router, Routes, Route } from 'react-router-dom';
import Dashboard from './pages/Dashboard';
import Sidebar from './components/Sidebar/Sidebar';
import Master from './pages/Master';
import FitProper from './pages/FitProper';
import Report from './pages/Report';
import AdministrasiUsers from './pages/AdministrasiUsers';
import PencarianFitProper from './pages/PencarianFitProper';
import DataPeserta from './pages/DataPeserta';
import DataPenguji from './pages/DataPenguji';
import RekapNilaiWawancara from './pages/RekapNilaiWawancara';
import RekapNilaiFitProper from './pages/RekapNilaiFitProper';
import RekapManualNilaiFitProper from './pages/RekapManualNilaiFitProper';
import CetakNilaiWawancara from './pages/CetakNilaiWawancara';
import CetakNilaiFitProper from './pages/CetakNilaiFitProper';
import PendaftaranFitProper from './pages/PendaftaranFitProper';
import PendaftaranWawancara from './pages/PendaftaranWawancara';
import PenilaianWawancara from './pages/PenilaianWawancara';
import PenilaianFitProper from './pages/PenilaianFitProper';

function App() {
  return (
    <>
      <Router>
        <Sidebar>
          <Routes>
            <Route path="/" element={<Dashboard />} />
            <Route path="/fitproper" element={<FitProper />} />
            <Route path="/master" element={<Master />} />
            <Route path="/report" element={<Report />} />
            <Route path="/administrasiusers" element={<AdministrasiUsers />} />
            <Route path="/pencarianfitproper" element={<PencarianFitProper />} />
            <Route path="/master/datapeserta" element={<DataPeserta />} />
            <Route path="/master/datapenguji" element={<DataPenguji />} />
            <Route path="/report/rekapnilaiwawancara" element={<RekapNilaiWawancara />} />
            <Route path="/report/rekapnilaifitproper" element={<RekapNilaiFitProper />} />
            <Route path="/report/rekapmanualnilaifitproper" element={<RekapManualNilaiFitProper />} />
            <Route path="/report/cetaknilaiwawancara" element={<CetakNilaiWawancara />} />
            <Route path="/report/cetaknilaifitproper" element={<CetakNilaiFitProper />} />
            <Route path="/fitproper/pendaftaranfitproper" element={<PendaftaranFitProper />} />
            <Route path="/fitproper/pendaftaranwawancara" element={<PendaftaranWawancara />} />
            <Route path="/fitproper/penilaianwawancara" element={<PenilaianWawancara />} />
            <Route path="/fitproper/penilaianfitproper" element={<PenilaianFitProper />} />
            <Route path="*" element={<>not found</>} />
          </Routes>
        </Sidebar>
      </Router>
      <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" />
    </>
  );
}

export default App;
