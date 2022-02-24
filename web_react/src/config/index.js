import axios from "axios";
const Api = axios.create({
    baseURL: "http://localhost:1337"
});
export default Api;