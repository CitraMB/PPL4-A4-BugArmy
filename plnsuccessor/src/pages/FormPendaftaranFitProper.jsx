import HeaderTanpaPencarian from "../components/Header/HeaderTanpaPencarian";
import Footer from "../components/Footer/Footer";
import { Box, Button, Grid, InputBase, TextField } from "@mui/material";
import KembaliLogo from "../assets/icons/KembaliLogo"
import GearLogo from "../assets/icons/GearLogo";
import DoneCekLogo from "../assets/icons/DoneCekLogo";
import SelectedForm from "../components/Form/SelectedForm"

const FormPendaftaranFitProper = () => {
    return (
        <div className="FormPendaftaranFitProper">
            <HeaderTanpaPencarian />
            <Button href="/fitproper/pendaftaranfitproper" className="ButtonFormPendaftaranFitProper" variant="outlined">
                <KembaliLogo />
                <p>Kembali</p>
            </Button>
            <div className="TitleFormFitProper">
                <GearLogo />
                <p>Pendaftaran / Uploating  Peserta  Fit Proper</p>
            </div>
            <div className="BoxFormFitProper">
                <Grid container rowSpacing={1} columnSpacing={{ xs: 1, sm: 2, md: 3 }}>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">NIP</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Masukan NIP"
                            className="baseNIP"
                        />
                        <Button className="ButtonCekFormNIP" variant="outlined">
                            <DoneCekLogo />
                            <p>Cek</p>
                        </Button>
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Nama Lengkap</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Nama Lengkap"
                            className="baseNamaLengkap"
                            InputProps={{
                                readOnly: true,
                            }}
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Jabatan</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Jabatan"
                            className="baseJabatan"
                            InputProps={{
                                readOnly: true,
                            }}
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Grade</p>
                    </Grid>
                    <Grid item xs={6}>
                        <SelectedForm />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Date</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="BELUM BENER"
                            className="baseJabatan"
                            InputProps={{
                                readOnly: true,
                            }}
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Proyeksi</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Masukan Proyeksi"
                            className="baseProyeksi"
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Jenjang Jabatan</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Jenjang Jabatan"
                            className="baseJenjangJabatan"
                            InputProps={{
                                readOnly: true,
                            }}
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Jenis Fit & Proper</p>
                    </Grid>
                    <Grid item xs={6}>
                        <SelectedForm />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Pilih Urjab</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="BELUM BENER"
                            className="baseJenjangJabatan"
                        />
                    </Grid>
                </Grid>
            </div >
            <Footer />
        </div >
    )
};

export default FormPendaftaranFitProper;