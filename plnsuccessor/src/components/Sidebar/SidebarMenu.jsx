import { AnimatePresence, motion } from "framer-motion";
import React, { useState, useEffect } from "react";
import { IoIosArrowDown } from 'react-icons/io';
import { NavLink } from "react-router-dom";

const menuAnimation = {
    hidden: {
        opacity: 0,
        height: 0,
        padding: 0,
        transition: { duration: 0.3, when: "afterChildren" },
    },
    show: {
        opacity: 1,
        height: "auto",
        transition: {
            duration: 0.3,
            when: "beforeChildren",
        },
    },
};

const SidebarMenu = ({ showAnimation, route, isOpen, setIsOpen }) => {
    const [isMenuOpen, setIsMenuOpen] = useState(false);
    const toggleMenu = () => {
        setIsMenuOpen(!isMenuOpen);
        setIsOpen(true);
    };

    useEffect(() => {
        if (!isOpen) {
            setIsMenuOpen(false);
        }
    }, [isOpen]);
    return (
        <>
            <div className="menu" onClick={toggleMenu}>
                <div className="menu-item">
                    <div className="icon">{route.icon}</div>
                    <AnimatePresence>
                        {isOpen && <motion.div
                            variant={showAnimation}
                            initial="hidden"
                            animate="show"
                            exit="hidden"
                            className="link_text">{route.name}
                        </motion.div>}
                    </AnimatePresence>
                </div>
                <AnimatePresence>
                    {isOpen && (
                        <motion.div
                            animate={
                                isMenuOpen
                                    ? {
                                        rotate: -180,
                                    }
                                    : { rotate: 0 }
                            }
                        >
                            <IoIosArrowDown />
                        </motion.div>
                    )}
                </AnimatePresence>
            </div>
            <AnimatePresence>
                {isMenuOpen &&
                    <motion.div variants={menuAnimation}
                        initial="hidden"
                        animate="show"
                        exit="hidden"
                        className="menu-container">
                        {route.subRoutes.map((subRoute) => (
                            <NavLink
                                activeClassName="active"
                                to={subRoute.path}
                                className="link">
                                <div className="icon">{subRoute.icon}</div>
                                <AnimatePresence>
                                    {isOpen && <motion.div
                                        variant={showAnimation}
                                        initial="hidden"
                                        animate="show"
                                        exit="hidden"
                                        className="link_text">{subRoute.name}</motion.div>}
                                </AnimatePresence>
                            </NavLink>
                        ))}
                    </motion.div>}
            </AnimatePresence>
        </>
    )
}

export default SidebarMenu;