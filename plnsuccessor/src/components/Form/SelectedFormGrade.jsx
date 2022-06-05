import * as React from 'react';
import MenuItem from '@mui/material/MenuItem';
import FormControl from '@mui/material/FormControl';
import Select from '@mui/material/Select';

export default function SelectedFormGrade({ gradeValue }) {
    const [grade, setGrade] = React.useState('');

    const handleChange = (event) => {
        setGrade(event.target.value);
    };

    return (
        <FormControl sx={{ minWidth: 280 }} size="small">
            <Select
                labelId="demo-select-small"
                id="demo-select-small"
                value={grade}
                onChange={handleChange}
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
    );
}