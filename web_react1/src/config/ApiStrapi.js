import Api from ".";

export default {
    find: () => Api.get("/api/anggotas?populate=peran").then((res)=>res.data),
    detail: (id) => Api.get(`/api/anggotas/${id}?populate=peran`).then((res)=>res.data)
};