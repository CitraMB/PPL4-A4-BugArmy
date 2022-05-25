import api from ".";

export default {
    find: () => api.get("api/mahasiswas?populate=peranMhs").then((res) => res.data),
    detail: (id) => api.get(`api/mahasiswas?populate=peranMhs/${id}`).then((res) => res.data),
};