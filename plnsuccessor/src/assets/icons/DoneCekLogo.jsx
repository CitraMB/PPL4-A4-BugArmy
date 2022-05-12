import React from "react";

function Icon() {
    return (
        <svg
            xmlns="http://www.w3.org/2000/svg"
            width="20"
            height="20"
            fill="none"
            viewBox="8 0 48 48"
        >
            <circle cx="24" cy="24" r="16" fill="#007BFF"></circle>
            <path
                stroke="#fff"
                strokeLinecap="round"
                strokeWidth="5"
                d="M17 22l5.293 5.293a1 1 0 001.414 0L39 12"
            ></path>
        </svg>
    );
}

export default Icon;