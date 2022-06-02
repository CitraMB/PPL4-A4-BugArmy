import HeaderTanpaPencarian from "../components/Header/HeaderTanpaPencarian";
import Footer from "../components/Footer/Footer";
import { Button } from "@mui/material";
import PendaftaranLogo from "../assets/icons/PendaftaranLogo";
import TableFitProper from "../components/Table/TableFitProper";

const PendaftaranFitProper = () => {
    return (
        <div className="PendaftaranFitProper">
            <HeaderTanpaPencarian />
            <div className="Title">
                <p className="TitleUtama">Pencarian Fit Proper / <span>Pendaftaran Peserta Fit & Proper</span></p>
                <p className="TitleSecond">Welcome To Pendaftaran Peserta  Fit  & Proper</p>
            </div>
            <Button href="/fitproper/pendaftaranfitproper/formfitproper" className="ButtonPendaftaranFitProper" variant="outlined">
                <p>Pendaftaran</p>
                <PendaftaranLogo />
            </Button>
            <Button href="#" className="ButtonEditPendaftaranFitProper" variant="outlined">
                <p>Edit List</p>
            </Button>
            <div className="tabelPendaftaranFitProper">
                <TableFitProper />
            </div>
            <Footer />
        </div>
    );
};

export default PendaftaranFitProper;