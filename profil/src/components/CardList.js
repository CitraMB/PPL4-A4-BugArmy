import CardProfile from "./CardProfile";

export default function CardList({ anggotas }) {
    return (
        <>
            <div className="row justify-content-center text-center">
                {
                    anggotas.length === 0 ? (
                        <h3>No Anggota</h3>
                    ) : (
                        anggotas.map((anggota) => {
                            return (
                                <div className="col-md-5">
                                    <CardProfile data={anggota} />
                                </div>
                            )
                        })
                    )
                }
            </div>
        </>
    );
}