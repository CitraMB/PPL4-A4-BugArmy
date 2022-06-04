import HeaderTanpaPencarian from "../components/Header/HeaderTanpaPencarian";
import Footer from "../components/Footer/Footer";
import { Button, Grid, TextField } from "@mui/material";
import KembaliLogo from "../assets/icons/KembaliLogo"
import GearLogo from "../assets/icons/GearLogo";
import DoneCekLogo from "../assets/icons/DoneCekLogo";
import SelectedFormGrade from "../components/Form/SelectedFormGrade"
import SelectedFormJenisFitProper from "../components/Form/SelectedFormJenisFitProper"
import SubmitLogo from "../assets/icons/SubmitLogo";

const FormPendaftaranFitProper = () => {

    const gradeValue = () => {
    }

    const JenisFitProperValue = () => {
    }

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
                            className="baseNIP"
                            placeholder="Masukan NIP"
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
                            className="baseNamaLengkap"
                            placeholder="Nama Lengkap"
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
                            className="baseJabatan"
                            placeholder="Jabatan"
                            InputProps={{
                                readOnly: true,
                            }}
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Grade</p>
                    </Grid>
                    <Grid item xs={6}>
                        <SelectedFormGrade gradeValue={gradeValue} />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Date</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            className="baseJabatan"
                            placeholder="Masukan Tanggal"
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
                            className="baseProyeksi"
                            placeholder="Masukan Proyeksi"
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
                            className="baseJenjangJabatan"
                            placeholder="Jenjang Jabatan"
                            InputProps={{
                                readOnly: true,
                            }}
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Jenis Fit & Proper</p>
                    </Grid>
                    <Grid item xs={6}>
                        <SelectedFormJenisFitProper JenisFitProperValue={JenisFitProperValue} />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Pilih Urjab</p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            className="basePilihUrjab"
                            placeholder="Masukan Uraian Jabatan"
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
                            className="baseUploadPPT"
                            placeholder="Masukan File PPT"
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
                            className="baseUploadCV"
                            placeholder="Masukan Curriculum Vitae"
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
                            className="basePenguji"
                            placeholder="Masukan Penguji 1"
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
                            className="basePenguji"
                            placeholder="Masukan Penguji 2"
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
                            className="basePenguji"
                            placeholder="Masukan Penguji 3"
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
                            className="basePenguji"
                            placeholder="Masukan Penguji 4"
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
                            className="basePenguji"
                            placeholder="Masukan Penguji 5"
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
                            className="basePenguji"
                            placeholder="Masukan Penguji 6"
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
                            className="basePenguji"
                            placeholder="Masukan Penguji 7"
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
                            className="basePenguji"
                            placeholder="Masukan Penguji 8"
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
                            className="basePenguji"
                            placeholder="Masukan Penguji 9"
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
                            className="basePenguji"
                            placeholder="Masukan Penguji 10"
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

export default FormPendaftaranFitProper;