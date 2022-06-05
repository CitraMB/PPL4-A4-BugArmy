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
  Icon,
} from "@mui/material";
import axios from "axios";
import { useEffect, useState } from "react";
import swal from "sweetalert";
import DataLogoInsert from "../../assets/icons/DataLogoInsert";

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

const InsertDataPeserta = () => {
  const [check, setChecked] = useState(true);
  const [startDate, setStartDate] = useState(new Date());
  const [jabatan, setJabatan] = useState([]);
  const [grade, setGrade] = useState([]);
  const [jenjang, setJenjang] = useState([]); 
  const [dataPeserta, setDataPeserta] = useState({
    NIP: "",
    NAMA: "",
    EMAIL: "",
    TEMPAT_LAHIR: "",
    TANGGAL_LAHIR: "",
    NO_HP: "",
    JENIS_KELAMIN: "",
    AGAMA: "",
    ID_JABATAN: "",
    ID_GRADE: "",
    ID_JENJANG: "",
    JENJANG: ""
  })

  useEffect(() => {
    customEndpoints("jabatans", setJabatan);
    customEndpoints("grades", setGrade);
    customEndpoints("jenjangs?filters[ID_JABATAN][id][$eq]=" + dataPeserta.ID_JABATAN + "&filters[ID_GRADE][id][$eq]=" + dataPeserta.ID_GRADE, setJenjang);
    console.log(dataPeserta);
    if(jenjang.length !== 0 && dataPeserta.ID_JENJANG === ""){
      console.log(jenjang);
      setDataPeserta({ ...dataPeserta, ID_JENJANG: jenjang[0].id});
      setDataPeserta({ ...dataPeserta, JENJANG: jenjang[0].attributes.JENJANG});
    }
  },[dataPeserta])

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

  const customEndpoints = (endpoints, setter) => {
    axios.get("http://localhost:1337/api/" + endpoints).then((res) => {
      setter(res.data.data);
    })
  }

  const saveData = () => {
    const data = {
      NIP: dataPeserta.NIP,
      NAMA: dataPeserta.NAMA,
      EMAIL: dataPeserta.EMAIL,
      TEMPAT_LAHIR: dataPeserta.TEMPAT_LAHIR,
      TANGGAL_LAHIR: dataPeserta.TANGGAL_LAHIR,
      NO_HP: dataPeserta.NO_HP,
      JNS_KELAMIN: dataPeserta.JENIS_KELAMIN,
      STATUS_PEGAWAI: "Peserta",
      AGAMA: dataPeserta.AGAMA,
      ID_GRADE: dataPeserta.ID_GRADE,
      ID_JABATAN: {
        id: dataPeserta.ID_JABATAN,
        ID_JENJANG: dataPeserta.ID_JENJANG
      }
    }
    console.log("data:",data);
    axios.post('http://localhost:1337/api/pegawais', {
      data
    }).then((res) => {
      console.log(res);
      setChecked(true);
      swal("Berhasil", "Peserta berhasil ditambahkan.", "success");
    }).catch((error) => console.log( error.response ) );
  }

  return (
    <div>
      

      <Container>
        <Button href="/master/datapeserta" variant="outlined" size="small" startIcon={<KembaliLogo  />}>Kembali</Button>
        <br />
        <br />
        <Box sx={{ backgroundColor: 'white', paddingLeft: 2, paddingTop: 1, paddingBottom: 1, borderRadius: 3, border: '1px'}}>
          <Grid container direction="row">
            <Grid item>
            <Icon><DataLogoInsert /></Icon>
            </Grid>
            <Grid item>
            <Typography  sx={{paddingTop: 0.5}}>Input Data Peserta</Typography>
            </Grid>
          </Grid>
      </Box>
      </Container>
      <br />
      <br />
      <Container>
        <Box sx={{ backgroundColor: 'white' }}>
        <Grid container direction="column" spacing={1} sx={{padding: 3}}>
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
                      setDataPeserta({ ...dataPeserta, NIP: e.target.value}
                    )}}
                    variant="outlined"
                    size="small"
                  />
            </Grid>
            <Grid item>
              <Button variant="outlined" size="small" startIcon={<CheckLogo  />} onClick={() => getData(dataPeserta.nip)}>Cek</Button>
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
                      setDataPeserta({ ...dataPeserta, NAMA: e.target.value}
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
                      setDataPeserta({ ...dataPeserta, EMAIL: e.target.value}
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
                      setDataPeserta({ ...dataPeserta, TEMPAT_LAHIR: e.target.value}
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
                    id="TANGGAL_LAHIR"
                    variant="outlined"
                    size="small"
                    placeholder="Masukan Tanggal Lahir"
                    onChange={(e) => {
                      setDataPeserta({ ...dataPeserta, TANGGAL_LAHIR: e.target.value}
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
                      setDataPeserta({ ...dataPeserta, NO_HP: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>Jenis Kelamin</Typography>
            </Grid>
            <Grid item xs={2.5}>
            <FormControl fullWidth >
              <Select
                displayEmpty
                size="small"
                value={dataPeserta.JENIS_KELAMIN}
                placeholder="Pilih Jenis Kelamin"
                onChange={(e) => {
                  setDataPeserta({ ...dataPeserta, JENIS_KELAMIN: e.target.value}
                )}}
                disabled={check}
              >
                <MenuItem value="Pria">Pria</MenuItem>
                <MenuItem value="Wanita">Wanita</MenuItem>
              </Select>
            </FormControl>
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>Agama</Typography>
            </Grid>
            <Grid item  xs={2.5}>
              <FormControl fullWidth >
              <Select
                displayEmpty
                size="small"
                value={dataPeserta.AGAMA}
                placeholder="Pilih Agama"
                onChange={(e) => {
                  setDataPeserta({ ...dataPeserta, AGAMA: e.target.value}
                )}}
                disabled={check}
              >
                <MenuItem value="Buddha">Buddha</MenuItem>
                <MenuItem value="Hindu">Hindu</MenuItem>
                <MenuItem value="Islam">Islam</MenuItem>
                <MenuItem value="Konghucu">Konghucu</MenuItem>
                <MenuItem value="Kristen Katolik">Kristen Katolik</MenuItem>
                <MenuItem value="Kristen Protestan">Kristen Protestan</MenuItem>
              </Select>
            </FormControl>
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>Jabatan</Typography>
            </Grid>
            
            <Grid item  xs={2.5}>
              <FormControl fullWidth >
              <Select
                displayEmpty
                size="small"
                value={dataPeserta.JABATAN}
                placeholder="Pilih Jabatan"
                onChange={(e) => {
                  setDataPeserta({ ...dataPeserta, ID_JABATAN: e.target.value}
                )}}
                disabled={check}
              >
                {jabatan.map((val) => {
                  // console.log(val);
                  return (
                    <MenuItem key={val.id} value={val.id}>{val.attributes.JABATAN}</MenuItem>
                  )
                })}
              </Select>
            </FormControl>
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>Grade</Typography>
            </Grid>
            <Grid item  xs={2.5}>
              <FormControl fullWidth >
              <Select
                displayEmpty
                size="small"
                value={dataPeserta.GRADE}
                placeholder="Pilih Grade"
                onChange={(e) => {
                  setDataPeserta({ ...dataPeserta, ID_GRADE: e.target.value}
                )}}
                disabled={check}
              >
                {grade.map((val) => {
                  // console.log("grade", val);
                  return (
                    <MenuItem key={val.id} value={val.id}>{val.attributes.GRADE}</MenuItem>
                  )
                })}
              </Select>
            </FormControl>
            </Grid>
          </Grid>
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}>
            <Typography>Jenjang</Typography>
            </Grid>
            <Grid item sm={2.5}>
              <TextField
                    hiddenLabel
                    id="jenjang"
                    placeholder=""
                    value={dataPeserta.JENJANG}
                    variant="outlined"
                    size="small"
                    disabled
                  />
            </Grid>
          </Grid>
          {/* <Grid container item direction="row" spacing={1}>
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
                      setDataPeserta({ ...dataPeserta, ID_UNIT: e.target.value}
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
                      setDataPeserta({ ...dataPeserta, ID_DIREKTORAT: e.target.value}
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
                      setDataPeserta({ ...dataPeserta, ID_BIDANG: e.target.value}
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
                      setDataPeserta({ ...dataPeserta, ID_SUB_BIDANG: e.target.value}
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
                      setDataPeserta({ ...dataPeserta, FOTO: e.target.value}
                    )}}
                    disabled={check}
                  />
            </Grid>
          </Grid> */}
          <Grid container item direction="row" spacing={1}>
            <Grid item md={1.5}></Grid>
            <Grid item xs={1.2}>
              <Button variant="contained" size="small" startIcon={<SubmitLogo  />} onClick={saveData}>Submit</Button>
            </Grid>
            <Grid item xs={1}>
              <Button href="/master/datapeserta" variant="outlined" size="small" startIcon={<KembaliLogo  />}>Kembali</Button>
            </Grid>
          </Grid>
        </Grid>
        </Box>
      </Container>
      <br />
      <br />
      <br />
    </div>
  );
};

export default InsertDataPeserta;
