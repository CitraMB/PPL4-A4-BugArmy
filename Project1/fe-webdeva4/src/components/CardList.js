import CardProfile from "./CardProfile";

export default function CardList({ mahasiswas }) {
    return (
        <>
            <div className="row justify-content-center text-center">
                {
                    mahasiswas.length === 0 ? (
                        <h3>No Mahasiswa</h3>
                    ) : (
                        mahasiswas.map((Mahasiswa) => {
                            return (
                                <div className="col-md-5">
                                    <CardProfile data={Mahasiswa} />
                                </div>
                            )
                        })
                    )
                }
            </div>
        </>
    );
}