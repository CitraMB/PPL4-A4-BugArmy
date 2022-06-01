import {
  Button,
  Dialog,
  DialogActions,
  DialogContent,
  DialogContentText,
  DialogTitle,
  Grid,
  FormControl,
  IconButton,
  InputLabel,
  MenuItem,
  Select,
  TextField,
  Typography,
} from "@mui/material";
import axios from "axios";
import { useEffect, useState } from "react";
import AddLogo from "../../assets/icons/AddLogo";

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

const InsertDataPenguji = () => {
  const [open, setOpen] = useState(false);
  const [check, setCheck] = useState(true);
  const handleOpen = () => {
    setOpen(true);
  };
  const handleClose = () => {
    setOpen(false);
  };

  useEffect(() => {
  },[])

  const getData = (val) => {
    axios.get("http://localhost:1337/api/" + val).then((res) => {
      return res.data.data;
    })
  }

  return (
    <div>
      <IconButton onClick={handleOpen}>
        <AddLogo />
      </IconButton>
      <Dialog open={open} maxWidth="md">
        <DialogTitle style={{ fontWeight: "bold" }}>
          INPUT DATA PENGUJI
        </DialogTitle>
        <DialogContent>
<FormControl>
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
</FormControl>
        </DialogContent>
        <DialogActions>
          <Button onClick={handleClose}>Kembali</Button>
          <Button onClick={handleClose}>Simpan</Button>
        </DialogActions>
      </Dialog>
    </div>
  );
};

export default InsertDataPenguji;
