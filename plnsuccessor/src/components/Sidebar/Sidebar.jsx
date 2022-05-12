import { AnimatePresence, motion } from "framer-motion";
import { NavLink } from "react-router-dom";
import AdministrasiUsersLogo from "../../assets/icons/AdministrasiUsersLogo";
import FitProperLogo from "../../assets/icons/FitProperLogo";
import HomeLogo from "../../assets/icons/HomeLogo"
import MasterLogo from "../../assets/icons/MasterLogo";
import PencarianFitProperLogo from "../../assets/icons/PencarianFitProperLogo";
import ReportLogo from "../../assets/icons/ReportLogo";
import MenuLogo from "../../assets/icons/MenuLogo";
import { useState } from "react";
import DataLogo from "../../assets/icons/DataLogo";
import ListLogo from "../../assets/icons/ListLogo";
import CheckLogo from "../../assets/icons/CheckLogo";
import BookLogo from "../../assets/icons/BookLogo";
import PrintLogo from "../../assets/icons/PrintLogo";
import SidebarMenu from "./SidebarMenu";

const routes = [
    {
        path: "/",
        name: "Dashboard",
        icon: <HomeLogo />
    },
    {
        path: "/master",
        name: "Master",
        icon: <MasterLogo />,
        subRoutes: [
            {
                path: "/master/datapeserta",
                name: "Data Peserta",
                icon: <DataLogo />,
            },
            {
                path: "/master/datapenguji",
                name: "Data Penguji",
                icon: <DataLogo />,
            }
        ],
    },
    {
        path: "/fitproper",
        name: "Fit Proper",
        icon: <FitProperLogo />,
        subRoutes: [
            {
                path: "/fitproper/pendaftaranfitproper",
                name: "Pendaftaran Fit & Proper",
                icon: <ListLogo />,
            },
            {
                path: "/fitproper/pendaftaranwawancara",
                name: "Pendaftaran Wawancara",
                icon: <ListLogo />,
            },
            {
                path: "/fitproper/penilaianfitproper",
                name: "Penilaian Fit & Proper",
                icon: <CheckLogo />,
            },
            {
                path: "/fitproper/penilaianwawancara",
                name: "Penilaian Wawancara",
                icon: <CheckLogo />,
            }
        ],
    },
    {
        path: "/report",
        name: "Report",
        icon: <ReportLogo />,
        subRoutes: [
            {
                path: "/report/rekapnilaifitproper",
                name: "Rekap Nilai Fit & Proper",
                icon: <BookLogo />,
            },
            {
                path: "/report/rekapmanualnilaifitproper",
                name: "Rekap Manual Nilai Fit & Proper",
                icon: <BookLogo />,
            },
            {
                path: "/report/cetaknilaifitproper",
                name: "Cetak Nilai Fit & Proper",
                icon: <PrintLogo />,
            },
            {
                path: "/report/rekapnilaiwawancara",
                name: "Rekap Nilai Wawancara",
                icon: <BookLogo />,
            },
            {
                path: "/report/cetaknilaiwawancara",
                name: "Cetak Nilai Wawancara",
                icon: <PrintLogo />,
            }
        ],
    },
    {
        path: "/pencarianfitproper",
        name: "Pencarian Fit Proper",
        icon: <PencarianFitProperLogo />
    },
    {
        path: "/administrasiusers",
        name: "Administrasi Users",
        icon: <AdministrasiUsersLogo />
    }
]

const Sidebar = ({ children }) => {
    const [isOpen, setIsOpen] = useState(false);
    const toggle = () => setIsOpen(!isOpen);

    const showAnimation = {
        hidden: {
            width: 0,
            opacity: 0,
            transition: {
                duration: 0.5,
            },
        },
        show: {
            opacity: 1,
            width: "auto",
            transition: {
                duration: 0.5,
            },
        },
    };

    return (
        <div className="main-container">
            <motion.div animate={{
                width: isOpen ? "230px" : "54px",
                transition: {
                    duration: 0.1,
                    type: "spring",
                    damping: 15,
                },
            }} className="sidebar">
                <div className="top_section">
                    {isOpen && (
                        <motion.h1
                            variants={showAnimation}
                            initial="hidden"
                            animate="show"
                            exit="hidden"
                            className="logo">
                            PLN <span>Successor</span>
                        </motion.h1>
                    )}
                    <div className="bars" onClick={toggle} ><MenuLogo /></div>
                </div>
                <section className="routes">
                    {routes.map((route, index) => {
                        if (route.subRoutes) {
                            return (
                                <SidebarMenu
                                    showAnimation={showAnimation}
                                    isOpen={isOpen}
                                    route={route}
                                    key={route.name} />
                            );
                        }
                        return (
                            <NavLink activeClassName="active" to={route.path} key={route.name} className="link">
                                <div className="icon">{route.icon}</div>
                                <AnimatePresence>
                                    {isOpen && <motion.div
                                        variant={showAnimation}
                                        initial="hidden"
                                        animate="show"
                                        exit="hidden"
                                        className="link_text">{route.name}</motion.div>}
                                </AnimatePresence>
                            </NavLink>
                        )
                    })}
                </section>
            </motion.div>
            <main className="main">{children}</main>
        </div >
    );
};

export default Sidebar;
