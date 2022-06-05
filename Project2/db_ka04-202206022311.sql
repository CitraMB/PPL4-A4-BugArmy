--
-- PostgreSQL database dump
--

-- Dumped from database version 11.14 (Debian 11.14-0+deb10u1)
-- Dumped by pg_dump version 14.3

-- Started on 2022-06-02 23:11:40

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 3 (class 2615 OID 2200)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3572 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

--
-- TOC entry 205 (class 1259 OID 37879)
-- Name: admin_permissions; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.admin_permissions (
    id integer NOT NULL,
    action character varying(255),
    subject character varying(255),
    properties jsonb,
    conditions jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_permissions OWNER TO ka04;

--
-- TOC entry 204 (class 1259 OID 37877)
-- Name: admin_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.admin_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_permissions_id_seq OWNER TO ka04;

--
-- TOC entry 3573 (class 0 OID 0)
-- Dependencies: 204
-- Name: admin_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.admin_permissions_id_seq OWNED BY public.admin_permissions.id;


--
-- TOC entry 222 (class 1259 OID 37991)
-- Name: admin_permissions_role_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.admin_permissions_role_links (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.admin_permissions_role_links OWNER TO ka04;

--
-- TOC entry 209 (class 1259 OID 37905)
-- Name: admin_roles; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.admin_roles (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    description character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_roles OWNER TO ka04;

--
-- TOC entry 208 (class 1259 OID 37903)
-- Name: admin_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.admin_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_roles_id_seq OWNER TO ka04;

--
-- TOC entry 3574 (class 0 OID 0)
-- Dependencies: 208
-- Name: admin_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.admin_roles_id_seq OWNED BY public.admin_roles.id;


--
-- TOC entry 207 (class 1259 OID 37892)
-- Name: admin_users; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.admin_users (
    id integer NOT NULL,
    firstname character varying(255),
    lastname character varying(255),
    username character varying(255),
    email character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    registration_token character varying(255),
    is_active boolean,
    blocked boolean,
    prefered_language character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.admin_users OWNER TO ka04;

--
-- TOC entry 206 (class 1259 OID 37890)
-- Name: admin_users_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.admin_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.admin_users_id_seq OWNER TO ka04;

--
-- TOC entry 3575 (class 0 OID 0)
-- Dependencies: 206
-- Name: admin_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.admin_users_id_seq OWNED BY public.admin_users.id;


--
-- TOC entry 223 (class 1259 OID 37996)
-- Name: admin_users_roles_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.admin_users_roles_links (
    user_id integer,
    role_id integer
);


ALTER TABLE public.admin_users_roles_links OWNER TO ka04;

--
-- TOC entry 228 (class 1259 OID 49596)
-- Name: administrasi_userss; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.administrasi_userss (
    id integer NOT NULL,
    nama_admin character varying(255),
    password character varying(255),
    akses integer,
    administrasi_users boolean,
    master boolean,
    daftar_fp boolean,
    nilai_fp boolean,
    report boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.administrasi_userss OWNER TO ka04;

--
-- TOC entry 227 (class 1259 OID 49594)
-- Name: administrasi_userss_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.administrasi_userss_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.administrasi_userss_id_seq OWNER TO ka04;

--
-- TOC entry 3576 (class 0 OID 0)
-- Dependencies: 227
-- Name: administrasi_userss_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.administrasi_userss_id_seq OWNED BY public.administrasi_userss.id;


--
-- TOC entry 230 (class 1259 OID 49609)
-- Name: bidangs; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.bidangs (
    id integer NOT NULL,
    bidang character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.bidangs OWNER TO ka04;

--
-- TOC entry 259 (class 1259 OID 49769)
-- Name: bidangs_id_divisi_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.bidangs_id_divisi_links (
    bidang_id integer,
    divisi_id integer
);


ALTER TABLE public.bidangs_id_divisi_links OWNER TO ka04;

--
-- TOC entry 229 (class 1259 OID 49607)
-- Name: bidangs_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.bidangs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bidangs_id_seq OWNER TO ka04;

--
-- TOC entry 3577 (class 0 OID 0)
-- Dependencies: 229
-- Name: bidangs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.bidangs_id_seq OWNED BY public.bidangs.id;


--
-- TOC entry 232 (class 1259 OID 49619)
-- Name: direktorats; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.direktorats (
    id integer NOT NULL,
    direktorat character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.direktorats OWNER TO ka04;

--
-- TOC entry 231 (class 1259 OID 49617)
-- Name: direktorats_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.direktorats_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.direktorats_id_seq OWNER TO ka04;

--
-- TOC entry 3578 (class 0 OID 0)
-- Dependencies: 231
-- Name: direktorats_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.direktorats_id_seq OWNED BY public.direktorats.id;


--
-- TOC entry 260 (class 1259 OID 49774)
-- Name: direktorats_id_unit_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.direktorats_id_unit_links (
    direktorat_id integer,
    unit_id integer
);


ALTER TABLE public.direktorats_id_unit_links OWNER TO ka04;

--
-- TOC entry 234 (class 1259 OID 49629)
-- Name: divisis; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.divisis (
    id integer NOT NULL,
    divisi character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.divisis OWNER TO ka04;

--
-- TOC entry 261 (class 1259 OID 49779)
-- Name: divisis_id_direktorat_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.divisis_id_direktorat_links (
    divisi_id integer,
    direktorat_id integer
);


ALTER TABLE public.divisis_id_direktorat_links OWNER TO ka04;

--
-- TOC entry 233 (class 1259 OID 49627)
-- Name: divisis_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.divisis_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.divisis_id_seq OWNER TO ka04;

--
-- TOC entry 3579 (class 0 OID 0)
-- Dependencies: 233
-- Name: divisis_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.divisis_id_seq OWNED BY public.divisis.id;


--
-- TOC entry 213 (class 1259 OID 37931)
-- Name: files; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.files (
    id integer NOT NULL,
    name character varying(255),
    alternative_text character varying(255),
    caption character varying(255),
    width integer,
    height integer,
    formats jsonb,
    hash character varying(255),
    ext character varying(255),
    mime character varying(255),
    size numeric(10,2),
    url character varying(255),
    preview_url character varying(255),
    provider character varying(255),
    provider_metadata jsonb,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.files OWNER TO ka04;

--
-- TOC entry 212 (class 1259 OID 37929)
-- Name: files_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.files_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.files_id_seq OWNER TO ka04;

--
-- TOC entry 3580 (class 0 OID 0)
-- Dependencies: 212
-- Name: files_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.files_id_seq OWNED BY public.files.id;


--
-- TOC entry 224 (class 1259 OID 38001)
-- Name: files_related_morphs; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.files_related_morphs (
    file_id integer,
    related_id integer,
    related_type character varying(255),
    field character varying(255),
    "order" integer
);


ALTER TABLE public.files_related_morphs OWNER TO ka04;

--
-- TOC entry 236 (class 1259 OID 49639)
-- Name: fit_propers; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.fit_propers (
    id integer NOT NULL,
    tanggal_daftar date,
    proyeksi character varying(255),
    jenjang_jabatan character varying(255),
    jenis_fitproper character varying(255),
    urjab character varying(255),
    ppt_fitproper character varying(255),
    cv_fitproper character varying(255),
    tanggal_uji date,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.fit_propers OWNER TO ka04;

--
-- TOC entry 262 (class 1259 OID 49784)
-- Name: fit_propers_id_riwayat_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.fit_propers_id_riwayat_links (
    fit_proper_id integer,
    riwayat_ujian_id integer
);


ALTER TABLE public.fit_propers_id_riwayat_links OWNER TO ka04;

--
-- TOC entry 235 (class 1259 OID 49637)
-- Name: fit_propers_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.fit_propers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.fit_propers_id_seq OWNER TO ka04;

--
-- TOC entry 3581 (class 0 OID 0)
-- Dependencies: 235
-- Name: fit_propers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.fit_propers_id_seq OWNED BY public.fit_propers.id;


--
-- TOC entry 280 (class 1259 OID 52249)
-- Name: fit_propers_id_wawancara_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.fit_propers_id_wawancara_links (
    fit_proper_id integer,
    wawancara_id integer
);


ALTER TABLE public.fit_propers_id_wawancara_links OWNER TO ka04;

--
-- TOC entry 238 (class 1259 OID 49652)
-- Name: grades; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.grades (
    id integer NOT NULL,
    grade character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.grades OWNER TO ka04;

--
-- TOC entry 263 (class 1259 OID 49789)
-- Name: grades_id_jenjang_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.grades_id_jenjang_links (
    grade_id integer,
    jenjang_id integer
);


ALTER TABLE public.grades_id_jenjang_links OWNER TO ka04;

--
-- TOC entry 237 (class 1259 OID 49650)
-- Name: grades_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.grades_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.grades_id_seq OWNER TO ka04;

--
-- TOC entry 3582 (class 0 OID 0)
-- Dependencies: 237
-- Name: grades_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.grades_id_seq OWNED BY public.grades.id;


--
-- TOC entry 221 (class 1259 OID 37980)
-- Name: i18n_locale; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.i18n_locale (
    id integer NOT NULL,
    name character varying(255),
    code character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.i18n_locale OWNER TO ka04;

--
-- TOC entry 220 (class 1259 OID 37978)
-- Name: i18n_locale_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.i18n_locale_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.i18n_locale_id_seq OWNER TO ka04;

--
-- TOC entry 3583 (class 0 OID 0)
-- Dependencies: 220
-- Name: i18n_locale_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.i18n_locale_id_seq OWNED BY public.i18n_locale.id;


--
-- TOC entry 240 (class 1259 OID 49662)
-- Name: jabatans; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.jabatans (
    id integer NOT NULL,
    jabatan character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.jabatans OWNER TO ka04;

--
-- TOC entry 265 (class 1259 OID 49799)
-- Name: jabatans_id_jenjang_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.jabatans_id_jenjang_links (
    jabatan_id integer,
    jenjang_id integer
);


ALTER TABLE public.jabatans_id_jenjang_links OWNER TO ka04;

--
-- TOC entry 239 (class 1259 OID 49660)
-- Name: jabatans_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.jabatans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jabatans_id_seq OWNER TO ka04;

--
-- TOC entry 3584 (class 0 OID 0)
-- Dependencies: 239
-- Name: jabatans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.jabatans_id_seq OWNED BY public.jabatans.id;


--
-- TOC entry 264 (class 1259 OID 49794)
-- Name: jabatans_id_unit_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.jabatans_id_unit_links (
    jabatan_id integer,
    unit_id integer
);


ALTER TABLE public.jabatans_id_unit_links OWNER TO ka04;

--
-- TOC entry 242 (class 1259 OID 49672)
-- Name: jenjangs; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.jenjangs (
    id integer NOT NULL,
    jenjang character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.jenjangs OWNER TO ka04;

--
-- TOC entry 241 (class 1259 OID 49670)
-- Name: jenjangs_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.jenjangs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jenjangs_id_seq OWNER TO ka04;

--
-- TOC entry 3585 (class 0 OID 0)
-- Dependencies: 241
-- Name: jenjangs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.jenjangs_id_seq OWNED BY public.jenjangs.id;


--
-- TOC entry 243 (class 1259 OID 49680)
-- Name: pegawais_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.pegawais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pegawais_id_seq OWNER TO ka04;

--
-- TOC entry 244 (class 1259 OID 49682)
-- Name: pegawais; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.pegawais (
    id integer DEFAULT nextval('public.pegawais_id_seq'::regclass) NOT NULL,
    nip character varying(255),
    nama character varying(255),
    email character varying(255),
    tempat_lahir character varying(255),
    tanggal_lahir date,
    no_hp character varying(255),
    jns_kelamin character varying(255),
    agama character varying(255),
    status_pegawai character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.pegawais OWNER TO ka04;

--
-- TOC entry 266 (class 1259 OID 49809)
-- Name: pegawais_id_administrasi_users_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.pegawais_id_administrasi_users_links (
    pegawai_id integer,
    administrasi_users_id integer
);


ALTER TABLE public.pegawais_id_administrasi_users_links OWNER TO ka04;

--
-- TOC entry 268 (class 1259 OID 49819)
-- Name: pegawais_id_bidang_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.pegawais_id_bidang_links (
    pegawai_id integer,
    bidang_id integer
);


ALTER TABLE public.pegawais_id_bidang_links OWNER TO ka04;

--
-- TOC entry 269 (class 1259 OID 49824)
-- Name: pegawais_id_direktorat_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.pegawais_id_direktorat_links (
    pegawai_id integer,
    direktorat_id integer
);


ALTER TABLE public.pegawais_id_direktorat_links OWNER TO ka04;

--
-- TOC entry 270 (class 1259 OID 49829)
-- Name: pegawais_id_divisi_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.pegawais_id_divisi_links (
    pegawai_id integer,
    divisi_id integer
);


ALTER TABLE public.pegawais_id_divisi_links OWNER TO ka04;

--
-- TOC entry 271 (class 1259 OID 49834)
-- Name: pegawais_id_grade_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.pegawais_id_grade_links (
    pegawai_id integer,
    grade_id integer
);


ALTER TABLE public.pegawais_id_grade_links OWNER TO ka04;

--
-- TOC entry 272 (class 1259 OID 49839)
-- Name: pegawais_id_jabatan_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.pegawais_id_jabatan_links (
    pegawai_id integer,
    jabatan_id integer
);


ALTER TABLE public.pegawais_id_jabatan_links OWNER TO ka04;

--
-- TOC entry 273 (class 1259 OID 49844)
-- Name: pegawais_id_pendidikan_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.pegawais_id_pendidikan_links (
    pegawai_id integer,
    pendidilkan_id integer
);


ALTER TABLE public.pegawais_id_pendidikan_links OWNER TO ka04;

--
-- TOC entry 267 (class 1259 OID 49814)
-- Name: pegawais_id_sub_bidang_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.pegawais_id_sub_bidang_links (
    pegawai_id integer,
    sub_bidang_id integer
);


ALTER TABLE public.pegawais_id_sub_bidang_links OWNER TO ka04;

--
-- TOC entry 274 (class 1259 OID 49849)
-- Name: pegawais_id_unit_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.pegawais_id_unit_links (
    pegawai_id integer,
    unit_id integer
);


ALTER TABLE public.pegawais_id_unit_links OWNER TO ka04;

--
-- TOC entry 246 (class 1259 OID 49695)
-- Name: pendidilkans; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.pendidilkans (
    id integer NOT NULL,
    pendidikan character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.pendidilkans OWNER TO ka04;

--
-- TOC entry 245 (class 1259 OID 49693)
-- Name: pendidilkans_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.pendidilkans_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pendidilkans_id_seq OWNER TO ka04;

--
-- TOC entry 3586 (class 0 OID 0)
-- Dependencies: 245
-- Name: pendidilkans_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.pendidilkans_id_seq OWNED BY public.pendidilkans.id;


--
-- TOC entry 250 (class 1259 OID 49718)
-- Name: report_nilai_manuals; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.report_nilai_manuals (
    id integer NOT NULL,
    nilai_pengetahuan_60 integer,
    nilai_pengetahuan_40 integer,
    nilai_keterampilan_60 integer,
    nilai_keterampilan_40 integer,
    rekomendasi_penguji character varying(255),
    kelemahan character varying(255),
    kekuatan character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer,
    penilai character varying(255)
);


ALTER TABLE public.report_nilai_manuals OWNER TO ka04;

--
-- TOC entry 249 (class 1259 OID 49716)
-- Name: report_nilai_manuals_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.report_nilai_manuals_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.report_nilai_manuals_id_seq OWNER TO ka04;

--
-- TOC entry 3587 (class 0 OID 0)
-- Dependencies: 249
-- Name: report_nilai_manuals_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.report_nilai_manuals_id_seq OWNED BY public.report_nilai_manuals.id;


--
-- TOC entry 248 (class 1259 OID 49705)
-- Name: report_nilais; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.report_nilais (
    id integer NOT NULL,
    enthusiasthic integer,
    creative_innovative integer,
    building_business integer,
    strategic_orientation integer,
    customer_focus integer,
    driving_execution integer,
    visionary_leadership integer,
    empowering integer,
    keandalan_sistem integer,
    kecepatan_recovery integer,
    manajemen_aset integer,
    strategi_breakthrough integer,
    internal_readiness integer,
    external_readiness integer,
    cultural_politics integer,
    total double precision,
    kekuatan character varying(255),
    kelemahan character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.report_nilais OWNER TO ka04;

--
-- TOC entry 247 (class 1259 OID 49703)
-- Name: report_nilais_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.report_nilais_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.report_nilais_id_seq OWNER TO ka04;

--
-- TOC entry 3588 (class 0 OID 0)
-- Dependencies: 247
-- Name: report_nilais_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.report_nilais_id_seq OWNED BY public.report_nilais.id;


--
-- TOC entry 252 (class 1259 OID 49731)
-- Name: riwayat_ujians; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.riwayat_ujians (
    id integer NOT NULL,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.riwayat_ujians OWNER TO ka04;

--
-- TOC entry 277 (class 1259 OID 49869)
-- Name: riwayat_ujians_id_penguji_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.riwayat_ujians_id_penguji_links (
    riwayat_ujian_id integer,
    pegawai_id integer
);


ALTER TABLE public.riwayat_ujians_id_penguji_links OWNER TO ka04;

--
-- TOC entry 279 (class 1259 OID 51949)
-- Name: riwayat_ujians_id_peserta_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.riwayat_ujians_id_peserta_links (
    riwayat_ujian_id integer,
    pegawai_id integer
);


ALTER TABLE public.riwayat_ujians_id_peserta_links OWNER TO ka04;

--
-- TOC entry 276 (class 1259 OID 49859)
-- Name: riwayat_ujians_id_report_manual_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.riwayat_ujians_id_report_manual_links (
    riwayat_ujian_id integer,
    report_nilai_manual_id integer
);


ALTER TABLE public.riwayat_ujians_id_report_manual_links OWNER TO ka04;

--
-- TOC entry 275 (class 1259 OID 49854)
-- Name: riwayat_ujians_id_report_nilai_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.riwayat_ujians_id_report_nilai_links (
    riwayat_ujian_id integer,
    report_nilai_id integer
);


ALTER TABLE public.riwayat_ujians_id_report_nilai_links OWNER TO ka04;

--
-- TOC entry 251 (class 1259 OID 49729)
-- Name: riwayat_ujians_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.riwayat_ujians_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.riwayat_ujians_id_seq OWNER TO ka04;

--
-- TOC entry 3589 (class 0 OID 0)
-- Dependencies: 251
-- Name: riwayat_ujians_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.riwayat_ujians_id_seq OWNED BY public.riwayat_ujians.id;


--
-- TOC entry 211 (class 1259 OID 37918)
-- Name: strapi_api_tokens; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.strapi_api_tokens (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    access_key character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.strapi_api_tokens OWNER TO ka04;

--
-- TOC entry 210 (class 1259 OID 37916)
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.strapi_api_tokens_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_api_tokens_id_seq OWNER TO ka04;

--
-- TOC entry 3590 (class 0 OID 0)
-- Dependencies: 210
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.strapi_api_tokens_id_seq OWNED BY public.strapi_api_tokens.id;


--
-- TOC entry 201 (class 1259 OID 37857)
-- Name: strapi_core_store_settings; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.strapi_core_store_settings (
    id integer NOT NULL,
    key character varying(255),
    value text,
    type character varying(255),
    environment character varying(255),
    tag character varying(255)
);


ALTER TABLE public.strapi_core_store_settings OWNER TO ka04;

--
-- TOC entry 200 (class 1259 OID 37855)
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.strapi_core_store_settings_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_core_store_settings_id_seq OWNER TO ka04;

--
-- TOC entry 3591 (class 0 OID 0)
-- Dependencies: 200
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.strapi_core_store_settings_id_seq OWNED BY public.strapi_core_store_settings.id;


--
-- TOC entry 199 (class 1259 OID 37846)
-- Name: strapi_database_schema; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.strapi_database_schema (
    id integer NOT NULL,
    schema json,
    "time" timestamp without time zone,
    hash character varying(255)
);


ALTER TABLE public.strapi_database_schema OWNER TO ka04;

--
-- TOC entry 198 (class 1259 OID 37844)
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.strapi_database_schema_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_database_schema_id_seq OWNER TO ka04;

--
-- TOC entry 3592 (class 0 OID 0)
-- Dependencies: 198
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.strapi_database_schema_id_seq OWNED BY public.strapi_database_schema.id;


--
-- TOC entry 197 (class 1259 OID 37838)
-- Name: strapi_migrations; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.strapi_migrations (
    id integer NOT NULL,
    name character varying(255),
    "time" timestamp without time zone
);


ALTER TABLE public.strapi_migrations OWNER TO ka04;

--
-- TOC entry 196 (class 1259 OID 37836)
-- Name: strapi_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.strapi_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_migrations_id_seq OWNER TO ka04;

--
-- TOC entry 3593 (class 0 OID 0)
-- Dependencies: 196
-- Name: strapi_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.strapi_migrations_id_seq OWNED BY public.strapi_migrations.id;


--
-- TOC entry 203 (class 1259 OID 37868)
-- Name: strapi_webhooks; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.strapi_webhooks (
    id integer NOT NULL,
    name character varying(255),
    url text,
    headers jsonb,
    events jsonb,
    enabled boolean
);


ALTER TABLE public.strapi_webhooks OWNER TO ka04;

--
-- TOC entry 202 (class 1259 OID 37866)
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.strapi_webhooks_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.strapi_webhooks_id_seq OWNER TO ka04;

--
-- TOC entry 3594 (class 0 OID 0)
-- Dependencies: 202
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.strapi_webhooks_id_seq OWNED BY public.strapi_webhooks.id;


--
-- TOC entry 254 (class 1259 OID 49741)
-- Name: sub_bidangs; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.sub_bidangs (
    id integer NOT NULL,
    sub_bidang character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.sub_bidangs OWNER TO ka04;

--
-- TOC entry 278 (class 1259 OID 49879)
-- Name: sub_bidangs_id_bidang_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.sub_bidangs_id_bidang_links (
    sub_bidang_id integer,
    bidang_id integer
);


ALTER TABLE public.sub_bidangs_id_bidang_links OWNER TO ka04;

--
-- TOC entry 253 (class 1259 OID 49739)
-- Name: sub_bidangs_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.sub_bidangs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sub_bidangs_id_seq OWNER TO ka04;

--
-- TOC entry 3595 (class 0 OID 0)
-- Dependencies: 253
-- Name: sub_bidangs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.sub_bidangs_id_seq OWNED BY public.sub_bidangs.id;


--
-- TOC entry 256 (class 1259 OID 49751)
-- Name: units; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.units (
    id integer NOT NULL,
    unit character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.units OWNER TO ka04;

--
-- TOC entry 255 (class 1259 OID 49749)
-- Name: units_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.units_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.units_id_seq OWNER TO ka04;

--
-- TOC entry 3596 (class 0 OID 0)
-- Dependencies: 255
-- Name: units_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.units_id_seq OWNED BY public.units.id;


--
-- TOC entry 215 (class 1259 OID 37944)
-- Name: up_permissions; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.up_permissions (
    id integer NOT NULL,
    action character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_permissions OWNER TO ka04;

--
-- TOC entry 214 (class 1259 OID 37942)
-- Name: up_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.up_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_permissions_id_seq OWNER TO ka04;

--
-- TOC entry 3597 (class 0 OID 0)
-- Dependencies: 214
-- Name: up_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.up_permissions_id_seq OWNED BY public.up_permissions.id;


--
-- TOC entry 225 (class 1259 OID 38008)
-- Name: up_permissions_role_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.up_permissions_role_links (
    permission_id integer,
    role_id integer
);


ALTER TABLE public.up_permissions_role_links OWNER TO ka04;

--
-- TOC entry 217 (class 1259 OID 37954)
-- Name: up_roles; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.up_roles (
    id integer NOT NULL,
    name character varying(255),
    description character varying(255),
    type character varying(255),
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_roles OWNER TO ka04;

--
-- TOC entry 216 (class 1259 OID 37952)
-- Name: up_roles_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.up_roles_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_roles_id_seq OWNER TO ka04;

--
-- TOC entry 3598 (class 0 OID 0)
-- Dependencies: 216
-- Name: up_roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.up_roles_id_seq OWNED BY public.up_roles.id;


--
-- TOC entry 219 (class 1259 OID 37967)
-- Name: up_users; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.up_users (
    id integer NOT NULL,
    username character varying(255),
    email character varying(255),
    provider character varying(255),
    password character varying(255),
    reset_password_token character varying(255),
    confirmation_token character varying(255),
    confirmed boolean,
    blocked boolean,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.up_users OWNER TO ka04;

--
-- TOC entry 218 (class 1259 OID 37965)
-- Name: up_users_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.up_users_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.up_users_id_seq OWNER TO ka04;

--
-- TOC entry 3599 (class 0 OID 0)
-- Dependencies: 218
-- Name: up_users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.up_users_id_seq OWNED BY public.up_users.id;


--
-- TOC entry 226 (class 1259 OID 38013)
-- Name: up_users_role_links; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.up_users_role_links (
    user_id integer,
    role_id integer
);


ALTER TABLE public.up_users_role_links OWNER TO ka04;

--
-- TOC entry 258 (class 1259 OID 49761)
-- Name: wawancaras; Type: TABLE; Schema: public; Owner: ka04
--

CREATE TABLE public.wawancaras (
    id integer NOT NULL,
    tanggal_wawacara date,
    created_at timestamp(6) without time zone,
    updated_at timestamp(6) without time zone,
    published_at timestamp(6) without time zone,
    created_by_id integer,
    updated_by_id integer
);


ALTER TABLE public.wawancaras OWNER TO ka04;

--
-- TOC entry 257 (class 1259 OID 49759)
-- Name: wawancaras_id_seq; Type: SEQUENCE; Schema: public; Owner: ka04
--

CREATE SEQUENCE public.wawancaras_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.wawancaras_id_seq OWNER TO ka04;

--
-- TOC entry 3600 (class 0 OID 0)
-- Dependencies: 257
-- Name: wawancaras_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: ka04
--

ALTER SEQUENCE public.wawancaras_id_seq OWNED BY public.wawancaras.id;


--
-- TOC entry 3072 (class 2604 OID 41927)
-- Name: admin_permissions id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_permissions ALTER COLUMN id SET DEFAULT nextval('public.admin_permissions_id_seq'::regclass);


--
-- TOC entry 3074 (class 2604 OID 41928)
-- Name: admin_roles id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_roles ALTER COLUMN id SET DEFAULT nextval('public.admin_roles_id_seq'::regclass);


--
-- TOC entry 3073 (class 2604 OID 41929)
-- Name: admin_users id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_users ALTER COLUMN id SET DEFAULT nextval('public.admin_users_id_seq'::regclass);


--
-- TOC entry 3081 (class 2604 OID 49599)
-- Name: administrasi_userss id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.administrasi_userss ALTER COLUMN id SET DEFAULT nextval('public.administrasi_userss_id_seq'::regclass);


--
-- TOC entry 3082 (class 2604 OID 49612)
-- Name: bidangs id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.bidangs ALTER COLUMN id SET DEFAULT nextval('public.bidangs_id_seq'::regclass);


--
-- TOC entry 3083 (class 2604 OID 49622)
-- Name: direktorats id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.direktorats ALTER COLUMN id SET DEFAULT nextval('public.direktorats_id_seq'::regclass);


--
-- TOC entry 3084 (class 2604 OID 49632)
-- Name: divisis id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.divisis ALTER COLUMN id SET DEFAULT nextval('public.divisis_id_seq'::regclass);


--
-- TOC entry 3076 (class 2604 OID 41933)
-- Name: files id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.files ALTER COLUMN id SET DEFAULT nextval('public.files_id_seq'::regclass);


--
-- TOC entry 3085 (class 2604 OID 49642)
-- Name: fit_propers id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.fit_propers ALTER COLUMN id SET DEFAULT nextval('public.fit_propers_id_seq'::regclass);


--
-- TOC entry 3086 (class 2604 OID 49655)
-- Name: grades id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.grades ALTER COLUMN id SET DEFAULT nextval('public.grades_id_seq'::regclass);


--
-- TOC entry 3080 (class 2604 OID 41936)
-- Name: i18n_locale id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.i18n_locale ALTER COLUMN id SET DEFAULT nextval('public.i18n_locale_id_seq'::regclass);


--
-- TOC entry 3087 (class 2604 OID 49665)
-- Name: jabatans id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.jabatans ALTER COLUMN id SET DEFAULT nextval('public.jabatans_id_seq'::regclass);


--
-- TOC entry 3088 (class 2604 OID 49675)
-- Name: jenjangs id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.jenjangs ALTER COLUMN id SET DEFAULT nextval('public.jenjangs_id_seq'::regclass);


--
-- TOC entry 3090 (class 2604 OID 49698)
-- Name: pendidilkans id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pendidilkans ALTER COLUMN id SET DEFAULT nextval('public.pendidilkans_id_seq'::regclass);


--
-- TOC entry 3092 (class 2604 OID 49721)
-- Name: report_nilai_manuals id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.report_nilai_manuals ALTER COLUMN id SET DEFAULT nextval('public.report_nilai_manuals_id_seq'::regclass);


--
-- TOC entry 3091 (class 2604 OID 49708)
-- Name: report_nilais id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.report_nilais ALTER COLUMN id SET DEFAULT nextval('public.report_nilais_id_seq'::regclass);


--
-- TOC entry 3093 (class 2604 OID 49734)
-- Name: riwayat_ujians id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.riwayat_ujians ALTER COLUMN id SET DEFAULT nextval('public.riwayat_ujians_id_seq'::regclass);


--
-- TOC entry 3075 (class 2604 OID 41942)
-- Name: strapi_api_tokens id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.strapi_api_tokens ALTER COLUMN id SET DEFAULT nextval('public.strapi_api_tokens_id_seq'::regclass);


--
-- TOC entry 3070 (class 2604 OID 41943)
-- Name: strapi_core_store_settings id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.strapi_core_store_settings ALTER COLUMN id SET DEFAULT nextval('public.strapi_core_store_settings_id_seq'::regclass);


--
-- TOC entry 3069 (class 2604 OID 41944)
-- Name: strapi_database_schema id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.strapi_database_schema ALTER COLUMN id SET DEFAULT nextval('public.strapi_database_schema_id_seq'::regclass);


--
-- TOC entry 3068 (class 2604 OID 41945)
-- Name: strapi_migrations id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.strapi_migrations ALTER COLUMN id SET DEFAULT nextval('public.strapi_migrations_id_seq'::regclass);


--
-- TOC entry 3071 (class 2604 OID 41946)
-- Name: strapi_webhooks id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.strapi_webhooks ALTER COLUMN id SET DEFAULT nextval('public.strapi_webhooks_id_seq'::regclass);


--
-- TOC entry 3094 (class 2604 OID 49744)
-- Name: sub_bidangs id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.sub_bidangs ALTER COLUMN id SET DEFAULT nextval('public.sub_bidangs_id_seq'::regclass);


--
-- TOC entry 3095 (class 2604 OID 49754)
-- Name: units id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.units ALTER COLUMN id SET DEFAULT nextval('public.units_id_seq'::regclass);


--
-- TOC entry 3077 (class 2604 OID 41949)
-- Name: up_permissions id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_permissions ALTER COLUMN id SET DEFAULT nextval('public.up_permissions_id_seq'::regclass);


--
-- TOC entry 3078 (class 2604 OID 41950)
-- Name: up_roles id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_roles ALTER COLUMN id SET DEFAULT nextval('public.up_roles_id_seq'::regclass);


--
-- TOC entry 3079 (class 2604 OID 41951)
-- Name: up_users id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_users ALTER COLUMN id SET DEFAULT nextval('public.up_users_id_seq'::regclass);


--
-- TOC entry 3096 (class 2604 OID 49764)
-- Name: wawancaras id; Type: DEFAULT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.wawancaras ALTER COLUMN id SET DEFAULT nextval('public.wawancaras_id_seq'::regclass);


--
-- TOC entry 3491 (class 0 OID 37879)
-- Dependencies: 205
-- Data for Name: admin_permissions; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.admin_permissions VALUES (1, 'plugin::upload.read', NULL, '{}', '[]', '2022-04-21 09:50:37.375', '2022-04-21 09:50:37.375', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (2, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-04-21 09:50:37.427', '2022-04-21 09:50:37.427', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (3, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-04-21 09:50:37.474', '2022-04-21 09:50:37.474', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (4, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-04-21 09:50:37.509', '2022-04-21 09:50:37.509', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (5, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-04-21 09:50:37.549', '2022-04-21 09:50:37.549', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (6, 'plugin::upload.read', NULL, '{}', '["admin::is-creator"]', '2022-04-21 09:50:37.589', '2022-04-21 09:50:37.589', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (7, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-04-21 09:50:37.631', '2022-04-21 09:50:37.631', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (8, 'plugin::upload.assets.update', NULL, '{}', '["admin::is-creator"]', '2022-04-21 09:50:37.666', '2022-04-21 09:50:37.666', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (9, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-04-21 09:50:37.705', '2022-04-21 09:50:37.705', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (10, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-04-21 09:50:37.75', '2022-04-21 09:50:37.75', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (11, 'plugin::content-manager.explorer.create', 'plugin::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}', '[]', '2022-04-21 09:50:38.144', '2022-04-21 09:50:38.144', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (12, 'plugin::content-manager.explorer.read', 'plugin::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}', '[]', '2022-04-21 09:50:38.176', '2022-04-21 09:50:38.176', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (13, 'plugin::content-manager.explorer.update', 'plugin::users-permissions.user', '{"fields": ["username", "email", "provider", "password", "resetPasswordToken", "confirmationToken", "confirmed", "blocked", "role"]}', '[]', '2022-04-21 09:50:38.21', '2022-04-21 09:50:38.21', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (14, 'plugin::content-manager.explorer.delete', 'plugin::users-permissions.user', '{}', '[]', '2022-04-21 09:50:38.25', '2022-04-21 09:50:38.25', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (15, 'plugin::content-manager.single-types.configure-view', NULL, '{}', '[]', '2022-04-21 09:50:38.295', '2022-04-21 09:50:38.295', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (16, 'plugin::content-manager.collection-types.configure-view', NULL, '{}', '[]', '2022-04-21 09:50:38.339', '2022-04-21 09:50:38.339', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (17, 'plugin::content-manager.components.configure-layout', NULL, '{}', '[]', '2022-04-21 09:50:38.375', '2022-04-21 09:50:38.375', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (18, 'plugin::content-type-builder.read', NULL, '{}', '[]', '2022-04-21 09:50:38.417', '2022-04-21 09:50:38.417', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (19, 'plugin::email.settings.read', NULL, '{}', '[]', '2022-04-21 09:50:38.466', '2022-04-21 09:50:38.466', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (20, 'plugin::upload.read', NULL, '{}', '[]', '2022-04-21 09:50:38.509', '2022-04-21 09:50:38.509', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (21, 'plugin::upload.assets.create', NULL, '{}', '[]', '2022-04-21 09:50:38.568', '2022-04-21 09:50:38.568', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (22, 'plugin::upload.assets.update', NULL, '{}', '[]', '2022-04-21 09:50:38.615', '2022-04-21 09:50:38.615', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (23, 'plugin::upload.assets.download', NULL, '{}', '[]', '2022-04-21 09:50:38.667', '2022-04-21 09:50:38.667', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (24, 'plugin::upload.assets.copy-link', NULL, '{}', '[]', '2022-04-21 09:50:38.716', '2022-04-21 09:50:38.716', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (25, 'plugin::upload.settings.read', NULL, '{}', '[]', '2022-04-21 09:50:38.755', '2022-04-21 09:50:38.755', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (26, 'plugin::users-permissions.roles.create', NULL, '{}', '[]', '2022-04-21 09:50:38.79', '2022-04-21 09:50:38.79', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (27, 'plugin::users-permissions.roles.read', NULL, '{}', '[]', '2022-04-21 09:50:38.827', '2022-04-21 09:50:38.827', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (28, 'plugin::users-permissions.roles.update', NULL, '{}', '[]', '2022-04-21 09:50:38.866', '2022-04-21 09:50:38.866', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (29, 'plugin::users-permissions.roles.delete', NULL, '{}', '[]', '2022-04-21 09:50:38.908', '2022-04-21 09:50:38.908', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (30, 'plugin::users-permissions.providers.read', NULL, '{}', '[]', '2022-04-21 09:50:38.953', '2022-04-21 09:50:38.953', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (31, 'plugin::users-permissions.providers.update', NULL, '{}', '[]', '2022-04-21 09:50:38.988', '2022-04-21 09:50:38.988', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (32, 'plugin::users-permissions.email-templates.read', NULL, '{}', '[]', '2022-04-21 09:50:39.029', '2022-04-21 09:50:39.029', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (33, 'plugin::users-permissions.email-templates.update', NULL, '{}', '[]', '2022-04-21 09:50:39.065', '2022-04-21 09:50:39.065', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (34, 'plugin::users-permissions.advanced-settings.read', NULL, '{}', '[]', '2022-04-21 09:50:39.106', '2022-04-21 09:50:39.106', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (35, 'plugin::users-permissions.advanced-settings.update', NULL, '{}', '[]', '2022-04-21 09:50:39.166', '2022-04-21 09:50:39.166', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (36, 'plugin::i18n.locale.create', NULL, '{}', '[]', '2022-04-21 09:50:39.208', '2022-04-21 09:50:39.208', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (37, 'plugin::i18n.locale.read', NULL, '{}', '[]', '2022-04-21 09:50:39.257', '2022-04-21 09:50:39.257', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (38, 'plugin::i18n.locale.update', NULL, '{}', '[]', '2022-04-21 09:50:39.301', '2022-04-21 09:50:39.301', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (39, 'plugin::i18n.locale.delete', NULL, '{}', '[]', '2022-04-21 09:50:39.366', '2022-04-21 09:50:39.366', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (40, 'admin::marketplace.read', NULL, '{}', '[]', '2022-04-21 09:50:39.442', '2022-04-21 09:50:39.442', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (41, 'admin::marketplace.plugins.install', NULL, '{}', '[]', '2022-04-21 09:50:39.506', '2022-04-21 09:50:39.506', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (42, 'admin::marketplace.plugins.uninstall', NULL, '{}', '[]', '2022-04-21 09:50:39.549', '2022-04-21 09:50:39.549', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (43, 'admin::webhooks.create', NULL, '{}', '[]', '2022-04-21 09:50:39.624', '2022-04-21 09:50:39.624', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (44, 'admin::webhooks.read', NULL, '{}', '[]', '2022-04-21 09:50:39.667', '2022-04-21 09:50:39.667', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (45, 'admin::webhooks.update', NULL, '{}', '[]', '2022-04-21 09:50:39.714', '2022-04-21 09:50:39.714', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (46, 'admin::webhooks.delete', NULL, '{}', '[]', '2022-04-21 09:50:39.75', '2022-04-21 09:50:39.75', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (47, 'admin::users.create', NULL, '{}', '[]', '2022-04-21 09:50:39.788', '2022-04-21 09:50:39.788', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (48, 'admin::users.read', NULL, '{}', '[]', '2022-04-21 09:50:39.822', '2022-04-21 09:50:39.822', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (49, 'admin::users.update', NULL, '{}', '[]', '2022-04-21 09:50:39.862', '2022-04-21 09:50:39.862', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (50, 'admin::users.delete', NULL, '{}', '[]', '2022-04-21 09:50:39.898', '2022-04-21 09:50:39.898', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (51, 'admin::roles.create', NULL, '{}', '[]', '2022-04-21 09:50:39.936', '2022-04-21 09:50:39.936', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (52, 'admin::roles.read', NULL, '{}', '[]', '2022-04-21 09:50:39.973', '2022-04-21 09:50:39.973', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (53, 'admin::roles.update', NULL, '{}', '[]', '2022-04-21 09:50:40.009', '2022-04-21 09:50:40.009', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (54, 'admin::roles.delete', NULL, '{}', '[]', '2022-04-21 09:50:40.05', '2022-04-21 09:50:40.05', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (55, 'admin::api-tokens.create', NULL, '{}', '[]', '2022-04-21 09:50:40.089', '2022-04-21 09:50:40.089', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (56, 'admin::api-tokens.read', NULL, '{}', '[]', '2022-04-21 09:50:40.126', '2022-04-21 09:50:40.126', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (57, 'admin::api-tokens.update', NULL, '{}', '[]', '2022-04-21 09:50:40.166', '2022-04-21 09:50:40.166', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (58, 'admin::api-tokens.delete', NULL, '{}', '[]', '2022-04-21 09:50:40.204', '2022-04-21 09:50:40.204', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1030, 'plugin::content-manager.explorer.create', 'api::administrasi-users.administrasi-users', '{"fields": ["NAMA_ADMIN", "PASSWORD", "AKSES", "ADMINISTRASI_USERS", "MASTER", "DAFTAR_FP", "NILAI_FP", "REPORT", "ID_PEGAWAI"]}', '[]', '2022-05-27 23:03:30.587', '2022-05-27 23:03:30.587', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1031, 'plugin::content-manager.explorer.create', 'api::bidang.bidang', '{"fields": ["BIDANG", "ID_SUB_BIDANG", "ID_PEGAWAI", "ID_DIVISI"]}', '[]', '2022-05-27 23:03:30.897', '2022-05-27 23:03:30.897', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1032, 'plugin::content-manager.explorer.create', 'api::direktorat.direktorat', '{"fields": ["DIREKTORAT", "ID_PEGAWAI", "ID_DIVISI", "ID_UNIT"]}', '[]', '2022-05-27 23:03:31.118', '2022-05-27 23:03:31.118', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1033, 'plugin::content-manager.explorer.create', 'api::divisi.divisi', '{"fields": ["DIVISI", "ID_BIDANG", "ID_DIREKTORAT", "id_pegawais"]}', '[]', '2022-05-27 23:03:31.35', '2022-05-27 23:03:31.35', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1266, 'plugin::content-manager.explorer.create', 'api::fit-proper.fit-proper', '{"fields": ["TANGGAL_DAFTAR", "PROYEKSI", "JENJANG_JABATAN", "URJAB", "PPT_FITPROPER", "CV_FITPROPER", "TANGGAL_UJI", "ID_RIWAYAT", "ID_WAWANCARA", "JENIS_FITPROPER"]}', '[]', '2022-06-02 21:19:10.879', '2022-06-02 21:19:10.879', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1035, 'plugin::content-manager.explorer.create', 'api::grade.grade', '{"fields": ["GRADE", "ID_JENJANG", "ID_PEGAWAI"]}', '[]', '2022-05-27 23:03:31.753', '2022-05-27 23:03:31.753', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1036, 'plugin::content-manager.explorer.create', 'api::jabatan.jabatan', '{"fields": ["JABATAN", "ID_PEGAWAI", "ID_UNIT", "ID_JENJANG"]}', '[]', '2022-05-27 23:03:31.949', '2022-05-27 23:03:31.949', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1037, 'plugin::content-manager.explorer.create', 'api::jenjang.jenjang', '{"fields": ["JENJANG", "ID_GRADE", "ID_JABATAN"]}', '[]', '2022-05-27 23:03:32.111', '2022-05-27 23:03:32.111', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1267, 'plugin::content-manager.explorer.create', 'api::report-nilai-manual.report-nilai-manual', '{"fields": ["NILAI_PENGETAHUAN_60", "NILAI_PENGETAHUAN_40", "NILAI_KETERAMPILAN_60", "NILAI_KETERAMPILAN_40", "REKOMENDASI_PENGUJI", "KELEMAHAN", "KEKUATAN", "ID_RIWAYAT", "PENILAI"]}', '[]', '2022-06-02 21:19:10.913', '2022-06-02 21:19:10.913', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1039, 'plugin::content-manager.explorer.create', 'api::pendidilkan.pendidilkan', '{"fields": ["PENDIDIKAN", "ID_PEGAWAI"]}', '[]', '2022-05-27 23:03:32.499', '2022-05-27 23:03:32.499', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1040, 'plugin::content-manager.explorer.create', 'api::report-nilai.report-nilai', '{"fields": ["ENTHUSIASTHIC", "CREATIVE_INNOVATIVE", "BUILDING_BUSINESS", "STRATEGIC_ORIENTATION", "CUSTOMER_FOCUS", "DRIVING_EXECUTION", "VISIONARY_LEADERSHIP", "EMPOWERING", "KEANDALAN_SISTEM", "KECEPATAN_RECOVERY", "MANAJEMEN_ASET", "STRATEGI_BREAKTHROUGH", "INTERNAL_READINESS", "EXTERNAL_READINESS", "CULTURAL_POLITICS", "TOTAL", "KEKUATAN", "KELEMAHAN", "ID_RIWAYAT"]}', '[]', '2022-05-27 23:03:32.681', '2022-05-27 23:03:32.681', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1268, 'plugin::content-manager.explorer.create', 'api::riwayat-ujian.riwayat-ujian', '{"fields": ["ID_FITPROPER", "ID_REPORT_NILAI", "ID_REPORT_MANUAL", "ID_PESERTA", "ID_PENGUJI"]}', '[]', '2022-06-02 21:19:10.943', '2022-06-02 21:19:10.943', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1269, 'plugin::content-manager.explorer.create', 'api::wawancara.wawancara', '{"fields": ["TANGGAL_WAWACARA", "ID_FITPROPER"]}', '[]', '2022-06-02 21:19:10.972', '2022-06-02 21:19:10.972', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1043, 'plugin::content-manager.explorer.create', 'api::sub-bidang.sub-bidang', '{"fields": ["SUB_BIDANG", "ID_PEGAWAI", "ID_BIDANG"]}', '[]', '2022-05-27 23:03:33.067', '2022-05-27 23:03:33.067', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1044, 'plugin::content-manager.explorer.create', 'api::unit.unit', '{"fields": ["UNIT", "ID_DIREKTORAT", "ID_JABATAN", "ID_PEGAWAI"]}', '[]', '2022-05-27 23:03:33.239', '2022-05-27 23:03:33.239', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1270, 'plugin::content-manager.explorer.read', 'api::fit-proper.fit-proper', '{"fields": ["TANGGAL_DAFTAR", "PROYEKSI", "JENJANG_JABATAN", "URJAB", "PPT_FITPROPER", "CV_FITPROPER", "TANGGAL_UJI", "ID_RIWAYAT", "ID_WAWANCARA", "JENIS_FITPROPER"]}', '[]', '2022-06-02 21:19:11.001', '2022-06-02 21:19:11.001', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1046, 'plugin::content-manager.explorer.read', 'api::administrasi-users.administrasi-users', '{"fields": ["NAMA_ADMIN", "PASSWORD", "AKSES", "ADMINISTRASI_USERS", "MASTER", "DAFTAR_FP", "NILAI_FP", "REPORT", "ID_PEGAWAI"]}', '[]', '2022-05-27 23:03:33.93', '2022-05-27 23:03:33.93', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1047, 'plugin::content-manager.explorer.read', 'api::bidang.bidang', '{"fields": ["BIDANG", "ID_SUB_BIDANG", "ID_PEGAWAI", "ID_DIVISI"]}', '[]', '2022-05-27 23:03:34.064', '2022-05-27 23:03:34.064', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1048, 'plugin::content-manager.explorer.read', 'api::direktorat.direktorat', '{"fields": ["DIREKTORAT", "ID_PEGAWAI", "ID_DIVISI", "ID_UNIT"]}', '[]', '2022-05-27 23:03:34.236', '2022-05-27 23:03:34.236', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1049, 'plugin::content-manager.explorer.read', 'api::divisi.divisi', '{"fields": ["DIVISI", "ID_BIDANG", "ID_DIREKTORAT", "id_pegawais"]}', '[]', '2022-05-27 23:03:34.462', '2022-05-27 23:03:34.462', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1271, 'plugin::content-manager.explorer.read', 'api::report-nilai-manual.report-nilai-manual', '{"fields": ["NILAI_PENGETAHUAN_60", "NILAI_PENGETAHUAN_40", "NILAI_KETERAMPILAN_60", "NILAI_KETERAMPILAN_40", "REKOMENDASI_PENGUJI", "KELEMAHAN", "KEKUATAN", "ID_RIWAYAT", "PENILAI"]}', '[]', '2022-06-02 21:19:11.029', '2022-06-02 21:19:11.029', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1051, 'plugin::content-manager.explorer.read', 'api::grade.grade', '{"fields": ["GRADE", "ID_JENJANG", "ID_PEGAWAI"]}', '[]', '2022-05-27 23:03:34.787', '2022-05-27 23:03:34.787', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1052, 'plugin::content-manager.explorer.read', 'api::jabatan.jabatan', '{"fields": ["JABATAN", "ID_PEGAWAI", "ID_UNIT", "ID_JENJANG"]}', '[]', '2022-05-27 23:03:34.967', '2022-05-27 23:03:34.967', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1053, 'plugin::content-manager.explorer.read', 'api::jenjang.jenjang', '{"fields": ["JENJANG", "ID_GRADE", "ID_JABATAN"]}', '[]', '2022-05-27 23:03:35.185', '2022-05-27 23:03:35.185', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1272, 'plugin::content-manager.explorer.read', 'api::riwayat-ujian.riwayat-ujian', '{"fields": ["ID_FITPROPER", "ID_REPORT_NILAI", "ID_REPORT_MANUAL", "ID_PESERTA", "ID_PENGUJI"]}', '[]', '2022-06-02 21:19:11.063', '2022-06-02 21:19:11.063', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1055, 'plugin::content-manager.explorer.read', 'api::pendidilkan.pendidilkan', '{"fields": ["PENDIDIKAN", "ID_PEGAWAI"]}', '[]', '2022-05-27 23:03:35.597', '2022-05-27 23:03:35.597', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1056, 'plugin::content-manager.explorer.read', 'api::report-nilai.report-nilai', '{"fields": ["ENTHUSIASTHIC", "CREATIVE_INNOVATIVE", "BUILDING_BUSINESS", "STRATEGIC_ORIENTATION", "CUSTOMER_FOCUS", "DRIVING_EXECUTION", "VISIONARY_LEADERSHIP", "EMPOWERING", "KEANDALAN_SISTEM", "KECEPATAN_RECOVERY", "MANAJEMEN_ASET", "STRATEGI_BREAKTHROUGH", "INTERNAL_READINESS", "EXTERNAL_READINESS", "CULTURAL_POLITICS", "TOTAL", "KEKUATAN", "KELEMAHAN", "ID_RIWAYAT"]}', '[]', '2022-05-27 23:03:35.779', '2022-05-27 23:03:35.779', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1273, 'plugin::content-manager.explorer.read', 'api::wawancara.wawancara', '{"fields": ["TANGGAL_WAWACARA", "ID_FITPROPER"]}', '[]', '2022-06-02 21:19:11.102', '2022-06-02 21:19:11.102', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1274, 'plugin::content-manager.explorer.update', 'api::fit-proper.fit-proper', '{"fields": ["TANGGAL_DAFTAR", "PROYEKSI", "JENJANG_JABATAN", "URJAB", "PPT_FITPROPER", "CV_FITPROPER", "TANGGAL_UJI", "ID_RIWAYAT", "ID_WAWANCARA", "JENIS_FITPROPER"]}', '[]', '2022-06-02 21:19:11.131', '2022-06-02 21:19:11.131', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1059, 'plugin::content-manager.explorer.read', 'api::sub-bidang.sub-bidang', '{"fields": ["SUB_BIDANG", "ID_PEGAWAI", "ID_BIDANG"]}', '[]', '2022-05-27 23:03:36.209', '2022-05-27 23:03:36.209', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1060, 'plugin::content-manager.explorer.read', 'api::unit.unit', '{"fields": ["UNIT", "ID_DIREKTORAT", "ID_JABATAN", "ID_PEGAWAI"]}', '[]', '2022-05-27 23:03:36.483', '2022-05-27 23:03:36.483', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1062, 'plugin::content-manager.explorer.update', 'api::administrasi-users.administrasi-users', '{"fields": ["NAMA_ADMIN", "PASSWORD", "AKSES", "ADMINISTRASI_USERS", "MASTER", "DAFTAR_FP", "NILAI_FP", "REPORT", "ID_PEGAWAI"]}', '[]', '2022-05-27 23:03:36.786', '2022-05-27 23:03:36.786', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1063, 'plugin::content-manager.explorer.update', 'api::bidang.bidang', '{"fields": ["BIDANG", "ID_SUB_BIDANG", "ID_PEGAWAI", "ID_DIVISI"]}', '[]', '2022-05-27 23:03:36.923', '2022-05-27 23:03:36.923', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1064, 'plugin::content-manager.explorer.update', 'api::direktorat.direktorat', '{"fields": ["DIREKTORAT", "ID_PEGAWAI", "ID_DIVISI", "ID_UNIT"]}', '[]', '2022-05-27 23:03:37.032', '2022-05-27 23:03:37.032', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1065, 'plugin::content-manager.explorer.update', 'api::divisi.divisi', '{"fields": ["DIVISI", "ID_BIDANG", "ID_DIREKTORAT", "id_pegawais"]}', '[]', '2022-05-27 23:03:37.197', '2022-05-27 23:03:37.197', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1067, 'plugin::content-manager.explorer.update', 'api::grade.grade', '{"fields": ["GRADE", "ID_JENJANG", "ID_PEGAWAI"]}', '[]', '2022-05-27 23:03:37.602', '2022-05-27 23:03:37.602', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1219, 'plugin::content-manager.explorer.create', 'api::pegawai.pegawai', '{"fields": ["NIP", "NAMA", "EMAIL", "TEMPAT_LAHIR", "TANGGAL_LAHIR", "NO_HP", "FOTO", "ID_RIWAYAT_PESERTA", "ID_RIWAYAT_PENGUJI", "JNS_KELAMIN", "AGAMA", "STATUS_PEGAWAI", "ID_ADMINISTRASI_USERS", "ID_SUB_BIDANG", "ID_BIDANG", "ID_DIREKTORAT", "ID_DIVISI", "ID_GRADE", "ID_JABATAN", "ID_PENDIDIKAN", "ID_UNIT"]}', '[]', '2022-06-02 17:43:30.395', '2022-06-02 17:43:30.395', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1224, 'plugin::content-manager.explorer.read', 'api::pegawai.pegawai', '{"fields": ["NIP", "NAMA", "EMAIL", "TEMPAT_LAHIR", "TANGGAL_LAHIR", "NO_HP", "FOTO", "ID_RIWAYAT_PESERTA", "ID_RIWAYAT_PENGUJI", "JNS_KELAMIN", "AGAMA", "STATUS_PEGAWAI", "ID_ADMINISTRASI_USERS", "ID_SUB_BIDANG", "ID_BIDANG", "ID_DIREKTORAT", "ID_DIVISI", "ID_GRADE", "ID_JABATAN", "ID_PENDIDIKAN", "ID_UNIT"]}', '[]', '2022-06-02 17:43:30.58', '2022-06-02 17:43:30.58', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1068, 'plugin::content-manager.explorer.update', 'api::jabatan.jabatan', '{"fields": ["JABATAN", "ID_PEGAWAI", "ID_UNIT", "ID_JENJANG"]}', '[]', '2022-05-27 23:03:37.883', '2022-05-27 23:03:37.883', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1069, 'plugin::content-manager.explorer.update', 'api::jenjang.jenjang', '{"fields": ["JENJANG", "ID_GRADE", "ID_JABATAN"]}', '[]', '2022-05-27 23:03:38.113', '2022-05-27 23:03:38.113', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1275, 'plugin::content-manager.explorer.update', 'api::report-nilai-manual.report-nilai-manual', '{"fields": ["NILAI_PENGETAHUAN_60", "NILAI_PENGETAHUAN_40", "NILAI_KETERAMPILAN_60", "NILAI_KETERAMPILAN_40", "REKOMENDASI_PENGUJI", "KELEMAHAN", "KEKUATAN", "ID_RIWAYAT", "PENILAI"]}', '[]', '2022-06-02 21:19:11.159', '2022-06-02 21:19:11.159', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1071, 'plugin::content-manager.explorer.update', 'api::pendidilkan.pendidilkan', '{"fields": ["PENDIDIKAN", "ID_PEGAWAI"]}', '[]', '2022-05-27 23:03:38.517', '2022-05-27 23:03:38.517', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1072, 'plugin::content-manager.explorer.update', 'api::report-nilai.report-nilai', '{"fields": ["ENTHUSIASTHIC", "CREATIVE_INNOVATIVE", "BUILDING_BUSINESS", "STRATEGIC_ORIENTATION", "CUSTOMER_FOCUS", "DRIVING_EXECUTION", "VISIONARY_LEADERSHIP", "EMPOWERING", "KEANDALAN_SISTEM", "KECEPATAN_RECOVERY", "MANAJEMEN_ASET", "STRATEGI_BREAKTHROUGH", "INTERNAL_READINESS", "EXTERNAL_READINESS", "CULTURAL_POLITICS", "TOTAL", "KEKUATAN", "KELEMAHAN", "ID_RIWAYAT"]}', '[]', '2022-05-27 23:03:38.766', '2022-05-27 23:03:38.766', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1276, 'plugin::content-manager.explorer.update', 'api::riwayat-ujian.riwayat-ujian', '{"fields": ["ID_FITPROPER", "ID_REPORT_NILAI", "ID_REPORT_MANUAL", "ID_PESERTA", "ID_PENGUJI"]}', '[]', '2022-06-02 21:19:11.19', '2022-06-02 21:19:11.19', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1277, 'plugin::content-manager.explorer.update', 'api::wawancara.wawancara', '{"fields": ["TANGGAL_WAWACARA", "ID_FITPROPER"]}', '[]', '2022-06-02 21:19:11.222', '2022-06-02 21:19:11.222', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1075, 'plugin::content-manager.explorer.update', 'api::sub-bidang.sub-bidang', '{"fields": ["SUB_BIDANG", "ID_PEGAWAI", "ID_BIDANG"]}', '[]', '2022-05-27 23:03:39.484', '2022-05-27 23:03:39.484', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1076, 'plugin::content-manager.explorer.update', 'api::unit.unit', '{"fields": ["UNIT", "ID_DIREKTORAT", "ID_JABATAN", "ID_PEGAWAI"]}', '[]', '2022-05-27 23:03:39.706', '2022-05-27 23:03:39.706', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1078, 'plugin::content-manager.explorer.delete', 'api::administrasi-users.administrasi-users', '{}', '[]', '2022-05-27 23:03:40.022', '2022-05-27 23:03:40.022', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1079, 'plugin::content-manager.explorer.delete', 'api::bidang.bidang', '{}', '[]', '2022-05-27 23:03:40.167', '2022-05-27 23:03:40.167', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1080, 'plugin::content-manager.explorer.delete', 'api::direktorat.direktorat', '{}', '[]', '2022-05-27 23:03:40.394', '2022-05-27 23:03:40.394', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1081, 'plugin::content-manager.explorer.delete', 'api::divisi.divisi', '{}', '[]', '2022-05-27 23:03:40.598', '2022-05-27 23:03:40.598', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1082, 'plugin::content-manager.explorer.delete', 'api::fit-proper.fit-proper', '{}', '[]', '2022-05-27 23:03:40.744', '2022-05-27 23:03:40.744', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1083, 'plugin::content-manager.explorer.delete', 'api::grade.grade', '{}', '[]', '2022-05-27 23:03:40.858', '2022-05-27 23:03:40.858', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1084, 'plugin::content-manager.explorer.delete', 'api::jabatan.jabatan', '{}', '[]', '2022-05-27 23:03:41.019', '2022-05-27 23:03:41.019', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1085, 'plugin::content-manager.explorer.delete', 'api::jenjang.jenjang', '{}', '[]', '2022-05-27 23:03:41.147', '2022-05-27 23:03:41.147', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1086, 'plugin::content-manager.explorer.delete', 'api::pegawai.pegawai', '{}', '[]', '2022-05-27 23:03:41.265', '2022-05-27 23:03:41.265', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1087, 'plugin::content-manager.explorer.delete', 'api::pendidilkan.pendidilkan', '{}', '[]', '2022-05-27 23:03:41.387', '2022-05-27 23:03:41.387', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1088, 'plugin::content-manager.explorer.delete', 'api::report-nilai.report-nilai', '{}', '[]', '2022-05-27 23:03:41.517', '2022-05-27 23:03:41.517', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1089, 'plugin::content-manager.explorer.delete', 'api::report-nilai-manual.report-nilai-manual', '{}', '[]', '2022-05-27 23:03:41.739', '2022-05-27 23:03:41.739', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1090, 'plugin::content-manager.explorer.delete', 'api::riwayat-ujian.riwayat-ujian', '{}', '[]', '2022-05-27 23:03:41.941', '2022-05-27 23:03:41.941', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1091, 'plugin::content-manager.explorer.delete', 'api::sub-bidang.sub-bidang', '{}', '[]', '2022-05-27 23:03:42.24', '2022-05-27 23:03:42.24', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1092, 'plugin::content-manager.explorer.delete', 'api::unit.unit', '{}', '[]', '2022-05-27 23:03:42.383', '2022-05-27 23:03:42.383', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1093, 'plugin::content-manager.explorer.delete', 'api::wawancara.wawancara', '{}', '[]', '2022-05-27 23:03:42.498', '2022-05-27 23:03:42.498', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1094, 'plugin::content-manager.explorer.publish', 'api::administrasi-users.administrasi-users', '{}', '[]', '2022-05-27 23:03:42.72', '2022-05-27 23:03:42.72', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1095, 'plugin::content-manager.explorer.publish', 'api::bidang.bidang', '{}', '[]', '2022-05-27 23:03:43.077', '2022-05-27 23:03:43.077', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1096, 'plugin::content-manager.explorer.publish', 'api::direktorat.direktorat', '{}', '[]', '2022-05-27 23:03:43.243', '2022-05-27 23:03:43.243', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1097, 'plugin::content-manager.explorer.publish', 'api::divisi.divisi', '{}', '[]', '2022-05-27 23:03:43.505', '2022-05-27 23:03:43.505', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1098, 'plugin::content-manager.explorer.publish', 'api::fit-proper.fit-proper', '{}', '[]', '2022-05-27 23:03:43.781', '2022-05-27 23:03:43.781', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1099, 'plugin::content-manager.explorer.publish', 'api::grade.grade', '{}', '[]', '2022-05-27 23:03:44.132', '2022-05-27 23:03:44.132', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1100, 'plugin::content-manager.explorer.publish', 'api::jabatan.jabatan', '{}', '[]', '2022-05-27 23:03:44.382', '2022-05-27 23:03:44.382', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1101, 'plugin::content-manager.explorer.publish', 'api::jenjang.jenjang', '{}', '[]', '2022-05-27 23:03:44.617', '2022-05-27 23:03:44.617', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1102, 'plugin::content-manager.explorer.publish', 'api::pegawai.pegawai', '{}', '[]', '2022-05-27 23:03:44.815', '2022-05-27 23:03:44.815', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1103, 'plugin::content-manager.explorer.publish', 'api::pendidilkan.pendidilkan', '{}', '[]', '2022-05-27 23:03:45.451', '2022-05-27 23:03:45.451', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1104, 'plugin::content-manager.explorer.publish', 'api::report-nilai.report-nilai', '{}', '[]', '2022-05-27 23:03:45.708', '2022-05-27 23:03:45.708', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1105, 'plugin::content-manager.explorer.publish', 'api::report-nilai-manual.report-nilai-manual', '{}', '[]', '2022-05-27 23:03:46.227', '2022-05-27 23:03:46.227', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1106, 'plugin::content-manager.explorer.publish', 'api::riwayat-ujian.riwayat-ujian', '{}', '[]', '2022-05-27 23:03:46.432', '2022-05-27 23:03:46.432', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1107, 'plugin::content-manager.explorer.publish', 'api::sub-bidang.sub-bidang', '{}', '[]', '2022-05-27 23:03:46.705', '2022-05-27 23:03:46.705', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1108, 'plugin::content-manager.explorer.publish', 'api::unit.unit', '{}', '[]', '2022-05-27 23:03:46.864', '2022-05-27 23:03:46.864', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1109, 'plugin::content-manager.explorer.publish', 'api::wawancara.wawancara', '{}', '[]', '2022-05-27 23:03:46.976', '2022-05-27 23:03:46.976', NULL, NULL);
INSERT INTO public.admin_permissions VALUES (1229, 'plugin::content-manager.explorer.update', 'api::pegawai.pegawai', '{"fields": ["NIP", "NAMA", "EMAIL", "TEMPAT_LAHIR", "TANGGAL_LAHIR", "NO_HP", "FOTO", "ID_RIWAYAT_PESERTA", "ID_RIWAYAT_PENGUJI", "JNS_KELAMIN", "AGAMA", "STATUS_PEGAWAI", "ID_ADMINISTRASI_USERS", "ID_SUB_BIDANG", "ID_BIDANG", "ID_DIREKTORAT", "ID_DIVISI", "ID_GRADE", "ID_JABATAN", "ID_PENDIDIKAN", "ID_UNIT"]}', '[]', '2022-06-02 17:43:30.763', '2022-06-02 17:43:30.763', NULL, NULL);


--
-- TOC entry 3508 (class 0 OID 37991)
-- Dependencies: 222
-- Data for Name: admin_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.admin_permissions_role_links VALUES (1, 2);
INSERT INTO public.admin_permissions_role_links VALUES (2, 2);
INSERT INTO public.admin_permissions_role_links VALUES (3, 2);
INSERT INTO public.admin_permissions_role_links VALUES (4, 2);
INSERT INTO public.admin_permissions_role_links VALUES (5, 2);
INSERT INTO public.admin_permissions_role_links VALUES (6, 3);
INSERT INTO public.admin_permissions_role_links VALUES (7, 3);
INSERT INTO public.admin_permissions_role_links VALUES (8, 3);
INSERT INTO public.admin_permissions_role_links VALUES (9, 3);
INSERT INTO public.admin_permissions_role_links VALUES (10, 3);
INSERT INTO public.admin_permissions_role_links VALUES (11, 1);
INSERT INTO public.admin_permissions_role_links VALUES (12, 1);
INSERT INTO public.admin_permissions_role_links VALUES (13, 1);
INSERT INTO public.admin_permissions_role_links VALUES (14, 1);
INSERT INTO public.admin_permissions_role_links VALUES (15, 1);
INSERT INTO public.admin_permissions_role_links VALUES (16, 1);
INSERT INTO public.admin_permissions_role_links VALUES (17, 1);
INSERT INTO public.admin_permissions_role_links VALUES (18, 1);
INSERT INTO public.admin_permissions_role_links VALUES (19, 1);
INSERT INTO public.admin_permissions_role_links VALUES (20, 1);
INSERT INTO public.admin_permissions_role_links VALUES (21, 1);
INSERT INTO public.admin_permissions_role_links VALUES (22, 1);
INSERT INTO public.admin_permissions_role_links VALUES (23, 1);
INSERT INTO public.admin_permissions_role_links VALUES (24, 1);
INSERT INTO public.admin_permissions_role_links VALUES (25, 1);
INSERT INTO public.admin_permissions_role_links VALUES (26, 1);
INSERT INTO public.admin_permissions_role_links VALUES (27, 1);
INSERT INTO public.admin_permissions_role_links VALUES (28, 1);
INSERT INTO public.admin_permissions_role_links VALUES (29, 1);
INSERT INTO public.admin_permissions_role_links VALUES (30, 1);
INSERT INTO public.admin_permissions_role_links VALUES (31, 1);
INSERT INTO public.admin_permissions_role_links VALUES (32, 1);
INSERT INTO public.admin_permissions_role_links VALUES (33, 1);
INSERT INTO public.admin_permissions_role_links VALUES (34, 1);
INSERT INTO public.admin_permissions_role_links VALUES (35, 1);
INSERT INTO public.admin_permissions_role_links VALUES (36, 1);
INSERT INTO public.admin_permissions_role_links VALUES (37, 1);
INSERT INTO public.admin_permissions_role_links VALUES (38, 1);
INSERT INTO public.admin_permissions_role_links VALUES (39, 1);
INSERT INTO public.admin_permissions_role_links VALUES (40, 1);
INSERT INTO public.admin_permissions_role_links VALUES (41, 1);
INSERT INTO public.admin_permissions_role_links VALUES (42, 1);
INSERT INTO public.admin_permissions_role_links VALUES (43, 1);
INSERT INTO public.admin_permissions_role_links VALUES (44, 1);
INSERT INTO public.admin_permissions_role_links VALUES (45, 1);
INSERT INTO public.admin_permissions_role_links VALUES (46, 1);
INSERT INTO public.admin_permissions_role_links VALUES (47, 1);
INSERT INTO public.admin_permissions_role_links VALUES (48, 1);
INSERT INTO public.admin_permissions_role_links VALUES (49, 1);
INSERT INTO public.admin_permissions_role_links VALUES (50, 1);
INSERT INTO public.admin_permissions_role_links VALUES (51, 1);
INSERT INTO public.admin_permissions_role_links VALUES (52, 1);
INSERT INTO public.admin_permissions_role_links VALUES (53, 1);
INSERT INTO public.admin_permissions_role_links VALUES (54, 1);
INSERT INTO public.admin_permissions_role_links VALUES (55, 1);
INSERT INTO public.admin_permissions_role_links VALUES (56, 1);
INSERT INTO public.admin_permissions_role_links VALUES (57, 1);
INSERT INTO public.admin_permissions_role_links VALUES (58, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1030, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1031, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1032, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1033, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1266, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1035, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1036, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1037, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1267, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1039, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1040, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1268, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1269, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1043, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1044, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1270, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1046, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1047, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1048, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1049, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1271, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1051, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1052, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1053, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1272, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1055, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1056, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1273, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1274, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1059, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1060, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1275, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1062, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1063, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1064, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1065, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1276, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1067, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1068, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1069, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1277, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1071, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1072, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1075, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1076, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1078, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1079, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1080, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1081, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1082, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1083, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1084, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1085, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1086, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1087, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1088, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1089, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1090, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1091, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1092, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1093, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1094, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1095, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1096, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1097, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1098, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1099, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1100, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1101, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1102, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1103, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1104, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1105, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1106, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1107, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1108, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1109, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1219, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1224, 1);
INSERT INTO public.admin_permissions_role_links VALUES (1229, 1);


--
-- TOC entry 3495 (class 0 OID 37905)
-- Dependencies: 209
-- Data for Name: admin_roles; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.admin_roles VALUES (1, 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2022-04-21 09:50:37.257', '2022-04-21 09:50:37.257', NULL, NULL);
INSERT INTO public.admin_roles VALUES (2, 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2022-04-21 09:50:37.311', '2022-04-21 09:50:37.311', NULL, NULL);
INSERT INTO public.admin_roles VALUES (3, 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2022-04-21 09:50:37.344', '2022-04-21 09:50:37.344', NULL, NULL);


--
-- TOC entry 3493 (class 0 OID 37892)
-- Dependencies: 207
-- Data for Name: admin_users; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.admin_users VALUES (1, 'hilman', 'khair', NULL, 'hilman.wasiandi.tif20@polban.ac.id', '$2a$10$GKEpTe1tkes30Mo.j4TIQO27A7RRY4ctF6pdJop6924V5mWVDCw3.', 'e0a558a847af7748f27fb299b9325bcad89e88ae', NULL, true, false, NULL, '2022-04-21 09:51:11.197', '2022-05-12 09:15:04.993', NULL, NULL);
INSERT INTO public.admin_users VALUES (5, 'gina', 'anifah', NULL, 'anifahgina@gmail.com', '$2a$10$84CzY.qJ.kI0YyXlNCuiXeVjLcLY7YpDj7lei3HmE071JW6BUV3r2', NULL, NULL, true, false, NULL, NULL, '2022-05-12 09:15:48.564', NULL, NULL);
INSERT INTO public.admin_users VALUES (6, 'citra', 'mutiara', NULL, 'citra.mutiara123@gmail.com', '$2a$10$ueSiYZ5hPmX.5rlwRB2Km.l4UZSkJe.l/FBAN1rvhof5gkD0OSaTq', NULL, NULL, true, false, NULL, '2022-05-12 08:34:30.495', '2022-05-12 12:28:56.848', NULL, NULL);
INSERT INTO public.admin_users VALUES (7, 'chikita', 'salsabiil', NULL, 'cnsalsabiil@gmail.com', '$2a$10$pAh3ugTJBHTT3C/Mn/I0QOLsAJSyL5s8U87ggAhHEQxB5mlmiKN4G', NULL, NULL, true, false, NULL, '2022-05-12 08:36:35.571', '2022-05-12 12:29:52.688', NULL, NULL);
INSERT INTO public.admin_users VALUES (8, 'muhammad', 'taufik', NULL, 'muhammad.taufik.tif20@polban.ac.id', '$2a$10$.xFWaTxA1aYEMcLotCFN.eKkQXj1fe5nmD0EyzIos1C6hm7wgQE1G', '37b82786fa292e2706d3c424abc929c78f945d70', NULL, true, false, NULL, '2022-05-12 12:27:00.017', '2022-05-20 14:40:17.037', NULL, NULL);
INSERT INTO public.admin_users VALUES (9, 'alvin', 'rizki', 'alvin.rrizky', 'alvin.rrizky@gmail.com', '$2a$10$nLzjFMWCYW1LXlQ1b5/mLukvrIBIII4tZQQnbxVbZo/PvmCjYSbge', NULL, NULL, true, false, NULL, '2022-06-01 08:59:59.154', '2022-06-01 09:50:33.003', NULL, NULL);


--
-- TOC entry 3509 (class 0 OID 37996)
-- Dependencies: 223
-- Data for Name: admin_users_roles_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.admin_users_roles_links VALUES (1, 1);
INSERT INTO public.admin_users_roles_links VALUES (1, 2);
INSERT INTO public.admin_users_roles_links VALUES (1, 3);
INSERT INTO public.admin_users_roles_links VALUES (5, 2);
INSERT INTO public.admin_users_roles_links VALUES (5, 3);
INSERT INTO public.admin_users_roles_links VALUES (5, 1);
INSERT INTO public.admin_users_roles_links VALUES (6, 1);
INSERT INTO public.admin_users_roles_links VALUES (6, 2);
INSERT INTO public.admin_users_roles_links VALUES (6, 3);
INSERT INTO public.admin_users_roles_links VALUES (7, 1);
INSERT INTO public.admin_users_roles_links VALUES (7, 3);
INSERT INTO public.admin_users_roles_links VALUES (7, 2);
INSERT INTO public.admin_users_roles_links VALUES (8, 1);
INSERT INTO public.admin_users_roles_links VALUES (8, 2);
INSERT INTO public.admin_users_roles_links VALUES (8, 3);
INSERT INTO public.admin_users_roles_links VALUES (9, 1);
INSERT INTO public.admin_users_roles_links VALUES (9, 2);
INSERT INTO public.admin_users_roles_links VALUES (9, 3);


--
-- TOC entry 3514 (class 0 OID 49596)
-- Dependencies: 228
-- Data for Name: administrasi_userss; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.administrasi_userss VALUES (1, 'Aa Abdurahman', 'AA123', 1, false, false, true, false, false, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (2, 'Ab Skehens', 'AB123', 1, false, false, true, false, false, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (3, 'Andrew Lowdes', 'ANDREW12', 1, false, false, true, false, false, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (4, 'Antoine Gilston', 'ANTOINE1', 2, false, false, true, true, true, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (5, 'Auria Bruff', 'AURIA123', 2, false, false, true, true, true, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (6, 'Billy Woolaghan', 'BILLY123', 2, false, false, true, true, true, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (7, 'Bob Swanton', 'BOB123', 1, false, false, true, false, false, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (8, 'Burlie Schwandner', 'BURLIE12', 0, true, true, true, true, true, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (9, 'Corrinne O''Loughlin', 'CORRINE1', 0, true, true, true, true, true, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (10, 'Forster Akett', 'FORSTER1', 2, false, false, true, true, true, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (11, 'Gilbert Zavattieri', 'GILBERT1', 1, false, false, true, false, false, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (12, 'Giorgi Loder', 'GIORGI12', 1, false, false, true, false, false, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (13, 'Hattie Scottrell', 'HATTIE12', 2, false, false, true, true, true, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (14, 'Humphrey Eckart', 'HUMPHREY', 2, false, false, true, true, true, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (15, 'Jill Pyett', 'JILL123', 1, false, false, true, false, false, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (16, 'Maire Lorain', 'MAIRE123', 1, false, false, true, false, false, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (17, 'Maryanna Spiteri', 'MARYANNA', 1, false, false, true, false, false, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (18, 'Ola McVanamy', 'OLA123', 1, false, false, true, false, false, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (19, 'Richy Letts', 'RICHY123', 1, false, false, true, false, false, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (20, 'Stevena Ealles', 'STEVENA1', 1, false, false, true, false, false, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.administrasi_userss VALUES (21, 'Timmy Bollini', 'TIMMY123', 0, true, true, true, true, true, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);


--
-- TOC entry 3516 (class 0 OID 49609)
-- Dependencies: 230
-- Data for Name: bidangs; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.bidangs VALUES (2, 'U1 DR2 DV2 BIDANG1', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.bidangs VALUES (3, 'U1 DR2 DV2 BIDANG2', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.bidangs VALUES (4, 'U2 DR1 DV1 BIDANG1', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.bidangs VALUES (1, 'U1 DR1 DV1 BIDANG1', '2022-05-07 16:40:03.152', '2022-06-01 10:00:52.655', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.bidangs VALUES (5, 'U3 DR1 DV1 BIDANG1', '2022-05-07 16:40:03.152', '2022-06-01 10:01:05.806', '2022-05-07 16:40:04.804', 1, 1);


--
-- TOC entry 3545 (class 0 OID 49769)
-- Dependencies: 259
-- Data for Name: bidangs_id_divisi_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.bidangs_id_divisi_links VALUES (2, 3);
INSERT INTO public.bidangs_id_divisi_links VALUES (3, 3);
INSERT INTO public.bidangs_id_divisi_links VALUES (4, 4);
INSERT INTO public.bidangs_id_divisi_links VALUES (1, 1);
INSERT INTO public.bidangs_id_divisi_links VALUES (5, 5);


--
-- TOC entry 3518 (class 0 OID 49619)
-- Dependencies: 232
-- Data for Name: direktorats; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.direktorats VALUES (1, 'U1 DIREKTORAT1', '2022-05-07 16:40:03.152', '2022-06-01 09:56:55.475', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.direktorats VALUES (2, 'U1 DIREKTORAT2', '2022-05-07 16:40:03.152', '2022-06-01 09:57:15.722', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.direktorats VALUES (3, 'U2 DIREKTORAT1', '2022-05-07 16:40:03.152', '2022-06-01 09:57:43.192', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.direktorats VALUES (4, 'U3 DIREKTORAT1', '2022-05-07 16:40:03.152', '2022-06-01 09:57:57.807', '2022-05-07 16:40:04.804', 1, 1);


--
-- TOC entry 3546 (class 0 OID 49774)
-- Dependencies: 260
-- Data for Name: direktorats_id_unit_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.direktorats_id_unit_links VALUES (1, 1);
INSERT INTO public.direktorats_id_unit_links VALUES (2, 1);
INSERT INTO public.direktorats_id_unit_links VALUES (3, 2);
INSERT INTO public.direktorats_id_unit_links VALUES (4, 3);


--
-- TOC entry 3520 (class 0 OID 49629)
-- Dependencies: 234
-- Data for Name: divisis; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.divisis VALUES (2, 'U1 DR2 DIVISI1', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.divisis VALUES (1, 'U1 DR1 DIVISI1', '2022-05-07 16:40:03.152', '2022-06-01 09:58:37.207', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.divisis VALUES (3, 'U1 DR2 DIVISI2', '2022-05-07 16:40:03.152', '2022-06-01 09:59:34.71', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.divisis VALUES (4, 'U2 DR1 DIVISI1', '2022-05-07 16:40:03.152', '2022-06-01 09:59:49.534', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.divisis VALUES (5, 'U3 DR1 DIVISI1', '2022-05-07 16:40:03.152', '2022-06-01 09:59:59.999', '2022-05-07 16:40:04.804', 1, 1);


--
-- TOC entry 3547 (class 0 OID 49779)
-- Dependencies: 261
-- Data for Name: divisis_id_direktorat_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.divisis_id_direktorat_links VALUES (2, 2);
INSERT INTO public.divisis_id_direktorat_links VALUES (1, 1);
INSERT INTO public.divisis_id_direktorat_links VALUES (3, 2);
INSERT INTO public.divisis_id_direktorat_links VALUES (4, 3);
INSERT INTO public.divisis_id_direktorat_links VALUES (5, 4);


--
-- TOC entry 3499 (class 0 OID 37931)
-- Dependencies: 213
-- Data for Name: files; Type: TABLE DATA; Schema: public; Owner: ka04
--



--
-- TOC entry 3510 (class 0 OID 38001)
-- Dependencies: 224
-- Data for Name: files_related_morphs; Type: TABLE DATA; Schema: public; Owner: ka04
--



--
-- TOC entry 3522 (class 0 OID 49639)
-- Dependencies: 236
-- Data for Name: fit_propers; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.fit_propers VALUES (3, '2022-05-02', 'JABATAN MD 3', 'Manajemen Dasar', 'Vcon', 'Jabatan yang memiliki jenjang manajemen dasar pada PLN unit 1', 'ppt03.pptx', 'cv03.pdf', '2022-05-09', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.fit_propers VALUES (4, '2022-06-01', 'JABATAN MD 1', 'Manajemen Dasar', 'Regular', 'Jabatan yang memiliki jenjang manajemen dasar pada PLN unit 2', 'ppt04.pptx', 'cv04.pdf', NULL, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.fit_propers VALUES (5, '2022-06-01', 'JABATAN MD 1', 'Manajemen Dasar', 'Regular', NULL, 'ppt05.pptx', 'cv05.pdf', NULL, '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.fit_propers VALUES (1, '2022-05-01', 'JABATAN MD 3', 'Manajemen Dasar', 'Vcon', 'Jabatan yang memiliki jenjang manajemen dasar', 'ppt01.pptx', 'cv01.pdf', '2022-05-08', '2022-05-07 16:40:03.152', '2022-06-02 22:06:37.437', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.fit_propers VALUES (2, '2022-05-02', 'JABATAN MD 3', 'Manajemen Dasar', 'Vcon', NULL, 'ppt02.pptx', 'cv02.pdf', '2022-05-09', '2022-05-07 16:40:03.152', '2022-06-02 22:06:46.092', '2022-05-07 16:40:04.804', 1, 1);


--
-- TOC entry 3548 (class 0 OID 49784)
-- Dependencies: 262
-- Data for Name: fit_propers_id_riwayat_links; Type: TABLE DATA; Schema: public; Owner: ka04
--



--
-- TOC entry 3566 (class 0 OID 52249)
-- Dependencies: 280
-- Data for Name: fit_propers_id_wawancara_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.fit_propers_id_wawancara_links VALUES (1, 1);
INSERT INTO public.fit_propers_id_wawancara_links VALUES (2, 2);


--
-- TOC entry 3524 (class 0 OID 49652)
-- Dependencies: 238
-- Data for Name: grades; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.grades VALUES (1, 'INT01', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (2, 'INT02', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (3, 'INT03', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (4, 'ADV01', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (5, 'ADV02', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (6, 'ADV03', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (7, 'OPT01', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (8, 'OPT02', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (9, 'OPT03', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (10, 'OPT04', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (11, 'SYS01', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (12, 'SYS02', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (13, 'SYS03', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (14, 'SYS04', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (15, 'SPE01', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (16, 'SPE02', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (17, 'SPE03', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (18, 'SPE04', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (19, 'BAS01', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (20, 'BAS02', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (21, 'BAS03', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (22, 'BAS4A', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (23, 'BAS4B', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (24, 'BAS4C', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (25, 'BAS4D', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.grades VALUES (26, 'BAS4E', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);


--
-- TOC entry 3549 (class 0 OID 49789)
-- Dependencies: 263
-- Data for Name: grades_id_jenjang_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.grades_id_jenjang_links VALUES (1, 7);
INSERT INTO public.grades_id_jenjang_links VALUES (2, 7);
INSERT INTO public.grades_id_jenjang_links VALUES (3, 7);
INSERT INTO public.grades_id_jenjang_links VALUES (4, 8);
INSERT INTO public.grades_id_jenjang_links VALUES (5, 8);
INSERT INTO public.grades_id_jenjang_links VALUES (6, 8);
INSERT INTO public.grades_id_jenjang_links VALUES (7, 9);
INSERT INTO public.grades_id_jenjang_links VALUES (8, 9);
INSERT INTO public.grades_id_jenjang_links VALUES (9, 9);
INSERT INTO public.grades_id_jenjang_links VALUES (10, 9);
INSERT INTO public.grades_id_jenjang_links VALUES (11, 10);
INSERT INTO public.grades_id_jenjang_links VALUES (12, 10);
INSERT INTO public.grades_id_jenjang_links VALUES (13, 10);
INSERT INTO public.grades_id_jenjang_links VALUES (14, 10);
INSERT INTO public.grades_id_jenjang_links VALUES (15, 11);
INSERT INTO public.grades_id_jenjang_links VALUES (16, 11);
INSERT INTO public.grades_id_jenjang_links VALUES (17, 11);
INSERT INTO public.grades_id_jenjang_links VALUES (18, 11);
INSERT INTO public.grades_id_jenjang_links VALUES (19, 12);
INSERT INTO public.grades_id_jenjang_links VALUES (20, 12);
INSERT INTO public.grades_id_jenjang_links VALUES (21, 12);
INSERT INTO public.grades_id_jenjang_links VALUES (22, 12);
INSERT INTO public.grades_id_jenjang_links VALUES (23, 12);
INSERT INTO public.grades_id_jenjang_links VALUES (24, 12);
INSERT INTO public.grades_id_jenjang_links VALUES (25, 12);
INSERT INTO public.grades_id_jenjang_links VALUES (26, 12);
INSERT INTO public.grades_id_jenjang_links VALUES (1, 2);
INSERT INTO public.grades_id_jenjang_links VALUES (2, 2);
INSERT INTO public.grades_id_jenjang_links VALUES (3, 2);
INSERT INTO public.grades_id_jenjang_links VALUES (4, 2);
INSERT INTO public.grades_id_jenjang_links VALUES (5, 2);
INSERT INTO public.grades_id_jenjang_links VALUES (6, 2);
INSERT INTO public.grades_id_jenjang_links VALUES (1, 1);
INSERT INTO public.grades_id_jenjang_links VALUES (2, 1);
INSERT INTO public.grades_id_jenjang_links VALUES (3, 1);
INSERT INTO public.grades_id_jenjang_links VALUES (4, 3);
INSERT INTO public.grades_id_jenjang_links VALUES (5, 3);
INSERT INTO public.grades_id_jenjang_links VALUES (6, 3);
INSERT INTO public.grades_id_jenjang_links VALUES (7, 3);
INSERT INTO public.grades_id_jenjang_links VALUES (8, 3);
INSERT INTO public.grades_id_jenjang_links VALUES (9, 3);
INSERT INTO public.grades_id_jenjang_links VALUES (10, 3);
INSERT INTO public.grades_id_jenjang_links VALUES (7, 4);
INSERT INTO public.grades_id_jenjang_links VALUES (8, 4);
INSERT INTO public.grades_id_jenjang_links VALUES (9, 4);
INSERT INTO public.grades_id_jenjang_links VALUES (10, 4);
INSERT INTO public.grades_id_jenjang_links VALUES (11, 4);
INSERT INTO public.grades_id_jenjang_links VALUES (12, 4);
INSERT INTO public.grades_id_jenjang_links VALUES (13, 4);
INSERT INTO public.grades_id_jenjang_links VALUES (14, 4);
INSERT INTO public.grades_id_jenjang_links VALUES (11, 5);
INSERT INTO public.grades_id_jenjang_links VALUES (12, 5);
INSERT INTO public.grades_id_jenjang_links VALUES (13, 5);
INSERT INTO public.grades_id_jenjang_links VALUES (14, 5);
INSERT INTO public.grades_id_jenjang_links VALUES (15, 5);
INSERT INTO public.grades_id_jenjang_links VALUES (16, 5);
INSERT INTO public.grades_id_jenjang_links VALUES (17, 5);
INSERT INTO public.grades_id_jenjang_links VALUES (18, 5);
INSERT INTO public.grades_id_jenjang_links VALUES (15, 6);
INSERT INTO public.grades_id_jenjang_links VALUES (16, 6);
INSERT INTO public.grades_id_jenjang_links VALUES (17, 6);
INSERT INTO public.grades_id_jenjang_links VALUES (18, 6);
INSERT INTO public.grades_id_jenjang_links VALUES (19, 6);
INSERT INTO public.grades_id_jenjang_links VALUES (20, 6);
INSERT INTO public.grades_id_jenjang_links VALUES (21, 6);
INSERT INTO public.grades_id_jenjang_links VALUES (22, 6);
INSERT INTO public.grades_id_jenjang_links VALUES (23, 6);
INSERT INTO public.grades_id_jenjang_links VALUES (24, 6);
INSERT INTO public.grades_id_jenjang_links VALUES (25, 6);
INSERT INTO public.grades_id_jenjang_links VALUES (26, 6);


--
-- TOC entry 3507 (class 0 OID 37980)
-- Dependencies: 221
-- Data for Name: i18n_locale; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.i18n_locale VALUES (1, 'English (en)', 'en', '2022-04-21 09:50:37.032', '2022-04-21 09:50:37.032', NULL, NULL);


--
-- TOC entry 3526 (class 0 OID 49662)
-- Dependencies: 240
-- Data for Name: jabatans; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.jabatans VALUES (26, 'JABATAN SpvD 1', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (27, 'JABATAN SpvD 2', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (28, 'JABATAN SpvD 3', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (29, 'JABATAN SpvD 4', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (30, 'JABATAN SpvD 5', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (31, 'JABATAN SpvD 6', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (32, 'JABATAN SpvD 7', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (33, 'JABATAN SpvD 8', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (34, 'JABATAN SpvD 9', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (35, 'JABATAN SpvD 10', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (36, 'JABATAN SpvD 11', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (37, 'JABATAN SpvD 12', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (24, 'JABATAN SpvA 8', '2022-05-07 16:40:03.152', '2022-06-02 18:42:21.829', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (1, 'JABATAN MA KHUSUS 1', '2022-05-07 16:40:03.152', '2022-06-02 18:32:47.682', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (2, 'JABATAN MA KHUSUS 2', '2022-05-07 16:40:03.152', '2022-06-02 18:33:08.561', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (4, 'JABATAN MA 2', '2022-05-07 16:40:03.152', '2022-06-02 18:33:43.92', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (5, 'JABATAN MA 3', '2022-05-07 16:40:03.152', '2022-06-02 18:33:57.671', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (25, 'JABATAN SpvA 9', '2022-05-07 16:40:03.152', '2022-06-02 18:42:33.579', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (8, 'JABATAN MM 3', '2022-05-07 16:40:03.152', '2022-06-02 18:36:59.933', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (9, 'JABATAN MM 4', '2022-05-07 16:40:03.152', '2022-06-02 18:37:16.447', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (10, 'JABATAN MM 5', '2022-05-07 16:40:03.152', '2022-06-02 18:37:34.836', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (11, 'JABATAN MD 1', '2022-05-07 16:40:03.152', '2022-06-02 18:38:46.613', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (13, 'JABATAN MD 3', '2022-05-07 16:40:03.152', '2022-06-02 18:39:13.674', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (14, 'JABATAN MD 4', '2022-05-07 16:40:03.152', '2022-06-02 18:39:29.665', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (15, 'JABATAN MD 5', '2022-05-07 16:40:03.152', '2022-06-02 18:39:42.577', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (16, 'JABATAN MD 6', '2022-05-07 16:40:03.152', '2022-06-02 18:40:20.964', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (17, 'JABATAN SpvA 1', '2022-05-07 16:40:03.152', '2022-06-02 18:40:51.079', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (18, 'JABATAN SpvA 2', '2022-05-07 16:40:03.152', '2022-06-02 18:41:05.047', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (19, 'JABATAN SpvA 3', '2022-05-07 16:40:03.152', '2022-06-02 18:41:15.576', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (20, 'JABATAN SpvA 4', '2022-05-07 16:40:03.152', '2022-06-02 18:41:33.579', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (21, 'JABATAN SpvA 5', '2022-05-07 16:40:03.152', '2022-06-02 18:41:44.736', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (22, 'JABATAN SpvA 6', '2022-05-07 16:40:03.152', '2022-06-02 18:41:58.686', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (23, 'JABATAN SpvA 7', '2022-05-07 16:40:03.152', '2022-06-02 18:42:08.707', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (38, 'JABATAN F1 1', '2022-05-07 16:40:03.152', '2022-06-02 18:44:18.929', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (39, 'JABATAN F1 2', '2022-05-07 16:40:03.152', '2022-06-02 18:44:26.296', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (40, 'JABATAN F1 3', '2022-05-07 16:40:03.152', '2022-06-02 18:44:34.321', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (41, 'JABATAN F2 1', '2022-05-07 16:40:03.152', '2022-06-02 18:44:43.668', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (42, 'JABATAN F2 2', '2022-05-07 16:40:03.152', '2022-06-02 18:45:01.75', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (44, 'JABATAN F3 1', '2022-05-07 16:40:03.152', '2022-06-02 18:45:25.906', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (45, 'JABATAN F3 2', '2022-05-07 16:40:03.152', '2022-06-02 18:45:34.652', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (46, 'JABATAN F3 3', '2022-05-07 16:40:03.152', '2022-06-02 18:45:46.984', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (47, 'JABATAN F4 1', '2022-05-07 16:40:03.152', '2022-06-02 18:45:59.2', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (48, 'JABATAN F4 2', '2022-05-07 16:40:03.152', '2022-06-02 18:46:19.076', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (49, 'JABATAN F4 3', '2022-05-07 16:40:03.152', '2022-06-02 18:46:27.973', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (50, 'JABATAN F5 1', '2022-05-07 16:40:03.152', '2022-06-02 18:46:44.33', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (51, 'JABATAN F5 2', '2022-05-07 16:40:03.152', '2022-06-02 18:46:56.223', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (52, 'JABATAN F5 3', '2022-05-07 16:40:03.152', '2022-06-02 18:47:10.31', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (53, 'JABATAN F6 1', '2022-05-07 16:40:03.152', '2022-06-02 18:47:21.081', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (54, 'JABATAN F6 2', '2022-05-07 16:40:03.152', '2022-06-02 18:47:33.76', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (55, 'JABATAN F6 3', '2022-05-07 16:40:03.152', '2022-06-02 18:47:43.561', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (3, 'JABATAN MA 1', '2022-05-07 16:40:03.152', '2022-06-02 18:49:40.661', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (7, 'JABATAN MM 2', '2022-05-07 16:40:03.152', '2022-06-02 18:50:01.907', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (6, 'JABATAN MM 1', '2022-05-07 16:40:03.152', '2022-06-02 18:50:25.258', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (12, 'JABATAN MD 2', '2022-05-07 16:40:03.152', '2022-06-02 18:51:00.011', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jabatans VALUES (43, 'JABATAN F2 3', '2022-05-07 16:40:03.152', '2022-06-02 18:51:16.109', '2022-05-07 16:40:04.804', 1, 1);


--
-- TOC entry 3551 (class 0 OID 49799)
-- Dependencies: 265
-- Data for Name: jabatans_id_jenjang_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.jabatans_id_jenjang_links VALUES (1, 1);
INSERT INTO public.jabatans_id_jenjang_links VALUES (2, 1);
INSERT INTO public.jabatans_id_jenjang_links VALUES (4, 2);
INSERT INTO public.jabatans_id_jenjang_links VALUES (5, 2);
INSERT INTO public.jabatans_id_jenjang_links VALUES (8, 3);
INSERT INTO public.jabatans_id_jenjang_links VALUES (9, 3);
INSERT INTO public.jabatans_id_jenjang_links VALUES (10, 3);
INSERT INTO public.jabatans_id_jenjang_links VALUES (11, 4);
INSERT INTO public.jabatans_id_jenjang_links VALUES (13, 4);
INSERT INTO public.jabatans_id_jenjang_links VALUES (14, 4);
INSERT INTO public.jabatans_id_jenjang_links VALUES (15, 4);
INSERT INTO public.jabatans_id_jenjang_links VALUES (16, 4);
INSERT INTO public.jabatans_id_jenjang_links VALUES (17, 5);
INSERT INTO public.jabatans_id_jenjang_links VALUES (18, 5);
INSERT INTO public.jabatans_id_jenjang_links VALUES (19, 5);
INSERT INTO public.jabatans_id_jenjang_links VALUES (20, 5);
INSERT INTO public.jabatans_id_jenjang_links VALUES (21, 5);
INSERT INTO public.jabatans_id_jenjang_links VALUES (22, 5);
INSERT INTO public.jabatans_id_jenjang_links VALUES (23, 5);
INSERT INTO public.jabatans_id_jenjang_links VALUES (24, 5);
INSERT INTO public.jabatans_id_jenjang_links VALUES (25, 5);
INSERT INTO public.jabatans_id_jenjang_links VALUES (26, 6);
INSERT INTO public.jabatans_id_jenjang_links VALUES (27, 6);
INSERT INTO public.jabatans_id_jenjang_links VALUES (28, 6);
INSERT INTO public.jabatans_id_jenjang_links VALUES (29, 6);
INSERT INTO public.jabatans_id_jenjang_links VALUES (30, 6);
INSERT INTO public.jabatans_id_jenjang_links VALUES (31, 6);
INSERT INTO public.jabatans_id_jenjang_links VALUES (32, 6);
INSERT INTO public.jabatans_id_jenjang_links VALUES (33, 6);
INSERT INTO public.jabatans_id_jenjang_links VALUES (34, 6);
INSERT INTO public.jabatans_id_jenjang_links VALUES (35, 6);
INSERT INTO public.jabatans_id_jenjang_links VALUES (36, 6);
INSERT INTO public.jabatans_id_jenjang_links VALUES (37, 6);
INSERT INTO public.jabatans_id_jenjang_links VALUES (38, 7);
INSERT INTO public.jabatans_id_jenjang_links VALUES (39, 7);
INSERT INTO public.jabatans_id_jenjang_links VALUES (40, 7);
INSERT INTO public.jabatans_id_jenjang_links VALUES (41, 8);
INSERT INTO public.jabatans_id_jenjang_links VALUES (42, 8);
INSERT INTO public.jabatans_id_jenjang_links VALUES (44, 9);
INSERT INTO public.jabatans_id_jenjang_links VALUES (45, 9);
INSERT INTO public.jabatans_id_jenjang_links VALUES (46, 9);
INSERT INTO public.jabatans_id_jenjang_links VALUES (47, 10);
INSERT INTO public.jabatans_id_jenjang_links VALUES (48, 10);
INSERT INTO public.jabatans_id_jenjang_links VALUES (49, 10);
INSERT INTO public.jabatans_id_jenjang_links VALUES (50, 11);
INSERT INTO public.jabatans_id_jenjang_links VALUES (51, 11);
INSERT INTO public.jabatans_id_jenjang_links VALUES (52, 11);
INSERT INTO public.jabatans_id_jenjang_links VALUES (53, 12);
INSERT INTO public.jabatans_id_jenjang_links VALUES (54, 12);
INSERT INTO public.jabatans_id_jenjang_links VALUES (55, 12);
INSERT INTO public.jabatans_id_jenjang_links VALUES (3, 2);
INSERT INTO public.jabatans_id_jenjang_links VALUES (7, 3);
INSERT INTO public.jabatans_id_jenjang_links VALUES (6, 3);
INSERT INTO public.jabatans_id_jenjang_links VALUES (12, 4);
INSERT INTO public.jabatans_id_jenjang_links VALUES (43, 8);


--
-- TOC entry 3550 (class 0 OID 49794)
-- Dependencies: 264
-- Data for Name: jabatans_id_unit_links; Type: TABLE DATA; Schema: public; Owner: ka04
--



--
-- TOC entry 3528 (class 0 OID 49672)
-- Dependencies: 242
-- Data for Name: jenjangs; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.jenjangs VALUES (7, 'Fungsional I', '2022-05-07 16:40:03.152', '2022-06-02 11:13:26.999', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jenjangs VALUES (8, 'Fungsional II', '2022-05-07 16:40:03.152', '2022-06-02 11:14:14.859', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jenjangs VALUES (9, 'Fungsional III', '2022-05-07 16:40:03.152', '2022-06-02 11:15:29.9', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jenjangs VALUES (10, 'Fungsional IV', '2022-05-07 16:40:03.152', '2022-06-02 11:17:18.193', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jenjangs VALUES (11, 'Fungsional V', '2022-05-07 16:40:03.152', '2022-06-02 11:18:30.809', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jenjangs VALUES (12, 'Fungsional VI', '2022-05-07 16:40:03.152', '2022-06-02 11:22:19.727', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jenjangs VALUES (2, 'Manajemen Atas', '2022-05-07 16:40:03.152', '2022-06-02 11:28:40.297', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jenjangs VALUES (1, 'Manajemen Atas Khusus', '2022-05-07 16:40:03.152', '2022-06-02 11:29:23.964', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jenjangs VALUES (3, 'Manajemen Menengah', '2022-05-07 16:40:03.152', '2022-06-02 11:30:23.913', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jenjangs VALUES (4, 'Manajemen Dasar', '2022-05-07 16:40:03.152', '2022-06-02 11:32:18.941', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jenjangs VALUES (5, 'Supervisori Atas', '2022-05-07 16:40:03.152', '2022-06-02 11:33:28.815', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.jenjangs VALUES (6, 'Supervisori Dasar', '2022-05-07 16:40:03.152', '2022-06-02 18:43:45.335', '2022-05-07 16:40:04.804', 1, 1);


--
-- TOC entry 3530 (class 0 OID 49682)
-- Dependencies: 244
-- Data for Name: pegawais; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.pegawais VALUES (13, '2015111012', 'Hattie Scottrell', 'hattie@gmail.com', 'Hollywood', '1915-09-05', '088229479331', 'Wanita', 'Kristen Katolik', 'Penguji', '2022-05-07 16:40:03.152', '2022-06-02 18:04:08.884', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (19, '2015111018', 'Richy Letts', 'richy@gmail.com', NULL, '1982-04-06', '088229479337', 'Pria', 'Kristen Katolik', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 20:38:37.134', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (20, '2015111019', 'Stevena Ealles', 'stevena@gmail.com', 'Zafar', '1988-12-02', '088229479338', 'Wanita', 'Hindu', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 20:39:00.168', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (14, '2015111013', 'Humphrey Eckart', 'humphrey@gmail.com', 'Petrovskoye', '1909-01-07', '088229479332', 'Pria', 'Kristen Protestan', 'Penguji', '2022-05-07 16:40:03.152', '2022-06-02 18:08:42.618', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (21, '2015111020', 'Timmy Bollini', 'timmy@gmail.com', 'Mizunami', '1982-04-06', '088229479339', 'Pria', 'Islam', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 20:39:22.636', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (3, '2015111002', 'Andrew Lowdes', 'andrew@gmail.com', NULL, '1982-04-06', '088229479321', 'Pria', 'Islam', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 21:37:50.087', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (1, '2015111000', 'Aa Abdurahman', 'aa@gmail.com', 'Bandung', '1986-05-16', '088229479319', 'Pria', 'Islam', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 22:51:14.909', '2022-05-07 16:40:04.804', 1, 5);
INSERT INTO public.pegawais VALUES (2, '2015111001', 'Ab Skehens', 'ab@gmail.com', 'Taoling', '1988-12-02', '088229479320', 'Pria', 'Islam', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 20:19:12.084', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (4, '2015111003', 'Antoine Gilston', 'antoine@gmail.com', 'Dresden', '1975-08-09', '088229479322', 'Pria', 'Buddha', 'Penguji', '2022-05-07 16:40:03.152', '2022-06-02 18:00:59.721', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (5, '2015111004', 'Auria Bruff', NULL, 'Dapeng', '1968-12-11', '088229479323', 'Wanita', 'Konghucu', 'Penguji', '2022-05-07 16:40:03.152', '2022-06-02 18:01:29.336', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (6, '2015111005', 'Billy Woolaghan', NULL, 'Libas', '1962-04-15', '088229479324', 'Pria', 'Kristen Protestan', 'Penguji', '2022-05-07 16:40:03.152', '2022-06-02 18:01:48.697', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (7, '2015111006', 'Bob Swanton', 'bob@gmail.com', 'Dongfeng', '1955-08-18', '088229479325', 'Wanita', 'Kristen Protestan', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 20:20:45.806', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (8, '2015111007', 'Burlie Schwandner', 'burlie@gmail.com', 'Biguaçu', '1948-12-20', '088229479326', 'Wanita', 'Islam', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 20:21:23.808', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (9, '2015111008', 'Corrinne O''Loughlin', 'corrinne@gmail.com', NULL, '1942-04-24', '088229479327', 'Wanita', 'Islam', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 20:21:56.542', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (11, '2015111010', 'Gilbert Zavattieri', 'gilbert@gmail.com', 'Shahrak', '1928-12-29', '088229479329', 'Pria', 'Islam', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 20:22:50.193', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (12, '2015111011', 'Giorgi Loder', 'giorgi@gmail.com', 'Mzuzu', '1922-05-03', '088229479330', 'Wanita', 'Kristen Katolik', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 20:23:12.171', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (10, '2015111009', 'Forster Akett', 'forster@gmail.com', 'Tha Mai', '1935-08-27', '088229479328', 'Pria', 'Hindu', 'Penguji', '2022-05-07 16:40:03.152', '2022-06-02 20:26:38.143', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (15, '2015111014', 'Jill Pyett', 'jill@gmail.com', 'Mazyr', '1902-05-12', '088229479333', 'Wanita', 'Konghucu', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 20:36:05.493', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (16, '2015111015', 'Maire Lorain', NULL, 'Pangkalan Kasai', '1988-12-02', '088229479334', 'Wanita', 'Islam', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 20:36:48.653', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (17, '2015111016', 'Maryanna Spiteri', 'maryanna@gmail.com', 'Nevel’', '1982-04-06', '088229479335', 'Wanita', 'Islam', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 20:37:31.67', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pegawais VALUES (18, '2015111017', 'Ola McVanamy', 'ola@gmail.com', NULL, '1988-12-02', '088229479336', 'Wanita', 'Kristen Katolik', 'Peserta', '2022-05-07 16:40:03.152', '2022-06-02 20:37:59.945', '2022-05-07 16:40:04.804', 1, 1);


--
-- TOC entry 3552 (class 0 OID 49809)
-- Dependencies: 266
-- Data for Name: pegawais_id_administrasi_users_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.pegawais_id_administrasi_users_links VALUES (4, 4);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (5, 5);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (6, 6);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (13, 13);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (14, 14);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (2, 2);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (7, 7);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (8, 8);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (9, 9);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (11, 11);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (12, 12);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (10, 10);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (15, 15);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (16, 16);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (17, 17);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (18, 18);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (19, 19);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (20, 20);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (21, 21);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (3, 3);
INSERT INTO public.pegawais_id_administrasi_users_links VALUES (1, 1);


--
-- TOC entry 3554 (class 0 OID 49819)
-- Dependencies: 268
-- Data for Name: pegawais_id_bidang_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.pegawais_id_bidang_links VALUES (4, 1);
INSERT INTO public.pegawais_id_bidang_links VALUES (6, 2);
INSERT INTO public.pegawais_id_bidang_links VALUES (2, 1);
INSERT INTO public.pegawais_id_bidang_links VALUES (7, 3);
INSERT INTO public.pegawais_id_bidang_links VALUES (8, 3);
INSERT INTO public.pegawais_id_bidang_links VALUES (9, 4);
INSERT INTO public.pegawais_id_bidang_links VALUES (11, 4);
INSERT INTO public.pegawais_id_bidang_links VALUES (12, 4);
INSERT INTO public.pegawais_id_bidang_links VALUES (15, 5);
INSERT INTO public.pegawais_id_bidang_links VALUES (16, 5);
INSERT INTO public.pegawais_id_bidang_links VALUES (17, 5);
INSERT INTO public.pegawais_id_bidang_links VALUES (18, 5);
INSERT INTO public.pegawais_id_bidang_links VALUES (20, 5);
INSERT INTO public.pegawais_id_bidang_links VALUES (3, 1);
INSERT INTO public.pegawais_id_bidang_links VALUES (1, 1);


--
-- TOC entry 3555 (class 0 OID 49824)
-- Dependencies: 269
-- Data for Name: pegawais_id_direktorat_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.pegawais_id_direktorat_links VALUES (4, 1);
INSERT INTO public.pegawais_id_direktorat_links VALUES (5, 2);
INSERT INTO public.pegawais_id_direktorat_links VALUES (6, 2);
INSERT INTO public.pegawais_id_direktorat_links VALUES (13, 3);
INSERT INTO public.pegawais_id_direktorat_links VALUES (14, 3);
INSERT INTO public.pegawais_id_direktorat_links VALUES (2, 1);
INSERT INTO public.pegawais_id_direktorat_links VALUES (7, 2);
INSERT INTO public.pegawais_id_direktorat_links VALUES (8, 2);
INSERT INTO public.pegawais_id_direktorat_links VALUES (9, 3);
INSERT INTO public.pegawais_id_direktorat_links VALUES (11, 3);
INSERT INTO public.pegawais_id_direktorat_links VALUES (12, 3);
INSERT INTO public.pegawais_id_direktorat_links VALUES (10, 3);
INSERT INTO public.pegawais_id_direktorat_links VALUES (15, 4);
INSERT INTO public.pegawais_id_direktorat_links VALUES (16, 4);
INSERT INTO public.pegawais_id_direktorat_links VALUES (17, 4);
INSERT INTO public.pegawais_id_direktorat_links VALUES (18, 4);
INSERT INTO public.pegawais_id_direktorat_links VALUES (19, 4);
INSERT INTO public.pegawais_id_direktorat_links VALUES (20, 4);
INSERT INTO public.pegawais_id_direktorat_links VALUES (21, 4);
INSERT INTO public.pegawais_id_direktorat_links VALUES (3, 1);
INSERT INTO public.pegawais_id_direktorat_links VALUES (1, 1);


--
-- TOC entry 3556 (class 0 OID 49829)
-- Dependencies: 270
-- Data for Name: pegawais_id_divisi_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.pegawais_id_divisi_links VALUES (4, 1);
INSERT INTO public.pegawais_id_divisi_links VALUES (5, 2);
INSERT INTO public.pegawais_id_divisi_links VALUES (6, 3);
INSERT INTO public.pegawais_id_divisi_links VALUES (13, 4);
INSERT INTO public.pegawais_id_divisi_links VALUES (2, 1);
INSERT INTO public.pegawais_id_divisi_links VALUES (7, 3);
INSERT INTO public.pegawais_id_divisi_links VALUES (8, 3);
INSERT INTO public.pegawais_id_divisi_links VALUES (9, 4);
INSERT INTO public.pegawais_id_divisi_links VALUES (11, 4);
INSERT INTO public.pegawais_id_divisi_links VALUES (12, 4);
INSERT INTO public.pegawais_id_divisi_links VALUES (10, 4);
INSERT INTO public.pegawais_id_divisi_links VALUES (15, 5);
INSERT INTO public.pegawais_id_divisi_links VALUES (16, 5);
INSERT INTO public.pegawais_id_divisi_links VALUES (17, 5);
INSERT INTO public.pegawais_id_divisi_links VALUES (18, 5);
INSERT INTO public.pegawais_id_divisi_links VALUES (19, 5);
INSERT INTO public.pegawais_id_divisi_links VALUES (20, 5);
INSERT INTO public.pegawais_id_divisi_links VALUES (3, 1);
INSERT INTO public.pegawais_id_divisi_links VALUES (1, 1);


--
-- TOC entry 3557 (class 0 OID 49834)
-- Dependencies: 271
-- Data for Name: pegawais_id_grade_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.pegawais_id_grade_links VALUES (4, 3);
INSERT INTO public.pegawais_id_grade_links VALUES (5, 4);
INSERT INTO public.pegawais_id_grade_links VALUES (6, 5);
INSERT INTO public.pegawais_id_grade_links VALUES (13, 7);
INSERT INTO public.pegawais_id_grade_links VALUES (14, 2);
INSERT INTO public.pegawais_id_grade_links VALUES (2, 9);
INSERT INTO public.pegawais_id_grade_links VALUES (7, 18);
INSERT INTO public.pegawais_id_grade_links VALUES (8, 1);
INSERT INTO public.pegawais_id_grade_links VALUES (9, 24);
INSERT INTO public.pegawais_id_grade_links VALUES (11, 13);
INSERT INTO public.pegawais_id_grade_links VALUES (12, 14);
INSERT INTO public.pegawais_id_grade_links VALUES (10, 6);
INSERT INTO public.pegawais_id_grade_links VALUES (15, 16);
INSERT INTO public.pegawais_id_grade_links VALUES (16, 17);
INSERT INTO public.pegawais_id_grade_links VALUES (17, 6);
INSERT INTO public.pegawais_id_grade_links VALUES (18, 22);
INSERT INTO public.pegawais_id_grade_links VALUES (19, 1);
INSERT INTO public.pegawais_id_grade_links VALUES (20, 20);
INSERT INTO public.pegawais_id_grade_links VALUES (21, 1);
INSERT INTO public.pegawais_id_grade_links VALUES (3, 10);
INSERT INTO public.pegawais_id_grade_links VALUES (1, 7);


--
-- TOC entry 3558 (class 0 OID 49839)
-- Dependencies: 272
-- Data for Name: pegawais_id_jabatan_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.pegawais_id_jabatan_links VALUES (4, 3);
INSERT INTO public.pegawais_id_jabatan_links VALUES (5, 3);
INSERT INTO public.pegawais_id_jabatan_links VALUES (6, 7);
INSERT INTO public.pegawais_id_jabatan_links VALUES (13, 12);
INSERT INTO public.pegawais_id_jabatan_links VALUES (14, 43);
INSERT INTO public.pegawais_id_jabatan_links VALUES (2, 44);
INSERT INTO public.pegawais_id_jabatan_links VALUES (7, 29);
INSERT INTO public.pegawais_id_jabatan_links VALUES (8, 39);
INSERT INTO public.pegawais_id_jabatan_links VALUES (9, 55);
INSERT INTO public.pegawais_id_jabatan_links VALUES (11, 25);
INSERT INTO public.pegawais_id_jabatan_links VALUES (12, 48);
INSERT INTO public.pegawais_id_jabatan_links VALUES (10, 5);
INSERT INTO public.pegawais_id_jabatan_links VALUES (15, 32);
INSERT INTO public.pegawais_id_jabatan_links VALUES (16, 50);
INSERT INTO public.pegawais_id_jabatan_links VALUES (17, 10);
INSERT INTO public.pegawais_id_jabatan_links VALUES (18, 55);
INSERT INTO public.pegawais_id_jabatan_links VALUES (19, 4);
INSERT INTO public.pegawais_id_jabatan_links VALUES (20, 53);
INSERT INTO public.pegawais_id_jabatan_links VALUES (21, 40);
INSERT INTO public.pegawais_id_jabatan_links VALUES (3, 44);
INSERT INTO public.pegawais_id_jabatan_links VALUES (1, 45);


--
-- TOC entry 3559 (class 0 OID 49844)
-- Dependencies: 273
-- Data for Name: pegawais_id_pendidikan_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.pegawais_id_pendidikan_links VALUES (4, 4);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (5, 6);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (13, 6);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (14, 1);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (6, 4);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (2, 3);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (7, 2);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (8, 1);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (9, 1);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (11, 3);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (12, 5);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (10, 2);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (15, 7);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (16, 8);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (17, 2);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (18, 3);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (19, 5);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (20, 8);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (21, 7);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (3, 7);
INSERT INTO public.pegawais_id_pendidikan_links VALUES (1, 1);


--
-- TOC entry 3553 (class 0 OID 49814)
-- Dependencies: 267
-- Data for Name: pegawais_id_sub_bidang_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.pegawais_id_sub_bidang_links VALUES (2, 1);
INSERT INTO public.pegawais_id_sub_bidang_links VALUES (15, 3);
INSERT INTO public.pegawais_id_sub_bidang_links VALUES (16, 3);
INSERT INTO public.pegawais_id_sub_bidang_links VALUES (18, 3);
INSERT INTO public.pegawais_id_sub_bidang_links VALUES (3, 2);
INSERT INTO public.pegawais_id_sub_bidang_links VALUES (1, 1);


--
-- TOC entry 3560 (class 0 OID 49849)
-- Dependencies: 274
-- Data for Name: pegawais_id_unit_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.pegawais_id_unit_links VALUES (4, 1);
INSERT INTO public.pegawais_id_unit_links VALUES (5, 1);
INSERT INTO public.pegawais_id_unit_links VALUES (6, 1);
INSERT INTO public.pegawais_id_unit_links VALUES (13, 2);
INSERT INTO public.pegawais_id_unit_links VALUES (14, 2);
INSERT INTO public.pegawais_id_unit_links VALUES (2, 1);
INSERT INTO public.pegawais_id_unit_links VALUES (7, 1);
INSERT INTO public.pegawais_id_unit_links VALUES (8, 1);
INSERT INTO public.pegawais_id_unit_links VALUES (9, 2);
INSERT INTO public.pegawais_id_unit_links VALUES (11, 2);
INSERT INTO public.pegawais_id_unit_links VALUES (12, 2);
INSERT INTO public.pegawais_id_unit_links VALUES (10, 2);
INSERT INTO public.pegawais_id_unit_links VALUES (15, 3);
INSERT INTO public.pegawais_id_unit_links VALUES (16, 3);
INSERT INTO public.pegawais_id_unit_links VALUES (17, 3);
INSERT INTO public.pegawais_id_unit_links VALUES (18, 3);
INSERT INTO public.pegawais_id_unit_links VALUES (19, 3);
INSERT INTO public.pegawais_id_unit_links VALUES (20, 3);
INSERT INTO public.pegawais_id_unit_links VALUES (21, 3);
INSERT INTO public.pegawais_id_unit_links VALUES (3, 1);
INSERT INTO public.pegawais_id_unit_links VALUES (1, 1);


--
-- TOC entry 3532 (class 0 OID 49695)
-- Dependencies: 246
-- Data for Name: pendidilkans; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.pendidilkans VALUES (1, 'D3 Teknik Informatika', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pendidilkans VALUES (2, 'D3 Listrik', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pendidilkans VALUES (3, 'D4 Teknik Informatika', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pendidilkans VALUES (4, 'S1 Teknik Informatika', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pendidilkans VALUES (5, 'S1 Teknik Komputer', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pendidilkans VALUES (6, 'S1 Listrik', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pendidilkans VALUES (7, 'S1 Manajemen Bisnis', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.pendidilkans VALUES (8, 'S2 Bidang Hukum', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);


--
-- TOC entry 3536 (class 0 OID 49718)
-- Dependencies: 250
-- Data for Name: report_nilai_manuals; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.report_nilai_manuals VALUES (1, 88, 78, 98, 88, NULL, '-', '-', '2022-06-02 22:41:02.15', '2022-06-02 22:41:04.896', '2022-06-02 22:41:04.843', 6, 6, 'ABAH');


--
-- TOC entry 3534 (class 0 OID 49705)
-- Dependencies: 248
-- Data for Name: report_nilais; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.report_nilais VALUES (2, 87, 89, 91, 93, 96, 99, 89, 88, 75, 88, 95, 87, 98, 99, 75, 92, '-', '-', '2022-06-02 22:47:45.997', '2022-06-02 22:47:48.763', '2022-06-02 22:47:48.684', 6, 6);
INSERT INTO public.report_nilais VALUES (1, 75, 80, 95, 80, 90, 80, 80, 85, 75, 95, 80, 90, 80, 80, 75, 82.6700000000000017, NULL, NULL, '2022-06-02 22:47:24.95', '2022-06-02 23:03:36.482', '2022-06-02 22:49:21.826', 1, 1);


--
-- TOC entry 3538 (class 0 OID 49731)
-- Dependencies: 252
-- Data for Name: riwayat_ujians; Type: TABLE DATA; Schema: public; Owner: ka04
--



--
-- TOC entry 3563 (class 0 OID 49869)
-- Dependencies: 277
-- Data for Name: riwayat_ujians_id_penguji_links; Type: TABLE DATA; Schema: public; Owner: ka04
--



--
-- TOC entry 3565 (class 0 OID 51949)
-- Dependencies: 279
-- Data for Name: riwayat_ujians_id_peserta_links; Type: TABLE DATA; Schema: public; Owner: ka04
--



--
-- TOC entry 3562 (class 0 OID 49859)
-- Dependencies: 276
-- Data for Name: riwayat_ujians_id_report_manual_links; Type: TABLE DATA; Schema: public; Owner: ka04
--



--
-- TOC entry 3561 (class 0 OID 49854)
-- Dependencies: 275
-- Data for Name: riwayat_ujians_id_report_nilai_links; Type: TABLE DATA; Schema: public; Owner: ka04
--



--
-- TOC entry 3497 (class 0 OID 37918)
-- Dependencies: 211
-- Data for Name: strapi_api_tokens; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.strapi_api_tokens VALUES (1, 'testing', 'only used for testing', 'full-access', 'dfc701f78532362201e196b07a0b70c4f574c7e1d4e32e72fbc1871c497057eb418a1a634475db8103129ed49408c03dc285ee894d620cee606451f325b364b9', '2022-06-02 17:58:52.279', '2022-06-02 17:58:52.279', NULL, NULL);


--
-- TOC entry 3487 (class 0 OID 37857)
-- Dependencies: 201
-- Data for Name: strapi_core_store_settings; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.strapi_core_store_settings VALUES (2, 'plugin_content_manager_configuration_content_types::admin::user', '{"uid":"admin::user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"firstname","defaultSortBy":"firstname","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"firstname":{"edit":{"label":"firstname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"firstname","searchable":true,"sortable":true}},"lastname":{"edit":{"label":"lastname","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"lastname","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"registrationToken":{"edit":{"label":"registrationToken","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"registrationToken","searchable":true,"sortable":true}},"isActive":{"edit":{"label":"isActive","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"isActive","searchable":true,"sortable":true}},"roles":{"edit":{"label":"roles","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"roles","searchable":false,"sortable":false}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"preferedLanguage":{"edit":{"label":"preferedLanguage","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"preferedLanguage","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","firstname","lastname","username"],"editRelations":["roles"],"edit":[[{"name":"firstname","size":6},{"name":"lastname","size":6}],[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"resetPasswordToken","size":6}],[{"name":"registrationToken","size":6},{"name":"isActive","size":4}],[{"name":"blocked","size":4},{"name":"preferedLanguage","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (3, 'plugin_content_manager_configuration_content_types::admin::role', '{"uid":"admin::role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"firstname"},"list":{"label":"users","searchable":false,"sortable":false}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","description"],"editRelations":["users","permissions"],"edit":[[{"name":"name","size":6},{"name":"code","size":6}],[{"name":"description","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (4, 'plugin_content_manager_configuration_content_types::admin::api-token', '{"uid":"admin::api-token","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"accessKey":{"edit":{"label":"accessKey","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"accessKey","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6},{"name":"accessKey","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (5, 'plugin_content_manager_configuration_content_types::admin::permission', '{"uid":"admin::permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"subject":{"edit":{"label":"subject","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"subject","searchable":true,"sortable":true}},"properties":{"edit":{"label":"properties","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"properties","searchable":false,"sortable":false}},"conditions":{"edit":{"label":"conditions","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"conditions","searchable":false,"sortable":false}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","subject","role"],"editRelations":["role"],"edit":[[{"name":"action","size":6},{"name":"subject","size":6}],[{"name":"properties","size":12}],[{"name":"conditions","size":12}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (6, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{"uid":"plugin::upload.file","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"alternativeText":{"edit":{"label":"alternativeText","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"alternativeText","searchable":true,"sortable":true}},"caption":{"edit":{"label":"caption","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"caption","searchable":true,"sortable":true}},"width":{"edit":{"label":"width","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"width","searchable":true,"sortable":true}},"height":{"edit":{"label":"height","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"height","searchable":true,"sortable":true}},"formats":{"edit":{"label":"formats","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"formats","searchable":false,"sortable":false}},"hash":{"edit":{"label":"hash","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"hash","searchable":true,"sortable":true}},"ext":{"edit":{"label":"ext","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ext","searchable":true,"sortable":true}},"mime":{"edit":{"label":"mime","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"mime","searchable":true,"sortable":true}},"size":{"edit":{"label":"size","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"size","searchable":true,"sortable":true}},"url":{"edit":{"label":"url","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"url","searchable":true,"sortable":true}},"previewUrl":{"edit":{"label":"previewUrl","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"previewUrl","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"provider_metadata":{"edit":{"label":"provider_metadata","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"provider_metadata","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","alternativeText","caption"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"alternativeText","size":6}],[{"name":"caption","size":6},{"name":"width","size":4}],[{"name":"height","size":4}],[{"name":"formats","size":12}],[{"name":"hash","size":6},{"name":"ext","size":6}],[{"name":"mime","size":6},{"name":"size","size":4}],[{"name":"url","size":6},{"name":"previewUrl","size":6}],[{"name":"provider","size":6}],[{"name":"provider_metadata","size":12}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (7, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{"uid":"plugin::users-permissions.permission","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"action","defaultSortBy":"action","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"action":{"edit":{"label":"action","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"action","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","action","role","createdAt"],"editRelations":["role"],"edit":[[{"name":"action","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (15, 'plugin_i18n_default_locale', '"en"', 'string', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (8, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{"uid":"plugin::users-permissions.role","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"description":{"edit":{"label":"description","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"description","searchable":true,"sortable":true}},"type":{"edit":{"label":"type","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"type","searchable":true,"sortable":true}},"permissions":{"edit":{"label":"permissions","description":"","placeholder":"","visible":true,"editable":true,"mainField":"action"},"list":{"label":"permissions","searchable":false,"sortable":false}},"users":{"edit":{"label":"users","description":"","placeholder":"","visible":true,"editable":true,"mainField":"username"},"list":{"label":"users","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","description","type"],"editRelations":["permissions","users"],"edit":[[{"name":"name","size":6},{"name":"description","size":6}],[{"name":"type","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (9, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{"uid":"plugin::users-permissions.user","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"username","defaultSortBy":"username","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"username":{"edit":{"label":"username","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"username","searchable":true,"sortable":true}},"email":{"edit":{"label":"email","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"email","searchable":true,"sortable":true}},"provider":{"edit":{"label":"provider","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"provider","searchable":true,"sortable":true}},"password":{"edit":{"label":"password","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"password","searchable":true,"sortable":true}},"resetPasswordToken":{"edit":{"label":"resetPasswordToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"resetPasswordToken","searchable":true,"sortable":true}},"confirmationToken":{"edit":{"label":"confirmationToken","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"confirmationToken","searchable":true,"sortable":true}},"confirmed":{"edit":{"label":"confirmed","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"confirmed","searchable":true,"sortable":true}},"blocked":{"edit":{"label":"blocked","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"blocked","searchable":true,"sortable":true}},"role":{"edit":{"label":"role","description":"","placeholder":"","visible":true,"editable":true,"mainField":"name"},"list":{"label":"role","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","username","email","confirmed"],"editRelations":["role"],"edit":[[{"name":"username","size":6},{"name":"email","size":6}],[{"name":"password","size":6},{"name":"confirmed","size":4}],[{"name":"blocked","size":4}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (123, 'plugin_content_manager_configuration_content_types::api::bidang.bidang', '{"uid":"api::bidang.bidang","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"BIDANG","defaultSortBy":"BIDANG","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"BIDANG":{"edit":{"label":"BIDANG","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BIDANG","searchable":true,"sortable":true}},"ID_SUB_BIDANG":{"edit":{"label":"ID_SUB_BIDANG","description":"","placeholder":"","visible":true,"editable":true,"mainField":"SUB_BIDANG"},"list":{"label":"ID_SUB_BIDANG","searchable":false,"sortable":false}},"ID_PEGAWAI":{"edit":{"label":"ID_PEGAWAI","description":"","placeholder":"","visible":true,"editable":true,"mainField":"NIP"},"list":{"label":"ID_PEGAWAI","searchable":false,"sortable":false}},"ID_DIVISI":{"edit":{"label":"ID_DIVISI","description":"","placeholder":"","visible":true,"editable":true,"mainField":"DIVISI"},"list":{"label":"ID_DIVISI","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","BIDANG","ID_SUB_BIDANG","ID_PEGAWAI"],"editRelations":["ID_SUB_BIDANG","ID_PEGAWAI","ID_DIVISI"],"edit":[[{"name":"BIDANG","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (133, 'plugin_content_manager_configuration_content_types::api::sub-bidang.sub-bidang', '{"uid":"api::sub-bidang.sub-bidang","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"SUB_BIDANG","defaultSortBy":"SUB_BIDANG","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"SUB_BIDANG":{"edit":{"label":"SUB_BIDANG","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"SUB_BIDANG","searchable":true,"sortable":true}},"ID_PEGAWAI":{"edit":{"label":"ID_PEGAWAI","description":"","placeholder":"","visible":true,"editable":true,"mainField":"NIP"},"list":{"label":"ID_PEGAWAI","searchable":false,"sortable":false}},"ID_BIDANG":{"edit":{"label":"ID_BIDANG","description":"","placeholder":"","visible":true,"editable":true,"mainField":"BIDANG"},"list":{"label":"ID_BIDANG","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","SUB_BIDANG","ID_PEGAWAI","ID_BIDANG"],"editRelations":["ID_PEGAWAI","ID_BIDANG"],"edit":[[{"name":"SUB_BIDANG","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (10, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{"uid":"plugin::i18n.locale","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"name","defaultSortBy":"name","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"name":{"edit":{"label":"name","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"name","searchable":true,"sortable":true}},"code":{"edit":{"label":"code","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"code","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","name","code","createdAt"],"editRelations":[],"edit":[[{"name":"name","size":6},{"name":"code","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (11, 'plugin_upload_settings', '{"sizeOptimization":true,"responsiveDimensions":true,"autoOrientation":false}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (12, 'plugin_users-permissions_grant', '{"email":{"enabled":true,"icon":"envelope"},"discord":{"enabled":false,"icon":"discord","key":"","secret":"","callback":"api/auth/discord/callback","scope":["identify","email"]},"facebook":{"enabled":false,"icon":"facebook-square","key":"","secret":"","callback":"api/auth/facebook/callback","scope":["email"]},"google":{"enabled":false,"icon":"google","key":"","secret":"","callback":"api/auth/google/callback","scope":["email"]},"github":{"enabled":false,"icon":"github","key":"","secret":"","callback":"api/auth/github/callback","scope":["user","user:email"]},"microsoft":{"enabled":false,"icon":"windows","key":"","secret":"","callback":"api/auth/microsoft/callback","scope":["user.read"]},"twitter":{"enabled":false,"icon":"twitter","key":"","secret":"","callback":"api/auth/twitter/callback"},"instagram":{"enabled":false,"icon":"instagram","key":"","secret":"","callback":"api/auth/instagram/callback","scope":["user_profile"]},"vk":{"enabled":false,"icon":"vk","key":"","secret":"","callback":"api/auth/vk/callback","scope":["email"]},"twitch":{"enabled":false,"icon":"twitch","key":"","secret":"","callback":"api/auth/twitch/callback","scope":["user:read:email"]},"linkedin":{"enabled":false,"icon":"linkedin","key":"","secret":"","callback":"api/auth/linkedin/callback","scope":["r_liteprofile","r_emailaddress"]},"cognito":{"enabled":false,"icon":"aws","key":"","secret":"","subdomain":"my.subdomain.com","callback":"api/auth/cognito/callback","scope":["email","openid","profile"]},"reddit":{"enabled":false,"icon":"reddit","key":"","secret":"","state":true,"callback":"api/auth/reddit/callback","scope":["identity"]},"auth0":{"enabled":false,"icon":"","key":"","secret":"","subdomain":"my-tenant.eu","callback":"api/auth/auth0/callback","scope":["openid","email","profile"]},"cas":{"enabled":false,"icon":"book","key":"","secret":"","callback":"api/auth/cas/callback","scope":["openid email"],"subdomain":"my.subdomain.com/cas"}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (13, 'plugin_users-permissions_email', '{"reset_password":{"display":"Email.template.reset_password","icon":"sync","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Reset password","message":"<p>We heard that you lost your password. Sorry about that!</p>\n\n<p>But don’t worry! You can use the following link to reset your password:</p>\n<p><%= URL %>?code=<%= TOKEN %></p>\n\n<p>Thanks.</p>"}},"email_confirmation":{"display":"Email.template.email_confirmation","icon":"check-square","options":{"from":{"name":"Administration Panel","email":"no-reply@strapi.io"},"response_email":"","object":"Account confirmation","message":"<p>Thank you for registering!</p>\n\n<p>You have to confirm your email address. Please click on the link below.</p>\n\n<p><%= URL %>?confirmation=<%= CODE %></p>\n\n<p>Thanks.</p>"}}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (14, 'plugin_users-permissions_advanced', '{"unique_email":true,"allow_register":true,"email_confirmation":false,"email_reset_password":null,"email_confirmation_redirection":null,"default_role":"authenticated"}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (124, 'plugin_content_manager_configuration_content_types::api::direktorat.direktorat', '{"uid":"api::direktorat.direktorat","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"DIREKTORAT","defaultSortBy":"DIREKTORAT","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"DIREKTORAT":{"edit":{"label":"DIREKTORAT","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DIREKTORAT","searchable":true,"sortable":true}},"ID_PEGAWAI":{"edit":{"label":"ID_PEGAWAI","description":"","placeholder":"","visible":true,"editable":true,"mainField":"NIP"},"list":{"label":"ID_PEGAWAI","searchable":false,"sortable":false}},"ID_DIVISI":{"edit":{"label":"ID_DIVISI","description":"","placeholder":"","visible":true,"editable":true,"mainField":"DIVISI"},"list":{"label":"ID_DIVISI","searchable":false,"sortable":false}},"ID_UNIT":{"edit":{"label":"ID_UNIT","description":"","placeholder":"","visible":true,"editable":true,"mainField":"UNIT"},"list":{"label":"ID_UNIT","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","DIREKTORAT","ID_PEGAWAI","ID_DIVISI"],"editRelations":["ID_PEGAWAI","ID_DIVISI","ID_UNIT"],"edit":[[{"name":"DIREKTORAT","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (136, 'plugin_content_manager_configuration_content_types::api::report-nilai.report-nilai', '{"uid":"api::report-nilai.report-nilai","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"KEKUATAN","defaultSortBy":"KEKUATAN","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"ENTHUSIASTHIC":{"edit":{"label":"ENTHUSIASTHIC","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ENTHUSIASTHIC","searchable":true,"sortable":true}},"CREATIVE_INNOVATIVE":{"edit":{"label":"CREATIVE_INNOVATIVE","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CREATIVE_INNOVATIVE","searchable":true,"sortable":true}},"BUILDING_BUSINESS":{"edit":{"label":"BUILDING_BUSINESS","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"BUILDING_BUSINESS","searchable":true,"sortable":true}},"STRATEGIC_ORIENTATION":{"edit":{"label":"STRATEGIC_ORIENTATION","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"STRATEGIC_ORIENTATION","searchable":true,"sortable":true}},"CUSTOMER_FOCUS":{"edit":{"label":"CUSTOMER_FOCUS","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CUSTOMER_FOCUS","searchable":true,"sortable":true}},"DRIVING_EXECUTION":{"edit":{"label":"DRIVING_EXECUTION","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DRIVING_EXECUTION","searchable":true,"sortable":true}},"VISIONARY_LEADERSHIP":{"edit":{"label":"VISIONARY_LEADERSHIP","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"VISIONARY_LEADERSHIP","searchable":true,"sortable":true}},"EMPOWERING":{"edit":{"label":"EMPOWERING","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"EMPOWERING","searchable":true,"sortable":true}},"KEANDALAN_SISTEM":{"edit":{"label":"KEANDALAN_SISTEM","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"KEANDALAN_SISTEM","searchable":true,"sortable":true}},"KECEPATAN_RECOVERY":{"edit":{"label":"KECEPATAN_RECOVERY","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"KECEPATAN_RECOVERY","searchable":true,"sortable":true}},"MANAJEMEN_ASET":{"edit":{"label":"MANAJEMEN_ASET","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MANAJEMEN_ASET","searchable":true,"sortable":true}},"STRATEGI_BREAKTHROUGH":{"edit":{"label":"STRATEGI_BREAKTHROUGH","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"STRATEGI_BREAKTHROUGH","searchable":true,"sortable":true}},"INTERNAL_READINESS":{"edit":{"label":"INTERNAL_READINESS","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"INTERNAL_READINESS","searchable":true,"sortable":true}},"EXTERNAL_READINESS":{"edit":{"label":"EXTERNAL_READINESS","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"EXTERNAL_READINESS","searchable":true,"sortable":true}},"CULTURAL_POLITICS":{"edit":{"label":"CULTURAL_POLITICS","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CULTURAL_POLITICS","searchable":true,"sortable":true}},"TOTAL":{"edit":{"label":"TOTAL","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TOTAL","searchable":true,"sortable":true}},"KEKUATAN":{"edit":{"label":"KEKUATAN","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"KEKUATAN","searchable":true,"sortable":true}},"KELEMAHAN":{"edit":{"label":"KELEMAHAN","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"KELEMAHAN","searchable":true,"sortable":true}},"ID_RIWAYAT":{"edit":{"label":"ID_RIWAYAT","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"ID_RIWAYAT","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","ENTHUSIASTHIC","CREATIVE_INNOVATIVE","BUILDING_BUSINESS"],"editRelations":["ID_RIWAYAT"],"edit":[[{"name":"ENTHUSIASTHIC","size":4},{"name":"CREATIVE_INNOVATIVE","size":4},{"name":"BUILDING_BUSINESS","size":4}],[{"name":"STRATEGIC_ORIENTATION","size":4},{"name":"CUSTOMER_FOCUS","size":4},{"name":"DRIVING_EXECUTION","size":4}],[{"name":"VISIONARY_LEADERSHIP","size":4},{"name":"EMPOWERING","size":4},{"name":"KEANDALAN_SISTEM","size":4}],[{"name":"KECEPATAN_RECOVERY","size":4},{"name":"MANAJEMEN_ASET","size":4},{"name":"STRATEGI_BREAKTHROUGH","size":4}],[{"name":"INTERNAL_READINESS","size":4},{"name":"EXTERNAL_READINESS","size":4},{"name":"CULTURAL_POLITICS","size":4}],[{"name":"TOTAL","size":4},{"name":"KEKUATAN","size":6}],[{"name":"KELEMAHAN","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (125, 'plugin_content_manager_configuration_content_types::api::grade.grade', '{"uid":"api::grade.grade","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"GRADE","defaultSortBy":"GRADE","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"GRADE":{"edit":{"label":"GRADE","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"GRADE","searchable":true,"sortable":true}},"ID_JENJANG":{"edit":{"label":"ID_JENJANG","description":"","placeholder":"","visible":true,"editable":true,"mainField":"JENJANG"},"list":{"label":"ID_JENJANG","searchable":false,"sortable":false}},"ID_PEGAWAI":{"edit":{"label":"ID_PEGAWAI","description":"","placeholder":"","visible":true,"editable":true,"mainField":"NIP"},"list":{"label":"ID_PEGAWAI","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","GRADE","ID_JENJANG","ID_PEGAWAI"],"editRelations":["ID_JENJANG","ID_PEGAWAI"],"edit":[[{"name":"GRADE","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (134, 'plugin_content_manager_configuration_content_types::api::fit-proper.fit-proper', '{"uid":"api::fit-proper.fit-proper","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"PROYEKSI","defaultSortBy":"PROYEKSI","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"TANGGAL_DAFTAR":{"edit":{"label":"TANGGAL_DAFTAR","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TANGGAL_DAFTAR","searchable":true,"sortable":true}},"PROYEKSI":{"edit":{"label":"PROYEKSI","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PROYEKSI","searchable":true,"sortable":true}},"JENJANG_JABATAN":{"edit":{"label":"JENJANG_JABATAN","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"JENJANG_JABATAN","searchable":true,"sortable":true}},"URJAB":{"edit":{"label":"URJAB","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"URJAB","searchable":true,"sortable":true}},"PPT_FITPROPER":{"edit":{"label":"PPT_FITPROPER","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PPT_FITPROPER","searchable":true,"sortable":true}},"CV_FITPROPER":{"edit":{"label":"CV_FITPROPER","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"CV_FITPROPER","searchable":true,"sortable":true}},"TANGGAL_UJI":{"edit":{"label":"TANGGAL_UJI","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TANGGAL_UJI","searchable":true,"sortable":true}},"ID_RIWAYAT":{"edit":{"label":"ID_RIWAYAT","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"ID_RIWAYAT","searchable":true,"sortable":true}},"ID_WAWANCARA":{"edit":{"label":"ID_WAWANCARA","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"ID_WAWANCARA","searchable":true,"sortable":true}},"JENIS_FITPROPER":{"edit":{"label":"JENIS_FITPROPER","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"JENIS_FITPROPER","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","TANGGAL_DAFTAR","PROYEKSI","JENJANG_JABATAN"],"edit":[[{"name":"TANGGAL_DAFTAR","size":4},{"name":"PROYEKSI","size":6}],[{"name":"JENJANG_JABATAN","size":6},{"name":"JENIS_FITPROPER","size":6}],[{"name":"URJAB","size":6},{"name":"PPT_FITPROPER","size":6}],[{"name":"CV_FITPROPER","size":6},{"name":"TANGGAL_UJI","size":4}]],"editRelations":["ID_RIWAYAT","ID_WAWANCARA"]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (135, 'plugin_content_manager_configuration_content_types::api::riwayat-ujian.riwayat-ujian', '{"uid":"api::riwayat-ujian.riwayat-ujian","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"ID_FITPROPER":{"edit":{"label":"ID_FITPROPER","description":"","placeholder":"","visible":true,"editable":true,"mainField":"PROYEKSI"},"list":{"label":"ID_FITPROPER","searchable":true,"sortable":true}},"ID_REPORT_NILAI":{"edit":{"label":"ID_REPORT_NILAI","description":"","placeholder":"","visible":true,"editable":true,"mainField":"KEKUATAN"},"list":{"label":"ID_REPORT_NILAI","searchable":true,"sortable":true}},"ID_REPORT_MANUAL":{"edit":{"label":"ID_REPORT_MANUAL","description":"","placeholder":"","visible":true,"editable":true,"mainField":"REKOMENDASI_PENGUJI"},"list":{"label":"ID_REPORT_MANUAL","searchable":true,"sortable":true}},"ID_PESERTA":{"edit":{"label":"ID_PESERTA","description":"","placeholder":"","visible":true,"editable":true,"mainField":"NIP"},"list":{"label":"ID_PESERTA","searchable":true,"sortable":true}},"ID_PENGUJI":{"edit":{"label":"ID_PENGUJI","description":"","placeholder":"","visible":true,"editable":true,"mainField":"NIP"},"list":{"label":"ID_PENGUJI","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","ID_FITPROPER","ID_REPORT_NILAI","ID_REPORT_MANUAL"],"edit":[],"editRelations":["ID_FITPROPER","ID_REPORT_NILAI","ID_REPORT_MANUAL","ID_PENGUJI","ID_PESERTA"]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (1, 'strapi_content_types_schema', '{"admin::permission":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_permissions","info":{"name":"Permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","minLength":1,"configurable":false,"required":true},"subject":{"type":"string","minLength":1,"configurable":false,"required":false},"properties":{"type":"json","configurable":false,"required":false,"default":{}},"conditions":{"type":"json","configurable":false,"required":false,"default":[]},"role":{"configurable":false,"type":"relation","relation":"manyToOne","inversedBy":"permissions","target":"admin::role"}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"admin::permission","plugin":"admin","globalId":"AdminPermission"},"admin::user":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_users","info":{"name":"User","description":"","singularName":"user","pluralName":"users","displayName":"User"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"firstname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"lastname":{"type":"string","unique":false,"minLength":1,"configurable":false,"required":false},"username":{"type":"string","unique":false,"configurable":false,"required":false},"email":{"type":"email","minLength":6,"configurable":false,"required":true,"unique":true,"private":true},"password":{"type":"password","minLength":6,"configurable":false,"required":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"registrationToken":{"type":"string","configurable":false,"private":true},"isActive":{"type":"boolean","default":false,"configurable":false,"private":true},"roles":{"configurable":false,"private":true,"type":"relation","relation":"manyToMany","inversedBy":"users","target":"admin::role","collectionName":"strapi_users_roles"},"blocked":{"type":"boolean","default":false,"configurable":false,"private":true},"preferedLanguage":{"type":"string","configurable":false,"required":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"admin::user","plugin":"admin","globalId":"AdminUser"},"admin::role":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"admin_roles","info":{"name":"Role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"code":{"type":"string","minLength":1,"unique":true,"configurable":false,"required":true},"description":{"type":"string","configurable":false},"users":{"configurable":false,"type":"relation","relation":"manyToMany","mappedBy":"roles","target":"admin::user"},"permissions":{"configurable":false,"type":"relation","relation":"oneToMany","mappedBy":"role","target":"admin::permission"}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"admin::role","plugin":"admin","globalId":"AdminRole"},"admin::api-token":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"strapi_api_tokens","info":{"name":"Api Token","singularName":"api-token","pluralName":"api-tokens","displayName":"Api Token","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":1,"configurable":false,"required":true},"description":{"type":"string","minLength":1,"configurable":false,"required":false,"default":""},"type":{"type":"enumeration","enum":["read-only","full-access"],"configurable":false,"required":false,"default":"read-only"},"accessKey":{"type":"string","minLength":1,"configurable":false,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"api-token","connection":"default","uid":"admin::api-token","plugin":"admin","globalId":"AdminApiToken"},"plugin::upload.file":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"files","info":{"singularName":"file","pluralName":"files","displayName":"File","description":""},"options":{},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","configurable":false,"required":true},"alternativeText":{"type":"string","configurable":false},"caption":{"type":"string","configurable":false},"width":{"type":"integer","configurable":false},"height":{"type":"integer","configurable":false},"formats":{"type":"json","configurable":false},"hash":{"type":"string","configurable":false,"required":true},"ext":{"type":"string","configurable":false},"mime":{"type":"string","configurable":false,"required":true},"size":{"type":"decimal","configurable":false,"required":true},"url":{"type":"string","configurable":false,"required":true},"previewUrl":{"type":"string","configurable":false},"provider":{"type":"string","configurable":false,"required":true},"provider_metadata":{"type":"json","configurable":false},"related":{"type":"relation","relation":"morphToMany","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"file","connection":"default","uid":"plugin::upload.file","plugin":"upload","globalId":"UploadFile"},"plugin::users-permissions.permission":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_permissions","info":{"name":"permission","description":"","singularName":"permission","pluralName":"permissions","displayName":"Permission"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"action":{"type":"string","required":true,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"permissions","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"permission","connection":"default","uid":"plugin::users-permissions.permission","plugin":"users-permissions","globalId":"UsersPermissionsPermission"},"plugin::users-permissions.role":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"collectionName":"up_roles","info":{"name":"role","description":"","singularName":"role","pluralName":"roles","displayName":"Role"},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","minLength":3,"required":true,"configurable":false},"description":{"type":"string","configurable":false},"type":{"type":"string","unique":true,"configurable":false},"permissions":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.permission","mappedBy":"role","configurable":false},"users":{"type":"relation","relation":"oneToMany","target":"plugin::users-permissions.user","mappedBy":"role","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"role","connection":"default","uid":"plugin::users-permissions.role","plugin":"users-permissions","globalId":"UsersPermissionsRole"},"plugin::users-permissions.user":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"config":{"attributes":{"resetPasswordToken":{"hidden":true},"confirmationToken":{"hidden":true},"provider":{"hidden":true}}},"kind":"collectionType","__schema__":{"collectionName":"up_users","info":{"name":"user","description":"","singularName":"user","pluralName":"users","displayName":"User"},"options":{"draftAndPublish":false,"timestamps":true},"attributes":{"username":{"type":"string","minLength":3,"unique":true,"configurable":false,"required":true},"email":{"type":"email","minLength":6,"configurable":false,"required":true},"provider":{"type":"string","configurable":false},"password":{"type":"password","minLength":6,"configurable":false,"private":true},"resetPasswordToken":{"type":"string","configurable":false,"private":true},"confirmationToken":{"type":"string","configurable":false,"private":true},"confirmed":{"type":"boolean","default":false,"configurable":false},"blocked":{"type":"boolean","default":false,"configurable":false},"role":{"type":"relation","relation":"manyToOne","target":"plugin::users-permissions.role","inversedBy":"users","configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"user","connection":"default","uid":"plugin::users-permissions.user","plugin":"users-permissions","globalId":"UsersPermissionsUser"},"plugin::i18n.locale":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"kind":"collectionType","__schema__":{"info":{"singularName":"locale","pluralName":"locales","collectionName":"locales","displayName":"Locale","description":""},"options":{"draftAndPublish":false},"pluginOptions":{"content-manager":{"visible":false},"content-type-builder":{"visible":false}},"attributes":{"name":{"type":"string","min":1,"max":50,"configurable":false},"code":{"type":"string","unique":true,"configurable":false}},"kind":"collectionType"},"modelType":"contentType","modelName":"locale","connection":"default","uid":"plugin::i18n.locale","plugin":"i18n","collectionName":"i18n_locale","globalId":"I18NLocale"},"api::administrasi-users.administrasi-users":{"kind":"collectionType","collectionName":"administrasi_userss","info":{"singularName":"administrasi-users","pluralName":"administrasi-userss","displayName":"Administrasi_Users","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"NAMA_ADMIN":{"type":"string","maxLength":50,"required":false},"PASSWORD":{"type":"string","maxLength":8,"required":true},"AKSES":{"type":"integer","required":true,"max":2,"min":0},"ADMINISTRASI_USERS":{"type":"boolean","default":false,"required":true},"MASTER":{"type":"boolean","default":true,"required":true},"DAFTAR_FP":{"type":"boolean","default":true,"required":true},"NILAI_FP":{"type":"boolean","required":true},"REPORT":{"type":"boolean","default":false,"required":false},"ID_PEGAWAI":{"type":"relation","relation":"oneToOne","target":"api::pegawai.pegawai","mappedBy":"ID_ADMINISTRASI_USERS"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"administrasi_userss","info":{"singularName":"administrasi-users","pluralName":"administrasi-userss","displayName":"Administrasi_Users","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"NAMA_ADMIN":{"type":"string","maxLength":50,"required":false},"PASSWORD":{"type":"string","maxLength":8,"required":true},"AKSES":{"type":"integer","required":true,"max":2,"min":0},"ADMINISTRASI_USERS":{"type":"boolean","default":false,"required":true},"MASTER":{"type":"boolean","default":true,"required":true},"DAFTAR_FP":{"type":"boolean","default":true,"required":true},"NILAI_FP":{"type":"boolean","required":true},"REPORT":{"type":"boolean","default":false,"required":false},"ID_PEGAWAI":{"type":"relation","relation":"oneToOne","target":"api::pegawai.pegawai","mappedBy":"ID_ADMINISTRASI_USERS"}},"kind":"collectionType"},"modelType":"contentType","modelName":"administrasi-users","connection":"default","uid":"api::administrasi-users.administrasi-users","apiName":"administrasi-users","globalId":"AdministrasiUsers","actions":{},"lifecycles":{}},"api::bidang.bidang":{"kind":"collectionType","collectionName":"bidangs","info":{"singularName":"bidang","pluralName":"bidangs","displayName":"Bidang","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"BIDANG":{"type":"string","required":true,"maxLength":225,"unique":true},"ID_SUB_BIDANG":{"type":"relation","relation":"oneToMany","target":"api::sub-bidang.sub-bidang","mappedBy":"ID_BIDANG"},"ID_PEGAWAI":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_BIDANG"},"ID_DIVISI":{"type":"relation","relation":"manyToOne","target":"api::divisi.divisi","inversedBy":"ID_BIDANG"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"bidangs","info":{"singularName":"bidang","pluralName":"bidangs","displayName":"Bidang","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"BIDANG":{"type":"string","required":true,"maxLength":225,"unique":true},"ID_SUB_BIDANG":{"type":"relation","relation":"oneToMany","target":"api::sub-bidang.sub-bidang","mappedBy":"ID_BIDANG"},"ID_PEGAWAI":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_BIDANG"},"ID_DIVISI":{"type":"relation","relation":"manyToOne","target":"api::divisi.divisi","inversedBy":"ID_BIDANG"}},"kind":"collectionType"},"modelType":"contentType","modelName":"bidang","connection":"default","uid":"api::bidang.bidang","apiName":"bidang","globalId":"Bidang","actions":{},"lifecycles":{}},"api::direktorat.direktorat":{"kind":"collectionType","collectionName":"direktorats","info":{"singularName":"direktorat","pluralName":"direktorats","displayName":"Direktorat","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"DIREKTORAT":{"type":"string","required":true,"unique":true,"maxLength":225},"ID_PEGAWAI":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_DIREKTORAT"},"ID_DIVISI":{"type":"relation","relation":"oneToMany","target":"api::divisi.divisi","mappedBy":"ID_DIREKTORAT"},"ID_UNIT":{"type":"relation","relation":"manyToOne","target":"api::unit.unit","inversedBy":"ID_DIREKTORAT"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"direktorats","info":{"singularName":"direktorat","pluralName":"direktorats","displayName":"Direktorat","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"DIREKTORAT":{"type":"string","required":true,"unique":true,"maxLength":225},"ID_PEGAWAI":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_DIREKTORAT"},"ID_DIVISI":{"type":"relation","relation":"oneToMany","target":"api::divisi.divisi","mappedBy":"ID_DIREKTORAT"},"ID_UNIT":{"type":"relation","relation":"manyToOne","target":"api::unit.unit","inversedBy":"ID_DIREKTORAT"}},"kind":"collectionType"},"modelType":"contentType","modelName":"direktorat","connection":"default","uid":"api::direktorat.direktorat","apiName":"direktorat","globalId":"Direktorat","actions":{},"lifecycles":{}},"api::divisi.divisi":{"kind":"collectionType","collectionName":"divisis","info":{"singularName":"divisi","pluralName":"divisis","displayName":"Divisi","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"DIVISI":{"type":"string","unique":true,"required":true,"maxLength":225},"ID_BIDANG":{"type":"relation","relation":"oneToMany","target":"api::bidang.bidang","mappedBy":"ID_DIVISI"},"ID_DIREKTORAT":{"type":"relation","relation":"manyToOne","target":"api::direktorat.direktorat","inversedBy":"ID_DIVISI"},"id_pegawais":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_DIVISI"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"divisis","info":{"singularName":"divisi","pluralName":"divisis","displayName":"Divisi","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"DIVISI":{"type":"string","unique":true,"required":true,"maxLength":225},"ID_BIDANG":{"type":"relation","relation":"oneToMany","target":"api::bidang.bidang","mappedBy":"ID_DIVISI"},"ID_DIREKTORAT":{"type":"relation","relation":"manyToOne","target":"api::direktorat.direktorat","inversedBy":"ID_DIVISI"},"id_pegawais":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_DIVISI"}},"kind":"collectionType"},"modelType":"contentType","modelName":"divisi","connection":"default","uid":"api::divisi.divisi","apiName":"divisi","globalId":"Divisi","actions":{},"lifecycles":{}},"api::fit-proper.fit-proper":{"kind":"collectionType","collectionName":"fit_propers","info":{"singularName":"fit-proper","pluralName":"fit-propers","displayName":"Fit_Proper","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"TANGGAL_DAFTAR":{"required":true,"type":"date"},"PROYEKSI":{"type":"string","required":true,"maxLength":225,"unique":false},"JENJANG_JABATAN":{"type":"string","required":false,"maxLength":50},"URJAB":{"type":"string","maxLength":225,"required":false},"PPT_FITPROPER":{"type":"string","required":true,"maxLength":225},"CV_FITPROPER":{"type":"string","maxLength":225,"required":true},"TANGGAL_UJI":{"type":"date","required":false},"ID_RIWAYAT":{"type":"relation","relation":"oneToOne","target":"api::riwayat-ujian.riwayat-ujian","inversedBy":"ID_FITPROPER"},"ID_WAWANCARA":{"type":"relation","relation":"oneToOne","target":"api::wawancara.wawancara","inversedBy":"ID_FITPROPER"},"JENIS_FITPROPER":{"type":"enumeration","enum":["Regular","Vcon"],"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"fit_propers","info":{"singularName":"fit-proper","pluralName":"fit-propers","displayName":"Fit_Proper","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"TANGGAL_DAFTAR":{"required":true,"type":"date"},"PROYEKSI":{"type":"string","required":true,"maxLength":225,"unique":false},"JENJANG_JABATAN":{"type":"string","required":false,"maxLength":50},"URJAB":{"type":"string","maxLength":225,"required":false},"PPT_FITPROPER":{"type":"string","required":true,"maxLength":225},"CV_FITPROPER":{"type":"string","maxLength":225,"required":true},"TANGGAL_UJI":{"type":"date","required":false},"ID_RIWAYAT":{"type":"relation","relation":"oneToOne","target":"api::riwayat-ujian.riwayat-ujian","inversedBy":"ID_FITPROPER"},"ID_WAWANCARA":{"type":"relation","relation":"oneToOne","target":"api::wawancara.wawancara","inversedBy":"ID_FITPROPER"},"JENIS_FITPROPER":{"type":"enumeration","enum":["Regular","Vcon"],"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"fit-proper","connection":"default","uid":"api::fit-proper.fit-proper","apiName":"fit-proper","globalId":"FitProper","actions":{},"lifecycles":{}},"api::grade.grade":{"kind":"collectionType","collectionName":"grades","info":{"singularName":"grade","pluralName":"grades","displayName":"Grade","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"GRADE":{"type":"string","required":true,"maxLength":5,"unique":true},"ID_JENJANG":{"type":"relation","relation":"manyToMany","target":"api::jenjang.jenjang","inversedBy":"ID_GRADE"},"ID_PEGAWAI":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_GRADE"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"grades","info":{"singularName":"grade","pluralName":"grades","displayName":"Grade","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"GRADE":{"type":"string","required":true,"maxLength":5,"unique":true},"ID_JENJANG":{"type":"relation","relation":"manyToMany","target":"api::jenjang.jenjang","inversedBy":"ID_GRADE"},"ID_PEGAWAI":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_GRADE"}},"kind":"collectionType"},"modelType":"contentType","modelName":"grade","connection":"default","uid":"api::grade.grade","apiName":"grade","globalId":"Grade","actions":{},"lifecycles":{}},"api::jabatan.jabatan":{"kind":"collectionType","collectionName":"jabatans","info":{"singularName":"jabatan","pluralName":"jabatans","displayName":"Jabatan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"JABATAN":{"type":"string","required":true,"maxLength":225,"unique":false},"ID_PEGAWAI":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_JABATAN"},"ID_UNIT":{"type":"relation","relation":"manyToOne","target":"api::unit.unit","inversedBy":"ID_JABATAN"},"ID_JENJANG":{"type":"relation","relation":"manyToOne","target":"api::jenjang.jenjang","inversedBy":"ID_JABATAN"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"jabatans","info":{"singularName":"jabatan","pluralName":"jabatans","displayName":"Jabatan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"JABATAN":{"type":"string","required":true,"maxLength":225,"unique":false},"ID_PEGAWAI":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_JABATAN"},"ID_UNIT":{"type":"relation","relation":"manyToOne","target":"api::unit.unit","inversedBy":"ID_JABATAN"},"ID_JENJANG":{"type":"relation","relation":"manyToOne","target":"api::jenjang.jenjang","inversedBy":"ID_JABATAN"}},"kind":"collectionType"},"modelType":"contentType","modelName":"jabatan","connection":"default","uid":"api::jabatan.jabatan","apiName":"jabatan","globalId":"Jabatan","actions":{},"lifecycles":{}},"api::jenjang.jenjang":{"kind":"collectionType","collectionName":"jenjangs","info":{"singularName":"jenjang","pluralName":"jenjangs","displayName":"Jenjang","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"JENJANG":{"type":"string","maxLength":50,"required":true,"unique":true},"ID_GRADE":{"type":"relation","relation":"manyToMany","target":"api::grade.grade","mappedBy":"ID_JENJANG"},"ID_JABATAN":{"type":"relation","relation":"oneToMany","target":"api::jabatan.jabatan","mappedBy":"ID_JENJANG"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"jenjangs","info":{"singularName":"jenjang","pluralName":"jenjangs","displayName":"Jenjang","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"JENJANG":{"type":"string","maxLength":50,"required":true,"unique":true},"ID_GRADE":{"type":"relation","relation":"manyToMany","target":"api::grade.grade","mappedBy":"ID_JENJANG"},"ID_JABATAN":{"type":"relation","relation":"oneToMany","target":"api::jabatan.jabatan","mappedBy":"ID_JENJANG"}},"kind":"collectionType"},"modelType":"contentType","modelName":"jenjang","connection":"default","uid":"api::jenjang.jenjang","apiName":"jenjang","globalId":"Jenjang","actions":{},"lifecycles":{}},"api::pegawai.pegawai":{"kind":"collectionType","collectionName":"pegawais","info":{"singularName":"pegawai","pluralName":"pegawais","displayName":"Pegawai","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"NIP":{"type":"string","unique":true,"required":true,"maxLength":10},"NAMA":{"type":"string","required":true,"maxLength":50},"EMAIL":{"type":"string","required":false,"maxLength":50},"TEMPAT_LAHIR":{"type":"string","maxLength":15},"TANGGAL_LAHIR":{"type":"date","required":true},"NO_HP":{"type":"string","maxLength":13},"FOTO":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"ID_RIWAYAT_PESERTA":{"type":"relation","relation":"oneToMany","target":"api::riwayat-ujian.riwayat-ujian","mappedBy":"ID_PESERTA"},"ID_RIWAYAT_PENGUJI":{"type":"relation","relation":"oneToMany","target":"api::riwayat-ujian.riwayat-ujian","mappedBy":"ID_PENGUJI"},"JNS_KELAMIN":{"type":"enumeration","enum":["Pria","Wanita"],"required":true},"AGAMA":{"type":"enumeration","enum":["Buddha","Hindu","Islam","Konghucu","Kristen Katolik","Kristen Protestan"],"required":true},"STATUS_PEGAWAI":{"type":"enumeration","enum":["Peserta","Penguji","Admin"],"default":"Peserta","required":true},"ID_ADMINISTRASI_USERS":{"type":"relation","relation":"oneToOne","target":"api::administrasi-users.administrasi-users","inversedBy":"ID_PEGAWAI"},"ID_SUB_BIDANG":{"type":"relation","relation":"manyToOne","target":"api::sub-bidang.sub-bidang","inversedBy":"ID_PEGAWAI"},"ID_BIDANG":{"type":"relation","relation":"manyToOne","target":"api::bidang.bidang","inversedBy":"ID_PEGAWAI"},"ID_DIREKTORAT":{"type":"relation","relation":"manyToOne","target":"api::direktorat.direktorat","inversedBy":"ID_PEGAWAI"},"ID_DIVISI":{"type":"relation","relation":"manyToOne","target":"api::divisi.divisi","inversedBy":"id_pegawais"},"ID_GRADE":{"type":"relation","relation":"manyToOne","target":"api::grade.grade","inversedBy":"ID_PEGAWAI"},"ID_JABATAN":{"type":"relation","relation":"manyToOne","target":"api::jabatan.jabatan","inversedBy":"ID_PEGAWAI"},"ID_PENDIDIKAN":{"type":"relation","relation":"manyToOne","target":"api::pendidilkan.pendidilkan","inversedBy":"ID_PEGAWAI"},"ID_UNIT":{"type":"relation","relation":"manyToOne","target":"api::unit.unit","inversedBy":"ID_PEGAWAI"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"pegawais","info":{"singularName":"pegawai","pluralName":"pegawais","displayName":"Pegawai","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"NIP":{"type":"string","unique":true,"required":true,"maxLength":10},"NAMA":{"type":"string","required":true,"maxLength":50},"EMAIL":{"type":"string","required":false,"maxLength":50},"TEMPAT_LAHIR":{"type":"string","maxLength":15},"TANGGAL_LAHIR":{"type":"date","required":true},"NO_HP":{"type":"string","maxLength":13},"FOTO":{"type":"media","multiple":true,"required":false,"allowedTypes":["images"]},"ID_RIWAYAT_PESERTA":{"type":"relation","relation":"oneToMany","target":"api::riwayat-ujian.riwayat-ujian","mappedBy":"ID_PESERTA"},"ID_RIWAYAT_PENGUJI":{"type":"relation","relation":"oneToMany","target":"api::riwayat-ujian.riwayat-ujian","mappedBy":"ID_PENGUJI"},"JNS_KELAMIN":{"type":"enumeration","enum":["Pria","Wanita"],"required":true},"AGAMA":{"type":"enumeration","enum":["Buddha","Hindu","Islam","Konghucu","Kristen Katolik","Kristen Protestan"],"required":true},"STATUS_PEGAWAI":{"type":"enumeration","enum":["Peserta","Penguji","Admin"],"default":"Peserta","required":true},"ID_ADMINISTRASI_USERS":{"type":"relation","relation":"oneToOne","target":"api::administrasi-users.administrasi-users","inversedBy":"ID_PEGAWAI"},"ID_SUB_BIDANG":{"type":"relation","relation":"manyToOne","target":"api::sub-bidang.sub-bidang","inversedBy":"ID_PEGAWAI"},"ID_BIDANG":{"type":"relation","relation":"manyToOne","target":"api::bidang.bidang","inversedBy":"ID_PEGAWAI"},"ID_DIREKTORAT":{"type":"relation","relation":"manyToOne","target":"api::direktorat.direktorat","inversedBy":"ID_PEGAWAI"},"ID_DIVISI":{"type":"relation","relation":"manyToOne","target":"api::divisi.divisi","inversedBy":"id_pegawais"},"ID_GRADE":{"type":"relation","relation":"manyToOne","target":"api::grade.grade","inversedBy":"ID_PEGAWAI"},"ID_JABATAN":{"type":"relation","relation":"manyToOne","target":"api::jabatan.jabatan","inversedBy":"ID_PEGAWAI"},"ID_PENDIDIKAN":{"type":"relation","relation":"manyToOne","target":"api::pendidilkan.pendidilkan","inversedBy":"ID_PEGAWAI"},"ID_UNIT":{"type":"relation","relation":"manyToOne","target":"api::unit.unit","inversedBy":"ID_PEGAWAI"}},"kind":"collectionType"},"modelType":"contentType","modelName":"pegawai","connection":"default","uid":"api::pegawai.pegawai","apiName":"pegawai","globalId":"Pegawai","actions":{},"lifecycles":{}},"api::pendidilkan.pendidilkan":{"kind":"collectionType","collectionName":"pendidilkans","info":{"singularName":"pendidilkan","pluralName":"pendidilkans","displayName":"Pendidikan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"PENDIDIKAN":{"type":"string","required":true,"maxLength":100},"ID_PEGAWAI":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_PENDIDIKAN"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"pendidilkans","info":{"singularName":"pendidilkan","pluralName":"pendidilkans","displayName":"Pendidikan","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"PENDIDIKAN":{"type":"string","required":true,"maxLength":100},"ID_PEGAWAI":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_PENDIDIKAN"}},"kind":"collectionType"},"modelType":"contentType","modelName":"pendidilkan","connection":"default","uid":"api::pendidilkan.pendidilkan","apiName":"pendidilkan","globalId":"Pendidilkan","actions":{},"lifecycles":{}},"api::report-nilai.report-nilai":{"kind":"collectionType","collectionName":"report_nilais","info":{"singularName":"report-nilai","pluralName":"report-nilais","displayName":"Report_Nilai","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"ENTHUSIASTHIC":{"type":"integer","max":100},"CREATIVE_INNOVATIVE":{"type":"integer","max":100,"required":false},"BUILDING_BUSINESS":{"type":"integer","max":100},"STRATEGIC_ORIENTATION":{"type":"integer","max":100},"CUSTOMER_FOCUS":{"type":"integer","max":100},"DRIVING_EXECUTION":{"type":"integer","max":100},"VISIONARY_LEADERSHIP":{"type":"integer","max":100},"EMPOWERING":{"type":"integer","max":100},"KEANDALAN_SISTEM":{"type":"integer","max":100},"KECEPATAN_RECOVERY":{"type":"integer","max":100},"MANAJEMEN_ASET":{"type":"integer","max":100},"STRATEGI_BREAKTHROUGH":{"type":"integer","max":100},"INTERNAL_READINESS":{"type":"integer","max":100},"EXTERNAL_READINESS":{"type":"integer","max":100},"CULTURAL_POLITICS":{"type":"integer","max":100},"TOTAL":{"type":"float","max":100},"KEKUATAN":{"type":"string","maxLength":225},"KELEMAHAN":{"type":"string","maxLength":225},"ID_RIWAYAT":{"type":"relation","relation":"oneToOne","target":"api::riwayat-ujian.riwayat-ujian","mappedBy":"ID_REPORT_NILAI"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"report_nilais","info":{"singularName":"report-nilai","pluralName":"report-nilais","displayName":"Report_Nilai","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"ENTHUSIASTHIC":{"type":"integer","max":100},"CREATIVE_INNOVATIVE":{"type":"integer","max":100,"required":false},"BUILDING_BUSINESS":{"type":"integer","max":100},"STRATEGIC_ORIENTATION":{"type":"integer","max":100},"CUSTOMER_FOCUS":{"type":"integer","max":100},"DRIVING_EXECUTION":{"type":"integer","max":100},"VISIONARY_LEADERSHIP":{"type":"integer","max":100},"EMPOWERING":{"type":"integer","max":100},"KEANDALAN_SISTEM":{"type":"integer","max":100},"KECEPATAN_RECOVERY":{"type":"integer","max":100},"MANAJEMEN_ASET":{"type":"integer","max":100},"STRATEGI_BREAKTHROUGH":{"type":"integer","max":100},"INTERNAL_READINESS":{"type":"integer","max":100},"EXTERNAL_READINESS":{"type":"integer","max":100},"CULTURAL_POLITICS":{"type":"integer","max":100},"TOTAL":{"type":"float","max":100},"KEKUATAN":{"type":"string","maxLength":225},"KELEMAHAN":{"type":"string","maxLength":225},"ID_RIWAYAT":{"type":"relation","relation":"oneToOne","target":"api::riwayat-ujian.riwayat-ujian","mappedBy":"ID_REPORT_NILAI"}},"kind":"collectionType"},"modelType":"contentType","modelName":"report-nilai","connection":"default","uid":"api::report-nilai.report-nilai","apiName":"report-nilai","globalId":"ReportNilai","actions":{},"lifecycles":{}},"api::report-nilai-manual.report-nilai-manual":{"kind":"collectionType","collectionName":"report_nilai_manuals","info":{"singularName":"report-nilai-manual","pluralName":"report-nilai-manuals","displayName":"Report_Nilai_Manual","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"NILAI_PENGETAHUAN_60":{"type":"integer","required":true},"NILAI_PENGETAHUAN_40":{"type":"integer"},"NILAI_KETERAMPILAN_60":{"type":"integer","required":true},"NILAI_KETERAMPILAN_40":{"type":"integer"},"REKOMENDASI_PENGUJI":{"type":"string","maxLength":50},"KELEMAHAN":{"type":"string","maxLength":225},"KEKUATAN":{"type":"string","maxLength":225},"ID_RIWAYAT":{"type":"relation","relation":"oneToOne","target":"api::riwayat-ujian.riwayat-ujian","mappedBy":"ID_REPORT_MANUAL"},"PENILAI":{"type":"string","maxLength":50,"required":true},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"report_nilai_manuals","info":{"singularName":"report-nilai-manual","pluralName":"report-nilai-manuals","displayName":"Report_Nilai_Manual","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"NILAI_PENGETAHUAN_60":{"type":"integer","required":true},"NILAI_PENGETAHUAN_40":{"type":"integer"},"NILAI_KETERAMPILAN_60":{"type":"integer","required":true},"NILAI_KETERAMPILAN_40":{"type":"integer"},"REKOMENDASI_PENGUJI":{"type":"string","maxLength":50},"KELEMAHAN":{"type":"string","maxLength":225},"KEKUATAN":{"type":"string","maxLength":225},"ID_RIWAYAT":{"type":"relation","relation":"oneToOne","target":"api::riwayat-ujian.riwayat-ujian","mappedBy":"ID_REPORT_MANUAL"},"PENILAI":{"type":"string","maxLength":50,"required":true}},"kind":"collectionType"},"modelType":"contentType","modelName":"report-nilai-manual","connection":"default","uid":"api::report-nilai-manual.report-nilai-manual","apiName":"report-nilai-manual","globalId":"ReportNilaiManual","actions":{},"lifecycles":{}},"api::riwayat-ujian.riwayat-ujian":{"kind":"collectionType","collectionName":"riwayat_ujians","info":{"singularName":"riwayat-ujian","pluralName":"riwayat-ujians","displayName":"Riwayat","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"ID_FITPROPER":{"type":"relation","relation":"oneToOne","target":"api::fit-proper.fit-proper","mappedBy":"ID_RIWAYAT"},"ID_REPORT_NILAI":{"type":"relation","relation":"oneToOne","target":"api::report-nilai.report-nilai","inversedBy":"ID_RIWAYAT"},"ID_REPORT_MANUAL":{"type":"relation","relation":"oneToOne","target":"api::report-nilai-manual.report-nilai-manual","inversedBy":"ID_RIWAYAT"},"ID_PESERTA":{"type":"relation","relation":"manyToOne","target":"api::pegawai.pegawai","inversedBy":"ID_RIWAYAT_PESERTA"},"ID_PENGUJI":{"type":"relation","relation":"manyToOne","target":"api::pegawai.pegawai","inversedBy":"ID_RIWAYAT_PENGUJI"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"riwayat_ujians","info":{"singularName":"riwayat-ujian","pluralName":"riwayat-ujians","displayName":"Riwayat","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"ID_FITPROPER":{"type":"relation","relation":"oneToOne","target":"api::fit-proper.fit-proper","mappedBy":"ID_RIWAYAT"},"ID_REPORT_NILAI":{"type":"relation","relation":"oneToOne","target":"api::report-nilai.report-nilai","inversedBy":"ID_RIWAYAT"},"ID_REPORT_MANUAL":{"type":"relation","relation":"oneToOne","target":"api::report-nilai-manual.report-nilai-manual","inversedBy":"ID_RIWAYAT"},"ID_PESERTA":{"type":"relation","relation":"manyToOne","target":"api::pegawai.pegawai","inversedBy":"ID_RIWAYAT_PESERTA"},"ID_PENGUJI":{"type":"relation","relation":"manyToOne","target":"api::pegawai.pegawai","inversedBy":"ID_RIWAYAT_PENGUJI"}},"kind":"collectionType"},"modelType":"contentType","modelName":"riwayat-ujian","connection":"default","uid":"api::riwayat-ujian.riwayat-ujian","apiName":"riwayat-ujian","globalId":"RiwayatUjian","actions":{},"lifecycles":{}},"api::sub-bidang.sub-bidang":{"kind":"collectionType","collectionName":"sub_bidangs","info":{"singularName":"sub-bidang","pluralName":"sub-bidangs","displayName":"Sub_Bidang","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"SUB_BIDANG":{"type":"string","required":true,"maxLength":225,"unique":true},"ID_PEGAWAI":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_SUB_BIDANG"},"ID_BIDANG":{"type":"relation","relation":"manyToOne","target":"api::bidang.bidang","inversedBy":"ID_SUB_BIDANG"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"sub_bidangs","info":{"singularName":"sub-bidang","pluralName":"sub-bidangs","displayName":"Sub_Bidang","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"SUB_BIDANG":{"type":"string","required":true,"maxLength":225,"unique":true},"ID_PEGAWAI":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_SUB_BIDANG"},"ID_BIDANG":{"type":"relation","relation":"manyToOne","target":"api::bidang.bidang","inversedBy":"ID_SUB_BIDANG"}},"kind":"collectionType"},"modelType":"contentType","modelName":"sub-bidang","connection":"default","uid":"api::sub-bidang.sub-bidang","apiName":"sub-bidang","globalId":"SubBidang","actions":{},"lifecycles":{}},"api::unit.unit":{"kind":"collectionType","collectionName":"units","info":{"singularName":"unit","pluralName":"units","displayName":"Unit","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"UNIT":{"type":"string","required":true,"maxLength":225,"unique":true},"ID_DIREKTORAT":{"type":"relation","relation":"oneToMany","target":"api::direktorat.direktorat","mappedBy":"ID_UNIT"},"ID_JABATAN":{"type":"relation","relation":"oneToMany","target":"api::jabatan.jabatan","mappedBy":"ID_UNIT"},"ID_PEGAWAI":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_UNIT"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"units","info":{"singularName":"unit","pluralName":"units","displayName":"Unit","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"UNIT":{"type":"string","required":true,"maxLength":225,"unique":true},"ID_DIREKTORAT":{"type":"relation","relation":"oneToMany","target":"api::direktorat.direktorat","mappedBy":"ID_UNIT"},"ID_JABATAN":{"type":"relation","relation":"oneToMany","target":"api::jabatan.jabatan","mappedBy":"ID_UNIT"},"ID_PEGAWAI":{"type":"relation","relation":"oneToMany","target":"api::pegawai.pegawai","mappedBy":"ID_UNIT"}},"kind":"collectionType"},"modelType":"contentType","modelName":"unit","connection":"default","uid":"api::unit.unit","apiName":"unit","globalId":"Unit","actions":{},"lifecycles":{}},"api::wawancara.wawancara":{"kind":"collectionType","collectionName":"wawancaras","info":{"singularName":"wawancara","pluralName":"wawancaras","displayName":"Wawancara","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"TANGGAL_WAWACARA":{"type":"date","required":true},"ID_FITPROPER":{"type":"relation","relation":"oneToOne","target":"api::fit-proper.fit-proper","mappedBy":"ID_WAWANCARA"},"createdAt":{"type":"datetime"},"updatedAt":{"type":"datetime"},"publishedAt":{"type":"datetime","configurable":false,"writable":true,"visible":false},"createdBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true},"updatedBy":{"type":"relation","relation":"oneToOne","target":"admin::user","configurable":false,"writable":false,"visible":false,"useJoinTable":false,"private":true}},"__schema__":{"collectionName":"wawancaras","info":{"singularName":"wawancara","pluralName":"wawancaras","displayName":"Wawancara","description":""},"options":{"draftAndPublish":true},"pluginOptions":{},"attributes":{"TANGGAL_WAWACARA":{"type":"date","required":true},"ID_FITPROPER":{"type":"relation","relation":"oneToOne","target":"api::fit-proper.fit-proper","mappedBy":"ID_WAWANCARA"}},"kind":"collectionType"},"modelType":"contentType","modelName":"wawancara","connection":"default","uid":"api::wawancara.wawancara","apiName":"wawancara","globalId":"Wawancara","actions":{},"lifecycles":{}}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (16, 'core_admin_auth', '{"providers":{"autoRegister":false,"defaultRole":null}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (126, 'plugin_content_manager_configuration_content_types::api::divisi.divisi', '{"uid":"api::divisi.divisi","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"DIVISI","defaultSortBy":"DIVISI","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"DIVISI":{"edit":{"label":"DIVISI","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DIVISI","searchable":true,"sortable":true}},"ID_BIDANG":{"edit":{"label":"ID_BIDANG","description":"","placeholder":"","visible":true,"editable":true,"mainField":"BIDANG"},"list":{"label":"ID_BIDANG","searchable":false,"sortable":false}},"ID_DIREKTORAT":{"edit":{"label":"ID_DIREKTORAT","description":"","placeholder":"","visible":true,"editable":true,"mainField":"DIREKTORAT"},"list":{"label":"ID_DIREKTORAT","searchable":true,"sortable":true}},"id_pegawais":{"edit":{"label":"id_pegawais","description":"","placeholder":"","visible":true,"editable":true,"mainField":"NIP"},"list":{"label":"id_pegawais","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","DIVISI","ID_BIDANG","ID_DIREKTORAT"],"editRelations":["ID_BIDANG","ID_DIREKTORAT","id_pegawais"],"edit":[[{"name":"DIVISI","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (127, 'plugin_content_manager_configuration_content_types::api::jabatan.jabatan', '{"uid":"api::jabatan.jabatan","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"JABATAN","defaultSortBy":"JABATAN","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"JABATAN":{"edit":{"label":"JABATAN","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"JABATAN","searchable":true,"sortable":true}},"ID_PEGAWAI":{"edit":{"label":"ID_PEGAWAI","description":"","placeholder":"","visible":true,"editable":true,"mainField":"NIP"},"list":{"label":"ID_PEGAWAI","searchable":false,"sortable":false}},"ID_UNIT":{"edit":{"label":"ID_UNIT","description":"","placeholder":"","visible":true,"editable":true,"mainField":"UNIT"},"list":{"label":"ID_UNIT","searchable":true,"sortable":true}},"ID_JENJANG":{"edit":{"label":"ID_JENJANG","description":"","placeholder":"","visible":true,"editable":true,"mainField":"JENJANG"},"list":{"label":"ID_JENJANG","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","JABATAN","ID_PEGAWAI","ID_UNIT"],"editRelations":["ID_PEGAWAI","ID_UNIT","ID_JENJANG"],"edit":[[{"name":"JABATAN","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (128, 'plugin_content_manager_configuration_content_types::api::jenjang.jenjang', '{"uid":"api::jenjang.jenjang","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"JENJANG","defaultSortBy":"JENJANG","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"JENJANG":{"edit":{"label":"JENJANG","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"JENJANG","searchable":true,"sortable":true}},"ID_GRADE":{"edit":{"label":"ID_GRADE","description":"","placeholder":"","visible":true,"editable":true,"mainField":"GRADE"},"list":{"label":"ID_GRADE","searchable":false,"sortable":false}},"ID_JABATAN":{"edit":{"label":"ID_JABATAN","description":"","placeholder":"","visible":true,"editable":true,"mainField":"JABATAN"},"list":{"label":"ID_JABATAN","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","JENJANG","ID_GRADE","ID_JABATAN"],"editRelations":["ID_GRADE","ID_JABATAN"],"edit":[[{"name":"JENJANG","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (138, 'plugin_content_manager_configuration_content_types::api::wawancara.wawancara', '{"uid":"api::wawancara.wawancara","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"id","defaultSortBy":"id","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"TANGGAL_WAWACARA":{"edit":{"label":"TANGGAL_WAWACARA","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TANGGAL_WAWACARA","searchable":true,"sortable":true}},"ID_FITPROPER":{"edit":{"label":"ID_FITPROPER","description":"","placeholder":"","visible":true,"editable":true,"mainField":"PROYEKSI"},"list":{"label":"ID_FITPROPER","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","TANGGAL_WAWACARA","createdAt","ID_FITPROPER"],"edit":[[{"name":"TANGGAL_WAWACARA","size":4}]],"editRelations":["ID_FITPROPER"]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (129, 'plugin_content_manager_configuration_content_types::api::pendidilkan.pendidilkan', '{"uid":"api::pendidilkan.pendidilkan","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"PENDIDIKAN","defaultSortBy":"PENDIDIKAN","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"PENDIDIKAN":{"edit":{"label":"PENDIDIKAN","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PENDIDIKAN","searchable":true,"sortable":true}},"ID_PEGAWAI":{"edit":{"label":"ID_PEGAWAI","description":"","placeholder":"","visible":true,"editable":true,"mainField":"NIP"},"list":{"label":"ID_PEGAWAI","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","PENDIDIKAN","ID_PEGAWAI","createdAt"],"editRelations":["ID_PEGAWAI"],"edit":[[{"name":"PENDIDIKAN","size":6}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (130, 'plugin_content_manager_configuration_content_types::api::administrasi-users.administrasi-users', '{"uid":"api::administrasi-users.administrasi-users","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"NAMA_ADMIN","defaultSortBy":"NAMA_ADMIN","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"NAMA_ADMIN":{"edit":{"label":"NAMA_ADMIN","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NAMA_ADMIN","searchable":true,"sortable":true}},"PASSWORD":{"edit":{"label":"PASSWORD","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PASSWORD","searchable":true,"sortable":true}},"AKSES":{"edit":{"label":"AKSES","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AKSES","searchable":true,"sortable":true}},"ADMINISTRASI_USERS":{"edit":{"label":"ADMINISTRASI_USERS","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"ADMINISTRASI_USERS","searchable":true,"sortable":true}},"MASTER":{"edit":{"label":"MASTER","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"MASTER","searchable":true,"sortable":true}},"DAFTAR_FP":{"edit":{"label":"DAFTAR_FP","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"DAFTAR_FP","searchable":true,"sortable":true}},"NILAI_FP":{"edit":{"label":"NILAI_FP","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NILAI_FP","searchable":true,"sortable":true}},"REPORT":{"edit":{"label":"REPORT","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"REPORT","searchable":true,"sortable":true}},"ID_PEGAWAI":{"edit":{"label":"ID_PEGAWAI","description":"","placeholder":"","visible":true,"editable":true,"mainField":"NIP"},"list":{"label":"ID_PEGAWAI","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","NAMA_ADMIN","PASSWORD","AKSES"],"editRelations":["ID_PEGAWAI"],"edit":[[{"name":"NAMA_ADMIN","size":6},{"name":"PASSWORD","size":6}],[{"name":"AKSES","size":4},{"name":"ADMINISTRASI_USERS","size":4},{"name":"MASTER","size":4}],[{"name":"DAFTAR_FP","size":4},{"name":"NILAI_FP","size":4},{"name":"REPORT","size":4}]]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (131, 'plugin_content_manager_configuration_content_types::api::pegawai.pegawai', '{"uid":"api::pegawai.pegawai","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"NIP","defaultSortBy":"NIP","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"NIP":{"edit":{"label":"NIP","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NIP","searchable":true,"sortable":true}},"NAMA":{"edit":{"label":"NAMA","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NAMA","searchable":true,"sortable":true}},"EMAIL":{"edit":{"label":"EMAIL","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"EMAIL","searchable":true,"sortable":true}},"TEMPAT_LAHIR":{"edit":{"label":"TEMPAT_LAHIR","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TEMPAT_LAHIR","searchable":true,"sortable":true}},"TANGGAL_LAHIR":{"edit":{"label":"TANGGAL_LAHIR","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"TANGGAL_LAHIR","searchable":true,"sortable":true}},"NO_HP":{"edit":{"label":"NO_HP","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NO_HP","searchable":true,"sortable":true}},"FOTO":{"edit":{"label":"FOTO","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"FOTO","searchable":false,"sortable":false}},"ID_RIWAYAT_PESERTA":{"edit":{"label":"ID_RIWAYAT_PESERTA","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"ID_RIWAYAT_PESERTA","searchable":false,"sortable":false}},"ID_RIWAYAT_PENGUJI":{"edit":{"label":"ID_RIWAYAT_PENGUJI","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"ID_RIWAYAT_PENGUJI","searchable":false,"sortable":false}},"JNS_KELAMIN":{"edit":{"label":"JNS_KELAMIN","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"JNS_KELAMIN","searchable":true,"sortable":true}},"AGAMA":{"edit":{"label":"AGAMA","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"AGAMA","searchable":true,"sortable":true}},"STATUS_PEGAWAI":{"edit":{"label":"STATUS_PEGAWAI","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"STATUS_PEGAWAI","searchable":true,"sortable":true}},"ID_ADMINISTRASI_USERS":{"edit":{"label":"ID_ADMINISTRASI_USERS","description":"","placeholder":"","visible":true,"editable":true,"mainField":"NAMA_ADMIN"},"list":{"label":"ID_ADMINISTRASI_USERS","searchable":true,"sortable":true}},"ID_SUB_BIDANG":{"edit":{"label":"ID_SUB_BIDANG","description":"","placeholder":"","visible":true,"editable":true,"mainField":"SUB_BIDANG"},"list":{"label":"ID_SUB_BIDANG","searchable":true,"sortable":true}},"ID_BIDANG":{"edit":{"label":"ID_BIDANG","description":"","placeholder":"","visible":true,"editable":true,"mainField":"BIDANG"},"list":{"label":"ID_BIDANG","searchable":true,"sortable":true}},"ID_DIREKTORAT":{"edit":{"label":"ID_DIREKTORAT","description":"","placeholder":"","visible":true,"editable":true,"mainField":"DIREKTORAT"},"list":{"label":"ID_DIREKTORAT","searchable":true,"sortable":true}},"ID_DIVISI":{"edit":{"label":"ID_DIVISI","description":"","placeholder":"","visible":true,"editable":true,"mainField":"DIVISI"},"list":{"label":"ID_DIVISI","searchable":true,"sortable":true}},"ID_GRADE":{"edit":{"label":"ID_GRADE","description":"","placeholder":"","visible":true,"editable":true,"mainField":"GRADE"},"list":{"label":"ID_GRADE","searchable":true,"sortable":true}},"ID_JABATAN":{"edit":{"label":"ID_JABATAN","description":"","placeholder":"","visible":true,"editable":true,"mainField":"JABATAN"},"list":{"label":"ID_JABATAN","searchable":true,"sortable":true}},"ID_PENDIDIKAN":{"edit":{"label":"ID_PENDIDIKAN","description":"","placeholder":"","visible":true,"editable":true,"mainField":"PENDIDIKAN"},"list":{"label":"ID_PENDIDIKAN","searchable":true,"sortable":true}},"ID_UNIT":{"edit":{"label":"ID_UNIT","description":"","placeholder":"","visible":true,"editable":true,"mainField":"UNIT"},"list":{"label":"ID_UNIT","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","NIP","NAMA","EMAIL"],"edit":[[{"name":"NIP","size":6},{"name":"NAMA","size":6}],[{"name":"EMAIL","size":6},{"name":"TEMPAT_LAHIR","size":6}],[{"name":"TANGGAL_LAHIR","size":4},{"name":"NO_HP","size":6}],[{"name":"FOTO","size":6},{"name":"JNS_KELAMIN","size":6}],[{"name":"AGAMA","size":6},{"name":"STATUS_PEGAWAI","size":6}]],"editRelations":["ID_RIWAYAT_PENGUJI","ID_ADMINISTRASI_USERS","ID_SUB_BIDANG","ID_BIDANG","ID_DIREKTORAT","ID_DIVISI","ID_GRADE","ID_JABATAN","ID_PENDIDIKAN","ID_UNIT","ID_RIWAYAT_PESERTA"]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (132, 'plugin_content_manager_configuration_content_types::api::report-nilai-manual.report-nilai-manual', '{"uid":"api::report-nilai-manual.report-nilai-manual","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"REKOMENDASI_PENGUJI","defaultSortBy":"REKOMENDASI_PENGUJI","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"NILAI_PENGETAHUAN_60":{"edit":{"label":"NILAI_PENGETAHUAN_60","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NILAI_PENGETAHUAN_60","searchable":true,"sortable":true}},"NILAI_PENGETAHUAN_40":{"edit":{"label":"NILAI_PENGETAHUAN_40","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NILAI_PENGETAHUAN_40","searchable":true,"sortable":true}},"NILAI_KETERAMPILAN_60":{"edit":{"label":"NILAI_KETERAMPILAN_60","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NILAI_KETERAMPILAN_60","searchable":true,"sortable":true}},"NILAI_KETERAMPILAN_40":{"edit":{"label":"NILAI_KETERAMPILAN_40","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"NILAI_KETERAMPILAN_40","searchable":true,"sortable":true}},"REKOMENDASI_PENGUJI":{"edit":{"label":"REKOMENDASI_PENGUJI","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"REKOMENDASI_PENGUJI","searchable":true,"sortable":true}},"KELEMAHAN":{"edit":{"label":"KELEMAHAN","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"KELEMAHAN","searchable":true,"sortable":true}},"KEKUATAN":{"edit":{"label":"KEKUATAN","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"KEKUATAN","searchable":true,"sortable":true}},"ID_RIWAYAT":{"edit":{"label":"ID_RIWAYAT","description":"","placeholder":"","visible":true,"editable":true,"mainField":"id"},"list":{"label":"ID_RIWAYAT","searchable":true,"sortable":true}},"PENILAI":{"edit":{"label":"PENILAI","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"PENILAI","searchable":true,"sortable":true}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","NILAI_PENGETAHUAN_60","NILAI_PENGETAHUAN_40","NILAI_KETERAMPILAN_60"],"edit":[[{"name":"NILAI_PENGETAHUAN_60","size":4},{"name":"NILAI_PENGETAHUAN_40","size":4},{"name":"NILAI_KETERAMPILAN_60","size":4}],[{"name":"NILAI_KETERAMPILAN_40","size":4},{"name":"REKOMENDASI_PENGUJI","size":6}],[{"name":"KELEMAHAN","size":6},{"name":"KEKUATAN","size":6}],[{"name":"PENILAI","size":6}]],"editRelations":["ID_RIWAYAT"]}}', 'object', NULL, NULL);
INSERT INTO public.strapi_core_store_settings VALUES (137, 'plugin_content_manager_configuration_content_types::api::unit.unit', '{"uid":"api::unit.unit","settings":{"bulkable":true,"filterable":true,"searchable":true,"pageSize":10,"mainField":"UNIT","defaultSortBy":"UNIT","defaultSortOrder":"ASC"},"metadatas":{"id":{"edit":{},"list":{"label":"id","searchable":true,"sortable":true}},"UNIT":{"edit":{"label":"UNIT","description":"","placeholder":"","visible":true,"editable":true},"list":{"label":"UNIT","searchable":true,"sortable":true}},"ID_DIREKTORAT":{"edit":{"label":"ID_DIREKTORAT","description":"","placeholder":"","visible":true,"editable":true,"mainField":"DIREKTORAT"},"list":{"label":"ID_DIREKTORAT","searchable":false,"sortable":false}},"ID_JABATAN":{"edit":{"label":"ID_JABATAN","description":"","placeholder":"","visible":true,"editable":true,"mainField":"JABATAN"},"list":{"label":"ID_JABATAN","searchable":false,"sortable":false}},"ID_PEGAWAI":{"edit":{"label":"ID_PEGAWAI","description":"","placeholder":"","visible":true,"editable":true,"mainField":"NIP"},"list":{"label":"ID_PEGAWAI","searchable":false,"sortable":false}},"createdAt":{"edit":{"label":"createdAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"createdAt","searchable":true,"sortable":true}},"updatedAt":{"edit":{"label":"updatedAt","description":"","placeholder":"","visible":false,"editable":true},"list":{"label":"updatedAt","searchable":true,"sortable":true}}},"layouts":{"list":["id","UNIT","ID_DIREKTORAT","ID_JABATAN"],"editRelations":["ID_DIREKTORAT","ID_JABATAN","ID_PEGAWAI"],"edit":[[{"name":"UNIT","size":6}]]}}', 'object', NULL, NULL);


--
-- TOC entry 3485 (class 0 OID 37846)
-- Dependencies: 199
-- Data for Name: strapi_database_schema; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.strapi_database_schema VALUES (97, '{"tables":[{"name":"strapi_core_store_settings","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"value","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"environment","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tag","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"strapi_webhooks","indexes":[],"foreignKeys":[],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"text","args":["longtext"],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"headers","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"events","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"enabled","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false}]},{"name":"admin_permissions","indexes":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"subject","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"properties","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"conditions","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users","indexes":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"firstname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"lastname","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"registration_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"is_active","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"prefered_language","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_roles","indexes":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"admin_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"admin_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"strapi_api_tokens","indexes":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"]},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"strapi_api_tokens_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"strapi_api_tokens_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"access_key","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files","indexes":[{"name":"files_created_by_id_fk","columns":["created_by_id"]},{"name":"files_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"files_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"files_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"alternative_text","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"caption","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"width","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"height","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"formats","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"hash","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ext","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"mime","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"size","type":"decimal","args":[10,2],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"preview_url","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider_metadata","type":"jsonb","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions","indexes":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"]},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_permissions_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_permissions_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"action","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_roles","indexes":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"]},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_roles_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_roles_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"description","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users","indexes":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"]},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"up_users_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"up_users_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"username","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"provider","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"reset_password_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmation_token","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"confirmed","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"blocked","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"i18n_locale","indexes":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"]},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"i18n_locale_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"i18n_locale_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"name","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"code","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"administrasi_userss","indexes":[{"name":"administrasi_userss_created_by_id_fk","columns":["created_by_id"]},{"name":"administrasi_userss_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"administrasi_userss_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"administrasi_userss_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nama_admin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"password","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"akses","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"administrasi_users","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"master","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"daftar_fp","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nilai_fp","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"report","type":"boolean","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bidangs","indexes":[{"name":"bidangs_created_by_id_fk","columns":["created_by_id"]},{"name":"bidangs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"bidangs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"bidangs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"bidang","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"direktorats","indexes":[{"name":"direktorats_created_by_id_fk","columns":["created_by_id"]},{"name":"direktorats_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"direktorats_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"direktorats_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"direktorat","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"divisis","indexes":[{"name":"divisis_created_by_id_fk","columns":["created_by_id"]},{"name":"divisis_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"divisis_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"divisis_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"divisi","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"fit_propers","indexes":[{"name":"fit_propers_created_by_id_fk","columns":["created_by_id"]},{"name":"fit_propers_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"fit_propers_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"fit_propers_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tanggal_daftar","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"proyeksi","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"jenjang_jabatan","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"urjab","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"ppt_fitproper","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cv_fitproper","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tanggal_uji","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"jenis_fitproper","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"grades","indexes":[{"name":"grades_created_by_id_fk","columns":["created_by_id"]},{"name":"grades_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"grades_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"grades_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"grade","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jabatans","indexes":[{"name":"jabatans_created_by_id_fk","columns":["created_by_id"]},{"name":"jabatans_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"jabatans_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"jabatans_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"jabatan","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jenjangs","indexes":[{"name":"jenjangs_created_by_id_fk","columns":["created_by_id"]},{"name":"jenjangs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"jenjangs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"jenjangs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"jenjang","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais","indexes":[{"name":"pegawais_created_by_id_fk","columns":["created_by_id"]},{"name":"pegawais_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pegawais_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pegawais_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nip","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nama","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"email","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tempat_lahir","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"tanggal_lahir","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"no_hp","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"jns_kelamin","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"agama","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"status_pegawai","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pendidilkans","indexes":[{"name":"pendidilkans_created_by_id_fk","columns":["created_by_id"]},{"name":"pendidilkans_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"pendidilkans_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"pendidilkans_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"pendidikan","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"report_nilais","indexes":[{"name":"report_nilais_created_by_id_fk","columns":["created_by_id"]},{"name":"report_nilais_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"report_nilais_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"report_nilais_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"enthusiasthic","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"creative_innovative","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"building_business","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"strategic_orientation","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"customer_focus","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"driving_execution","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"visionary_leadership","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"empowering","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"keandalan_sistem","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"kecepatan_recovery","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"manajemen_aset","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"strategi_breakthrough","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"internal_readiness","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"external_readiness","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"cultural_politics","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"total","type":"double","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"kekuatan","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"kelemahan","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"report_nilai_manuals","indexes":[{"name":"report_nilai_manuals_created_by_id_fk","columns":["created_by_id"]},{"name":"report_nilai_manuals_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"report_nilai_manuals_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"report_nilai_manuals_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"nilai_pengetahuan_60","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nilai_pengetahuan_40","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nilai_keterampilan_60","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"nilai_keterampilan_40","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"rekomendasi_penguji","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"kelemahan","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"kekuatan","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"penilai","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"riwayat_ujians","indexes":[{"name":"riwayat_ujians_created_by_id_fk","columns":["created_by_id"]},{"name":"riwayat_ujians_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"riwayat_ujians_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"riwayat_ujians_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sub_bidangs","indexes":[{"name":"sub_bidangs_created_by_id_fk","columns":["created_by_id"]},{"name":"sub_bidangs_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"sub_bidangs_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"sub_bidangs_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"sub_bidang","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"units","indexes":[{"name":"units_created_by_id_fk","columns":["created_by_id"]},{"name":"units_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"units_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"units_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"unit","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"wawancaras","indexes":[{"name":"wawancaras_created_by_id_fk","columns":["created_by_id"]},{"name":"wawancaras_updated_by_id_fk","columns":["updated_by_id"]}],"foreignKeys":[{"name":"wawancaras_created_by_id_fk","columns":["created_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"},{"name":"wawancaras_updated_by_id_fk","columns":["updated_by_id"],"referencedTable":"admin_users","referencedColumns":["id"],"onDelete":"SET NULL"}],"columns":[{"name":"id","type":"increments","args":[{"primary":true,"primaryKey":true}],"defaultTo":null,"notNullable":true,"unsigned":false},{"name":"tanggal_wawacara","type":"date","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"updated_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"published_at","type":"datetime","args":[{"useTz":false,"precision":6}],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"created_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"updated_by_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_permissions_role_links","indexes":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"]},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"admin_permissions","onDelete":"CASCADE"},{"name":"admin_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"admin_users_roles_links","indexes":[{"name":"admin_users_roles_links_fk","columns":["user_id"]},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"admin_users_roles_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"admin_users","onDelete":"CASCADE"},{"name":"admin_users_roles_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"admin_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"files_related_morphs","indexes":[{"name":"files_related_morphs_fk","columns":["file_id"]}],"foreignKeys":[{"name":"files_related_morphs_fk","columns":["file_id"],"referencedColumns":["id"],"referencedTable":"files","onDelete":"CASCADE"}],"columns":[{"name":"file_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"related_type","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"field","type":"string","args":[],"defaultTo":null,"notNullable":false,"unsigned":false},{"name":"order","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_permissions_role_links","indexes":[{"name":"up_permissions_role_links_fk","columns":["permission_id"]},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_permissions_role_links_fk","columns":["permission_id"],"referencedColumns":["id"],"referencedTable":"up_permissions","onDelete":"CASCADE"},{"name":"up_permissions_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"permission_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"up_users_role_links","indexes":[{"name":"up_users_role_links_fk","columns":["user_id"]},{"name":"up_users_role_links_inv_fk","columns":["role_id"]}],"foreignKeys":[{"name":"up_users_role_links_fk","columns":["user_id"],"referencedColumns":["id"],"referencedTable":"up_users","onDelete":"CASCADE"},{"name":"up_users_role_links_inv_fk","columns":["role_id"],"referencedColumns":["id"],"referencedTable":"up_roles","onDelete":"CASCADE"}],"columns":[{"name":"user_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"role_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"bidangs_id_divisi_links","indexes":[{"name":"bidangs_id_divisi_links_fk","columns":["bidang_id"]},{"name":"bidangs_id_divisi_links_inv_fk","columns":["divisi_id"]}],"foreignKeys":[{"name":"bidangs_id_divisi_links_fk","columns":["bidang_id"],"referencedColumns":["id"],"referencedTable":"bidangs","onDelete":"CASCADE"},{"name":"bidangs_id_divisi_links_inv_fk","columns":["divisi_id"],"referencedColumns":["id"],"referencedTable":"divisis","onDelete":"CASCADE"}],"columns":[{"name":"bidang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"divisi_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"direktorats_id_unit_links","indexes":[{"name":"direktorats_id_unit_links_fk","columns":["direktorat_id"]},{"name":"direktorats_id_unit_links_inv_fk","columns":["unit_id"]}],"foreignKeys":[{"name":"direktorats_id_unit_links_fk","columns":["direktorat_id"],"referencedColumns":["id"],"referencedTable":"direktorats","onDelete":"CASCADE"},{"name":"direktorats_id_unit_links_inv_fk","columns":["unit_id"],"referencedColumns":["id"],"referencedTable":"units","onDelete":"CASCADE"}],"columns":[{"name":"direktorat_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"unit_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"divisis_id_direktorat_links","indexes":[{"name":"divisis_id_direktorat_links_fk","columns":["divisi_id"]},{"name":"divisis_id_direktorat_links_inv_fk","columns":["direktorat_id"]}],"foreignKeys":[{"name":"divisis_id_direktorat_links_fk","columns":["divisi_id"],"referencedColumns":["id"],"referencedTable":"divisis","onDelete":"CASCADE"},{"name":"divisis_id_direktorat_links_inv_fk","columns":["direktorat_id"],"referencedColumns":["id"],"referencedTable":"direktorats","onDelete":"CASCADE"}],"columns":[{"name":"divisi_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"direktorat_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"fit_propers_id_riwayat_links","indexes":[{"name":"fit_propers_id_riwayat_links_fk","columns":["fit_proper_id"]},{"name":"fit_propers_id_riwayat_links_inv_fk","columns":["riwayat_ujian_id"]}],"foreignKeys":[{"name":"fit_propers_id_riwayat_links_fk","columns":["fit_proper_id"],"referencedColumns":["id"],"referencedTable":"fit_propers","onDelete":"CASCADE"},{"name":"fit_propers_id_riwayat_links_inv_fk","columns":["riwayat_ujian_id"],"referencedColumns":["id"],"referencedTable":"riwayat_ujians","onDelete":"CASCADE"}],"columns":[{"name":"fit_proper_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"riwayat_ujian_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"fit_propers_id_wawancara_links","indexes":[{"name":"fit_propers_id_wawancara_links_fk","columns":["fit_proper_id"]},{"name":"fit_propers_id_wawancara_links_inv_fk","columns":["wawancara_id"]}],"foreignKeys":[{"name":"fit_propers_id_wawancara_links_fk","columns":["fit_proper_id"],"referencedColumns":["id"],"referencedTable":"fit_propers","onDelete":"CASCADE"},{"name":"fit_propers_id_wawancara_links_inv_fk","columns":["wawancara_id"],"referencedColumns":["id"],"referencedTable":"wawancaras","onDelete":"CASCADE"}],"columns":[{"name":"fit_proper_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"wawancara_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"grades_id_jenjang_links","indexes":[{"name":"grades_id_jenjang_links_fk","columns":["grade_id"]},{"name":"grades_id_jenjang_links_inv_fk","columns":["jenjang_id"]}],"foreignKeys":[{"name":"grades_id_jenjang_links_fk","columns":["grade_id"],"referencedColumns":["id"],"referencedTable":"grades","onDelete":"CASCADE"},{"name":"grades_id_jenjang_links_inv_fk","columns":["jenjang_id"],"referencedColumns":["id"],"referencedTable":"jenjangs","onDelete":"CASCADE"}],"columns":[{"name":"grade_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"jenjang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jabatans_id_unit_links","indexes":[{"name":"jabatans_id_unit_links_fk","columns":["jabatan_id"]},{"name":"jabatans_id_unit_links_inv_fk","columns":["unit_id"]}],"foreignKeys":[{"name":"jabatans_id_unit_links_fk","columns":["jabatan_id"],"referencedColumns":["id"],"referencedTable":"jabatans","onDelete":"CASCADE"},{"name":"jabatans_id_unit_links_inv_fk","columns":["unit_id"],"referencedColumns":["id"],"referencedTable":"units","onDelete":"CASCADE"}],"columns":[{"name":"jabatan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"unit_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"jabatans_id_jenjang_links","indexes":[{"name":"jabatans_id_jenjang_links_fk","columns":["jabatan_id"]},{"name":"jabatans_id_jenjang_links_inv_fk","columns":["jenjang_id"]}],"foreignKeys":[{"name":"jabatans_id_jenjang_links_fk","columns":["jabatan_id"],"referencedColumns":["id"],"referencedTable":"jabatans","onDelete":"CASCADE"},{"name":"jabatans_id_jenjang_links_inv_fk","columns":["jenjang_id"],"referencedColumns":["id"],"referencedTable":"jenjangs","onDelete":"CASCADE"}],"columns":[{"name":"jabatan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"jenjang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_id_administrasi_users_links","indexes":[{"name":"pegawais_id_administrasi_users_links_fk","columns":["pegawai_id"]},{"name":"pegawais_id_administrasi_users_links_inv_fk","columns":["administrasi_users_id"]}],"foreignKeys":[{"name":"pegawais_id_administrasi_users_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_id_administrasi_users_links_inv_fk","columns":["administrasi_users_id"],"referencedColumns":["id"],"referencedTable":"administrasi_userss","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"administrasi_users_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_id_sub_bidang_links","indexes":[{"name":"pegawais_id_sub_bidang_links_fk","columns":["pegawai_id"]},{"name":"pegawais_id_sub_bidang_links_inv_fk","columns":["sub_bidang_id"]}],"foreignKeys":[{"name":"pegawais_id_sub_bidang_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_id_sub_bidang_links_inv_fk","columns":["sub_bidang_id"],"referencedColumns":["id"],"referencedTable":"sub_bidangs","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"sub_bidang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_id_bidang_links","indexes":[{"name":"pegawais_id_bidang_links_fk","columns":["pegawai_id"]},{"name":"pegawais_id_bidang_links_inv_fk","columns":["bidang_id"]}],"foreignKeys":[{"name":"pegawais_id_bidang_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_id_bidang_links_inv_fk","columns":["bidang_id"],"referencedColumns":["id"],"referencedTable":"bidangs","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bidang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_id_direktorat_links","indexes":[{"name":"pegawais_id_direktorat_links_fk","columns":["pegawai_id"]},{"name":"pegawais_id_direktorat_links_inv_fk","columns":["direktorat_id"]}],"foreignKeys":[{"name":"pegawais_id_direktorat_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_id_direktorat_links_inv_fk","columns":["direktorat_id"],"referencedColumns":["id"],"referencedTable":"direktorats","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"direktorat_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_id_divisi_links","indexes":[{"name":"pegawais_id_divisi_links_fk","columns":["pegawai_id"]},{"name":"pegawais_id_divisi_links_inv_fk","columns":["divisi_id"]}],"foreignKeys":[{"name":"pegawais_id_divisi_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_id_divisi_links_inv_fk","columns":["divisi_id"],"referencedColumns":["id"],"referencedTable":"divisis","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"divisi_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_id_grade_links","indexes":[{"name":"pegawais_id_grade_links_fk","columns":["pegawai_id"]},{"name":"pegawais_id_grade_links_inv_fk","columns":["grade_id"]}],"foreignKeys":[{"name":"pegawais_id_grade_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_id_grade_links_inv_fk","columns":["grade_id"],"referencedColumns":["id"],"referencedTable":"grades","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"grade_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_id_jabatan_links","indexes":[{"name":"pegawais_id_jabatan_links_fk","columns":["pegawai_id"]},{"name":"pegawais_id_jabatan_links_inv_fk","columns":["jabatan_id"]}],"foreignKeys":[{"name":"pegawais_id_jabatan_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_id_jabatan_links_inv_fk","columns":["jabatan_id"],"referencedColumns":["id"],"referencedTable":"jabatans","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"jabatan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_id_pendidikan_links","indexes":[{"name":"pegawais_id_pendidikan_links_fk","columns":["pegawai_id"]},{"name":"pegawais_id_pendidikan_links_inv_fk","columns":["pendidilkan_id"]}],"foreignKeys":[{"name":"pegawais_id_pendidikan_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_id_pendidikan_links_inv_fk","columns":["pendidilkan_id"],"referencedColumns":["id"],"referencedTable":"pendidilkans","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pendidilkan_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"pegawais_id_unit_links","indexes":[{"name":"pegawais_id_unit_links_fk","columns":["pegawai_id"]},{"name":"pegawais_id_unit_links_inv_fk","columns":["unit_id"]}],"foreignKeys":[{"name":"pegawais_id_unit_links_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"},{"name":"pegawais_id_unit_links_inv_fk","columns":["unit_id"],"referencedColumns":["id"],"referencedTable":"units","onDelete":"CASCADE"}],"columns":[{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"unit_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"riwayat_ujians_id_report_nilai_links","indexes":[{"name":"riwayat_ujians_id_report_nilai_links_fk","columns":["riwayat_ujian_id"]},{"name":"riwayat_ujians_id_report_nilai_links_inv_fk","columns":["report_nilai_id"]}],"foreignKeys":[{"name":"riwayat_ujians_id_report_nilai_links_fk","columns":["riwayat_ujian_id"],"referencedColumns":["id"],"referencedTable":"riwayat_ujians","onDelete":"CASCADE"},{"name":"riwayat_ujians_id_report_nilai_links_inv_fk","columns":["report_nilai_id"],"referencedColumns":["id"],"referencedTable":"report_nilais","onDelete":"CASCADE"}],"columns":[{"name":"riwayat_ujian_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"report_nilai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"riwayat_ujians_id_report_manual_links","indexes":[{"name":"riwayat_ujians_id_report_manual_links_fk","columns":["riwayat_ujian_id"]},{"name":"riwayat_ujians_id_report_manual_links_inv_fk","columns":["report_nilai_manual_id"]}],"foreignKeys":[{"name":"riwayat_ujians_id_report_manual_links_fk","columns":["riwayat_ujian_id"],"referencedColumns":["id"],"referencedTable":"riwayat_ujians","onDelete":"CASCADE"},{"name":"riwayat_ujians_id_report_manual_links_inv_fk","columns":["report_nilai_manual_id"],"referencedColumns":["id"],"referencedTable":"report_nilai_manuals","onDelete":"CASCADE"}],"columns":[{"name":"riwayat_ujian_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"report_nilai_manual_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"riwayat_ujians_id_peserta_links","indexes":[{"name":"riwayat_ujians_id_peserta_links_fk","columns":["riwayat_ujian_id"]},{"name":"riwayat_ujians_id_peserta_links_inv_fk","columns":["pegawai_id"]}],"foreignKeys":[{"name":"riwayat_ujians_id_peserta_links_fk","columns":["riwayat_ujian_id"],"referencedColumns":["id"],"referencedTable":"riwayat_ujians","onDelete":"CASCADE"},{"name":"riwayat_ujians_id_peserta_links_inv_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"}],"columns":[{"name":"riwayat_ujian_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"riwayat_ujians_id_penguji_links","indexes":[{"name":"riwayat_ujians_id_penguji_links_fk","columns":["riwayat_ujian_id"]},{"name":"riwayat_ujians_id_penguji_links_inv_fk","columns":["pegawai_id"]}],"foreignKeys":[{"name":"riwayat_ujians_id_penguji_links_fk","columns":["riwayat_ujian_id"],"referencedColumns":["id"],"referencedTable":"riwayat_ujians","onDelete":"CASCADE"},{"name":"riwayat_ujians_id_penguji_links_inv_fk","columns":["pegawai_id"],"referencedColumns":["id"],"referencedTable":"pegawais","onDelete":"CASCADE"}],"columns":[{"name":"riwayat_ujian_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"pegawai_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]},{"name":"sub_bidangs_id_bidang_links","indexes":[{"name":"sub_bidangs_id_bidang_links_fk","columns":["sub_bidang_id"]},{"name":"sub_bidangs_id_bidang_links_inv_fk","columns":["bidang_id"]}],"foreignKeys":[{"name":"sub_bidangs_id_bidang_links_fk","columns":["sub_bidang_id"],"referencedColumns":["id"],"referencedTable":"sub_bidangs","onDelete":"CASCADE"},{"name":"sub_bidangs_id_bidang_links_inv_fk","columns":["bidang_id"],"referencedColumns":["id"],"referencedTable":"bidangs","onDelete":"CASCADE"}],"columns":[{"name":"sub_bidang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true},{"name":"bidang_id","type":"integer","args":[],"defaultTo":null,"notNullable":false,"unsigned":true}]}]}', '2022-06-02 21:19:08.536', '8cc48e79cde9a825ea524111cf62e4dc');


--
-- TOC entry 3483 (class 0 OID 37838)
-- Dependencies: 197
-- Data for Name: strapi_migrations; Type: TABLE DATA; Schema: public; Owner: ka04
--



--
-- TOC entry 3489 (class 0 OID 37868)
-- Dependencies: 203
-- Data for Name: strapi_webhooks; Type: TABLE DATA; Schema: public; Owner: ka04
--



--
-- TOC entry 3540 (class 0 OID 49741)
-- Dependencies: 254
-- Data for Name: sub_bidangs; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.sub_bidangs VALUES (1, 'U1 DR1 DV1 B1 SUB_BIDANG1', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.sub_bidangs VALUES (2, 'U1 DR1 DV1 B1 SUB_BIDANG2', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.sub_bidangs VALUES (3, 'U3 DR1 DV1 B1 SUB_BIDANG1', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);


--
-- TOC entry 3564 (class 0 OID 49879)
-- Dependencies: 278
-- Data for Name: sub_bidangs_id_bidang_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.sub_bidangs_id_bidang_links VALUES (1, 1);
INSERT INTO public.sub_bidangs_id_bidang_links VALUES (2, 1);
INSERT INTO public.sub_bidangs_id_bidang_links VALUES (3, 5);


--
-- TOC entry 3542 (class 0 OID 49751)
-- Dependencies: 256
-- Data for Name: units; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.units VALUES (1, 'UNIT1', '2022-05-07 16:40:03.152', '2022-06-01 09:55:59.33', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.units VALUES (2, 'UNIT2', '2022-05-07 16:40:03.152', '2022-06-01 09:56:22.765', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.units VALUES (3, 'UNIT3', '2022-05-07 16:40:03.152', '2022-06-01 09:56:32.989', '2022-05-07 16:40:04.804', 1, 1);


--
-- TOC entry 3501 (class 0 OID 37944)
-- Dependencies: 215
-- Data for Name: up_permissions; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.up_permissions VALUES (1, 'plugin::users-permissions.auth.connect', '2022-04-21 09:50:36.732', '2022-04-21 09:50:36.732', NULL, NULL);
INSERT INTO public.up_permissions VALUES (2, 'plugin::users-permissions.user.me', '2022-04-21 09:50:36.732', '2022-04-21 09:50:36.732', NULL, NULL);
INSERT INTO public.up_permissions VALUES (157, 'api::administrasi-users.administrasi-users.find', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (158, 'api::administrasi-users.administrasi-users.findOne', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (5, 'plugin::users-permissions.auth.callback', '2022-04-21 09:50:36.848', '2022-04-21 09:50:36.848', NULL, NULL);
INSERT INTO public.up_permissions VALUES (6, 'plugin::users-permissions.auth.connect', '2022-04-21 09:50:36.848', '2022-04-21 09:50:36.848', NULL, NULL);
INSERT INTO public.up_permissions VALUES (159, 'api::administrasi-users.administrasi-users.create', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (160, 'api::administrasi-users.administrasi-users.update', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (9, 'plugin::users-permissions.auth.register', '2022-04-21 09:50:36.848', '2022-04-21 09:50:36.848', NULL, NULL);
INSERT INTO public.up_permissions VALUES (161, 'api::administrasi-users.administrasi-users.delete', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (11, 'plugin::users-permissions.user.me', '2022-04-21 09:50:36.848', '2022-04-21 09:50:36.848', NULL, NULL);
INSERT INTO public.up_permissions VALUES (162, 'api::bidang.bidang.create', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (163, 'api::bidang.bidang.findOne', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (164, 'api::bidang.bidang.update', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (165, 'api::bidang.bidang.find', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (166, 'api::direktorat.direktorat.find', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (167, 'api::bidang.bidang.delete', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (168, 'api::direktorat.direktorat.create', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (169, 'api::direktorat.direktorat.update', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (170, 'api::divisi.divisi.delete', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (171, 'api::direktorat.direktorat.findOne', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (172, 'api::direktorat.direktorat.delete', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (173, 'api::divisi.divisi.find', '2022-06-01 09:58:34.899', '2022-06-01 09:58:34.899', NULL, NULL);
INSERT INTO public.up_permissions VALUES (174, 'api::divisi.divisi.create', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (175, 'api::divisi.divisi.findOne', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (176, 'api::divisi.divisi.update', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (177, 'api::fit-proper.fit-proper.find', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (178, 'api::fit-proper.fit-proper.findOne', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (179, 'api::fit-proper.fit-proper.create', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (180, 'api::fit-proper.fit-proper.update', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (181, 'api::fit-proper.fit-proper.delete', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (187, 'api::grade.grade.find', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (188, 'api::grade.grade.findOne', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (189, 'api::grade.grade.create', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (190, 'api::grade.grade.update', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (191, 'api::grade.grade.delete', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (192, 'api::jabatan.jabatan.create', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (193, 'api::jabatan.jabatan.update', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (194, 'api::jabatan.jabatan.delete', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (195, 'api::jabatan.jabatan.find', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (196, 'api::jabatan.jabatan.findOne', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (197, 'api::jenjang.jenjang.update', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (198, 'api::jenjang.jenjang.find', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (199, 'api::pegawai.pegawai.find', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (200, 'api::jenjang.jenjang.findOne', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (201, 'api::jenjang.jenjang.create', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (202, 'api::pegawai.pegawai.create', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (203, 'api::jenjang.jenjang.delete', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (204, 'api::pegawai.pegawai.findOne', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (205, 'api::pegawai.pegawai.update', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (206, 'api::pegawai.pegawai.delete', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (210, 'api::pendidilkan.pendidilkan.findOne', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (212, 'api::pendidilkan.pendidilkan.create', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (214, 'api::pendidilkan.pendidilkan.find', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (215, 'api::pendidilkan.pendidilkan.update', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (217, 'api::pendidilkan.pendidilkan.delete', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (222, 'api::report-nilai.report-nilai.findOne', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (223, 'api::report-nilai.report-nilai.create', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (224, 'api::report-nilai.report-nilai.delete', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (225, 'api::report-nilai.report-nilai.find', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (226, 'api::report-nilai.report-nilai.update', '2022-06-01 09:58:34.901', '2022-06-01 09:58:34.901', NULL, NULL);
INSERT INTO public.up_permissions VALUES (227, 'api::report-nilai-manual.report-nilai-manual.find', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (228, 'api::report-nilai-manual.report-nilai-manual.create', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (229, 'api::report-nilai-manual.report-nilai-manual.delete', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (230, 'api::report-nilai-manual.report-nilai-manual.findOne', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (231, 'api::riwayat-ujian.riwayat-ujian.find', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (232, 'api::report-nilai-manual.report-nilai-manual.update', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (233, 'api::riwayat-ujian.riwayat-ujian.findOne', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (234, 'api::riwayat-ujian.riwayat-ujian.delete', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (235, 'api::riwayat-ujian.riwayat-ujian.create', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (236, 'api::riwayat-ujian.riwayat-ujian.update', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (237, 'api::sub-bidang.sub-bidang.find', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (238, 'api::sub-bidang.sub-bidang.create', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (239, 'api::sub-bidang.sub-bidang.findOne', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (240, 'api::sub-bidang.sub-bidang.update', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (241, 'api::sub-bidang.sub-bidang.delete', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (242, 'api::unit.unit.find', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (243, 'api::unit.unit.findOne', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (244, 'api::unit.unit.create', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (245, 'api::unit.unit.update', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (246, 'api::unit.unit.delete', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (247, 'api::wawancara.wawancara.find', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (248, 'api::wawancara.wawancara.findOne', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (249, 'api::wawancara.wawancara.update', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (251, 'api::wawancara.wawancara.delete', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);
INSERT INTO public.up_permissions VALUES (250, 'api::wawancara.wawancara.create', '2022-06-01 09:58:34.902', '2022-06-01 09:58:34.902', NULL, NULL);


--
-- TOC entry 3511 (class 0 OID 38008)
-- Dependencies: 225
-- Data for Name: up_permissions_role_links; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.up_permissions_role_links VALUES (1, 1);
INSERT INTO public.up_permissions_role_links VALUES (2, 1);
INSERT INTO public.up_permissions_role_links VALUES (158, 2);
INSERT INTO public.up_permissions_role_links VALUES (157, 2);
INSERT INTO public.up_permissions_role_links VALUES (5, 2);
INSERT INTO public.up_permissions_role_links VALUES (159, 2);
INSERT INTO public.up_permissions_role_links VALUES (162, 2);
INSERT INTO public.up_permissions_role_links VALUES (9, 2);
INSERT INTO public.up_permissions_role_links VALUES (11, 2);
INSERT INTO public.up_permissions_role_links VALUES (160, 2);
INSERT INTO public.up_permissions_role_links VALUES (6, 2);
INSERT INTO public.up_permissions_role_links VALUES (161, 2);
INSERT INTO public.up_permissions_role_links VALUES (163, 2);
INSERT INTO public.up_permissions_role_links VALUES (164, 2);
INSERT INTO public.up_permissions_role_links VALUES (165, 2);
INSERT INTO public.up_permissions_role_links VALUES (166, 2);
INSERT INTO public.up_permissions_role_links VALUES (167, 2);
INSERT INTO public.up_permissions_role_links VALUES (168, 2);
INSERT INTO public.up_permissions_role_links VALUES (169, 2);
INSERT INTO public.up_permissions_role_links VALUES (170, 2);
INSERT INTO public.up_permissions_role_links VALUES (171, 2);
INSERT INTO public.up_permissions_role_links VALUES (172, 2);
INSERT INTO public.up_permissions_role_links VALUES (173, 2);
INSERT INTO public.up_permissions_role_links VALUES (174, 2);
INSERT INTO public.up_permissions_role_links VALUES (175, 2);
INSERT INTO public.up_permissions_role_links VALUES (178, 2);
INSERT INTO public.up_permissions_role_links VALUES (179, 2);
INSERT INTO public.up_permissions_role_links VALUES (181, 2);
INSERT INTO public.up_permissions_role_links VALUES (180, 2);
INSERT INTO public.up_permissions_role_links VALUES (187, 2);
INSERT INTO public.up_permissions_role_links VALUES (190, 2);
INSERT INTO public.up_permissions_role_links VALUES (188, 2);
INSERT INTO public.up_permissions_role_links VALUES (189, 2);
INSERT INTO public.up_permissions_role_links VALUES (191, 2);
INSERT INTO public.up_permissions_role_links VALUES (192, 2);
INSERT INTO public.up_permissions_role_links VALUES (195, 2);
INSERT INTO public.up_permissions_role_links VALUES (193, 2);
INSERT INTO public.up_permissions_role_links VALUES (196, 2);
INSERT INTO public.up_permissions_role_links VALUES (197, 2);
INSERT INTO public.up_permissions_role_links VALUES (199, 2);
INSERT INTO public.up_permissions_role_links VALUES (194, 2);
INSERT INTO public.up_permissions_role_links VALUES (202, 2);
INSERT INTO public.up_permissions_role_links VALUES (198, 2);
INSERT INTO public.up_permissions_role_links VALUES (200, 2);
INSERT INTO public.up_permissions_role_links VALUES (203, 2);
INSERT INTO public.up_permissions_role_links VALUES (206, 2);
INSERT INTO public.up_permissions_role_links VALUES (201, 2);
INSERT INTO public.up_permissions_role_links VALUES (204, 2);
INSERT INTO public.up_permissions_role_links VALUES (205, 2);
INSERT INTO public.up_permissions_role_links VALUES (210, 2);
INSERT INTO public.up_permissions_role_links VALUES (212, 2);
INSERT INTO public.up_permissions_role_links VALUES (214, 2);
INSERT INTO public.up_permissions_role_links VALUES (215, 2);
INSERT INTO public.up_permissions_role_links VALUES (217, 2);
INSERT INTO public.up_permissions_role_links VALUES (222, 2);
INSERT INTO public.up_permissions_role_links VALUES (224, 2);
INSERT INTO public.up_permissions_role_links VALUES (223, 2);
INSERT INTO public.up_permissions_role_links VALUES (227, 2);
INSERT INTO public.up_permissions_role_links VALUES (225, 2);
INSERT INTO public.up_permissions_role_links VALUES (228, 2);
INSERT INTO public.up_permissions_role_links VALUES (226, 2);
INSERT INTO public.up_permissions_role_links VALUES (232, 2);
INSERT INTO public.up_permissions_role_links VALUES (229, 2);
INSERT INTO public.up_permissions_role_links VALUES (230, 2);
INSERT INTO public.up_permissions_role_links VALUES (231, 2);
INSERT INTO public.up_permissions_role_links VALUES (233, 2);
INSERT INTO public.up_permissions_role_links VALUES (236, 2);
INSERT INTO public.up_permissions_role_links VALUES (234, 2);
INSERT INTO public.up_permissions_role_links VALUES (238, 2);
INSERT INTO public.up_permissions_role_links VALUES (239, 2);
INSERT INTO public.up_permissions_role_links VALUES (235, 2);
INSERT INTO public.up_permissions_role_links VALUES (237, 2);
INSERT INTO public.up_permissions_role_links VALUES (240, 2);
INSERT INTO public.up_permissions_role_links VALUES (244, 2);
INSERT INTO public.up_permissions_role_links VALUES (241, 2);
INSERT INTO public.up_permissions_role_links VALUES (246, 2);
INSERT INTO public.up_permissions_role_links VALUES (247, 2);
INSERT INTO public.up_permissions_role_links VALUES (242, 2);
INSERT INTO public.up_permissions_role_links VALUES (243, 2);
INSERT INTO public.up_permissions_role_links VALUES (245, 2);
INSERT INTO public.up_permissions_role_links VALUES (248, 2);
INSERT INTO public.up_permissions_role_links VALUES (249, 2);
INSERT INTO public.up_permissions_role_links VALUES (251, 2);
INSERT INTO public.up_permissions_role_links VALUES (177, 2);
INSERT INTO public.up_permissions_role_links VALUES (176, 2);
INSERT INTO public.up_permissions_role_links VALUES (250, 2);


--
-- TOC entry 3503 (class 0 OID 37954)
-- Dependencies: 217
-- Data for Name: up_roles; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.up_roles VALUES (1, 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2022-04-21 09:50:36.633', '2022-04-21 09:50:36.633', NULL, NULL);
INSERT INTO public.up_roles VALUES (2, 'Public', 'Default role given to unauthenticated user.', 'public', '2022-04-21 09:50:36.667', '2022-06-01 09:58:34.668', NULL, NULL);


--
-- TOC entry 3505 (class 0 OID 37967)
-- Dependencies: 219
-- Data for Name: up_users; Type: TABLE DATA; Schema: public; Owner: ka04
--



--
-- TOC entry 3512 (class 0 OID 38013)
-- Dependencies: 226
-- Data for Name: up_users_role_links; Type: TABLE DATA; Schema: public; Owner: ka04
--



--
-- TOC entry 3544 (class 0 OID 49761)
-- Dependencies: 258
-- Data for Name: wawancaras; Type: TABLE DATA; Schema: public; Owner: ka04
--

INSERT INTO public.wawancaras VALUES (1, '2022-05-11', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);
INSERT INTO public.wawancaras VALUES (2, '2022-05-12', '2022-05-07 16:40:03.152', '2022-05-07 16:40:04.821', '2022-05-07 16:40:04.804', 1, 1);


--
-- TOC entry 3601 (class 0 OID 0)
-- Dependencies: 204
-- Name: admin_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.admin_permissions_id_seq', 1277, true);


--
-- TOC entry 3602 (class 0 OID 0)
-- Dependencies: 208
-- Name: admin_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.admin_roles_id_seq', 3, true);


--
-- TOC entry 3603 (class 0 OID 0)
-- Dependencies: 206
-- Name: admin_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.admin_users_id_seq', 9, true);


--
-- TOC entry 3604 (class 0 OID 0)
-- Dependencies: 227
-- Name: administrasi_userss_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.administrasi_userss_id_seq', 1, false);


--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 229
-- Name: bidangs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.bidangs_id_seq', 1, false);


--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 231
-- Name: direktorats_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.direktorats_id_seq', 1, false);


--
-- TOC entry 3607 (class 0 OID 0)
-- Dependencies: 233
-- Name: divisis_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.divisis_id_seq', 1, false);


--
-- TOC entry 3608 (class 0 OID 0)
-- Dependencies: 212
-- Name: files_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.files_id_seq', 1, false);


--
-- TOC entry 3609 (class 0 OID 0)
-- Dependencies: 235
-- Name: fit_propers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.fit_propers_id_seq', 1, false);


--
-- TOC entry 3610 (class 0 OID 0)
-- Dependencies: 237
-- Name: grades_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.grades_id_seq', 1, false);


--
-- TOC entry 3611 (class 0 OID 0)
-- Dependencies: 220
-- Name: i18n_locale_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.i18n_locale_id_seq', 1, true);


--
-- TOC entry 3612 (class 0 OID 0)
-- Dependencies: 239
-- Name: jabatans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.jabatans_id_seq', 1, false);


--
-- TOC entry 3613 (class 0 OID 0)
-- Dependencies: 241
-- Name: jenjangs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.jenjangs_id_seq', 1, false);


--
-- TOC entry 3614 (class 0 OID 0)
-- Dependencies: 243
-- Name: pegawais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.pegawais_id_seq', 21, true);


--
-- TOC entry 3615 (class 0 OID 0)
-- Dependencies: 245
-- Name: pendidilkans_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.pendidilkans_id_seq', 1, false);


--
-- TOC entry 3616 (class 0 OID 0)
-- Dependencies: 249
-- Name: report_nilai_manuals_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.report_nilai_manuals_id_seq', 1, true);


--
-- TOC entry 3617 (class 0 OID 0)
-- Dependencies: 247
-- Name: report_nilais_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.report_nilais_id_seq', 2, true);


--
-- TOC entry 3618 (class 0 OID 0)
-- Dependencies: 251
-- Name: riwayat_ujians_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.riwayat_ujians_id_seq', 2, true);


--
-- TOC entry 3619 (class 0 OID 0)
-- Dependencies: 210
-- Name: strapi_api_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.strapi_api_tokens_id_seq', 1, true);


--
-- TOC entry 3620 (class 0 OID 0)
-- Dependencies: 200
-- Name: strapi_core_store_settings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.strapi_core_store_settings_id_seq', 147, true);


--
-- TOC entry 3621 (class 0 OID 0)
-- Dependencies: 198
-- Name: strapi_database_schema_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.strapi_database_schema_id_seq', 97, true);


--
-- TOC entry 3622 (class 0 OID 0)
-- Dependencies: 196
-- Name: strapi_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.strapi_migrations_id_seq', 1, false);


--
-- TOC entry 3623 (class 0 OID 0)
-- Dependencies: 202
-- Name: strapi_webhooks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.strapi_webhooks_id_seq', 1, false);


--
-- TOC entry 3624 (class 0 OID 0)
-- Dependencies: 253
-- Name: sub_bidangs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.sub_bidangs_id_seq', 1, false);


--
-- TOC entry 3625 (class 0 OID 0)
-- Dependencies: 255
-- Name: units_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.units_id_seq', 1, false);


--
-- TOC entry 3626 (class 0 OID 0)
-- Dependencies: 214
-- Name: up_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.up_permissions_id_seq', 251, true);


--
-- TOC entry 3627 (class 0 OID 0)
-- Dependencies: 216
-- Name: up_roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.up_roles_id_seq', 2, true);


--
-- TOC entry 3628 (class 0 OID 0)
-- Dependencies: 218
-- Name: up_users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.up_users_id_seq', 1, true);


--
-- TOC entry 3629 (class 0 OID 0)
-- Dependencies: 257
-- Name: wawancaras_id_seq; Type: SEQUENCE SET; Schema: public; Owner: ka04
--

SELECT pg_catalog.setval('public.wawancaras_id_seq', 1, false);


--
-- TOC entry 3107 (class 2606 OID 37887)
-- Name: admin_permissions admin_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3115 (class 2606 OID 37913)
-- Name: admin_roles admin_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3111 (class 2606 OID 37900)
-- Name: admin_users admin_users_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3152 (class 2606 OID 49604)
-- Name: administrasi_userss administrasi_userss_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.administrasi_userss
    ADD CONSTRAINT administrasi_userss_pkey PRIMARY KEY (id);


--
-- TOC entry 3156 (class 2606 OID 49614)
-- Name: bidangs bidangs_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.bidangs
    ADD CONSTRAINT bidangs_pkey PRIMARY KEY (id);


--
-- TOC entry 3160 (class 2606 OID 49624)
-- Name: direktorats direktorats_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.direktorats
    ADD CONSTRAINT direktorats_pkey PRIMARY KEY (id);


--
-- TOC entry 3164 (class 2606 OID 49634)
-- Name: divisis divisis_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.divisis
    ADD CONSTRAINT divisis_pkey PRIMARY KEY (id);


--
-- TOC entry 3123 (class 2606 OID 37939)
-- Name: files files_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_pkey PRIMARY KEY (id);


--
-- TOC entry 3168 (class 2606 OID 49647)
-- Name: fit_propers fit_propers_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.fit_propers
    ADD CONSTRAINT fit_propers_pkey PRIMARY KEY (id);


--
-- TOC entry 3172 (class 2606 OID 49657)
-- Name: grades grades_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_pkey PRIMARY KEY (id);


--
-- TOC entry 3139 (class 2606 OID 37988)
-- Name: i18n_locale i18n_locale_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_pkey PRIMARY KEY (id);


--
-- TOC entry 3176 (class 2606 OID 49667)
-- Name: jabatans jabatans_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.jabatans
    ADD CONSTRAINT jabatans_pkey PRIMARY KEY (id);


--
-- TOC entry 3180 (class 2606 OID 49677)
-- Name: jenjangs jenjangs_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.jenjangs
    ADD CONSTRAINT jenjangs_pkey PRIMARY KEY (id);


--
-- TOC entry 3184 (class 2606 OID 49690)
-- Name: pegawais pegawais_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais
    ADD CONSTRAINT pegawais_pkey PRIMARY KEY (id);


--
-- TOC entry 3188 (class 2606 OID 49700)
-- Name: pendidilkans pendidilkans_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pendidilkans
    ADD CONSTRAINT pendidilkans_pkey PRIMARY KEY (id);


--
-- TOC entry 3196 (class 2606 OID 49726)
-- Name: report_nilai_manuals report_nilai_manuals_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.report_nilai_manuals
    ADD CONSTRAINT report_nilai_manuals_pkey PRIMARY KEY (id);


--
-- TOC entry 3192 (class 2606 OID 49713)
-- Name: report_nilais report_nilais_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.report_nilais
    ADD CONSTRAINT report_nilais_pkey PRIMARY KEY (id);


--
-- TOC entry 3200 (class 2606 OID 49736)
-- Name: riwayat_ujians riwayat_ujians_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.riwayat_ujians
    ADD CONSTRAINT riwayat_ujians_pkey PRIMARY KEY (id);


--
-- TOC entry 3119 (class 2606 OID 37926)
-- Name: strapi_api_tokens strapi_api_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_pkey PRIMARY KEY (id);


--
-- TOC entry 3102 (class 2606 OID 37865)
-- Name: strapi_core_store_settings strapi_core_store_settings_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.strapi_core_store_settings
    ADD CONSTRAINT strapi_core_store_settings_pkey PRIMARY KEY (id);


--
-- TOC entry 3100 (class 2606 OID 37854)
-- Name: strapi_database_schema strapi_database_schema_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.strapi_database_schema
    ADD CONSTRAINT strapi_database_schema_pkey PRIMARY KEY (id);


--
-- TOC entry 3098 (class 2606 OID 37843)
-- Name: strapi_migrations strapi_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.strapi_migrations
    ADD CONSTRAINT strapi_migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 3104 (class 2606 OID 37876)
-- Name: strapi_webhooks strapi_webhooks_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.strapi_webhooks
    ADD CONSTRAINT strapi_webhooks_pkey PRIMARY KEY (id);


--
-- TOC entry 3204 (class 2606 OID 49746)
-- Name: sub_bidangs sub_bidangs_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.sub_bidangs
    ADD CONSTRAINT sub_bidangs_pkey PRIMARY KEY (id);


--
-- TOC entry 3208 (class 2606 OID 49756)
-- Name: units units_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_pkey PRIMARY KEY (id);


--
-- TOC entry 3127 (class 2606 OID 37949)
-- Name: up_permissions up_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 3131 (class 2606 OID 37962)
-- Name: up_roles up_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_pkey PRIMARY KEY (id);


--
-- TOC entry 3135 (class 2606 OID 37975)
-- Name: up_users up_users_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_pkey PRIMARY KEY (id);


--
-- TOC entry 3212 (class 2606 OID 49766)
-- Name: wawancaras wawancaras_pkey; Type: CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.wawancaras
    ADD CONSTRAINT wawancaras_pkey PRIMARY KEY (id);


--
-- TOC entry 3105 (class 1259 OID 37888)
-- Name: admin_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX admin_permissions_created_by_id_fk ON public.admin_permissions USING btree (created_by_id);


--
-- TOC entry 3141 (class 1259 OID 37994)
-- Name: admin_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX admin_permissions_role_links_fk ON public.admin_permissions_role_links USING btree (permission_id);


--
-- TOC entry 3142 (class 1259 OID 37995)
-- Name: admin_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX admin_permissions_role_links_inv_fk ON public.admin_permissions_role_links USING btree (role_id);


--
-- TOC entry 3108 (class 1259 OID 37889)
-- Name: admin_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX admin_permissions_updated_by_id_fk ON public.admin_permissions USING btree (updated_by_id);


--
-- TOC entry 3113 (class 1259 OID 37914)
-- Name: admin_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX admin_roles_created_by_id_fk ON public.admin_roles USING btree (created_by_id);


--
-- TOC entry 3116 (class 1259 OID 37915)
-- Name: admin_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX admin_roles_updated_by_id_fk ON public.admin_roles USING btree (updated_by_id);


--
-- TOC entry 3109 (class 1259 OID 37901)
-- Name: admin_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX admin_users_created_by_id_fk ON public.admin_users USING btree (created_by_id);


--
-- TOC entry 3143 (class 1259 OID 37999)
-- Name: admin_users_roles_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX admin_users_roles_links_fk ON public.admin_users_roles_links USING btree (user_id);


--
-- TOC entry 3144 (class 1259 OID 38000)
-- Name: admin_users_roles_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX admin_users_roles_links_inv_fk ON public.admin_users_roles_links USING btree (role_id);


--
-- TOC entry 3112 (class 1259 OID 37902)
-- Name: admin_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX admin_users_updated_by_id_fk ON public.admin_users USING btree (updated_by_id);


--
-- TOC entry 3150 (class 1259 OID 49605)
-- Name: administrasi_userss_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX administrasi_userss_created_by_id_fk ON public.administrasi_userss USING btree (created_by_id);


--
-- TOC entry 3153 (class 1259 OID 49606)
-- Name: administrasi_userss_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX administrasi_userss_updated_by_id_fk ON public.administrasi_userss USING btree (updated_by_id);


--
-- TOC entry 3154 (class 1259 OID 49615)
-- Name: bidangs_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX bidangs_created_by_id_fk ON public.bidangs USING btree (created_by_id);


--
-- TOC entry 3214 (class 1259 OID 49772)
-- Name: bidangs_id_divisi_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX bidangs_id_divisi_links_fk ON public.bidangs_id_divisi_links USING btree (bidang_id);


--
-- TOC entry 3215 (class 1259 OID 49773)
-- Name: bidangs_id_divisi_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX bidangs_id_divisi_links_inv_fk ON public.bidangs_id_divisi_links USING btree (divisi_id);


--
-- TOC entry 3157 (class 1259 OID 49616)
-- Name: bidangs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX bidangs_updated_by_id_fk ON public.bidangs USING btree (updated_by_id);


--
-- TOC entry 3158 (class 1259 OID 49625)
-- Name: direktorats_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX direktorats_created_by_id_fk ON public.direktorats USING btree (created_by_id);


--
-- TOC entry 3216 (class 1259 OID 49777)
-- Name: direktorats_id_unit_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX direktorats_id_unit_links_fk ON public.direktorats_id_unit_links USING btree (direktorat_id);


--
-- TOC entry 3217 (class 1259 OID 49778)
-- Name: direktorats_id_unit_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX direktorats_id_unit_links_inv_fk ON public.direktorats_id_unit_links USING btree (unit_id);


--
-- TOC entry 3161 (class 1259 OID 49626)
-- Name: direktorats_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX direktorats_updated_by_id_fk ON public.direktorats USING btree (updated_by_id);


--
-- TOC entry 3162 (class 1259 OID 49635)
-- Name: divisis_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX divisis_created_by_id_fk ON public.divisis USING btree (created_by_id);


--
-- TOC entry 3218 (class 1259 OID 49782)
-- Name: divisis_id_direktorat_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX divisis_id_direktorat_links_fk ON public.divisis_id_direktorat_links USING btree (divisi_id);


--
-- TOC entry 3219 (class 1259 OID 49783)
-- Name: divisis_id_direktorat_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX divisis_id_direktorat_links_inv_fk ON public.divisis_id_direktorat_links USING btree (direktorat_id);


--
-- TOC entry 3165 (class 1259 OID 49636)
-- Name: divisis_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX divisis_updated_by_id_fk ON public.divisis USING btree (updated_by_id);


--
-- TOC entry 3121 (class 1259 OID 37940)
-- Name: files_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX files_created_by_id_fk ON public.files USING btree (created_by_id);


--
-- TOC entry 3145 (class 1259 OID 38007)
-- Name: files_related_morphs_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX files_related_morphs_fk ON public.files_related_morphs USING btree (file_id);


--
-- TOC entry 3124 (class 1259 OID 37941)
-- Name: files_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX files_updated_by_id_fk ON public.files USING btree (updated_by_id);


--
-- TOC entry 3166 (class 1259 OID 49648)
-- Name: fit_propers_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX fit_propers_created_by_id_fk ON public.fit_propers USING btree (created_by_id);


--
-- TOC entry 3220 (class 1259 OID 49787)
-- Name: fit_propers_id_riwayat_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX fit_propers_id_riwayat_links_fk ON public.fit_propers_id_riwayat_links USING btree (fit_proper_id);


--
-- TOC entry 3221 (class 1259 OID 49788)
-- Name: fit_propers_id_riwayat_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX fit_propers_id_riwayat_links_inv_fk ON public.fit_propers_id_riwayat_links USING btree (riwayat_ujian_id);


--
-- TOC entry 3256 (class 1259 OID 52252)
-- Name: fit_propers_id_wawancara_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX fit_propers_id_wawancara_links_fk ON public.fit_propers_id_wawancara_links USING btree (fit_proper_id);


--
-- TOC entry 3257 (class 1259 OID 52253)
-- Name: fit_propers_id_wawancara_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX fit_propers_id_wawancara_links_inv_fk ON public.fit_propers_id_wawancara_links USING btree (wawancara_id);


--
-- TOC entry 3169 (class 1259 OID 49649)
-- Name: fit_propers_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX fit_propers_updated_by_id_fk ON public.fit_propers USING btree (updated_by_id);


--
-- TOC entry 3170 (class 1259 OID 49658)
-- Name: grades_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX grades_created_by_id_fk ON public.grades USING btree (created_by_id);


--
-- TOC entry 3222 (class 1259 OID 49792)
-- Name: grades_id_jenjang_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX grades_id_jenjang_links_fk ON public.grades_id_jenjang_links USING btree (grade_id);


--
-- TOC entry 3223 (class 1259 OID 49793)
-- Name: grades_id_jenjang_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX grades_id_jenjang_links_inv_fk ON public.grades_id_jenjang_links USING btree (jenjang_id);


--
-- TOC entry 3173 (class 1259 OID 49659)
-- Name: grades_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX grades_updated_by_id_fk ON public.grades USING btree (updated_by_id);


--
-- TOC entry 3137 (class 1259 OID 37989)
-- Name: i18n_locale_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX i18n_locale_created_by_id_fk ON public.i18n_locale USING btree (created_by_id);


--
-- TOC entry 3140 (class 1259 OID 37990)
-- Name: i18n_locale_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX i18n_locale_updated_by_id_fk ON public.i18n_locale USING btree (updated_by_id);


--
-- TOC entry 3174 (class 1259 OID 49668)
-- Name: jabatans_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX jabatans_created_by_id_fk ON public.jabatans USING btree (created_by_id);


--
-- TOC entry 3226 (class 1259 OID 49802)
-- Name: jabatans_id_jenjang_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX jabatans_id_jenjang_links_fk ON public.jabatans_id_jenjang_links USING btree (jabatan_id);


--
-- TOC entry 3227 (class 1259 OID 49803)
-- Name: jabatans_id_jenjang_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX jabatans_id_jenjang_links_inv_fk ON public.jabatans_id_jenjang_links USING btree (jenjang_id);


--
-- TOC entry 3224 (class 1259 OID 49797)
-- Name: jabatans_id_unit_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX jabatans_id_unit_links_fk ON public.jabatans_id_unit_links USING btree (jabatan_id);


--
-- TOC entry 3225 (class 1259 OID 49798)
-- Name: jabatans_id_unit_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX jabatans_id_unit_links_inv_fk ON public.jabatans_id_unit_links USING btree (unit_id);


--
-- TOC entry 3177 (class 1259 OID 49669)
-- Name: jabatans_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX jabatans_updated_by_id_fk ON public.jabatans USING btree (updated_by_id);


--
-- TOC entry 3178 (class 1259 OID 49678)
-- Name: jenjangs_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX jenjangs_created_by_id_fk ON public.jenjangs USING btree (created_by_id);


--
-- TOC entry 3181 (class 1259 OID 49679)
-- Name: jenjangs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX jenjangs_updated_by_id_fk ON public.jenjangs USING btree (updated_by_id);


--
-- TOC entry 3182 (class 1259 OID 49691)
-- Name: pegawais_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_created_by_id_fk ON public.pegawais USING btree (created_by_id);


--
-- TOC entry 3228 (class 1259 OID 49812)
-- Name: pegawais_id_administrasi_users_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_administrasi_users_links_fk ON public.pegawais_id_administrasi_users_links USING btree (pegawai_id);


--
-- TOC entry 3229 (class 1259 OID 49813)
-- Name: pegawais_id_administrasi_users_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_administrasi_users_links_inv_fk ON public.pegawais_id_administrasi_users_links USING btree (administrasi_users_id);


--
-- TOC entry 3232 (class 1259 OID 49822)
-- Name: pegawais_id_bidang_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_bidang_links_fk ON public.pegawais_id_bidang_links USING btree (pegawai_id);


--
-- TOC entry 3233 (class 1259 OID 49823)
-- Name: pegawais_id_bidang_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_bidang_links_inv_fk ON public.pegawais_id_bidang_links USING btree (bidang_id);


--
-- TOC entry 3234 (class 1259 OID 49827)
-- Name: pegawais_id_direktorat_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_direktorat_links_fk ON public.pegawais_id_direktorat_links USING btree (pegawai_id);


--
-- TOC entry 3235 (class 1259 OID 49828)
-- Name: pegawais_id_direktorat_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_direktorat_links_inv_fk ON public.pegawais_id_direktorat_links USING btree (direktorat_id);


--
-- TOC entry 3236 (class 1259 OID 49832)
-- Name: pegawais_id_divisi_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_divisi_links_fk ON public.pegawais_id_divisi_links USING btree (pegawai_id);


--
-- TOC entry 3237 (class 1259 OID 49833)
-- Name: pegawais_id_divisi_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_divisi_links_inv_fk ON public.pegawais_id_divisi_links USING btree (divisi_id);


--
-- TOC entry 3238 (class 1259 OID 49837)
-- Name: pegawais_id_grade_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_grade_links_fk ON public.pegawais_id_grade_links USING btree (pegawai_id);


--
-- TOC entry 3239 (class 1259 OID 49838)
-- Name: pegawais_id_grade_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_grade_links_inv_fk ON public.pegawais_id_grade_links USING btree (grade_id);


--
-- TOC entry 3240 (class 1259 OID 49842)
-- Name: pegawais_id_jabatan_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_jabatan_links_fk ON public.pegawais_id_jabatan_links USING btree (pegawai_id);


--
-- TOC entry 3241 (class 1259 OID 49843)
-- Name: pegawais_id_jabatan_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_jabatan_links_inv_fk ON public.pegawais_id_jabatan_links USING btree (jabatan_id);


--
-- TOC entry 3242 (class 1259 OID 49847)
-- Name: pegawais_id_pendidikan_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_pendidikan_links_fk ON public.pegawais_id_pendidikan_links USING btree (pegawai_id);


--
-- TOC entry 3243 (class 1259 OID 49848)
-- Name: pegawais_id_pendidikan_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_pendidikan_links_inv_fk ON public.pegawais_id_pendidikan_links USING btree (pendidilkan_id);


--
-- TOC entry 3230 (class 1259 OID 49817)
-- Name: pegawais_id_sub_bidang_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_sub_bidang_links_fk ON public.pegawais_id_sub_bidang_links USING btree (pegawai_id);


--
-- TOC entry 3231 (class 1259 OID 49818)
-- Name: pegawais_id_sub_bidang_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_sub_bidang_links_inv_fk ON public.pegawais_id_sub_bidang_links USING btree (sub_bidang_id);


--
-- TOC entry 3244 (class 1259 OID 49852)
-- Name: pegawais_id_unit_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_unit_links_fk ON public.pegawais_id_unit_links USING btree (pegawai_id);


--
-- TOC entry 3245 (class 1259 OID 49853)
-- Name: pegawais_id_unit_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_id_unit_links_inv_fk ON public.pegawais_id_unit_links USING btree (unit_id);


--
-- TOC entry 3185 (class 1259 OID 49692)
-- Name: pegawais_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pegawais_updated_by_id_fk ON public.pegawais USING btree (updated_by_id);


--
-- TOC entry 3186 (class 1259 OID 49701)
-- Name: pendidilkans_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pendidilkans_created_by_id_fk ON public.pendidilkans USING btree (created_by_id);


--
-- TOC entry 3189 (class 1259 OID 49702)
-- Name: pendidilkans_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX pendidilkans_updated_by_id_fk ON public.pendidilkans USING btree (updated_by_id);


--
-- TOC entry 3194 (class 1259 OID 49727)
-- Name: report_nilai_manuals_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX report_nilai_manuals_created_by_id_fk ON public.report_nilai_manuals USING btree (created_by_id);


--
-- TOC entry 3197 (class 1259 OID 49728)
-- Name: report_nilai_manuals_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX report_nilai_manuals_updated_by_id_fk ON public.report_nilai_manuals USING btree (updated_by_id);


--
-- TOC entry 3190 (class 1259 OID 49714)
-- Name: report_nilais_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX report_nilais_created_by_id_fk ON public.report_nilais USING btree (created_by_id);


--
-- TOC entry 3193 (class 1259 OID 49715)
-- Name: report_nilais_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX report_nilais_updated_by_id_fk ON public.report_nilais USING btree (updated_by_id);


--
-- TOC entry 3198 (class 1259 OID 49737)
-- Name: riwayat_ujians_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX riwayat_ujians_created_by_id_fk ON public.riwayat_ujians USING btree (created_by_id);


--
-- TOC entry 3250 (class 1259 OID 49872)
-- Name: riwayat_ujians_id_penguji_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX riwayat_ujians_id_penguji_links_fk ON public.riwayat_ujians_id_penguji_links USING btree (riwayat_ujian_id);


--
-- TOC entry 3251 (class 1259 OID 49873)
-- Name: riwayat_ujians_id_penguji_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX riwayat_ujians_id_penguji_links_inv_fk ON public.riwayat_ujians_id_penguji_links USING btree (pegawai_id);


--
-- TOC entry 3254 (class 1259 OID 51952)
-- Name: riwayat_ujians_id_peserta_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX riwayat_ujians_id_peserta_links_fk ON public.riwayat_ujians_id_peserta_links USING btree (riwayat_ujian_id);


--
-- TOC entry 3255 (class 1259 OID 51953)
-- Name: riwayat_ujians_id_peserta_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX riwayat_ujians_id_peserta_links_inv_fk ON public.riwayat_ujians_id_peserta_links USING btree (pegawai_id);


--
-- TOC entry 3248 (class 1259 OID 49862)
-- Name: riwayat_ujians_id_report_manual_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX riwayat_ujians_id_report_manual_links_fk ON public.riwayat_ujians_id_report_manual_links USING btree (riwayat_ujian_id);


--
-- TOC entry 3249 (class 1259 OID 49863)
-- Name: riwayat_ujians_id_report_manual_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX riwayat_ujians_id_report_manual_links_inv_fk ON public.riwayat_ujians_id_report_manual_links USING btree (report_nilai_manual_id);


--
-- TOC entry 3246 (class 1259 OID 49857)
-- Name: riwayat_ujians_id_report_nilai_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX riwayat_ujians_id_report_nilai_links_fk ON public.riwayat_ujians_id_report_nilai_links USING btree (riwayat_ujian_id);


--
-- TOC entry 3247 (class 1259 OID 49858)
-- Name: riwayat_ujians_id_report_nilai_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX riwayat_ujians_id_report_nilai_links_inv_fk ON public.riwayat_ujians_id_report_nilai_links USING btree (report_nilai_id);


--
-- TOC entry 3201 (class 1259 OID 49738)
-- Name: riwayat_ujians_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX riwayat_ujians_updated_by_id_fk ON public.riwayat_ujians USING btree (updated_by_id);


--
-- TOC entry 3117 (class 1259 OID 37927)
-- Name: strapi_api_tokens_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX strapi_api_tokens_created_by_id_fk ON public.strapi_api_tokens USING btree (created_by_id);


--
-- TOC entry 3120 (class 1259 OID 37928)
-- Name: strapi_api_tokens_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX strapi_api_tokens_updated_by_id_fk ON public.strapi_api_tokens USING btree (updated_by_id);


--
-- TOC entry 3202 (class 1259 OID 49747)
-- Name: sub_bidangs_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX sub_bidangs_created_by_id_fk ON public.sub_bidangs USING btree (created_by_id);


--
-- TOC entry 3252 (class 1259 OID 49882)
-- Name: sub_bidangs_id_bidang_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX sub_bidangs_id_bidang_links_fk ON public.sub_bidangs_id_bidang_links USING btree (sub_bidang_id);


--
-- TOC entry 3253 (class 1259 OID 49883)
-- Name: sub_bidangs_id_bidang_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX sub_bidangs_id_bidang_links_inv_fk ON public.sub_bidangs_id_bidang_links USING btree (bidang_id);


--
-- TOC entry 3205 (class 1259 OID 49748)
-- Name: sub_bidangs_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX sub_bidangs_updated_by_id_fk ON public.sub_bidangs USING btree (updated_by_id);


--
-- TOC entry 3206 (class 1259 OID 49757)
-- Name: units_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX units_created_by_id_fk ON public.units USING btree (created_by_id);


--
-- TOC entry 3209 (class 1259 OID 49758)
-- Name: units_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX units_updated_by_id_fk ON public.units USING btree (updated_by_id);


--
-- TOC entry 3125 (class 1259 OID 37950)
-- Name: up_permissions_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX up_permissions_created_by_id_fk ON public.up_permissions USING btree (created_by_id);


--
-- TOC entry 3146 (class 1259 OID 38011)
-- Name: up_permissions_role_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX up_permissions_role_links_fk ON public.up_permissions_role_links USING btree (permission_id);


--
-- TOC entry 3147 (class 1259 OID 38012)
-- Name: up_permissions_role_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX up_permissions_role_links_inv_fk ON public.up_permissions_role_links USING btree (role_id);


--
-- TOC entry 3128 (class 1259 OID 37951)
-- Name: up_permissions_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX up_permissions_updated_by_id_fk ON public.up_permissions USING btree (updated_by_id);


--
-- TOC entry 3129 (class 1259 OID 37963)
-- Name: up_roles_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX up_roles_created_by_id_fk ON public.up_roles USING btree (created_by_id);


--
-- TOC entry 3132 (class 1259 OID 37964)
-- Name: up_roles_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX up_roles_updated_by_id_fk ON public.up_roles USING btree (updated_by_id);


--
-- TOC entry 3133 (class 1259 OID 37976)
-- Name: up_users_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX up_users_created_by_id_fk ON public.up_users USING btree (created_by_id);


--
-- TOC entry 3148 (class 1259 OID 38016)
-- Name: up_users_role_links_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX up_users_role_links_fk ON public.up_users_role_links USING btree (user_id);


--
-- TOC entry 3149 (class 1259 OID 38017)
-- Name: up_users_role_links_inv_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX up_users_role_links_inv_fk ON public.up_users_role_links USING btree (role_id);


--
-- TOC entry 3136 (class 1259 OID 37977)
-- Name: up_users_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX up_users_updated_by_id_fk ON public.up_users USING btree (updated_by_id);


--
-- TOC entry 3210 (class 1259 OID 49767)
-- Name: wawancaras_created_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX wawancaras_created_by_id_fk ON public.wawancaras USING btree (created_by_id);


--
-- TOC entry 3213 (class 1259 OID 49768)
-- Name: wawancaras_updated_by_id_fk; Type: INDEX; Schema: public; Owner: ka04
--

CREATE INDEX wawancaras_updated_by_id_fk ON public.wawancaras USING btree (updated_by_id);


--
-- TOC entry 3258 (class 2606 OID 38018)
-- Name: admin_permissions admin_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3276 (class 2606 OID 38108)
-- Name: admin_permissions_role_links admin_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.admin_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3277 (class 2606 OID 38113)
-- Name: admin_permissions_role_links admin_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_permissions_role_links
    ADD CONSTRAINT admin_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3259 (class 2606 OID 38023)
-- Name: admin_permissions admin_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_permissions
    ADD CONSTRAINT admin_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3262 (class 2606 OID 38038)
-- Name: admin_roles admin_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3263 (class 2606 OID 38043)
-- Name: admin_roles admin_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_roles
    ADD CONSTRAINT admin_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3260 (class 2606 OID 38028)
-- Name: admin_users admin_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3278 (class 2606 OID 38118)
-- Name: admin_users_roles_links admin_users_roles_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_fk FOREIGN KEY (user_id) REFERENCES public.admin_users(id) ON DELETE CASCADE;


--
-- TOC entry 3279 (class 2606 OID 38123)
-- Name: admin_users_roles_links admin_users_roles_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_users_roles_links
    ADD CONSTRAINT admin_users_roles_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.admin_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3261 (class 2606 OID 38033)
-- Name: admin_users admin_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.admin_users
    ADD CONSTRAINT admin_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3285 (class 2606 OID 49884)
-- Name: administrasi_userss administrasi_userss_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.administrasi_userss
    ADD CONSTRAINT administrasi_userss_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3286 (class 2606 OID 49889)
-- Name: administrasi_userss administrasi_userss_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.administrasi_userss
    ADD CONSTRAINT administrasi_userss_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3287 (class 2606 OID 49894)
-- Name: bidangs bidangs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.bidangs
    ADD CONSTRAINT bidangs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3317 (class 2606 OID 50044)
-- Name: bidangs_id_divisi_links bidangs_id_divisi_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.bidangs_id_divisi_links
    ADD CONSTRAINT bidangs_id_divisi_links_fk FOREIGN KEY (bidang_id) REFERENCES public.bidangs(id) ON DELETE CASCADE;


--
-- TOC entry 3318 (class 2606 OID 50049)
-- Name: bidangs_id_divisi_links bidangs_id_divisi_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.bidangs_id_divisi_links
    ADD CONSTRAINT bidangs_id_divisi_links_inv_fk FOREIGN KEY (divisi_id) REFERENCES public.divisis(id) ON DELETE CASCADE;


--
-- TOC entry 3288 (class 2606 OID 49899)
-- Name: bidangs bidangs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.bidangs
    ADD CONSTRAINT bidangs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3289 (class 2606 OID 49904)
-- Name: direktorats direktorats_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.direktorats
    ADD CONSTRAINT direktorats_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3319 (class 2606 OID 50054)
-- Name: direktorats_id_unit_links direktorats_id_unit_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.direktorats_id_unit_links
    ADD CONSTRAINT direktorats_id_unit_links_fk FOREIGN KEY (direktorat_id) REFERENCES public.direktorats(id) ON DELETE CASCADE;


--
-- TOC entry 3320 (class 2606 OID 50059)
-- Name: direktorats_id_unit_links direktorats_id_unit_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.direktorats_id_unit_links
    ADD CONSTRAINT direktorats_id_unit_links_inv_fk FOREIGN KEY (unit_id) REFERENCES public.units(id) ON DELETE CASCADE;


--
-- TOC entry 3290 (class 2606 OID 49909)
-- Name: direktorats direktorats_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.direktorats
    ADD CONSTRAINT direktorats_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3291 (class 2606 OID 49914)
-- Name: divisis divisis_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.divisis
    ADD CONSTRAINT divisis_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3321 (class 2606 OID 50064)
-- Name: divisis_id_direktorat_links divisis_id_direktorat_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.divisis_id_direktorat_links
    ADD CONSTRAINT divisis_id_direktorat_links_fk FOREIGN KEY (divisi_id) REFERENCES public.divisis(id) ON DELETE CASCADE;


--
-- TOC entry 3322 (class 2606 OID 50069)
-- Name: divisis_id_direktorat_links divisis_id_direktorat_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.divisis_id_direktorat_links
    ADD CONSTRAINT divisis_id_direktorat_links_inv_fk FOREIGN KEY (direktorat_id) REFERENCES public.direktorats(id) ON DELETE CASCADE;


--
-- TOC entry 3292 (class 2606 OID 49919)
-- Name: divisis divisis_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.divisis
    ADD CONSTRAINT divisis_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3266 (class 2606 OID 38058)
-- Name: files files_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3280 (class 2606 OID 38128)
-- Name: files_related_morphs files_related_morphs_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.files_related_morphs
    ADD CONSTRAINT files_related_morphs_fk FOREIGN KEY (file_id) REFERENCES public.files(id) ON DELETE CASCADE;


--
-- TOC entry 3267 (class 2606 OID 38063)
-- Name: files files_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.files
    ADD CONSTRAINT files_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3293 (class 2606 OID 49924)
-- Name: fit_propers fit_propers_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.fit_propers
    ADD CONSTRAINT fit_propers_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3323 (class 2606 OID 50074)
-- Name: fit_propers_id_riwayat_links fit_propers_id_riwayat_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.fit_propers_id_riwayat_links
    ADD CONSTRAINT fit_propers_id_riwayat_links_fk FOREIGN KEY (fit_proper_id) REFERENCES public.fit_propers(id) ON DELETE CASCADE;


--
-- TOC entry 3324 (class 2606 OID 50079)
-- Name: fit_propers_id_riwayat_links fit_propers_id_riwayat_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.fit_propers_id_riwayat_links
    ADD CONSTRAINT fit_propers_id_riwayat_links_inv_fk FOREIGN KEY (riwayat_ujian_id) REFERENCES public.riwayat_ujians(id) ON DELETE CASCADE;


--
-- TOC entry 3359 (class 2606 OID 52254)
-- Name: fit_propers_id_wawancara_links fit_propers_id_wawancara_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.fit_propers_id_wawancara_links
    ADD CONSTRAINT fit_propers_id_wawancara_links_fk FOREIGN KEY (fit_proper_id) REFERENCES public.fit_propers(id) ON DELETE CASCADE;


--
-- TOC entry 3360 (class 2606 OID 52259)
-- Name: fit_propers_id_wawancara_links fit_propers_id_wawancara_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.fit_propers_id_wawancara_links
    ADD CONSTRAINT fit_propers_id_wawancara_links_inv_fk FOREIGN KEY (wawancara_id) REFERENCES public.wawancaras(id) ON DELETE CASCADE;


--
-- TOC entry 3294 (class 2606 OID 49929)
-- Name: fit_propers fit_propers_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.fit_propers
    ADD CONSTRAINT fit_propers_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3295 (class 2606 OID 49934)
-- Name: grades grades_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3325 (class 2606 OID 50084)
-- Name: grades_id_jenjang_links grades_id_jenjang_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.grades_id_jenjang_links
    ADD CONSTRAINT grades_id_jenjang_links_fk FOREIGN KEY (grade_id) REFERENCES public.grades(id) ON DELETE CASCADE;


--
-- TOC entry 3326 (class 2606 OID 50089)
-- Name: grades_id_jenjang_links grades_id_jenjang_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.grades_id_jenjang_links
    ADD CONSTRAINT grades_id_jenjang_links_inv_fk FOREIGN KEY (jenjang_id) REFERENCES public.jenjangs(id) ON DELETE CASCADE;


--
-- TOC entry 3296 (class 2606 OID 49939)
-- Name: grades grades_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.grades
    ADD CONSTRAINT grades_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3274 (class 2606 OID 38098)
-- Name: i18n_locale i18n_locale_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3275 (class 2606 OID 38103)
-- Name: i18n_locale i18n_locale_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.i18n_locale
    ADD CONSTRAINT i18n_locale_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3297 (class 2606 OID 49944)
-- Name: jabatans jabatans_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.jabatans
    ADD CONSTRAINT jabatans_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3329 (class 2606 OID 50104)
-- Name: jabatans_id_jenjang_links jabatans_id_jenjang_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.jabatans_id_jenjang_links
    ADD CONSTRAINT jabatans_id_jenjang_links_fk FOREIGN KEY (jabatan_id) REFERENCES public.jabatans(id) ON DELETE CASCADE;


--
-- TOC entry 3330 (class 2606 OID 50109)
-- Name: jabatans_id_jenjang_links jabatans_id_jenjang_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.jabatans_id_jenjang_links
    ADD CONSTRAINT jabatans_id_jenjang_links_inv_fk FOREIGN KEY (jenjang_id) REFERENCES public.jenjangs(id) ON DELETE CASCADE;


--
-- TOC entry 3327 (class 2606 OID 50094)
-- Name: jabatans_id_unit_links jabatans_id_unit_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.jabatans_id_unit_links
    ADD CONSTRAINT jabatans_id_unit_links_fk FOREIGN KEY (jabatan_id) REFERENCES public.jabatans(id) ON DELETE CASCADE;


--
-- TOC entry 3328 (class 2606 OID 50099)
-- Name: jabatans_id_unit_links jabatans_id_unit_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.jabatans_id_unit_links
    ADD CONSTRAINT jabatans_id_unit_links_inv_fk FOREIGN KEY (unit_id) REFERENCES public.units(id) ON DELETE CASCADE;


--
-- TOC entry 3298 (class 2606 OID 49949)
-- Name: jabatans jabatans_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.jabatans
    ADD CONSTRAINT jabatans_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3299 (class 2606 OID 49954)
-- Name: jenjangs jenjangs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.jenjangs
    ADD CONSTRAINT jenjangs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3300 (class 2606 OID 49959)
-- Name: jenjangs jenjangs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.jenjangs
    ADD CONSTRAINT jenjangs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3301 (class 2606 OID 49964)
-- Name: pegawais pegawais_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais
    ADD CONSTRAINT pegawais_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3331 (class 2606 OID 50124)
-- Name: pegawais_id_administrasi_users_links pegawais_id_administrasi_users_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_administrasi_users_links
    ADD CONSTRAINT pegawais_id_administrasi_users_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 3332 (class 2606 OID 50129)
-- Name: pegawais_id_administrasi_users_links pegawais_id_administrasi_users_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_administrasi_users_links
    ADD CONSTRAINT pegawais_id_administrasi_users_links_inv_fk FOREIGN KEY (administrasi_users_id) REFERENCES public.administrasi_userss(id) ON DELETE CASCADE;


--
-- TOC entry 3335 (class 2606 OID 50144)
-- Name: pegawais_id_bidang_links pegawais_id_bidang_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_bidang_links
    ADD CONSTRAINT pegawais_id_bidang_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 3336 (class 2606 OID 50149)
-- Name: pegawais_id_bidang_links pegawais_id_bidang_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_bidang_links
    ADD CONSTRAINT pegawais_id_bidang_links_inv_fk FOREIGN KEY (bidang_id) REFERENCES public.bidangs(id) ON DELETE CASCADE;


--
-- TOC entry 3337 (class 2606 OID 50154)
-- Name: pegawais_id_direktorat_links pegawais_id_direktorat_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_direktorat_links
    ADD CONSTRAINT pegawais_id_direktorat_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 3338 (class 2606 OID 50159)
-- Name: pegawais_id_direktorat_links pegawais_id_direktorat_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_direktorat_links
    ADD CONSTRAINT pegawais_id_direktorat_links_inv_fk FOREIGN KEY (direktorat_id) REFERENCES public.direktorats(id) ON DELETE CASCADE;


--
-- TOC entry 3339 (class 2606 OID 50164)
-- Name: pegawais_id_divisi_links pegawais_id_divisi_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_divisi_links
    ADD CONSTRAINT pegawais_id_divisi_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 3340 (class 2606 OID 50169)
-- Name: pegawais_id_divisi_links pegawais_id_divisi_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_divisi_links
    ADD CONSTRAINT pegawais_id_divisi_links_inv_fk FOREIGN KEY (divisi_id) REFERENCES public.divisis(id) ON DELETE CASCADE;


--
-- TOC entry 3341 (class 2606 OID 50174)
-- Name: pegawais_id_grade_links pegawais_id_grade_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_grade_links
    ADD CONSTRAINT pegawais_id_grade_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 3342 (class 2606 OID 50179)
-- Name: pegawais_id_grade_links pegawais_id_grade_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_grade_links
    ADD CONSTRAINT pegawais_id_grade_links_inv_fk FOREIGN KEY (grade_id) REFERENCES public.grades(id) ON DELETE CASCADE;


--
-- TOC entry 3343 (class 2606 OID 50184)
-- Name: pegawais_id_jabatan_links pegawais_id_jabatan_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_jabatan_links
    ADD CONSTRAINT pegawais_id_jabatan_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 3344 (class 2606 OID 50189)
-- Name: pegawais_id_jabatan_links pegawais_id_jabatan_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_jabatan_links
    ADD CONSTRAINT pegawais_id_jabatan_links_inv_fk FOREIGN KEY (jabatan_id) REFERENCES public.jabatans(id) ON DELETE CASCADE;


--
-- TOC entry 3345 (class 2606 OID 50194)
-- Name: pegawais_id_pendidikan_links pegawais_id_pendidikan_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_pendidikan_links
    ADD CONSTRAINT pegawais_id_pendidikan_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 3346 (class 2606 OID 50199)
-- Name: pegawais_id_pendidikan_links pegawais_id_pendidikan_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_pendidikan_links
    ADD CONSTRAINT pegawais_id_pendidikan_links_inv_fk FOREIGN KEY (pendidilkan_id) REFERENCES public.pendidilkans(id) ON DELETE CASCADE;


--
-- TOC entry 3333 (class 2606 OID 50134)
-- Name: pegawais_id_sub_bidang_links pegawais_id_sub_bidang_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_sub_bidang_links
    ADD CONSTRAINT pegawais_id_sub_bidang_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 3334 (class 2606 OID 50139)
-- Name: pegawais_id_sub_bidang_links pegawais_id_sub_bidang_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_sub_bidang_links
    ADD CONSTRAINT pegawais_id_sub_bidang_links_inv_fk FOREIGN KEY (sub_bidang_id) REFERENCES public.sub_bidangs(id) ON DELETE CASCADE;


--
-- TOC entry 3347 (class 2606 OID 50204)
-- Name: pegawais_id_unit_links pegawais_id_unit_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_unit_links
    ADD CONSTRAINT pegawais_id_unit_links_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 3348 (class 2606 OID 50209)
-- Name: pegawais_id_unit_links pegawais_id_unit_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais_id_unit_links
    ADD CONSTRAINT pegawais_id_unit_links_inv_fk FOREIGN KEY (unit_id) REFERENCES public.units(id) ON DELETE CASCADE;


--
-- TOC entry 3302 (class 2606 OID 49969)
-- Name: pegawais pegawais_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pegawais
    ADD CONSTRAINT pegawais_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3303 (class 2606 OID 49974)
-- Name: pendidilkans pendidilkans_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pendidilkans
    ADD CONSTRAINT pendidilkans_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3304 (class 2606 OID 49979)
-- Name: pendidilkans pendidilkans_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.pendidilkans
    ADD CONSTRAINT pendidilkans_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3307 (class 2606 OID 49994)
-- Name: report_nilai_manuals report_nilai_manuals_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.report_nilai_manuals
    ADD CONSTRAINT report_nilai_manuals_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3308 (class 2606 OID 49999)
-- Name: report_nilai_manuals report_nilai_manuals_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.report_nilai_manuals
    ADD CONSTRAINT report_nilai_manuals_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3305 (class 2606 OID 49984)
-- Name: report_nilais report_nilais_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.report_nilais
    ADD CONSTRAINT report_nilais_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3306 (class 2606 OID 49989)
-- Name: report_nilais report_nilais_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.report_nilais
    ADD CONSTRAINT report_nilais_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3309 (class 2606 OID 50004)
-- Name: riwayat_ujians riwayat_ujians_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.riwayat_ujians
    ADD CONSTRAINT riwayat_ujians_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3353 (class 2606 OID 50244)
-- Name: riwayat_ujians_id_penguji_links riwayat_ujians_id_penguji_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.riwayat_ujians_id_penguji_links
    ADD CONSTRAINT riwayat_ujians_id_penguji_links_fk FOREIGN KEY (riwayat_ujian_id) REFERENCES public.riwayat_ujians(id) ON DELETE CASCADE;


--
-- TOC entry 3354 (class 2606 OID 50249)
-- Name: riwayat_ujians_id_penguji_links riwayat_ujians_id_penguji_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.riwayat_ujians_id_penguji_links
    ADD CONSTRAINT riwayat_ujians_id_penguji_links_inv_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 3357 (class 2606 OID 51969)
-- Name: riwayat_ujians_id_peserta_links riwayat_ujians_id_peserta_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.riwayat_ujians_id_peserta_links
    ADD CONSTRAINT riwayat_ujians_id_peserta_links_fk FOREIGN KEY (riwayat_ujian_id) REFERENCES public.riwayat_ujians(id) ON DELETE CASCADE;


--
-- TOC entry 3358 (class 2606 OID 51974)
-- Name: riwayat_ujians_id_peserta_links riwayat_ujians_id_peserta_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.riwayat_ujians_id_peserta_links
    ADD CONSTRAINT riwayat_ujians_id_peserta_links_inv_fk FOREIGN KEY (pegawai_id) REFERENCES public.pegawais(id) ON DELETE CASCADE;


--
-- TOC entry 3351 (class 2606 OID 50224)
-- Name: riwayat_ujians_id_report_manual_links riwayat_ujians_id_report_manual_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.riwayat_ujians_id_report_manual_links
    ADD CONSTRAINT riwayat_ujians_id_report_manual_links_fk FOREIGN KEY (riwayat_ujian_id) REFERENCES public.riwayat_ujians(id) ON DELETE CASCADE;


--
-- TOC entry 3352 (class 2606 OID 50229)
-- Name: riwayat_ujians_id_report_manual_links riwayat_ujians_id_report_manual_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.riwayat_ujians_id_report_manual_links
    ADD CONSTRAINT riwayat_ujians_id_report_manual_links_inv_fk FOREIGN KEY (report_nilai_manual_id) REFERENCES public.report_nilai_manuals(id) ON DELETE CASCADE;


--
-- TOC entry 3349 (class 2606 OID 50214)
-- Name: riwayat_ujians_id_report_nilai_links riwayat_ujians_id_report_nilai_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.riwayat_ujians_id_report_nilai_links
    ADD CONSTRAINT riwayat_ujians_id_report_nilai_links_fk FOREIGN KEY (riwayat_ujian_id) REFERENCES public.riwayat_ujians(id) ON DELETE CASCADE;


--
-- TOC entry 3350 (class 2606 OID 50219)
-- Name: riwayat_ujians_id_report_nilai_links riwayat_ujians_id_report_nilai_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.riwayat_ujians_id_report_nilai_links
    ADD CONSTRAINT riwayat_ujians_id_report_nilai_links_inv_fk FOREIGN KEY (report_nilai_id) REFERENCES public.report_nilais(id) ON DELETE CASCADE;


--
-- TOC entry 3310 (class 2606 OID 50009)
-- Name: riwayat_ujians riwayat_ujians_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.riwayat_ujians
    ADD CONSTRAINT riwayat_ujians_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3264 (class 2606 OID 38048)
-- Name: strapi_api_tokens strapi_api_tokens_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3265 (class 2606 OID 38053)
-- Name: strapi_api_tokens strapi_api_tokens_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.strapi_api_tokens
    ADD CONSTRAINT strapi_api_tokens_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3311 (class 2606 OID 50014)
-- Name: sub_bidangs sub_bidangs_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.sub_bidangs
    ADD CONSTRAINT sub_bidangs_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3355 (class 2606 OID 50264)
-- Name: sub_bidangs_id_bidang_links sub_bidangs_id_bidang_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.sub_bidangs_id_bidang_links
    ADD CONSTRAINT sub_bidangs_id_bidang_links_fk FOREIGN KEY (sub_bidang_id) REFERENCES public.sub_bidangs(id) ON DELETE CASCADE;


--
-- TOC entry 3356 (class 2606 OID 50269)
-- Name: sub_bidangs_id_bidang_links sub_bidangs_id_bidang_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.sub_bidangs_id_bidang_links
    ADD CONSTRAINT sub_bidangs_id_bidang_links_inv_fk FOREIGN KEY (bidang_id) REFERENCES public.bidangs(id) ON DELETE CASCADE;


--
-- TOC entry 3312 (class 2606 OID 50019)
-- Name: sub_bidangs sub_bidangs_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.sub_bidangs
    ADD CONSTRAINT sub_bidangs_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3313 (class 2606 OID 50024)
-- Name: units units_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3314 (class 2606 OID 50029)
-- Name: units units_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.units
    ADD CONSTRAINT units_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3268 (class 2606 OID 38068)
-- Name: up_permissions up_permissions_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3281 (class 2606 OID 38133)
-- Name: up_permissions_role_links up_permissions_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_fk FOREIGN KEY (permission_id) REFERENCES public.up_permissions(id) ON DELETE CASCADE;


--
-- TOC entry 3282 (class 2606 OID 38138)
-- Name: up_permissions_role_links up_permissions_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_permissions_role_links
    ADD CONSTRAINT up_permissions_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3269 (class 2606 OID 38073)
-- Name: up_permissions up_permissions_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_permissions
    ADD CONSTRAINT up_permissions_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3270 (class 2606 OID 38078)
-- Name: up_roles up_roles_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3271 (class 2606 OID 38083)
-- Name: up_roles up_roles_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_roles
    ADD CONSTRAINT up_roles_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3272 (class 2606 OID 38088)
-- Name: up_users up_users_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3283 (class 2606 OID 38143)
-- Name: up_users_role_links up_users_role_links_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_fk FOREIGN KEY (user_id) REFERENCES public.up_users(id) ON DELETE CASCADE;


--
-- TOC entry 3284 (class 2606 OID 38148)
-- Name: up_users_role_links up_users_role_links_inv_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_users_role_links
    ADD CONSTRAINT up_users_role_links_inv_fk FOREIGN KEY (role_id) REFERENCES public.up_roles(id) ON DELETE CASCADE;


--
-- TOC entry 3273 (class 2606 OID 38093)
-- Name: up_users up_users_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.up_users
    ADD CONSTRAINT up_users_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3315 (class 2606 OID 50034)
-- Name: wawancaras wawancaras_created_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.wawancaras
    ADD CONSTRAINT wawancaras_created_by_id_fk FOREIGN KEY (created_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


--
-- TOC entry 3316 (class 2606 OID 50039)
-- Name: wawancaras wawancaras_updated_by_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: ka04
--

ALTER TABLE ONLY public.wawancaras
    ADD CONSTRAINT wawancaras_updated_by_id_fk FOREIGN KEY (updated_by_id) REFERENCES public.admin_users(id) ON DELETE SET NULL;


-- Completed on 2022-06-02 23:11:50

--
-- PostgreSQL database dump complete
--

