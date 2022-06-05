import * as React from 'react';
import Stack from '@mui/material/Stack';
import HeaderTanpaPencarian from "../components/Header/HeaderTanpaPencarian";
import Footer from "../components/Footer/Footer";
import { Button, Grid, TextField } from "@mui/material";
import KembaliLogo from "../assets/icons/KembaliLogo"
import GearLogo from "../assets/icons/GearLogo";
import DoneCekLogo from "../assets/icons/DoneCekLogo";
import SubmitLogo from "../assets/icons/SubmitLogo";
import { AdapterDateFns } from '@mui/x-date-pickers/AdapterDateFns';
import { MobileDatePicker } from '@mui/x-date-pickers/MobileDatePicker';
import { LocalizationProvider } from '@mui/x-date-pickers/LocalizationProvider';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';
import { useState } from 'react';
import Axios from 'axios';
import swal from 'sweetalert';

const FormPendaftaranFitProper = () => {
    const [data, setDatas] = useState([])
    const [value, setValue] = React.useState(null);
    const [nip, setNip] = React.useState('');
    const [valueGrade, setValueGrade] = React.useState('');
    const [jenisFP, setJenisFP] = React.useState('');

    const handleChange = (newValue) => {
        setValue(newValue);
    };

    const handleChangeJenisFP = (event) => {
        setJenisFP(event.target.value);
    };

    const handleChangeGrade = (event) => {
        setValueGrade(event.target.value);
    };

    const cekNip = (e) => {
        Axios.get('http://localhost:1337/api/fit-propers?sort=id&populate=ID_RIWAYAT.ID_PESERTA&populate=ID_RIWAYAT.ID_PENGUJI')
            .then(res => {
                console.log("Getting from ::::", res.data.data)
                setDatas(res.data.data);
            }).catch(err => console.log(err))

        {
            data.map((data) => {
                return (
                    function getFee(e) {
                        return ((e === data.attributes.ID_PESERTA.data.attributes.NIP) ? setDatas(e) : swal("Here's the title!", "...and here's the text!"));
                    }
                )
            })
        }
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
                        <form>
                            <TextField
                                id="outlined-basic"
                                variant="outlined"
                                size="small"
                                className="baseNIP"
                                placeholder="Masukan NIP"
                                value={nip}
                                onChange={(e) => setNip(e.target.value)}
                            />
                            <Button className="ButtonCekFormNIP" variant="outlined" onClick={cekNip}>
                                <DoneCekLogo />
                                <p>Cek</p>
                            </Button>
                        </form>
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
                        <FormControl sx={{ minWidth: 280 }} size="small">
                            <Select
                                labelId="demo-select-small"
                                id="demo-select-small"
                                value={valueGrade}
                                onChange={handleChangeGrade}
                            >
                                <MenuItem value="">
                                    <em>None</em>
                                </MenuItem>
                                <MenuItem value={"ADV01"}>ADV01</MenuItem>
                                <MenuItem value={"ADV02"}>ADV02</MenuItem>
                                <MenuItem value={"ADV03"}>ADV03</MenuItem>
                                <MenuItem value={"BAS01"}>BAS01</MenuItem>
                                <MenuItem value={"BAS02"}>BAS02</MenuItem>
                                <MenuItem value={"BAS03"}>BAS03</MenuItem>
                                <MenuItem value={"BAS4A"}>BAS4A</MenuItem>
                                <MenuItem value={"BAS4B"}>BAS4B</MenuItem>
                                <MenuItem value={"BAS4C"}>BAS4C</MenuItem>
                                <MenuItem value={"BAS4D"}>BAS4D</MenuItem>
                                <MenuItem value={"BAS4E"}>BAS4E</MenuItem>
                                <MenuItem value={"INT01"}>INT01</MenuItem>
                                <MenuItem value={"INT02"}>INT02</MenuItem>
                                <MenuItem value={"INT03"}>INT03</MenuItem>
                                <MenuItem value={"OPT01"}>OPT01</MenuItem>
                                <MenuItem value={"OPT02"}>OPT02</MenuItem>
                                <MenuItem value={"OPT03"}>opt03</MenuItem>
                                <MenuItem value={"OPT04"}>OPT04</MenuItem>
                                <MenuItem value={"SPE01"}>SPE01</MenuItem>
                                <MenuItem value={"SPE02"}>SPE02</MenuItem>
                                <MenuItem value={"SPE03"}>SPE03</MenuItem>
                                <MenuItem value={"SPE04"}>SPE04</MenuItem>
                                <MenuItem value={"SYS01"}>SYS01</MenuItem>
                                <MenuItem value={"SYS02"}>SYS02</MenuItem>
                                <MenuItem value={"SYS03"}>SYS03</MenuItem>
                                <MenuItem value={"SYS04"}>SYS04</MenuItem>
                            </Select>
                        </FormControl>
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Date</p>
                    </Grid>
                    <Grid item xs={6}>
                        <LocalizationProvider dateAdapter={AdapterDateFns}>
                            <Stack className="DatePickerFitProper">
                                <MobileDatePicker
                                    inputFormat="MM/dd/yyyy"
                                    value={value}
                                    onChange={handleChange}
                                    renderInput={(params) => <TextField {...params} />}
                                />
                            </Stack>
                        </LocalizationProvider>
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
                        <FormControl sx={{ minWidth: 280 }} size="small">
                            <Select
                                labelId="demo-select-small"
                                id="demo-select-small"
                                value={jenisFP}
                                onChange={handleChangeJenisFP}
                            >
                                <MenuItem value="">
                                    <em>None</em>
                                </MenuItem>
                                <MenuItem value={"Regular"}>Regular</MenuItem>
                                <MenuItem value={"Vcon"}>Vcon</MenuItem>
                            </Select>
                        </FormControl >
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
                            type="file"
                        />
                    </Grid>
                    <Grid item xs={3.5} className="form">
                        <p className="formTitle">Upload CV<span> *.pdf</span></p>
                    </Grid>
                    <Grid item xs={6}>
                        <TextField
                            id="outlined-basic"
                            variant="outlined"
                            size="small"
                            className="baseUploadCV"
                            type="file"
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