import HeaderTanpaPencarian from "../components/Header/HeaderTanpaPencarian";
import CekNIPLogo from "../assets/icons/CekNIPLogo";
import DoneCekLogo from "../assets/icons/DoneCekLogo";
import { InputBase, Button } from "@mui/material";
import Footer from "../components/Footer/Footer";

const PencarianFitProper = () => {
    return (
        <div className="PencarianFitProper">
            <HeaderTanpaPencarian />
            <div className="TitlePencarianFitProper">
                <p className="TitleUtamaPencarianFitProper">Pencarian Fit Proper</p>
                <p className="TitleSecondPencarianFitProper">Welcome To Pencarian Fit & Proper</p>
            </div>
            <div className="BoxSearch">
                <div className="TitleBox">
                    <CekNIPLogo />
                    <p className="TitleBoxSearch">Pencarian NIP Peserta</p>
                </div>
                <InputBase className="Inputbase" />
                <Button className="ButtonCekNIP" variant="outlined">
                    <DoneCekLogo />
                    Submit
                </Button>
            </div>
            <Footer />
        </div>
    );
};

export default PencarianFitProper;