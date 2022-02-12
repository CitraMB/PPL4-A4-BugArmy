export default function CardProfile({ data }) {
    return (
        <div className="card mb-3 border border-4 border-dark" style={{ margin: "0 30px 0 30px" }}>
            <div className="card-body">
                <h5 className="card-title">{data.attributes.Nama}</h5>
                <h6 clasNames="card-subtitle mb-2 text-muted">{data.attributes.NIM}</h6>
                <p className="card-text">{data.attributes.Peran.data.attributes.Role}</p>
            </div>
        </div>
    )
}