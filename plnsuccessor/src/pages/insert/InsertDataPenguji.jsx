import {
  Button,
  Box,
  Grid,
  FormControl,
  IconButton,
  InputLabel,
  MenuItem,
  Select,
  TextField,
  Typography,
  Input,
  Container,
  alpha,
  InputBase,
  styled,
} from "@mui/material";
import axios from "axios";
import { useEffect, useState } from "react";
import swal from "sweetalert";

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

function SubmitLogo() {
  return (
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width="23"
      height="23"
      fill="none"
      viewBox="0 0 46 46"
    >
      <path
        fill="#fff"
        d="M10.665 14.83l4.102 7.178c.277.484.415.726.415.992 0 .265-.139.508-.415.992l-4.102 7.178c-1.238 2.167-1.857 3.25-1.375 3.788.483.537 1.627.037 3.913-.963l20.942-9.163c1.796-.785 2.694-1.178 2.694-1.832 0-.654-.898-1.047-2.694-1.832l-20.942-9.163c-2.286-1-3.43-1.5-3.913-.963-.482.537.137 1.62 1.375 3.788z"
      ></path>
    </svg>
  );
}

function KembaliLogo() {
  return (
    <svg
      xmlns="http://www.w3.org/2000/svg"
      width="20"
      height="15"
      fill="none"
      viewBox="0 0 40 35"
    >
      <path
        fill="#007BFF"
        fillRule="evenodd"
        d="M11.793 4.149L24.857 2.37c3.17-.431 4.756-.647 5.782.25 1.027.896 1.027 2.496 1.027 5.696v8.01H20.618l5.116-5.54-1.469-1.358-6.667 7.22-.626.678.626.679 6.667 7.22 1.47-1.358-5.117-5.54h11.048v8.01c0 3.2 0 4.8-1.027 5.696-1.026.896-2.612.68-5.782.25l-13.064-1.78c-1.649-.224-2.473-.336-2.967-.901-.493-.565-.493-1.398-.493-3.062V8.112c0-1.664 0-2.496.493-3.061.494-.565 1.318-.678 2.967-.902z"
        clipRule="evenodd"
      ></path>
    </svg>
  );
}

const InsertDataPenguji = () => {
  const [check, setChecked] = useState(true);
  const [dataPenguji, setDataPenguji] = useState({
    nip: "",
    id: "",
    nama: "",
    email: "",
    tempat_lahir: "",
    tanggal_lahir: "",
    no_hp: "",
    agama: "",
    jabatan: "",
    unit: "",
    grade: "",
    direktorat: "",
    bidang: "",
    sub_bidang: "",
    foto: ""
  })

  useEffect(() => {
  },[])

  const getData = (val) => {
    axios.get("http://localhost:1337/api/pegawais?filters[NIP][$eq]=" + val).then((res) => {
      console.log(res.data);
      if(res.data.data.length === 0){
        swal("Berhasil", "NIP belum terdaftar.", "success");
        setChecked(false);
      }else{
        swal("Gagal", "NIP sudah terdaftar.", "error");
        setChecked(true);
      }
    })
  }

  return (
    <div>
      <Container sx={{backgroundColor: 'secondary.main'}}>
        Kembali
        <Typography>NIP</Typography>
      </Container>
      <br />
      <Container>
        <Box bgColor="primary.main">
        <Grid container direction="column" spacing={1}>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5} alignItems="center" justifyContent="flex-end">
              <Typography>NIP</Typography>
            </Grid>
            <Grid item sm={2}>
              <TextField
                    hiddenLabel
                    id="nip"
                    placeholder="Masukan NIP"
                    onChange={(e) => {
                      setDataPenguji({ ...dataPenguji, nip: e.target.value}
                    )}}
                    variant="outlined"
                    size="small"
                  />
            </Grid>
            <Grid item>
              <Button variant="outlined" size="small" startIcon={<CheckLogo  />} onClick={() => getData(dataPenguji.nip)}>Cek</Button>
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
              <Typography>Nama Lengkap</Typography>
            </Grid>
            <Grid item>
              <TextField
                    hiddenLabel
                    id="nama"
                    variant="outlined"
                    size="small"
                    placeholder="Masukan Nama"
                    onChange={(e) => {
                      setDataPenguji({ ...dataPenguji, nama: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
          <Grid item md={1.5}>
              <Typography>Email</Typography>
            </Grid>
            <Grid item>
              <TextField
                    hiddenLabel
                    id="email"
                    variant="outlined"
                    size="small"
                    placeholder="Masukan Email"
                    onChange={(e) => {
                      setDataPenguji({ ...dataPenguji, email: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
              <Typography>Tempat Lahir</Typography>
            </Grid>
            <Grid item>
              <TextField
                    id="tempat_lahir"
                    variant="outlined"
                    size="small"
                    placeholder="Masukan Tempat Lahir"
                    onChange={(e) => {
                      setDataPenguji({ ...dataPenguji, tempat_lahir: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>Tanggal Lahir</Typography>
            </Grid>
            <Grid item>
              <TextField
                    id="tanggal_lahir"
                    variant="outlined"
                    size="small"
                    placeholder="Masukan Tanggal Lahir"
                    onChange={(e) => {
                      setDataPenguji({ ...dataPenguji, tanggal_lahir: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>No HP</Typography>
            </Grid>
            <Grid item>
              <TextField
                    id="no_hp"
                    variant="outlined"
                    size="small"
                    placeholder="Masukan NO HP"
                    onChange={(e) => {
                      setDataPenguji({ ...dataPenguji, no_hp: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>Agama</Typography>
            </Grid>
            <Grid item>
              <TextField
                    id="agama"
                    variant="outlined"
                    size="small"
                    placeholder="Masukan Agama"
                    onChange={(e) => {
                      setDataPenguji({ ...dataPenguji, agama: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>Jabatan</Typography>
            </Grid>
            <Grid item>
              <TextField
                    id="jabatan"
                    variant="outlined"
                    size="small"
                    placeholder="Masukan Jabatan"
                    onChange={(e) => {
                      setDataPenguji({ ...dataPenguji, jabatan: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>Unit</Typography>
            </Grid>
            <Grid item>
              <TextField
                    id="Unit"
                    variant="outlined"
                    size="small"
                    placeholder="Masukan Unit"
                    onChange={(e) => {
                      setDataPenguji({ ...dataPenguji, unit: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>Grade</Typography>
            </Grid>
            <Grid item>
              <TextField
                    id="grade"
                    variant="outlined"
                    size="small"
                    placeholder="Masukan Grade"
                    onChange={(e) => {
                      setDataPenguji({ ...dataPenguji, grade: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>Direktorat</Typography>
            </Grid>
            <Grid item>
              <TextField
                    id="direktorat"
                    variant="outlined"
                    size="small"
                    placeholder="Masukan Direktorat"
                    onChange={(e) => {
                      setDataPenguji({ ...dataPenguji, direktorat: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>Bidang</Typography>
            </Grid>
            <Grid item>
              <TextField
                    id="bidang"
                    variant="outlined"
                    size="small"
                    placeholder="Masukan Bidang"
                    onChange={(e) => {
                      setDataPenguji({ ...dataPenguji, bidang: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>Sub Bidang</Typography>
            </Grid>
            <Grid item>
              <TextField
                    id="sub_bidang"
                    variant="outlined"
                    size="small"
                    placeholder="Masukan Sub Bidang"
                    onChange={(e) => {
                      setDataPenguji({ ...dataPenguji, sub_bidang: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>Foto</Typography>
            </Grid>
            <Grid item>
              <TextField
                    id="jabatan"
                    variant="outlined"
                    size="small"
                    placeholder="Masukan Foto"
                    onChange={(e) => {
                      setDataPenguji({ ...dataPenguji, foto: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}></Grid>
            <Grid item xs={1.2}>
              <Button variant="contained" size="small" startIcon={<SubmitLogo  />}>Submit</Button>
            </Grid>
            <Grid item xs={1}>
              <Button href="/master/datapenguji" variant="outlined" size="small" startIcon={<KembaliLogo  />}>Kembali</Button>
            </Grid>
          </Grid>
        </Grid>
        </Box>
      </Container>
      <br />
      <br />
      <br />
     
      {/* <FormControl>
          <Grid container spacing={2} justifyContent="center">
            <Grid container item spacing={1}>
              <Grid item xs={4}>
                <Typography>NIP</Typography>
              </Grid>
              <Grid item xs={4}>
                <TextField
                  id="outlined-basic"
                  label=""
                  variant="outlined"
                  size="small"
                />
              </Grid>
              <Grid item xs={4}>
                <Button variant="outlined" startIcon={<CheckLogo  />}>Cek</Button>
              </Grid>
            </Grid>
            <Grid container item spacing={1}>
              <Grid item xs={4}>
                <Typography>NAMA LENGKAP</Typography>
              </Grid>
              <Grid item xs={8}>
                <TextField
                  id="outlined-basic"
                  label=""
                  variant="outlined"
                  size="small"
                  fullWidth
                  disabled={check}
                />
              </Grid>
            </Grid>
            <Grid container item spacing={1}>
              <Grid item xs={4}>
                <Typography>JABATAN</Typography>
              </Grid>
              <Grid item xs={4}>
                <TextField
                  id="outlined-basic"
                  label=""
                  variant="outlined"
                  size="small"
                  disabled={check}
                />
              </Grid>
            </Grid>
            <Grid container item spacing={1}>
              <Grid item xs={4}>
                <Typography>GRADE</Typography>
              </Grid>
              <Grid item xs={4}>
                <TextField
                  id="outlined-basic"
                  label=""
                  variant="outlined"
                  size="small"
                  disabled={check}
                />
              </Grid>
            </Grid>
            <Grid container item spacing={1}>
              <Grid item xs={4}>
                <Typography>JENJANG</Typography>
              </Grid>
              <Grid item xs={4}>
                <Select
                  id="outlined-basic"
                  labelId="label-jenjang"
                  value={check}
                  fullWidth
                  size="small">
                    <MenuItem>1</MenuItem>
                    <MenuItem>3</MenuItem>
                    <MenuItem>2</MenuItem>
                  </Select>
              </Grid>
            </Grid>
          </Grid>
      </FormControl> */}
    </div>
  );
};

export default InsertDataPenguji;
