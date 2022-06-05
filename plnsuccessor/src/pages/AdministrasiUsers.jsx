<<<<<<< HEAD
import HeaderTanpaPencarian from "../components/Header/HeaderTanpaPencarian";
import Footer from "../components/Footer/Footer";

const AdministrasiUsers = () => {
    return (
        <div className="AdministrasiUsers">
            <HeaderTanpaPencarian />
            <div className="Title">
                <p className="TitleUtama">Administrasi Users</p>
                <p className="TitleSecond">Welcome To Administrasi Users</p>
            </div>
            <Footer />
        </div>
=======
import { Box, Container, Table, TableBody, TableCell, TableContainer, TableHead, TableRow, Typography } from "@mui/material";

const columnTitle = [
    "NO", 
    "EDIT HAK AKSES", 
    "NIP", 
    "NAMA", 
    "AKSES", 
    "ADMINISTRASI USER", 
    "MASTER", 
    "DAFTAR FP", 
    "NILAI FP", 
    "REPORT"
];

const user = [
    {
        id: 3,
        data: ["Full Akses","201511003","Alvin Andrian Rizki","Full Akses","1","Read","Daftar","Nilai FP","Report Button"]
    }
];

const AdministrasiUsers = () => {
    return (
        <>
        <br />
            <Container sx={{
                height: 600,
            }}>
                <Typography>Pencarian Fit Proper</Typography>
                <Typography variant="h4">Welcome To Administrasi Users</Typography>
            <br />
            <br />

                <Box sx={{
                    margin: 2,
                    borderRadius: 3,
                    backgroundColor: '#fff',
                }}>
                <TableContainer>
                <Table>
                    <TableHead>
                    <TableRow>
                        {columnTitle.map((col) =>
                        <TableCell>{col}</TableCell>
                        )}
                    </TableRow>
                    </TableHead>
                    <TableBody>
                        {user.map((col) =>
                            <TableRow>
                                <TableCell>{col.id}</TableCell>
                            {col.data.map((data) =>
                                <TableCell>{data}</TableCell>
                            )}
                            </TableRow>
                        )}
                    
                    </TableBody>
                </Table>
                </TableContainer>
                </Box>
            </Container>
  
        </>  
>>>>>>> origin/taufik
    );
};

export default AdministrasiUsers;