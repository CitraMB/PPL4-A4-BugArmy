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