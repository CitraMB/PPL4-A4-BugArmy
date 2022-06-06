import HeaderTanpaPencarian from "../components/Header/HeaderTanpaPencarian";
import CekNIPLogo from "../assets/icons/CekNIPLogo";
import DoneCekLogo from "../assets/icons/DoneCekLogo";
import { InputBase, Button } from "@mui/material";
import Footer from "../components/Footer/Footer";

const PencarianFitProper = () => {
    return (
        <div className="PencarianFitProper">
            <HeaderTanpaPencarian />
            <div className="Title">
                <p className="TitleUtama">Pencarian Fit Proper</p>
                <p className="TitleSecond">Welcome To Pencarian Fit & Proper</p>
            </div>
            <div className="BoxSearch">
                <div className="TitleBox">
                    <CekNIPLogo />
                    <p className="TitleBoxSearch">Pencarian NIP Peserta</p>
                </div>
                <InputBase className="Inputbase" />
                <Button className="ButtonCekNIP" variant="outlined">
                    <DoneCekLogo />
                    <p>Submit</p>
                </Button>
            </div>
            <Footer />
        </div>
    );
};


function CheckLogo() {
  return (
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width="25"
      height="25"
      fill="none"
      viewBox="0 0 48 48"
    >
      <circle cx="24" cy="24" r="16" fill="#007BFF"></circle>
      <path
        stroke="#fff"
        strokeLinecap="round"
        strokeWidth="5"
        d="M17 22l5.293 5.293a1 1 0 001.414 0L39 12"
      ></path>
    </svg>
  );
}

export default PencarianFitProper;