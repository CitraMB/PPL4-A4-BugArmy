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
        data: ["Alvin Andrian Rizki","201511003","Direktur Pemasaran","Integration 1","Fungsional 1","Edit", "Report Button"]
    }
];

const AdministrasiUsers = () => {
    return (
        <>
            <Container sx={{
                backgroundColor: '#F2F2F2',
                height: 600,
            }}>
                <Typography>Pencarian Fit Proper</Typography>
                <Typography variant="h4">Welcome To Administrasi Users</Typography>

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
    );
};

export default AdministrasiUsers;