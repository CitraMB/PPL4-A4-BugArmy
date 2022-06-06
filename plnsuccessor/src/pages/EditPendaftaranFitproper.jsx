import HeaderTanpaPencarian from "../components/Header/HeaderTanpaPencarian";
import Footer from "../components/Footer/Footer";
import { Button, Grid, TextField } from "@mui/material";
import KembaliLogo from "../assets/icons/KembaliLogo"
import GearLogo from "../assets/icons/GearLogo";
import DoneCekLogo from "../assets/icons/DoneCekLogo";
import SelectedFormGrade from "../components/Form/SelectedFormGrade"
import SelectedFormJenisFitProper from "../components/Form/SelectedFormJenisFitProper"
import SubmitLogo from "../assets/icons/SubmitLogo";

const EditPendaftaranFitProper = () => {
    return (
        <div className="FormPendaftaranFitProper">
            <HeaderTanpaPencarian />
            <Button href="/fitproper/pendaftaranfitproper" className="ButtonFormPendaftaranFitProper" variant="outlined">
                <KembaliLogo />
                <p>Kembali</p>
            </Button>
            <div className="TitleFormFitProper">
                <GearLogo />
                <p>Mengubah / Update  Peserta  Fit Proper</p>
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
                            label="NIP"
                            className="baseNIP"
                            InputProps={{
                                readOnly: true,
                            }}
                        />
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
                        <SelectedFormGrade />
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
                            label="Proyeksi"
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
                        <SelectedFormJenisFitProper />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Pilih Urjab</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Urjab"
                            className="basePilihUrjab"
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Upload PPT<span> *.ppt/.ppx</span></p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="BELUM BENER"
                            className="baseUploadPPT"
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Upload CV<span> *.doc/.docx</span></p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="BELUM BENER"
                            className="baseUploadCV"
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Penguji 1</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Penguji 1"
                            className="basePenguji"
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Penguji 2</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Penguji 2"
                            className="basePenguji"
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Penguji 3</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Penguji 3"
                            className="basePenguji"
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Penguji 4</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Penguji 4"
                            className="basePenguji"
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Penguji 5</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Penguji 5"
                            className="basePenguji"
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Penguji 6</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Penguji 6"
                            className="basePenguji"
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Penguji 7</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Penguji 7"
                            className="basePenguji"
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Penguji 8</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Penguji 8"
                            className="basePenguji"
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Penguji 9</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Penguji 9"
                            className="basePenguji"
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Penguji 10</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            label="Penguji 10"
                            className="basePenguji"
                        />
                    </Grid>
                    <Button className="ButtonSubmitPendaftaranFitProper" variant="outlined">
                        <SubmitLogo />
                        <p>Submit</p>
                    </Button>
                </Grid>
            </div >
            <Footer />
        </div >
    )
};

export default EditPendaftaranFitProper;