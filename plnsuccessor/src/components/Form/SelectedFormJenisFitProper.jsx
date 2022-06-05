import * as React from 'react';
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
            <Select
                labelId="demo-select-small"
                id="demo-select-small"
                value={jenisFP}
                onChange={handleChange}
            >
                <MenuItem value="">
                    <em>None</em>
                </MenuItem>
                <MenuItem value={"Regular"}>Regular</MenuItem>
                <MenuItem value={"Vcon"}>Vcon</MenuItem>
            </Select>
        </FormControl >
    );
}
