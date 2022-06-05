import HeaderTanpaPencarian from "../components/Header/HeaderTanpaPencarian";
import Footer from "../components/Footer/Footer";
import { Button } from "@mui/material";
import TableEditFitProper from "../components/Table/TableEditFitProper";
import KembaliLogo from "../assets/icons/KembaliLogo"

const EditListPendaftaranFitProper = () => {
    return (
        <div className="PendaftaranFitProper">
            <HeaderTanpaPencarian />
            <div className="Title">
                <p className="TitleUtama">Fit & Proper / Pendaftaran Peserta Fit & Proper / <span>Edit Pendaftaran Peserta Fit & Proper</span></p>
                <p className="TitleSecond">Edit Pendaftaran Peserta  Fit  & Proper</p>
            </div>
            <Button href="/fitproper/pendaftaranfitproper" className="ButtonEditListPendaftaranFitProper" variant="outlined">
                <KembaliLogo />
                <p>Kembali</p>
            </Button>
            <div className="tabelPendaftaranFitProper">
                <TableEditFitProper />
            </div>
            <Footer />
        </div>
    );
};

export default EditListPendaftaranFitProper;