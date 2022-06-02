import * as React from 'react';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';

export default function SelectedFormJenisFitProper({ jenisFitProper }) {
    const [jenisFP, setJenisFP] = React.useState('');

    const handleChange = (event) => {
        setJenisFP(event.target.value);
    };

    return (
        <FormControl sx={{ minWidth: 280 }} size="small">
            <InputLabel id="demo-select-small">Jenis Fit Proper</InputLabel>
            <Select
                labelId="demo-select-small"
                id="demo-select-small"
                value={jenisFP}
                label="Jenis Fit Proper"
                onChange={handleChange}
            >
                <MenuItem value="">
                    <em>None</em>
                </MenuItem>
                <MenuItem value={10}>Ten</MenuItem>
                <MenuItem value={20}>Twenty</MenuItem>
                <MenuItem value={30}>Thirty</MenuItem>
            </Select>
        </FormControl>
    );
}
