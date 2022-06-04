import * as React from 'react';
import InputLabel from '@mui/material/InputLabel';
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
            <InputLabel id="demo-select-small">Grade</InputLabel>
            <Select
                labelId="demo-select-small"
                id="demo-select-small"
                value={grade}
                label="Grade"
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
                <MenuItem value={""}>Twenty</MenuItem>
                <MenuItem value={""}>Thirty</MenuItem>
                <MenuItem value={""}>Ten</MenuItem>
                <MenuItem value={""}>Twenty</MenuItem>
                <MenuItem value={""}>Thirty</MenuItem>
                <MenuItem value={""}>Ten</MenuItem>
                <MenuItem value={""}>Twenty</MenuItem>
                <MenuItem value={""}>Thirty</MenuItem>
                <MenuItem value={""}>Ten</MenuItem>
                <MenuItem value={""}>Twenty</MenuItem>
                <MenuItem value={""}>Thirty</MenuItem>
                <MenuItem value={""}>Ten</MenuItem>
                <MenuItem value={""}>Twenty</MenuItem>
                <MenuItem value={""}>Thirty</MenuItem>
                <MenuItem value={""}>Ten</MenuItem>
                <MenuItem value={""}>Twenty</MenuItem>
            </Select>
        </FormControl>
    );
}