import api from ".";

export default {
    find: () => api.get("api/anggotas?populate=Peran").then((res) => res.data),
    detail: (id) => api.get(`api/anggotas?populate=Peran/${id}`).then((res) => res.data),
};