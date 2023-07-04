--
-- PostgreSQL database dump
--

-- Dumped from database version 14.8 (Homebrew)
-- Dumped by pg_dump version 14.8 (Homebrew)

-- Started on 2023-07-04 08:03:59 WIB

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
-- TOC entry 5 (class 2615 OID 25838)
-- Name: public; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO postgres;

--
-- TOC entry 3912 (class 0 OID 0)
-- Dependencies: 5
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 209 (class 1259 OID 25839)
-- Name: tb_m_categories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_categories (
    category_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    category_nm character varying(30) NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone,
    category_desc text
);


ALTER TABLE public.tb_m_categories OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 25849)
-- Name: tb_m_categories_category_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_categories_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_categories_category_id_seq OWNER TO postgres;

--
-- TOC entry 3913 (class 0 OID 0)
-- Dependencies: 210
-- Name: tb_m_categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_categories_category_id_seq OWNED BY public.tb_m_categories.category_id;


--
-- TOC entry 211 (class 1259 OID 25850)
-- Name: tb_m_companies; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_companies (
    company_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    company_nm character varying(100) NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_m_companies OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 25858)
-- Name: tb_m_company_company_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_company_company_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_company_company_id_seq OWNER TO postgres;

--
-- TOC entry 3914 (class 0 OID 0)
-- Dependencies: 212
-- Name: tb_m_company_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_company_company_id_seq OWNED BY public.tb_m_companies.company_id;


--
-- TOC entry 213 (class 1259 OID 25859)
-- Name: tb_m_factors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_factors (
    factor_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    factor_nm character varying(100) NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_m_factors OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 25867)
-- Name: tb_m_faktors_faktor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_faktors_faktor_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_faktors_faktor_id_seq OWNER TO postgres;

--
-- TOC entry 3915 (class 0 OID 0)
-- Dependencies: 214
-- Name: tb_m_faktors_faktor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_faktors_faktor_id_seq OWNED BY public.tb_m_factors.factor_id;


--
-- TOC entry 215 (class 1259 OID 25868)
-- Name: tb_m_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_groups (
    group_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    group_nm character varying(50) NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_m_groups OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 25876)
-- Name: tb_m_group_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_group_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_group_group_id_seq OWNER TO postgres;

--
-- TOC entry 3916 (class 0 OID 0)
-- Dependencies: 216
-- Name: tb_m_group_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_group_group_id_seq OWNED BY public.tb_m_groups.group_id;


--
-- TOC entry 217 (class 1259 OID 25877)
-- Name: tb_m_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_jobs (
    job_id integer NOT NULL,
    job_type_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    job_nm character varying(255) NOT NULL,
    attachment text,
    pos_id integer,
    job_no character varying(100) NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone,
    machine_id integer
);


ALTER TABLE public.tb_m_jobs OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 25887)
-- Name: tb_m_job_job_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_job_job_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_job_job_id_seq OWNER TO postgres;

--
-- TOC entry 3917 (class 0 OID 0)
-- Dependencies: 218
-- Name: tb_m_job_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_job_job_id_seq OWNED BY public.tb_m_jobs.job_id;


--
-- TOC entry 219 (class 1259 OID 25888)
-- Name: tb_m_job_types; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_job_types (
    job_type_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    job_type_nm character varying(255) NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone,
    colors character varying(20)
);


ALTER TABLE public.tb_m_job_types OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 25898)
-- Name: tb_m_job_type_job_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_job_type_job_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_job_type_job_type_id_seq OWNER TO postgres;

--
-- TOC entry 3918 (class 0 OID 0)
-- Dependencies: 220
-- Name: tb_m_job_type_job_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_job_type_job_type_id_seq OWNED BY public.tb_m_job_types.job_type_id;


--
-- TOC entry 221 (class 1259 OID 25899)
-- Name: tb_m_judgments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_judgments (
    judgment_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    judgment_nm character varying(8),
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone,
    is_abnormal boolean DEFAULT false NOT NULL
);


ALTER TABLE public.tb_m_judgments OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 25907)
-- Name: tb_m_judgments_judgment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_judgments_judgment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_judgments_judgment_id_seq OWNER TO postgres;

--
-- TOC entry 3919 (class 0 OID 0)
-- Dependencies: 222
-- Name: tb_m_judgments_judgment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_judgments_judgment_id_seq OWNED BY public.tb_m_judgments.judgment_id;


--
-- TOC entry 223 (class 1259 OID 25908)
-- Name: tb_m_lines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_lines (
    line_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    line_nm character varying(100) NOT NULL,
    line_desc character varying(255),
    shop_id integer NOT NULL,
    line_snm character varying(100) NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_m_lines OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 25918)
-- Name: tb_m_lines_line_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_lines_line_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_lines_line_id_seq OWNER TO postgres;

--
-- TOC entry 3920 (class 0 OID 0)
-- Dependencies: 224
-- Name: tb_m_lines_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_lines_line_id_seq OWNED BY public.tb_m_lines.line_id;


--
-- TOC entry 225 (class 1259 OID 25919)
-- Name: tb_m_machines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_machines (
    machine_id integer NOT NULL,
    line_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    machine_nm character varying(100) NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone,
    op_no character varying(50) NOT NULL
);


ALTER TABLE public.tb_m_machines OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 25929)
-- Name: tb_m_machines_machine_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_machines_machine_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_machines_machine_id_seq OWNER TO postgres;

--
-- TOC entry 3921 (class 0 OID 0)
-- Dependencies: 226
-- Name: tb_m_machines_machine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_machines_machine_id_seq OWNED BY public.tb_m_machines.machine_id;


--
-- TOC entry 227 (class 1259 OID 25930)
-- Name: tb_m_plants; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_plants (
    plant_id integer NOT NULL,
    company_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    plant_nm character varying(100) NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_m_plants OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 25938)
-- Name: tb_m_plants_plant_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_plants_plant_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_plants_plant_id_seq OWNER TO postgres;

--
-- TOC entry 3922 (class 0 OID 0)
-- Dependencies: 228
-- Name: tb_m_plants_plant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_plants_plant_id_seq OWNED BY public.tb_m_plants.plant_id;


--
-- TOC entry 229 (class 1259 OID 25939)
-- Name: tb_m_pos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_pos (
    pos_id integer NOT NULL,
    line_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    pos_nm character varying(100) NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone,
    tsk character varying(255),
    tskk character varying(255)
);


ALTER TABLE public.tb_m_pos OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 25947)
-- Name: tb_m_pos_pos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_pos_pos_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_pos_pos_id_seq OWNER TO postgres;

--
-- TOC entry 3923 (class 0 OID 0)
-- Dependencies: 230
-- Name: tb_m_pos_pos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_pos_pos_id_seq OWNED BY public.tb_m_pos.pos_id;


--
-- TOC entry 231 (class 1259 OID 25948)
-- Name: tb_m_shop; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_shop (
    shop_id integer NOT NULL,
    uuid character varying(100) NOT NULL,
    plant_id integer NOT NULL,
    shop_nm character varying(100) NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_m_shop OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 25958)
-- Name: tb_m_shop_shop_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_shop_shop_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_shop_shop_id_seq OWNER TO postgres;

--
-- TOC entry 3924 (class 0 OID 0)
-- Dependencies: 232
-- Name: tb_m_shop_shop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_shop_shop_id_seq OWNED BY public.tb_m_shop.shop_id;


--
-- TOC entry 233 (class 1259 OID 25959)
-- Name: tb_m_tsk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_tsk (
    tsk_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    attachment text NOT NULL,
    pos_id integer NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_m_tsk OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 25969)
-- Name: tb_m_tsk_tsk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_tsk_tsk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_tsk_tsk_id_seq OWNER TO postgres;

--
-- TOC entry 3925 (class 0 OID 0)
-- Dependencies: 234
-- Name: tb_m_tsk_tsk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_tsk_tsk_id_seq OWNED BY public.tb_m_tsk.tsk_id;


--
-- TOC entry 235 (class 1259 OID 25970)
-- Name: tb_m_tskk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_tskk (
    tskk_id integer NOT NULL,
    pos_id integer NOT NULL,
    uuid integer NOT NULL,
    attachment text NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_m_tskk OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 25980)
-- Name: tb_m_tskk_tskk_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_tskk_tskk_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_tskk_tskk_id_seq OWNER TO postgres;

--
-- TOC entry 3926 (class 0 OID 0)
-- Dependencies: 236
-- Name: tb_m_tskk_tskk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_tskk_tskk_id_seq OWNED BY public.tb_m_tskk.tskk_id;


--
-- TOC entry 237 (class 1259 OID 25981)
-- Name: tb_m_users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_users (
    user_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    fullname character varying(255) NOT NULL,
    noreg character varying(10) NOT NULL,
    phone_number character varying(15),
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    created_by character varying(255) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    changed_by character varying(255) DEFAULT 'SYSTEM'::character varying NOT NULL,
    deleted_dt timestamp without time zone,
    deleted_by character varying(100),
    group_id integer NOT NULL,
    password character varying(100) NOT NULL,
    line_id integer,
    is_activated boolean DEFAULT false NOT NULL
);


ALTER TABLE public.tb_m_users OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 25991)
-- Name: tb_m_users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_m_users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_m_users_user_id_seq OWNER TO postgres;

--
-- TOC entry 3927 (class 0 OID 0)
-- Dependencies: 238
-- Name: tb_m_users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_users_user_id_seq OWNED BY public.tb_m_users.user_id;


--
-- TOC entry 239 (class 1259 OID 25992)
-- Name: tb_r_obs_checker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_r_obs_checker (
    obs_checker_id integer NOT NULL,
    observation_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    checker_nm character varying(255) NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_r_obs_checker OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 26002)
-- Name: tb_r_obs_checker_obs_checker_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_r_obs_checker_obs_checker_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_r_obs_checker_obs_checker_id_seq OWNER TO postgres;

--
-- TOC entry 3928 (class 0 OID 0)
-- Dependencies: 240
-- Name: tb_r_obs_checker_obs_checker_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_r_obs_checker_obs_checker_id_seq OWNED BY public.tb_r_obs_checker.obs_checker_id;


--
-- TOC entry 241 (class 1259 OID 26003)
-- Name: tb_r_obs_members; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_r_obs_members (
    obs_member_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    observation_id integer NOT NULL,
    member_nm character varying(255) NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_r_obs_members OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 26013)
-- Name: tb_r_obs_members_obs_member_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_r_obs_members_obs_member_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_r_obs_members_obs_member_id_seq OWNER TO postgres;

--
-- TOC entry 3929 (class 0 OID 0)
-- Dependencies: 242
-- Name: tb_r_obs_members_obs_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_r_obs_members_obs_member_id_seq OWNED BY public.tb_r_obs_members.obs_member_id;


--
-- TOC entry 243 (class 1259 OID 26014)
-- Name: tb_r_obs_results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_r_obs_results (
    obs_result_id integer NOT NULL,
    observation_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    category_id integer NOT NULL,
    factor_id integer,
    judgment_id integer NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone,
    findings text
);


ALTER TABLE public.tb_r_obs_results OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 26024)
-- Name: tb_r_obs_results_obs_result_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_r_obs_results_obs_result_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_r_obs_results_obs_result_id_seq OWNER TO postgres;

--
-- TOC entry 3930 (class 0 OID 0)
-- Dependencies: 244
-- Name: tb_r_obs_results_obs_result_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_r_obs_results_obs_result_id_seq OWNED BY public.tb_r_obs_results.obs_result_id;


--
-- TOC entry 245 (class 1259 OID 26025)
-- Name: tb_r_observations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_r_observations (
    observation_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    plan_check_dt timestamp without time zone NOT NULL,
    actual_check_dt timestamp without time zone,
    pos_id integer NOT NULL,
    job_id integer NOT NULL,
    group_id integer,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone,
    member_nm character varying(255) NOT NULL
);


ALTER TABLE public.tb_r_observations OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 26035)
-- Name: tb_r_observations_observation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_r_observations_observation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_r_observations_observation_id_seq OWNER TO postgres;

--
-- TOC entry 3931 (class 0 OID 0)
-- Dependencies: 246
-- Name: tb_r_observations_observation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_r_observations_observation_id_seq OWNED BY public.tb_r_observations.observation_id;


--
-- TOC entry 247 (class 1259 OID 26036)
-- Name: tb_r_result_findings; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_r_result_findings (
    result_finding_id integer NOT NULL,
    obs_result_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    description text NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_r_result_findings OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 26046)
-- Name: tb_r_result_findings_result_finding_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tb_r_result_findings_result_finding_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tb_r_result_findings_result_finding_id_seq OWNER TO postgres;

--
-- TOC entry 3932 (class 0 OID 0)
-- Dependencies: 248
-- Name: tb_r_result_findings_result_finding_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_r_result_findings_result_finding_id_seq OWNED BY public.tb_r_result_findings.result_finding_id;


--
-- TOC entry 3552 (class 2604 OID 26047)
-- Name: tb_m_categories category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_categories ALTER COLUMN category_id SET DEFAULT nextval('public.tb_m_categories_category_id_seq'::regclass);


--
-- TOC entry 3558 (class 2604 OID 26048)
-- Name: tb_m_companies company_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_companies ALTER COLUMN company_id SET DEFAULT nextval('public.tb_m_company_company_id_seq'::regclass);


--
-- TOC entry 3564 (class 2604 OID 26049)
-- Name: tb_m_factors factor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_factors ALTER COLUMN factor_id SET DEFAULT nextval('public.tb_m_faktors_faktor_id_seq'::regclass);


--
-- TOC entry 3570 (class 2604 OID 26050)
-- Name: tb_m_groups group_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_groups ALTER COLUMN group_id SET DEFAULT nextval('public.tb_m_group_group_id_seq'::regclass);


--
-- TOC entry 3582 (class 2604 OID 26051)
-- Name: tb_m_job_types job_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_job_types ALTER COLUMN job_type_id SET DEFAULT nextval('public.tb_m_job_type_job_type_id_seq'::regclass);


--
-- TOC entry 3576 (class 2604 OID 26052)
-- Name: tb_m_jobs job_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_jobs ALTER COLUMN job_id SET DEFAULT nextval('public.tb_m_job_job_id_seq'::regclass);


--
-- TOC entry 3588 (class 2604 OID 26053)
-- Name: tb_m_judgments judgment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_judgments ALTER COLUMN judgment_id SET DEFAULT nextval('public.tb_m_judgments_judgment_id_seq'::regclass);


--
-- TOC entry 3595 (class 2604 OID 26054)
-- Name: tb_m_lines line_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_lines ALTER COLUMN line_id SET DEFAULT nextval('public.tb_m_lines_line_id_seq'::regclass);


--
-- TOC entry 3601 (class 2604 OID 26055)
-- Name: tb_m_machines machine_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_machines ALTER COLUMN machine_id SET DEFAULT nextval('public.tb_m_machines_machine_id_seq'::regclass);


--
-- TOC entry 3607 (class 2604 OID 26056)
-- Name: tb_m_plants plant_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_plants ALTER COLUMN plant_id SET DEFAULT nextval('public.tb_m_plants_plant_id_seq'::regclass);


--
-- TOC entry 3613 (class 2604 OID 26057)
-- Name: tb_m_pos pos_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_pos ALTER COLUMN pos_id SET DEFAULT nextval('public.tb_m_pos_pos_id_seq'::regclass);


--
-- TOC entry 3619 (class 2604 OID 26058)
-- Name: tb_m_shop shop_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_shop ALTER COLUMN shop_id SET DEFAULT nextval('public.tb_m_shop_shop_id_seq'::regclass);


--
-- TOC entry 3625 (class 2604 OID 26059)
-- Name: tb_m_tsk tsk_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_tsk ALTER COLUMN tsk_id SET DEFAULT nextval('public.tb_m_tsk_tsk_id_seq'::regclass);


--
-- TOC entry 3631 (class 2604 OID 26060)
-- Name: tb_m_tskk tskk_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_tskk ALTER COLUMN tskk_id SET DEFAULT nextval('public.tb_m_tskk_tskk_id_seq'::regclass);


--
-- TOC entry 3637 (class 2604 OID 26061)
-- Name: tb_m_users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_users ALTER COLUMN user_id SET DEFAULT nextval('public.tb_m_users_user_id_seq'::regclass);


--
-- TOC entry 3643 (class 2604 OID 26062)
-- Name: tb_r_obs_checker obs_checker_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_checker ALTER COLUMN obs_checker_id SET DEFAULT nextval('public.tb_r_obs_checker_obs_checker_id_seq'::regclass);


--
-- TOC entry 3649 (class 2604 OID 26063)
-- Name: tb_r_obs_members obs_member_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_members ALTER COLUMN obs_member_id SET DEFAULT nextval('public.tb_r_obs_members_obs_member_id_seq'::regclass);


--
-- TOC entry 3655 (class 2604 OID 26064)
-- Name: tb_r_obs_results obs_result_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_results ALTER COLUMN obs_result_id SET DEFAULT nextval('public.tb_r_obs_results_obs_result_id_seq'::regclass);


--
-- TOC entry 3661 (class 2604 OID 26065)
-- Name: tb_r_observations observation_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_observations ALTER COLUMN observation_id SET DEFAULT nextval('public.tb_r_observations_observation_id_seq'::regclass);


--
-- TOC entry 3667 (class 2604 OID 26066)
-- Name: tb_r_result_findings result_finding_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_result_findings ALTER COLUMN result_finding_id SET DEFAULT nextval('public.tb_r_result_findings_result_finding_id_seq'::regclass);


--
-- TOC entry 3867 (class 0 OID 25839)
-- Dependencies: 209
-- Data for Name: tb_m_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_categories (category_id, uuid, category_nm, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt, category_desc) FROM stdin;
1	3ce06d66-fe82-4e0a-a1fd-ce927ec85167	Standarize Work	SYSTEM	2023-06-03 22:22:31.037405	SYSTEM	2023-06-03 22:22:31.037405	\N	\N	1.Check urutan kerja apakah sesuai gentan-I (ukur waktu 1cycle)\n\n2.Check urutan kerja apakah sesuai SOP (ukur waktu 1cycle)
4	3eb378fd-08c2-4176-96c7-403f10baebf5	Quality	SYSTEM	2023-06-03 22:23:40.214594	SYSTEM	2023-06-03 22:23:40.214594	\N	\N	1.Visual Check dilakukan dgn benar\n2.Quality Check di lakukan dengan benar\n3.1 Cycle Job di selesaikan
3	5b5bfd20-f5f7-4edc-8030-1d3e3f15d0e6	Ergonomy	SYSTEM	2023-06-03 22:23:40.214594	SYSTEM	2023-06-03 22:23:40.214594	\N	\N	1.Gerakan Tubuh (Sesuai std Tabel Ergonomi)\n2.Berat Part Single ≤ 5kg
5	f31243b9-b9f1-4391-9744-1d6094d47b1e	5S	SYSTEM	2023-06-03 22:23:40.214594	SYSTEM	2023-06-03 22:23:40.214594	\N	\N	1.Tidak ada barang yang tidak diperlukan di tempat kerja\n2.Barang yang diperlukan berada di tempatnya\n3.Lingkungan kerja bersih
2	df3719df-f436-4771-9fda-4500b58f1caa	Safety	SYSTEM	2023-06-03 22:23:40.214594	SYSTEM	2023-06-03 22:23:40.214594	\N	\N	1.Menggunakan APD + Masker, Face Shield & Jaga Jarak > 1 mtr\n2.Mengoperasikan Mesin sesuai SOP\n3.Mentaati rule SCW
6	e178a33a-ceb4-4dbe-9b10-adf3b375c3ba	testing 2	Dita Nurlita	2023-06-24 21:25:33	Dita Nurlita	2023-06-24 21:38:09	Dita Nurlita	2023-06-24 21:38:09	desc testing
\.


--
-- TOC entry 3869 (class 0 OID 25850)
-- Dependencies: 211
-- Data for Name: tb_m_companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_companies (company_id, uuid, company_nm, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt) FROM stdin;
2	7284b4ac-ec1b-466a-a4fe-8c36c2dcb6be	testing company 1	Dita Nurlita	2023-06-24 21:59:01	Dita Nurlita	2023-06-24 22:00:41	Dita Nurlita	2023-06-24 22:00:41
1	6a698c03-9f92-4db1-b7a2-399b0b2b2157	PT. Toyota Motor Manufacturing Indonesia	SYSTEM	2023-06-01 21:04:07.455747	SYSTEM	2023-06-01 21:04:07.455747	\N	\N
\.


--
-- TOC entry 3871 (class 0 OID 25859)
-- Dependencies: 213
-- Data for Name: tb_m_factors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_factors (factor_id, uuid, factor_nm, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt) FROM stdin;
1	c8895db9-e57d-454f-b70a-9133aa2453e3	Man	SYSTEM	2023-06-01 23:08:02.866866	SYSTEM	2023-06-01 23:08:02.866866	\N	\N
2	431572d0-7942-490f-9d6d-8907c041b0f7	Machine	SYSTEM	2023-06-01 23:08:02.866866	SYSTEM	2023-06-01 23:08:02.866866	\N	\N
3	08019271-85e5-409c-b06e-40a9ac7a3ccf	Material	SYSTEM	2023-06-01 23:08:02.866866	SYSTEM	2023-06-01 23:08:02.866866	\N	\N
4	683d1e2b-8f30-4722-9806-e88962158d7d	Methode	SYSTEM	2023-06-01 23:08:02.866866	SYSTEM	2023-06-01 23:08:02.866866	\N	\N
5	5947f1c7-607d-4ffc-8cc4-e72c921ac1b5	Environtment	SYSTEM	2023-06-01 23:08:02.866866	SYSTEM	2023-06-01 23:08:02.866866	\N	\N
6	af5e0aa2-d7c3-4ff1-9f89-1a6b3c490470	test factor 1	Dita Nurlita	2023-06-24 21:45:26	Dita Nurlita	2023-06-24 21:46:52	Dita Nurlita	2023-06-24 21:46:52
\.


--
-- TOC entry 3873 (class 0 OID 25868)
-- Dependencies: 215
-- Data for Name: tb_m_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_groups (group_id, uuid, group_nm, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt) FROM stdin;
1	e9fd36b0-e4f8-4be7-a7ff-0f85158ce823	NON	SYSTEM	2023-06-01 21:07:35.946731	SYSTEM	2023-06-01 21:07:35.946731	\N	\N
3	cb7e9c37-b39c-49b4-b34d-b0a8f9f462df	WHITE	SYSTEM	2023-06-01 21:07:35.946731	SYSTEM	2023-06-01 21:07:35.946731	\N	\N
2	36ad3451-e2fe-4b50-84b0-2d6ca942ae1e	RED	SYSTEM	2023-06-01 21:07:35.946731	SYSTEM	2023-06-01 21:07:35.946731	\N	\N
4	822ea1d3-174c-42f2-b86b-2bdb50480097	Test 1	Dita Nurlita	2023-06-24 23:45:20	Dita Nurlita	2023-06-24 23:47:28	Dita Nurlita	2023-06-24 23:47:28
\.


--
-- TOC entry 3877 (class 0 OID 25888)
-- Dependencies: 219
-- Data for Name: tb_m_job_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_job_types (job_type_id, uuid, job_type_nm, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt, colors) FROM stdin;
2	880c68aa-35d8-4bda-aefa-95765730bbbe	Type 3	SYSTEM	2023-06-01 21:07:35.984644	SYSTEM	2023-06-01 21:07:35.984644	\N	\N	dark
1	4af65e66-f526-4fd2-86bf-88160c5a94d0	Type 1	SYSTEM	2023-06-01 21:07:35.984644	SYSTEM	2023-06-01 21:07:35.984644	\N	\N	info
3	3c93831f-02b4-4f28-a0c7-07b7f2295ed1	test 1	Fajar Tri Cahyono	2023-06-25 00:16:00	Fajar Tri Cahyono	2023-06-25 00:17:22	Fajar Tri Cahyono	2023-06-25 00:17:22	primary
\.


--
-- TOC entry 3875 (class 0 OID 25877)
-- Dependencies: 217
-- Data for Name: tb_m_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_jobs (job_id, job_type_id, uuid, job_nm, attachment, pos_id, job_no, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt, machine_id) FROM stdin;
51	1	d960d6aa-3546-4bc8-942e-47d241319a6e	Proses MC IMSP-0012	./uploads/sop/1688091013204--49.CH-OP020-LLD-0047-PROSES MC IMSP 0012.pdf	1	CH-OP020-LLD-0047	Dita Nurlita	2023-06-27 15:15:07	Dita Nurlita	2023-06-30 09:10:13	\N	\N	1
48	1	016798e6-fc68-4a09-ac0c-16ed157a598e	Keluarkan work IMSP 0013 & konfirmasi proses	./uploads/sop/1688091054853--46.CH-OP030-LLD-0044-Keluarkan work IMSP 0013 sampai Stock Batasan +konf proses.pdf	1	CH-OP030-LLD-0044	Dita Nurlita	2023-06-27 15:13:15	Dita Nurlita	2023-06-30 09:10:54	\N	\N	1
44	1	08935aea-a3dc-41db-a907-fbf6d9c7c64f	Keluarkan work IMSP 0015 & konfirmasi proses	./uploads/sop/1688091112497--42.CH-OP050-LLD-0040-Keluarkan work IMSP 0015 + Konfirmasi proses.pdf	1	CH-OP050-LLD-0040	Dita Nurlita	2023-06-27 15:11:26	Dita Nurlita	2023-06-30 09:11:52	\N	\N	1
39	1	e671c575-3557-4532-b7d5-2c9c37b7cec4	Keluarkan work IMSP 0016 & konfirmasi proses	./uploads/sop/1688091175390--37.CH-OP060-LLD-0036-Keluarkan work IMSP 0016 + Konfirmasi proses.pdf	1	CH-OP060-LLD-0036	Dita Nurlita	2023-06-27 15:08:13	Dita Nurlita	2023-06-30 09:12:55	\N	\N	1
36	1	261ac10e-fc40-4272-a2be-919bd9027fc2	Proses MC IMSP-0019	./uploads/sop/1688091271756--34.CH-OP090-LLD-0033-PROSES MC IMSP 0019.pdf	1	CH-OP090-LLD-0033	Dita Nurlita	2023-06-27 15:06:35	Dita Nurlita	2023-06-30 09:14:31	\N	\N	1
34	1	3e5c85c8-9435-489d-90c1-9b9dc0d1015b	Proses Back Drop 3B	./uploads/sop/1688091318442--32.CH-OP090-LLD-0031-Proses Back Drop 3B & Dorong ke stock batasan.pdf	1	CH-OP090-LLD-0031	Dita Nurlita	2023-06-27 15:04:59	Dita Nurlita	2023-06-30 09:15:18	\N	\N	1
31	1	50a85d6e-85bc-4bf4-852e-28ed59870592	Proses Back - Droup 4B	./uploads/sop/1688091364111--29.CH-OP100-LLD-0028-Proses Back Drop 4B & Dorong ke stock batasan.pdf	1	CH-OP100-LLD-0028	Dita Nurlita	2023-06-27 15:03:46	Dita Nurlita	2023-06-30 09:16:04	\N	\N	1
28	1	3baea59a-e851-45ac-8376-694b95ada445	Dorong work ke shuter semi finish	./uploads/sop/1688091406628--26.CH-OP110-LLD-0025-Dorong work ke shutter semi finish.pdf	1	CH-OP110-LLD-0025	Dita Nurlita	2023-06-27 15:01:36	Dita Nurlita	2023-06-30 09:16:46	\N	\N	1
25	1	11c17a71-05ad-4abc-98a5-f9e597d0c68b	Proses shutter transfer (dari cell A ke cell B)	./uploads/sop/1688091449415--23.CH-OP110-LLD-0022-Proses shutter tranfer ( dari Cell A ke Cell B ).pdf	1	CH-OP110-LLD-0022	Dita Nurlita	2023-06-27 14:59:07	Dita Nurlita	2023-06-30 09:17:29	\N	\N	1
20	1	0c9c6677-5756-4623-951a-0a2eef7068e6	Proses MC IMSP-0009 + Konfirmasi proses	./uploads/sop/1688091558361--18.CH-OP090-LLD-0017-PROSES MC IMSP 0009 + KONFIRMASI PROSES.pdf	1	CH-OP090-LLD-0017	Dita Nurlita	2023-06-26 16:09:12	Dita Nurlita	2023-06-30 09:19:18	\N	\N	1
16	1	6805fc90-dd50-4df4-800a-8ce68b353c87	Proses MC IMSP-0006 + Konfirmasi proses	./uploads/sop/1688091614503--14.CH-OP060-LLD-0014-PROSES MC IMSP 0006 + KONFIRMASI PROSES.pdf	1	CH-OP060-LLD-0014	Dita Nurlita	2023-06-26 16:06:56	Dita Nurlita	2023-06-30 09:20:14	\N	\N	1
13	1	4879fd51-1571-4459-8216-3a6768614124	Proses MC IMSP-0004 + Konfirmasi proses	./uploads/sop/1688091676039--11.CH-OP040-LLD-0011-PROSES MC IMSP 0004 + KONFIRMASI PROSES.pdf	1	CH-OP040-LLD-0011	Dita Nurlita	2023-06-26 16:05:32	Dita Nurlita	2023-06-30 09:21:16	\N	\N	1
9	1	f9751727-573c-4194-8d87-31cf0d32e9c7	Proses MC IMSP-0001 + Konfirmasi proses	./uploads/sop/1688091736563--7.CH-OP010-LLD-0007-PROSES MC IMSP 0001 + KONFIRMASI PROSES.pdf	1	CH-OP010-LLD-0007	Dita Nurlita	2023-06-26 16:03:13	Dita Nurlita	2023-06-30 09:22:16	\N	\N	1
3	1	383f2355-c48b-4b6e-8099-34d40cd9c024	Proses shutter transfer (untuk cell B)	./uploads/sop/1688091802263--2.CH-OP010-LLD-0002-Proses Shuter Transfer (untuk Cell B).pdf	1	CH-OP010-LLD-0002	Dita Nurlita	2023-06-26 15:32:24	Dita Nurlita	2023-06-30 09:23:22	\N	\N	1
65	2	7f21f89e-ca4a-4eea-b81b-8c2ca5e42535	Pengumpulan dokumen K-Mold	./uploads/sop/1688097708606--27. P7 SOP 27 - Mengumpulkan Dokumen K Mold.pdf	20	Cast RNR - DC Pr - P7 SOP 27	Dita Nurlita	2023-06-30 11:01:48	Dita Nurlita	2023-06-30 11:01:48	\N	\N	\N
66	2	93dd477a-a911-48bf-93b0-a8a0d4dd6f7a	Pengecheckan tool (kikir,master guide,kaliper)	./uploads/sop/1688097744948--28. P7 SOP 28 - Pengecheckan kikir .pdf	20	Cast RNR - DC Pr - P7 SOP 28	Dita Nurlita	2023-06-30 11:02:25	Dita Nurlita	2023-06-30 11:02:25	\N	\N	\N
67	2	61943417-3a51-4d72-a0f3-f39e59202039	Check mesin spectrometer	./uploads/sop/1688097775992--29. P7 SOP 29 - Check mesin Spektro .pdf	20	Cast RNR - DC Pr - P7 SOP 29	Dita Nurlita	2023-06-30 11:02:56	Dita Nurlita	2023-06-30 11:02:56	\N	\N	\N
68	2	dab8a6f6-2fad-4147-9269-7b938190c1f9	Check temperatur ruangan Analysis	./uploads/sop/1688097812202--30. P7 SOP 30 - Check temperatur ruangan Analysis .pdf	20	Cast RNR - DC Pr - P7 SOP 30	Dita Nurlita	2023-06-30 11:03:32	Dita Nurlita	2023-06-30 11:03:32	\N	\N	\N
69	2	e3c1b476-2406-49d9-aaca-a924083cb5e7	Check Gas Argon	./uploads/sop/1688097839263--31. P7 SOP 31 - Check gas Argon .pdf	20	Cast RNR - DC Pr - P7 SOP 31	Dita Nurlita	2023-06-30 11:03:59	Dita Nurlita	2023-06-30 11:03:59	\N	\N	\N
70	2	7e96a9ed-47ce-4c2b-9aa5-6f813769031a	Check Wastafel	./uploads/sop/1688097868109--32. P7 SOP 32 - Check Wastafel .pdf	20	Cast RNR - DC Pr - P7 SOP 32	Dita Nurlita	2023-06-30 11:04:28	Dita Nurlita	2023-06-30 11:04:28	\N	\N	\N
71	2	a4839111-4bcc-4496-a711-f983cc224332	Check Equipment Analysis	./uploads/sop/1688097901776--33. P7 SOP 33 - Check Equipment Analys .pdf	20	Cast RNR - DC Pr - P7 SOP 33	Dita Nurlita	2023-06-30 11:05:01	Dita Nurlita	2023-06-30 11:05:01	\N	\N	\N
72	2	86f2b4c6-6c03-4805-bb86-fbacf8fc12ea	Check pengiriman sample ke Analysis	./uploads/sop/1688097933951--34. P7 SOP 34 - Check pengiriman sample ke Analys.pdf	20	Cast RNR - DC Pr - P7 SOP 34	Dita Nurlita	2023-06-30 11:05:34	Dita Nurlita	2023-06-30 11:05:34	\N	\N	\N
73	2	d3759c19-1c52-4904-9aab-9823e50b6edf	Dandori mesin spectrometer	./uploads/sop/1688098044017--01. P7 SOP 01 - Dandori mesin Spectro meter .pdf	20	Cast RNR - DC Pr - P7 SOP 01	Dita Nurlita	2023-06-30 11:07:24	Dita Nurlita	2023-06-30 11:07:24	\N	\N	\N
74	2	55e17d7b-188b-416a-a5dc-5458a28e631f	Waste discharger	./uploads/sop/1688098097827--02. P7 SOP 02 - Waste Discharge .pdf	20	Cast RNR - DC Pr - P7 SOP 02	Dita Nurlita	2023-06-30 11:08:17	Dita Nurlita	2023-06-30 11:08:17	\N	\N	\N
75	2	917723f4-7bed-478c-a53f-bed8601e5ab7	Proses kalibrasi mesin spectro meter	./uploads/sop/1688098130956--03. P7 SOP 03 - Proses Calibrasi .pdf	20	Cast RNR - DC Pr - P7 SOP 03	Dita Nurlita	2023-06-30 11:08:51	Dita Nurlita	2023-06-30 11:08:51	\N	\N	\N
76	2	1acec48e-6dd3-4c5c-8a48-7fceaefb1bb7	Check lamp test	./uploads/sop/1688098173946--04. P7 SOP 04 - Check Lamp Test .pdf	20	Cast RNR - DC Pr - P7 SOP 04	Dita Nurlita	2023-06-30 11:09:34	Dita Nurlita	2023-06-30 11:09:34	\N	\N	\N
77	2	1ccd3900-a2d3-49ab-81c9-c10288c3d985	Check mesin bubut	./uploads/sop/1688098203277--05. P7 SOP 05 - Check mesin Bubut .pdf	20	Cast RNR - DC Pr - P7 SOP 05	Dita Nurlita	2023-06-30 11:10:03	Dita Nurlita	2023-06-30 11:10:03	\N	\N	\N
2	1	419158ac-4921-479d-a460-77af69fd35f4	Bababab	\N	16	TES	Dita Nurlita	2023-06-26 14:21:11	Dita Nurlita	2023-06-26 14:25:27	Dita Nurlita	2023-06-26 14:25:27	\N
5	1	d7820df6-7c28-47fc-8ea4-9586aef7f229	baba	\N	1	123	Dita Nurlita	2023-06-26 15:55:07	Dita Nurlita	2023-06-26 15:55:25	Dita Nurlita	2023-06-26 15:55:25	1
10	1	290b43f8-41ca-44c7-86a5-024634df2dd0	Proses Back - Droup 1A	./uploads/sop/1688091724403--8.CH-OP010-LLD-0008-PROSES BACK DROP 1A.pdf	1	CH-OP010-LLD-0008	Dita Nurlita	2023-06-26 16:03:55	Dita Nurlita	2023-06-30 09:22:04	\N	\N	3
8	1	63de76f8-222f-4a14-afab-7f63778dd3e6	Proses scann kode QR Work	./uploads/sop/1688091749641--6.CH-OP010-LLD-0006-Proses Scann Kode QR Work.pdf	1	CH-OP010-LLD-0006	Dita Nurlita	2023-06-26 16:02:21	Dita Nurlita	2023-06-30 09:22:29	\N	\N	2
7	1	1525488a-aea8-4f4c-abbf-4bb08e588468	Proses shutter transfer (untuk cell A)	./uploads/sop/1688091762224--5.CH-OP010-LLD-0005-Putar Shuter Transfer ke Cell A.pdf	1	CH-OP010-LLD-0005	Dita Nurlita	2023-06-26 16:01:51	Dita Nurlita	2023-06-30 09:22:42	\N	\N	1
6	1	a394a42d-29b9-4769-ab38-348cf77a5bc8	Ambil work dari shutter raw material 1 pcs	./uploads/sop/1688091777930--4.CH-OP010-LLD-0004-Ambil Work dari Shuter Raw Material 1 Pcs.pdf	1	CH-OP010-LLD-0004	Dita Nurlita	2023-06-26 16:00:38	Dita Nurlita	2023-06-30 09:22:58	\N	\N	1
4	1	fa77ffe0-6560-43cb-873f-50dc9c3450ca	Proses scann kode QR Work	./uploads/sop/1688091789809--3.CH-OP010-LLD-0003-Proses Scann Kode QR Work.pdf	1	CH-OP010-LLD-0003	Dita Nurlita	2023-06-26 15:33:06	Dita Nurlita	2023-06-30 09:23:09	\N	\N	2
55	2	035fc246-5a45-4841-8d06-933876463907	Setting B/C DC#1 pada hanten	./uploads/sop/1688093162913--10.P3-SOP-10 - Setting BC DC1 pada hanten.pdf	18	Cast R-NR DC Pr - P3 - SOP 10	Dita Nurlita	2023-06-30 09:44:12	Dita Nurlita	2023-06-30 09:46:03	\N	\N	\N
78	2	3c868903-05a7-4d98-a993-d2a84953cda8	Bubut sample kanlet	./uploads/sop/1688098242268--06. P7 SOP 06 - Bubut sample kanlet.pdf	20	Cast RNR - DC Pr - P7 SOP 06	Dita Nurlita	2023-06-30 11:10:42	Dita Nurlita	2023-06-30 11:10:42	\N	\N	\N
79	2	27fceb64-32a0-4f9f-8ea9-2019fc7af907	Check komposisi sample kanlet	./uploads/sop/1688098317128--07. P7 SOP 07 - Rev. Check komposisi sample Kanlet .pdf	20	Cast RNR - DC Pr - P7 SOP 07	Dita Nurlita	2023-06-30 11:11:57	Dita Nurlita	2023-06-30 11:11:57	\N	\N	\N
80	2	9818a194-a8ae-49e7-bc5e-ded30d63724e	Check density tamago cup	./uploads/sop/1688098346987--08. P7 SOP-08. Check Density Tamago Cup.pdf	20	Cast RNR - DC Pr - P7 SOP 08	Dita Nurlita	2023-06-30 11:12:27	Dita Nurlita	2023-06-30 11:12:27	\N	\N	\N
81	2	57ef6429-8a12-4a80-b703-aaca35dfcd61	Pematahan K-Mold	./uploads/sop/1688098371423--09. P7 SOP 09 - Pematahan K Mold .pdf	20	Cast RNR - DC Pr - P7 SOP 09	Dita Nurlita	2023-06-30 11:12:51	Dita Nurlita	2023-06-30 11:12:51	\N	\N	\N
82	2	91a05d9a-e56e-41c7-a1cc-b8cb7d6970b2	Menyalakan kaca pembesar	./uploads/sop/1688098400102--10. P7 SOP 10 - Menyalakan kaca pembesar .pdf	20	Cast RNR - DC Pr - P7 SOP 10	Dita Nurlita	2023-06-30 11:13:20	Dita Nurlita	2023-06-30 11:13:20	\N	\N	\N
83	2	48571c16-89c2-4046-aec5-0827df23018b	Check gomi K-Mold	./uploads/sop/1688098432810--11. P7 SOP 11 - Check gomi K Mold.pdf	20	Cast RNR - DC Pr - P7 SOP 11	Dita Nurlita	2023-06-30 11:13:53	Dita Nurlita	2023-06-30 11:13:53	\N	\N	\N
84	2	18d46c61-d036-404b-98c7-0300cb022a70	Check GFN	./uploads/sop/1688098463668--12. P7 SOP 12 - Check GFN .pdf	20	Cast RNR - DC Pr - P7 SOP 12	Dita Nurlita	2023-06-30 11:14:24	Dita Nurlita	2023-06-30 11:14:24	\N	\N	\N
86	2	1dec79f3-cdc8-409b-8a8a-4c0f40fc5cce	Menyalakan mesin Dryer	./uploads/sop/1688098501771--13. P7 SOP 13 - Menyalakan mesin dryer.pdf	20	Cast RNR - DC Pr - P7 SOP 13	Dita Nurlita	2023-06-30 11:15:01	Dita Nurlita	2023-06-30 11:15:01	\N	\N	\N
87	2	f22f764b-f2ec-400f-bac4-eb04b2393035	Menyalakan Hot Stirrer	./uploads/sop/1688098543575--14. P7 SOP 14 - Menyalakan hot strirrer.pdf	20	Cast RNR - DC Pr - P7 SOP 14	Dita Nurlita	2023-06-30 11:15:43	Dita Nurlita	2023-06-30 11:15:43	\N	\N	\N
88	2	608a7cde-8eb4-47a3-9ded-d991ae4eca3b	Menyalakan ultrasonic	./uploads/sop/1688098577870--15. P7 SOP 15 - Menyalakan mesin Ultrasonic.pdf	20	Cast RNR - DC Pr - P7 SOP 15	Dita Nurlita	2023-06-30 11:16:17	Dita Nurlita	2023-06-30 11:16:17	\N	\N	\N
89	2	fc063465-c515-45f4-ab5c-e577f5c35d73	Cara penggunaan PH meter	./uploads/sop/1688098603358--16. P7 SOP 16 - Penggunaan PH meter .pdf	20	Cast RNR - DC Pr - P7 SOP 16	Dita Nurlita	2023-06-30 11:16:43	Dita Nurlita	2023-06-30 11:16:43	\N	\N	\N
90	2	54ad42ed-1d5f-4a8c-849e-6fd3ab4fde90	Check natrium type -1 (HCL =20 ml)	./uploads/sop/1688098642408--17. P7 SOP 17 - Check Natrium Type 1 .pdf	20	Cast RNR - DC Pr - P7 SOP 17	Dita Nurlita	2023-06-30 11:17:22	Dita Nurlita	2023-06-30 11:17:22	\N	\N	\N
91	2	d8bbea5e-e8e5-4a46-a674-a28b1b4a6011	Check natrium type -2(HCL=10ml)	./uploads/sop/1688098675001--18. P7 SOP 18 - Check Natrium type 2 .pdf	20	Cast RNR - DC Pr - P7 SOP 18	Dita Nurlita	2023-06-30 11:17:55	Dita Nurlita	2023-06-30 11:17:55	\N	\N	\N
92	2	a8ef9cef-23a7-4fd1-8442-3ddbccc7f93a	Cleaning alat alat lab	./uploads/sop/1688098704530--19. P7 SOP 19 - Cleaning alat - alat lab .pdf	20	Cast RNR - DC Pr - P7 SOP 19	Dita Nurlita	2023-06-30 11:18:24	Dita Nurlita	2023-06-30 11:18:24	\N	\N	\N
93	2	de440d7a-e719-48df-9693-5b935193865c	Pembuangan limbah cair	\N	20	Cast RNR - DC Pr - P7 SOP 20	Dita Nurlita	2023-06-30 11:19:21	Dita Nurlita	2023-06-30 11:19:21	\N	\N	\N
94	2	af31bfd5-642b-460b-bdf4-18fa72203c04	Inspeksi kualitas  secara random	\N	20	Cast RNR - DC Pr - P7 SOP 21	Dita Nurlita	2023-06-30 11:19:41	Dita Nurlita	2023-06-30 11:19:41	\N	\N	\N
95	2	f70123db-17c7-48e5-a5d7-0923998b5ea9	Check barang pertama	\N	20	Cast RNR - DC Pr - P7 SOP 22	Dita Nurlita	2023-06-30 11:20:08	Dita Nurlita	2023-06-30 11:20:20	\N	\N	\N
96	2	696a7162-c21d-4940-9328-3d0a43db5f8e	Check ingot suplier	\N	20	Cast RNR - DC Pr - P7 SOP 23	Dita Nurlita	2023-06-30 11:20:47	Dita Nurlita	2023-06-30 11:20:47	\N	\N	\N
98	2	40eaefad-c79e-46f2-b2f0-2086ca81078a	Pengisian rak sample	./uploads/sop/1688099036978--24. P7 SOP 24 - Pengisian rak sample .pdf	20	Cast RNR - DC Pr - P7 SOP 24	Dita Nurlita	2023-06-30 11:23:57	Dita Nurlita	2023-06-30 11:23:57	\N	\N	\N
99	2	878f4ae0-fc2c-4eb4-b879-fd2c417de460	Pembuangan eks sample	./uploads/sop/1688099065001--25. P7 SOP 25 - Pembuangan Eks Sample .pdf	20	Cast RNR - DC Pr - P7 SOP 25	Dita Nurlita	2023-06-30 11:24:25	Dita Nurlita	2023-06-30 11:24:25	\N	\N	\N
100	2	6655437c-8ef3-4332-8de6-0e19515ca318	Pengumpulan dokumen kanlet	./uploads/sop/1688099093959--26. P7 SOP-26 -  Mengumpulkan dokumen Kanlet.pdf	20	Cast RNR - DC Pr - P1 SOP 26	Dita Nurlita	2023-06-30 11:24:54	Dita Nurlita	2023-06-30 11:24:54	\N	\N	\N
85	2	d6a086a3-91e4-47b1-9389-2dc70de5f386	Check GFN	./uploads/sop/1688098463681--12. P7 SOP 12 - Check GFN .pdf	20	Cast RNR - DC Pr - P7 SOP 12	Dita Nurlita	2023-06-30 11:14:24	Dita Nurlita	2023-06-30 11:25:14	Dita Nurlita	2023-06-30 11:25:14	\N
97	2	be7c7486-9877-4923-90f5-29c12667e7ff	Pengisian rak sample	./uploads/sop/1688099036977--24. P7 SOP 24 - Pengisian rak sample .pdf	20	Cast RNR - DC Pr - P7 SOP 24	Dita Nurlita	2023-06-30 11:23:57	Dita Nurlita	2023-06-30 11:25:48	Dita Nurlita	2023-06-30 11:25:48	\N
17	1	0badad46-a991-4b51-9acb-7972b53c4971	Check Injector Hole dengan mirror (4 hole)	\N	1	CH-OP060-LLD-0260	Dita Nurlita	2023-06-26 16:07:36	Dita Nurlita	2023-06-26 16:07:36	\N	\N	1
40	1	9c5b9fcd-2b6f-4c6a-9c38-c142a199ab62	Check Injector Hole dengan mirror (4 hole)	\N	1	CH-OP060-LLD-0261	Dita Nurlita	2023-06-27 15:08:54	Dita Nurlita	2023-06-27 15:08:54	\N	\N	1
50	1	7307366f-e9b2-43b9-bfe5-365bc9d205d9	Proses MC IMSP-0013	./uploads/sop/1688091028259--48.CH-OP030-LLD-0046-PROSES MC IMSP 0013.pdf	1	CH-OP030-LLD-0046	Dita Nurlita	2023-06-27 15:14:49	Dita Nurlita	2023-06-30 09:10:28	\N	\N	1
47	1	e3ed6279-b6dc-491c-8761-15181ff9a0c9	Proses MC IMSP-0014	./uploads/sop/1688091070303--45.CH-OP040-LLD-0043-PROSES MC IMSP 0014.pdf	1	CH-OP040-LLD-0043	Dita Nurlita	2023-06-27 15:12:31	Dita Nurlita	2023-06-30 09:11:10	\N	\N	1
46	1	f3476e81-92e0-411d-9e4e-61d73d93dca2	Proses MC IMSP-0015	./uploads/sop/1688091085387--44.CH-OP050-LLD-0042-PROSES MC IMSP 0015.pdf	1	CH-OP050-LLD-0042	Dita Nurlita	2023-06-27 15:12:09	Dita Nurlita	2023-06-30 09:11:25	\N	\N	1
45	1	22086aba-afb8-419e-9efe-d5636b81765f	Keluarkan work IMSP 0014 & konfirmasi proses	./uploads/sop/1688091097743--43.CH-OP040-LLD-0041-Keluarkan work IMSP 0014 + Konfirmasi proses.pdf	1	CH-OP040-LLD-0041	Dita Nurlita	2023-06-27 15:11:49	Dita Nurlita	2023-06-30 09:11:37	\N	\N	1
43	1	6fee858e-7fa4-4cb4-a471-cde869cbddc9	Proses Back - Droup 2B 	./uploads/sop/1688091127277--41.CH-OP050-LLD-0039-Proses Back Drop B2.pdf	1	CH-OP050-LLD-0039	Dita Nurlita	2023-06-27 15:10:28	Dita Nurlita	2023-06-30 09:12:07	\N	\N	1
42	1	f2886c43-2b6b-474f-9cda-1407f8f3e9ef	Proses MC IMSP-0016	./uploads/sop/1688091138952--40.CH-OP060-LLD-0038-PROSES MC IMSP 0016.pdf	1	CH-OP060-LLD-0038	Dita Nurlita	2023-06-27 15:09:55	Dita Nurlita	2023-06-30 09:12:19	\N	\N	1
41	1	58e6fe29-23b6-4207-bfb0-4e750bc1b9c5	Proses MC IMSP-0017	./uploads/sop/1688091153454--39.CH-OP070-LLD-0037-PROSES MC IMSP 0017.pdf	1	CH-OP070-LLD-0037	Dita Nurlita	2023-06-27 15:09:17	Dita Nurlita	2023-06-30 09:12:33	\N	\N	1
38	1	0f6a360f-78fb-4fdd-bbf6-808b19e53679	Proses MC IMSP-0018	./uploads/sop/1688091232606--36.CH-OP080-LLD-0035-PROSES MC IMSP 0018.pdf	1	CH-OP080-LLD-0035	Dita Nurlita	2023-06-27 15:07:50	Dita Nurlita	2023-06-30 09:13:52	\N	\N	1
37	1	4d5da9fc-02a5-40e4-aad2-1d80f5b6d5d2	Keluarkan work IMSP 0017 & konfirmasi proses	./uploads/sop/1688091247143--35.CH-OP070-LLD-0034-Keluarkan work IMSP 0017 + Konfirmasi proses.pdf	1	CH-OP070-LLD-0034	Dita Nurlita	2023-06-27 15:07:01	Dita Nurlita	2023-06-30 09:14:07	\N	\N	1
35	1	d39e46ff-e908-4223-8211-a6d406f00e0f	Keluarkan work IMSP 0018 & konfirmasi proses	./uploads/sop/1688091303501--33.CH-OP080-LLD-0032-Keluarkan work IMSP 0018 + Konfirmasi proses.pdf	1	CH-OP080-LLD-0032	Dita Nurlita	2023-06-27 15:05:27	Dita Nurlita	2023-06-30 09:15:03	\N	\N	1
33	1	8461a3db-4488-43cd-95f9-0d22d4502254	Keluarkan work IMSP 0019 & konfirmasi proses	./uploads/sop/1688091334414--31.CH-OP090-LLD-0030-Keluarkan work IMSP 0019 +Konfirmasi proses.pdf	1	CH-OP090-LLD-0030	Dita Nurlita	2023-06-27 15:04:39	Dita Nurlita	2023-06-30 09:15:34	\N	\N	1
32	1	ff7afc7e-346f-43b6-b289-caeaa7b3a430	Proses MC IMSP-0020 	./uploads/sop/1688091348339--30.CH-OP100-LLD-0029-PROSES MC IMSP 0020.pdf	1	CH-OP100-LLD-0029	Dita Nurlita	2023-06-27 15:04:08	Dita Nurlita	2023-06-30 09:15:48	\N	\N	1
30	1	317b7512-72a7-463d-bc3f-7871a8432cf9	Keluarkan work IMSP 0020 & konfirmasi proses	./uploads/sop/1688091379063--28.CH-OP100-LLD-0027-Keluarkan work IMSP 0020 + Konfirmasi proses.pdf	1	CH-OP100-LLD-0027	Dita Nurlita	2023-06-27 15:03:14	Dita Nurlita	2023-06-30 09:16:19	\N	\N	1
29	1	4cb5fa44-7ce8-4c6a-b9cc-384d08aab4fc	Proses MC IMWB-0002	./uploads/sop/1688091393681--27.CH-OP110-LLD-0026-PROSES MC IMWB-0002.pdf	1	CH-OP110-LLD-0026	Dita Nurlita	2023-06-27 15:02:06	Dita Nurlita	2023-06-30 09:16:33	\N	\N	1
27	1	6fee27b1-1dcb-4b75-a790-f2e5bf5ae49d	Keluarkan work IMWB 002 & konfirmasi proses	./uploads/sop/1688091420248--25.CH-OP110-LLD-0024-KELUARKAN WORK IMWB 0002 + KONFIRMASI PROSES.pdf	1	CH-OP110-LLD-0024	Dita Nurlita	2023-06-27 15:00:50	Dita Nurlita	2023-06-30 09:17:00	\N	\N	1
26	1	3b34be41-ec82-451d-ba8f-9c4dea45b15d	Dorong work dari shuter transfer ke shuter semi finish	./uploads/sop/1688091433726--24.CH-OP110-LLD-0023-Dorong work dari shutter transfer ke shutter semi finish.pdf	1	CH-OP110-LLD-0023	Dita Nurlita	2023-06-27 15:00:11	Dita Nurlita	2023-06-30 09:17:13	\N	\N	1
24	1	85d8a2cf-e83c-4e5e-b037-08107265d99d	Proses MC IMWB-0001 + Konfirmasi proses	./uploads/sop/1688091468896--22.CH-OP110-LLD-0021-PROSES MC IMWB 0001 + KONFIRMASI PROSES.pdf	1	CH-OP110-LLD-0021	Dita Nurlita	2023-06-27 14:58:13	Dita Nurlita	2023-06-30 09:17:48	\N	\N	1
23	1	dec0c667-ad06-4ade-825b-edd9460e4505	Proses Back - Droup 4A	./uploads/sop/1688091487112--21.CH-OP100-LLD-0020-Proses back drop 4A.pdf	1	CH-OP100-LLD-0020	Dita Nurlita	2023-06-27 14:57:45	Dita Nurlita	2023-06-30 09:18:07	\N	\N	1
21	1	ceb049b8-90d8-4b9f-b793-05282cdfde46	Proses Back - Droup 3A	./uploads/sop/1688091544003--19.CH-OP090-LLD-0018-Proses back drop A3.pdf	1	CH-OP090-LLD-0018	Dita Nurlita	2023-06-26 16:09:50	Dita Nurlita	2023-06-30 09:19:04	\N	\N	1
19	1	20fee905-9e2e-4a46-8075-793c6da2f4d8	Proses MC IMSP-0008 + Konfirmasi proses	./uploads/sop/1688091572949--17.CH-OP080-LLD-0016-PROSES MC IMSP 0008 + KONFIRMASI PROSES.pdf	1	CH-OP080-LLD-0016	Dita Nurlita	2023-06-26 16:08:33	Dita Nurlita	2023-06-30 09:19:33	\N	\N	1
18	1	27c22fa9-853c-4bfd-bfab-c48493d0ad7e	Proses MC IMSP-0007 + Konfirmasi proses	./uploads/sop/1688091591852--16.CH-OP070-LLD-0015-PROSES MC IMSP 0007 + KONFIRMASI PROSES.pdf	1	CH-OP070-LLD-0015	Dita Nurlita	2023-06-26 16:08:00	Dita Nurlita	2023-06-30 09:19:51	\N	\N	1
14	1	22a4eaf0-ca6a-431a-a7f4-869baf4412aa	Proses MC IMSP-0005 + Konfirmasi proses	./uploads/sop/1688091662620--12.CH-OP050-LLD-0012-PROSES MC IMSP 0005 + KONFIRMASI PROSES.pdf	1	CH-OP050-LLD-0012	Dita Nurlita	2023-06-26 16:06:02	Dita Nurlita	2023-06-30 09:21:02	\N	\N	1
15	1	8967eed1-329a-4973-b418-96fe89d4e5b9	Proses Back - Droup 2A	./uploads/sop/1688091647590--13.CH-OP050-LLD-0013-Proses back drop A2.pdf	1	CH-OP050-LLD-0013	Dita Nurlita	2023-06-26 16:06:29	Dita Nurlita	2023-06-30 09:20:47	\N	\N	1
12	1	8d5d9be9-2038-4e1b-9cc1-54e0e94819da	Proses MC IMSP-0003 + Konfirmasi proses	./uploads/sop/1688091690439--10.CH-OP030-LLD-0010-PROSES MC IMSP 0003 + KONFIRMASI PROSES.pdf	1	CH-OP030-LLD-0010	Dita Nurlita	2023-06-26 16:04:56	Dita Nurlita	2023-06-30 09:21:30	\N	\N	1
11	1	f8d5543d-3c10-4b0c-8312-bf8cfa673b70	Proses MC IMSP-0002 + Konfirmasi proses	./uploads/sop/1688091705806--9.CH-OP020-LLD-0009-PROSES MC IMSP 0002 + KONFIRMASI PROSES.pdf	1	CH-OP020-LLD-0009	Dita Nurlita	2023-06-26 16:04:25	Dita Nurlita	2023-06-30 09:21:45	\N	\N	1
1	1	3222e622-4f63-4319-b8ee-d5468a98b68d	Ambil Work dari Shuter Raw Material 1 Pcs	./uploads/sop/1688091812859--1.CH-OP010-LLD-0001  -Ambil Work dari Shuter input rough parallel.pdf	1	CH-OP010-LLD-0001	SYSTEM	2023-06-03 14:56:51.992733	Dita Nurlita	2023-06-30 09:23:33	\N	\N	1
54	1	4ada8774-d5e3-4aa1-9694-c1a8f61ac778	Proses MC IMSP-0011	./uploads/sop/1688090869000--52.CH-OP010-LLD-0050-PROSES MC IMSP 0011.pdf	1	CH-OP010-LLD-0050	Dita Nurlita	2023-06-27 15:16:17	Dita Nurlita	2023-06-30 09:07:49	\N	\N	1
53	1	43c2cf6a-e55a-4512-a3c0-d990d40065e9	Proses Back - Droup 1B	./uploads/sop/1688090954688--51.CH-OP010-LLD-0049-Proses Back Drop 1B dan dorong ke stock batasan.pdf	1	CH-OP010-LLD-0049	Dita Nurlita	2023-06-27 15:15:46	Dita Nurlita	2023-06-30 09:09:14	\N	\N	1
52	1	8c0ff063-6924-44d9-9e40-a17ad16172e3	Keluarkan work IMSP 0011 & konfirmasi proses	./uploads/sop/1688090972215--50.CH-OP010-LLD-0048-Keluarkan work IMSP 0011 + Konfirmasi proses.pdf	1	CH-OP010-LLD-0048	Dita Nurlita	2023-06-27 15:15:26	Dita Nurlita	2023-06-30 09:09:32	\N	\N	1
49	1	d19cb4ed-bd20-4311-9c6b-9a0bf4e06be0	Keluarkan work IMSP 0012 & konfirmasi proses	./uploads/sop/1688091041996--47.CH-OP020-LLD-0045-Keluarkan work IMSP 0012 + Konfirmasi proses.pdf	1	CH-OP020-LLD-0045	Dita Nurlita	2023-06-27 15:14:08	Dita Nurlita	2023-06-30 09:10:42	\N	\N	1
22	1	a4c65fa3-b59a-4d42-a449-0e1317ce9baf	Proses MC IMSP-0010 + Konfirmasi proses	./uploads/sop/1688091503413--20.CH-OP100-LLD-0019-PROSES MC IMSP 0010 + KONFIRMASI PROSES.pdf	1	CH-OP100-LLD-0019	Dita Nurlita	2023-06-26 16:10:42	Dita Nurlita	2023-06-30 09:18:23	\N	\N	1
56	2	c2b57bfc-c705-4e9b-b89d-f1b4d11cf8d1	Check deffect B/C DC#1 pada hanten	./uploads/sop/1688093473982--11.P3-SOP-11 - Check deffect BC DC1 pada hanten.pdf	18	 Cast R-NR DC Pr - P3 - SOP 11	Dita Nurlita	2023-06-30 09:51:14	Dita Nurlita	2023-06-30 09:51:14	\N	\N	\N
57	2	26e28d3e-6194-4cf7-8b88-f15ef794fd58	Input hasil check B/C DC#1 pada inspection mesin	./uploads/sop/1688093533165--12.P3-SOP-12 - Input hasil check BC DC#1 pada Inspection MC.xlsx.pdf	18	Cast R-NR DC Pr - P3 - SOP 12	Dita Nurlita	2023-06-30 09:52:13	Dita Nurlita	2023-06-30 09:52:13	\N	\N	\N
58	2	7808809f-872d-47eb-b579-23f7728ca034	Buka clamp dan marking B/C DC#1	./uploads/sop/1688093573056--13.P3-SOP-13 - Buka Clamp & Marking BC DC1.pdf	18	Cast R-NR DC Pr - P3 - SOP 13	Dita Nurlita	2023-06-30 09:52:53	Dita Nurlita	2023-06-30 09:52:53	\N	\N	\N
59	2	be44de02-c6aa-45f8-86cf-0f74efced790	Dorong B/C DC#1 ke lifter output	./uploads/sop/1688093655781--14.P3-SOP-14 - Dorong BC ke lifter out put.pdf	18	 Cast R-NR DC Pr - P3 - SOP 14	Dita Nurlita	2023-06-30 09:54:15	Dita Nurlita	2023-06-30 09:54:15	\N	\N	\N
60	2	03079a95-63e6-480a-b24b-44a066b51b20	Setting B/C DC#2 pada hanten	./uploads/sop/1688093710979--15.P3-SOP-15 - Setting BC DC2 pada hanten.pdf	18	Cast R-NR DC Pr - P3 - SOP 15	Dita Nurlita	2023-06-30 09:55:11	Dita Nurlita	2023-06-30 09:55:11	\N	\N	\N
61	2	8c3e512c-74d7-4a70-a245-4239741d94c0	Check deffect B/C DC#2 pada hanten	./uploads/sop/1688093808256--16.P3-SOP-16 - Check deffect BC DC2 pada hanten.pdf	18	 Cast R-NR DC Pr - P3 - SOP 16	Dita Nurlita	2023-06-30 09:56:48	Dita Nurlita	2023-06-30 09:56:48	\N	\N	\N
62	2	160abf68-85b9-4def-b62a-546dc79cf6a5	Input hasil check B/C DC#2 pada inspection mesin	./uploads/sop/1688093844592--17.P3-SOP-17 - Input hasil check BC DC2 pada Inspection MC.pdf	18	Cast R-NR DC Pr - P3 - SOP 17	Dita Nurlita	2023-06-30 09:57:24	Dita Nurlita	2023-06-30 09:57:24	\N	\N	\N
63	2	8d485486-0f6e-44ab-b00f-9b23a3729f48	Buka clamp dan marking B/C DC#2	./uploads/sop/1688093887181--18.P3-SOP-18 - Buka Clamp & Marking BC DC2.pdf	18	Cast R-NR DC Pr - P3 - SOP 18	Dita Nurlita	2023-06-30 09:58:07	Dita Nurlita	2023-06-30 09:58:07	\N	\N	\N
64	2	0ebdea26-24a7-4beb-9c16-f5f3af51699a	Dorong B/C DC#2 ke lifter output	./uploads/sop/1688093926526--19.P3-SOP-19 - Dorong BC ke lifter out put.pdf	18	Cast R-NR DC Pr - P3 - SOP 19	Dita Nurlita	2023-06-30 09:58:46	Dita Nurlita	2023-06-30 09:58:46	\N	\N	\N
\.


--
-- TOC entry 3879 (class 0 OID 25899)
-- Dependencies: 221
-- Data for Name: tb_m_judgments; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_judgments (judgment_id, uuid, judgment_nm, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt, is_abnormal) FROM stdin;
1	c4f5ff30-1b95-4ad8-8af8-e3e9d90bd942	OK	SYSTEM	2023-06-03 22:52:52.752421	SYSTEM	2023-06-03 22:52:52.752421	\N	\N	f
2	2e247c66-3e9c-44b6-951a-0a26791ad37d	NG	SYSTEM	2023-06-03 22:53:03.531202	SYSTEM	2023-06-03 22:53:03.531202	\N	\N	t
3	dcb12fa6-0d1e-4d29-ab3d-7576c863ed2e	test	Dita Nurlita	2023-06-24 21:51:25	Dita Nurlita	2023-06-24 21:52:56	Dita Nurlita	2023-06-24 21:52:56	f
\.


--
-- TOC entry 3881 (class 0 OID 25908)
-- Dependencies: 223
-- Data for Name: tb_m_lines; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_lines (line_id, uuid, line_nm, line_desc, shop_id, line_snm, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt) FROM stdin;
1	fd85482c-9e54-4832-96c8-321f574e8536	Cylinder Head	Machining Cylinder Head	2	CH	SYSTEM	2023-06-01 21:07:36.141894	SYSTEM	2023-06-01 21:07:36.141894	\N	\N
2	74e48531-9896-4844-a3a5-4c5a9e6245a3	Cylinder Block	Machining Cylinder Block	2	CB	SYSTEM	2023-06-17 21:50:42.359251	SYSTEM	2023-06-17 21:50:42.359251	\N	\N
4	4a411c19-700d-4e1f-aa23-2e49df60e12e	Die Casting	Casting DC	1	DC	SYSTEM	2023-06-26 13:33:59.287798	SYSTEM	2023-06-26 13:33:59.287798	\N	\N
5	882eaf19-d355-4f62-918d-00cec01cd639	Low Pressure	Casting LP	1	LP	SYSTEM	2023-06-26 13:34:37.861874	SYSTEM	2023-06-26 13:34:37.861874	\N	\N
8	dafff880-4ffe-4045-af5b-042d8c87ca85	Main Line	Assy Main Line	3	Main Line	SYSTEM	2023-06-26 13:37:03.875148	SYSTEM	2023-06-26 13:37:03.875148	\N	\N
6	73a281a9-8923-48d3-a80e-e62ed61d89b7	Crank Shaft	Machining Crank Shaft	2	CR	SYSTEM	2023-06-26 13:35:10.115539	SYSTEM	2023-06-26 13:35:10.115539	\N	\N
7	90e91914-9219-460d-8aa7-3027d2b3debf	Cam Shaft	Machining Cam Shaft	2	Cam	SYSTEM	2023-06-26 13:36:02.299277	SYSTEM	2023-06-26 13:36:02.299277	\N	\N
9	10de7980-bd6e-4d62-939d-102b3ad59456	Sub Line	Assy Sub Line	3	Sub Line	SYSTEM	2023-06-26 13:37:55.642882	SYSTEM	2023-06-26 13:37:55.642882	\N	\N
10	445f33ad-6a9b-419e-ae03-05ae0609c0cc	TES1	TESs	1	TEs	Dita Nurlita	2023-06-28 22:29:56	Dita Nurlita	2023-06-28 22:40:21	Dita Nurlita	2023-06-28 22:40:21
\.


--
-- TOC entry 3883 (class 0 OID 25919)
-- Dependencies: 225
-- Data for Name: tb_m_machines; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_machines (machine_id, line_id, uuid, machine_nm, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt, op_no) FROM stdin;
1	1	23713120-6e40-4232-905a-3979cf030c2f	Manual	SYSTEM	2023-06-03 15:09:23.870098	SYSTEM	2023-06-03 15:09:23.870098	\N	\N	OP10
2	1	1dc5b32d-aafd-45b7-9757-668eff1a16b6	Scan	SYSTEM	2023-06-03 15:10:13.374786	SYSTEM	2023-06-03 15:10:13.374786	\N	\N	OP10
3	1	5157ee53-cb75-45d8-9bfe-c1657d37523c	Back drop 1A	SYSTEM	2023-06-03 15:10:13.374786	SYSTEM	2023-06-03 15:10:13.374786	\N	\N	OP10
4	1	57788182-40ab-40d3-8c3b-9c09f2946495	1eee	Dita Nurlita	2023-06-28 22:55:38	Dita Nurlita	2023-06-28 22:59:44	Dita Nurlita	2023-06-28 22:59:44	e1ee
\.


--
-- TOC entry 3885 (class 0 OID 25930)
-- Dependencies: 227
-- Data for Name: tb_m_plants; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_plants (plant_id, company_id, uuid, plant_nm, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt) FROM stdin;
1	1	f61cac7e-b122-4fb5-b0e3-81ec17753d54	Engine Plant#3 Karawang	SYSTEM	2023-06-01 21:07:36.252317	SYSTEM	2023-06-01 21:07:36.252317	\N	\N
2	2	6447011d-53eb-4cf4-998a-e6d16ab6935b	testing plant 1	Dita Nurlita	2023-06-24 22:07:12	Dita Nurlita	2023-06-24 22:09:02	Dita Nurlita	2023-06-24 22:09:02
\.


--
-- TOC entry 3887 (class 0 OID 25939)
-- Dependencies: 229
-- Data for Name: tb_m_pos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_pos (pos_id, line_id, uuid, pos_nm, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt, tsk, tskk) FROM stdin;
3	1	2f165c06-0f40-42e8-a18c-d69d319fe95d	Pos 3	SYSTEM	2023-06-01 22:49:18.931722	Dita Nurlita	2023-06-27 15:52:48	\N	\N	\N	\N
4	1	574cf12d-9849-4d9f-ace8-1d1ecd347c2a	Pos 4	SYSTEM	2023-06-01 22:49:18.931722	Dita Nurlita	2023-06-27 15:52:58	\N	\N	\N	\N
5	1	f1dae682-43c8-4a1c-9334-ffb2f30221dd	Pos 5	SYSTEM	2023-06-01 22:49:18.931722	Dita Nurlita	2023-06-27 15:53:09	\N	\N	\N	\N
6	1	c7f77986-eded-4672-95bd-e07b217d0967	Pos 6	SYSTEM	2023-06-01 22:49:18.931722	Dita Nurlita	2023-06-27 15:53:18	\N	\N	\N	\N
7	1	7558a7b6-6c75-440b-b70e-702a3ba805bd	Pos 7	SYSTEM	2023-06-01 22:49:18.931722	Dita Nurlita	2023-06-27 15:53:27	\N	\N	\N	\N
15	1	23a8af68-e296-4411-9372-e2e3d4eda48f	tes	Fajar Tri Cahyono	2023-06-18 17:52:38	Fajar Tri Cahyono	2023-06-25 00:18:56	Fajar Tri Cahyono	2023-06-25 00:18:56	\N	\N
14	2	ac21bb78-936d-4077-84ea-67e75be11e45	tes 3	Fajar Tri Cahyono	2023-06-18 01:11:43	1629083	2023-06-18 02:15:15	Fajar Tri Cahyono	2023-06-18 02:15:15	\N	\N
12	2	2e9c8153-aa52-4b2a-a6ab-d4343856cfb3	test	Dita Nurlita	2023-06-18 01:02:38	1629083	2023-06-18 02:15:23	Fajar Tri Cahyono	2023-06-18 02:15:23	\N	\N
13	2	f13286d7-7fd5-462c-a169-6714a4a9a80a	test 30	Fajar Tri Cahyono	2023-06-18 01:09:25	1527511	2023-06-18 02:07:33	Dita Nurlita	2023-06-18 02:07:33	\N	\N
11	1	2749bd77-0f5c-4eaa-97c2-0d56fef0afaa	Pos 11	SYSTEM	2023-06-01 23:19:37.280114	Fajar Tri Cahyono	2023-06-26 13:29:28	Fajar Tri Cahyono	2023-06-26 13:29:28	\N	\N
10	1	adffaed4-961d-4808-9c8a-1f2379190f78	Pos 10	SYSTEM	2023-06-01 23:19:37.280114	Fajar Tri Cahyono	2023-06-26 13:29:31	Fajar Tri Cahyono	2023-06-26 13:29:31	\N	\N
9	1	5a91fe32-cca2-4ed6-9b77-aa2bf649f21e	Pos 9	SYSTEM	2023-06-01 23:19:37.280114	Fajar Tri Cahyono	2023-06-26 13:29:34	Fajar Tri Cahyono	2023-06-26 13:29:34	\N	\N
8	1	7064ed08-4b8b-4ad4-a6e8-c1bca8a38154	Pos 8	SYSTEM	2023-06-01 23:19:37.280114	Fajar Tri Cahyono	2023-06-26 13:29:37	Fajar Tri Cahyono	2023-06-26 13:29:37	\N	\N
16	4	7a7c2b60-e646-4be3-8510-422a9a765b41	POS 1	Fajar Tri Cahyono	2023-06-26 13:47:56	Fajar Tri Cahyono	2023-06-26 13:47:56	\N	\N	\N	\N
17	9	4ae8e511-97eb-4cd9-a1da-c60e8890c8b2	POS 1	Fajar Tri Cahyono	2023-06-26 13:48:11	Dita Nurlita	2023-06-26 13:51:42	Dita Nurlita	2023-06-26 13:51:42	\N	\N
18	4	5e328df8-e1dd-44c3-8e5e-8e708ed9a7cb	POS 3	Dita Nurlita	2023-06-26 13:52:17	Dita Nurlita	2023-06-26 13:52:17	\N	\N	\N	\N
19	4	27440cf9-a749-4f33-9bd4-61564f29cbcb	POS 4	Dita Nurlita	2023-06-26 13:52:34	Dita Nurlita	2023-06-26 13:52:34	\N	\N	\N	\N
20	4	a82ed128-bfba-43b4-9ac2-0057ba8cf46f	POS 7	Dita Nurlita	2023-06-26 13:53:18	Dita Nurlita	2023-06-26 13:53:18	\N	\N	\N	\N
21	4	abfed6a7-baa5-460a-a41f-22ec744c5249	POS 9	Dita Nurlita	2023-06-26 13:53:37	Dita Nurlita	2023-06-26 13:53:37	\N	\N	\N	\N
1	1	91808253-13a0-44ab-978d-7c38a6630b63	Pos 1	SYSTEM	2023-06-01 22:49:18.931722	Dita Nurlita	2023-06-27 15:52:22	\N	\N	\N	\N
2	1	91eb45f5-a71d-4796-bb28-b70a09b804ae	Pos 2	SYSTEM	2023-06-01 22:49:18.931722	Dita Nurlita	2023-06-27 15:52:36	\N	\N	\N	\N
\.


--
-- TOC entry 3889 (class 0 OID 25948)
-- Dependencies: 231
-- Data for Name: tb_m_shop; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_shop (shop_id, uuid, plant_id, shop_nm, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt) FROM stdin;
3	f371d51c-729f-46b8-b1c1-dafd520380fb	1	Assembly	SYSTEM	2023-06-01 21:07:36.390082	SYSTEM	2023-06-01 21:07:36.390082	\N	\N
2	a5a404f9-2d1e-42fe-aefb-a60eaabd6402	1	Machining	SYSTEM	2023-06-01 21:07:36.390082	SYSTEM	2023-06-01 21:07:36.390082	\N	\N
1	5070e98a-acbb-4f1b-8075-0abe681c53ba	1	Casting	SYSTEM	2023-06-01 21:07:36.390082	SYSTEM	2023-06-01 21:07:36.390082	\N	\N
4	6d69f66e-8264-4b38-bad7-5b54a87131ba	2	testing shop 1	Dita Nurlita	2023-06-24 22:19:14	Dita Nurlita	2023-06-24 22:21:02	Dita Nurlita	2023-06-24 22:21:02
5	f368e812-ea80-4eef-8a89-e9dd3c815d75	1	TESS12	Dita Nurlita	2023-06-28 22:07:34	Dita Nurlita	2023-06-28 22:13:25	Dita Nurlita	2023-06-28 22:13:25
\.


--
-- TOC entry 3891 (class 0 OID 25959)
-- Dependencies: 233
-- Data for Name: tb_m_tsk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_tsk (tsk_id, uuid, attachment, pos_id, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt) FROM stdin;
\.


--
-- TOC entry 3893 (class 0 OID 25970)
-- Dependencies: 235
-- Data for Name: tb_m_tskk; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_tskk (tskk_id, pos_id, uuid, attachment, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt) FROM stdin;
\.


--
-- TOC entry 3895 (class 0 OID 25981)
-- Dependencies: 237
-- Data for Name: tb_m_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_m_users (user_id, uuid, fullname, noreg, phone_number, created_dt, created_by, changed_dt, changed_by, deleted_dt, deleted_by, group_id, password, line_id, is_activated) FROM stdin;
2	5ffa52fe-68c1-4f99-8a14-7e6c1038b086	Dita Nurlita	1527511	081385678582	2023-06-01 23:21:06.82027	SYSTEM	2023-06-01 23:21:06.82027	SYSTEM	\N	\N	1	$2a$10$NgxL7OjQT0xvDrhCmqMAL.lgLeGwUw6238MBVkfeocEJismxWF/O6	1	t
1	f2247616-8a40-4c0f-bbd2-33b059e834ad	Fajar Tri Cahyono	1629083	08123	2023-06-01 22:40:47.509444	SYSTEM	2023-06-24 22:45:09	Dita Nurlita	\N	\N	1	$2a$10$dhGJsQqe2JGk6sfxDpjC.O34zHKeiAOs3mr8j8idhdwSFBmLkECzK	1	t
3	d0b474be-fbce-4c5c-b00d-350731cf7978	Tes white	1234561	081253313	2023-06-28 21:10:11	Dita Nurlita	2023-06-28 21:37:39	Dita Nurlita	2023-06-28 21:37:39	Dita Nurlita	3	$2a$10$x.msYIwr4YUdCNy3dfs3f.lDLQlF9BWmAhpLqLhhNt65xasFdctya	1	t
\.


--
-- TOC entry 3897 (class 0 OID 25992)
-- Dependencies: 239
-- Data for Name: tb_r_obs_checker; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_r_obs_checker (obs_checker_id, observation_id, uuid, checker_nm, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt) FROM stdin;
13	7	0220754a-d05e-4cff-b94e-797e4030b927	Fajar Tri Cahyono	SYSTEM	2023-06-26 18:07:22.599334	SYSTEM	2023-06-26 18:07:22.599334	\N	\N
12	6	94ee8a1f-ec11-41cd-8c08-03d5e6a201d7	Fajar Tri Cahyono	SYSTEM	2023-06-03 15:59:29.157333	SYSTEM	2023-06-03 15:59:29.157333	\N	\N
10	5	56c5bc3d-8ba8-4c01-b371-c0ba187c7caf	Fajar Tri Cahyono	SYSTEM	2023-06-03 15:59:05.24879	SYSTEM	2023-06-03 15:59:05.24879	\N	\N
8	4	68d9c708-7387-413e-b004-f2c4479d1f56	Fajar Tri Cahyono	SYSTEM	2023-06-03 15:57:42.265114	SYSTEM	2023-06-03 15:57:42.265114	\N	\N
6	3	24956af1-7a66-4a35-a861-92b329c90a10	Fajar Tri Cahyono	SYSTEM	2023-06-03 15:55:49.055687	SYSTEM	2023-06-03 15:55:49.055687	\N	\N
4	2	fb0bea21-69e3-4132-84b1-77661b0ff85a	Fajar Tri Cahyono	SYSTEM	2023-06-03 15:35:36.596062	SYSTEM	2023-06-03 15:35:36.596062	\N	\N
2	1	9580a61b-c958-494d-a3fe-6903dbb77000	Fajar Tri Cahyono	SYSTEM	2023-06-03 15:30:39.763909	SYSTEM	2023-06-03 15:30:39.763909	\N	\N
\.


--
-- TOC entry 3899 (class 0 OID 26003)
-- Dependencies: 241
-- Data for Name: tb_r_obs_members; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_r_obs_members (obs_member_id, uuid, observation_id, member_nm, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt) FROM stdin;
\.


--
-- TOC entry 3901 (class 0 OID 26014)
-- Dependencies: 243
-- Data for Name: tb_r_obs_results; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_r_obs_results (obs_result_id, observation_id, uuid, category_id, factor_id, judgment_id, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt, findings) FROM stdin;
1	1	b96e36fe-0f07-4388-a279-8f7d2a16d8b3	1	\N	1	SYSTEM	2023-06-06 19:15:17.786488	SYSTEM	2023-06-06 19:15:17.786488	\N	\N	\N
2	1	f724885b-d393-4ef3-934e-4d8d99adf366	2	1	2	SYSTEM	2023-06-06 19:15:17.786488	SYSTEM	2023-06-06 19:15:17.786488	\N	\N	potensi member terpeleset
3	1	e63082ee-eebe-43a9-9a45-c562d93896c2	3	\N	1	SYSTEM	2023-06-06 19:15:17.786488	SYSTEM	2023-06-06 19:15:17.786488	\N	\N	\N
4	1	4bbb6e3d-ef00-4dfd-9edb-015fd65d4ae0	4	\N	1	SYSTEM	2023-06-06 19:15:17.786488	SYSTEM	2023-06-06 19:15:17.786488	\N	\N	\N
5	1	4e960ff6-f1d0-472e-8299-39e50602b13f	5	\N	1	SYSTEM	2023-06-06 19:15:17.786488	SYSTEM	2023-06-06 19:15:17.786488	\N	\N	\N
6	1	f25f2827-2d2a-4ec1-bb75-85472d39cf6d	1	\N	1	Fajar Tri Cahyono	2023-06-12 11:38:33	Fajar Tri Cahyono	2023-06-12 11:38:33	\N	\N	\N
7	1	25e8126e-7a77-4d31-90d6-e5169f504638	4	1	2	Fajar Tri Cahyono	2023-06-12 11:38:33	Fajar Tri Cahyono	2023-06-12 11:38:33	\N	\N	potensi member terpeleset
8	1	1486c6c0-43a6-4169-8cdc-d5f21c1b9499	3	\N	1	Fajar Tri Cahyono	2023-06-12 11:38:33	Fajar Tri Cahyono	2023-06-12 11:38:33	\N	\N	\N
9	1	806445d7-4cb9-47cb-aa12-95deb40031ad	5	\N	1	Fajar Tri Cahyono	2023-06-12 11:38:33	Fajar Tri Cahyono	2023-06-12 11:38:33	\N	\N	\N
10	1	a94afd03-2e37-4420-9c02-e36a8e8b2f10	2	\N	1	Fajar Tri Cahyono	2023-06-12 11:38:33	Fajar Tri Cahyono	2023-06-12 11:38:33	\N	\N	\N
11	2	c8ecf565-0941-4dad-b992-de787ab16f81	1	\N	1	Fajar Tri Cahyono	2023-06-17 21:54:18	Fajar Tri Cahyono	2023-06-17 21:54:18	\N	\N	\N
12	2	97e6b328-fdef-4650-af10-367c682b22f6	4	\N	1	Fajar Tri Cahyono	2023-06-17 21:54:18	Fajar Tri Cahyono	2023-06-17 21:54:18	\N	\N	\N
13	2	224ac907-13ed-479e-a7d3-ddf646fc15d1	3	\N	1	Fajar Tri Cahyono	2023-06-17 21:54:18	Fajar Tri Cahyono	2023-06-17 21:54:18	\N	\N	\N
14	2	0b5bc2e7-c9dd-4a4d-9367-eac21c24c4e6	5	\N	1	Fajar Tri Cahyono	2023-06-17 21:54:18	Fajar Tri Cahyono	2023-06-17 21:54:18	\N	\N	\N
15	2	c3227d41-1863-48fd-800f-5d9fec3b2d66	2	\N	1	Fajar Tri Cahyono	2023-06-17 21:54:18	Fajar Tri Cahyono	2023-06-17 21:54:18	\N	\N	\N
16	3	a6af35b0-9fa4-4e1a-8741-fd4b4ac5ab20	1	\N	1	Fajar Tri Cahyono	2023-06-17 22:36:46	Fajar Tri Cahyono	2023-06-17 22:36:46	\N	\N	\N
17	3	b86a7df1-95b8-436b-9bad-e9e1258fd95e	4	\N	1	Fajar Tri Cahyono	2023-06-17 22:36:46	Fajar Tri Cahyono	2023-06-17 22:36:46	\N	\N	\N
18	3	418ec9b7-d643-4750-8156-7f0f5927925a	3	\N	1	Fajar Tri Cahyono	2023-06-17 22:36:46	Fajar Tri Cahyono	2023-06-17 22:36:46	\N	\N	\N
19	3	39a03614-e9ec-4190-9715-5cc056e401e7	5	1	2	Fajar Tri Cahyono	2023-06-17 22:36:46	Fajar Tri Cahyono	2023-06-17 22:36:46	\N	\N	Tidak bersih
20	3	f497863a-db84-4f3b-8e15-12db89f86946	2	\N	1	Fajar Tri Cahyono	2023-06-17 22:36:46	Fajar Tri Cahyono	2023-06-17 22:36:46	\N	\N	\N
21	4	2124910f-364f-426b-9699-7d117ff09a2e	1	\N	1	Fajar Tri Cahyono	2023-06-17 22:38:04	Fajar Tri Cahyono	2023-06-17 22:38:04	\N	\N	\N
22	4	ac23686a-6421-4424-bb5d-0d7dceee3d9c	4	\N	1	Fajar Tri Cahyono	2023-06-17 22:38:04	Fajar Tri Cahyono	2023-06-17 22:38:04	\N	\N	\N
23	4	ae4fead8-1be9-472d-9911-b3612735ea4e	3	\N	1	Fajar Tri Cahyono	2023-06-17 22:38:04	Fajar Tri Cahyono	2023-06-17 22:38:04	\N	\N	\N
24	4	05817d96-2158-4882-8b27-9ee6dd309f13	5	\N	1	Fajar Tri Cahyono	2023-06-17 22:38:04	Fajar Tri Cahyono	2023-06-17 22:38:04	\N	\N	\N
25	4	fb1e4f76-6873-47bb-8fa2-c8f868866a27	2	\N	1	Fajar Tri Cahyono	2023-06-17 22:38:04	Fajar Tri Cahyono	2023-06-17 22:38:04	\N	\N	\N
\.


--
-- TOC entry 3903 (class 0 OID 26025)
-- Dependencies: 245
-- Data for Name: tb_r_observations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_r_observations (observation_id, uuid, plan_check_dt, actual_check_dt, pos_id, job_id, group_id, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt, member_nm) FROM stdin;
1	7595dd63-da4a-43fe-8971-8a9e38f699d8	2023-06-06 07:00:00	2023-06-12 04:38:33.348	1	1	2	SYSTEM	2023-06-03 15:30:39.745749	1629083	2023-06-12 11:38:33	\N	\N	Fajar Tri Cahyono
2	a86ea110-f76a-4a8d-8b2a-cff0f9138cca	2023-06-12 07:00:00	2023-06-17 14:54:18.179	1	1	2	SYSTEM	2023-06-03 15:35:36.58652	1629083	2023-06-17 21:54:18	\N	\N	Fajar Tri Cahyono
5	593b1612-e195-4f38-9894-631b2b3ba723	2023-06-18 07:00:00	\N	1	1	3	1527511	2023-06-03 15:59:05	1527511	2023-06-03 15:59:05	\N	\N	Fajar Tri Cahyono
4	7901c5fa-15f4-4a05-865c-df2cfb2cc3ef	2023-06-16 07:00:00	2023-06-17 15:38:04.045	1	1	2	SYSTEM	2023-06-03 15:57:42	1629083	2023-06-17 22:38:04	\N	\N	Fajar Tri Cahyono
3	8e54a145-ecc1-4cfc-8378-e79272d1bff7	2023-06-14 07:00:00	2023-06-17 15:36:46.662	1	1	2	SYSTEM	2023-06-03 15:55:49	Dita Nurlita	2023-06-26 19:43:26	Dita Nurlita	2023-06-26 19:43:26	Fajar Tri Cahyono
7	5e03219c-29c4-4bb5-b5b8-3ac3f7ed564f	2023-06-26 00:00:00	\N	1	1	1	Dita Nurlita	2023-06-26 18:07:22	Dita Nurlita	2023-06-26 18:07:22	Dita Nurlita	2023-06-26 19:43:26	Dita Nurlita
6	de95fd5f-c690-4c3d-a9e1-8f09ce762239	2023-06-20 07:00:00	\N	1	1	3	Dita Nurlita	2023-06-03 15:59:29	Dita Nurlita	2023-06-26 19:50:36	Dita Nurlita	2023-06-26 19:50:36	Fajar Tri Cahyono
\.


--
-- TOC entry 3905 (class 0 OID 26036)
-- Dependencies: 247
-- Data for Name: tb_r_result_findings; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.tb_r_result_findings (result_finding_id, obs_result_id, uuid, description, created_by, created_dt, changed_by, changed_dt, deleted_by, deleted_dt) FROM stdin;
\.


--
-- TOC entry 3933 (class 0 OID 0)
-- Dependencies: 210
-- Name: tb_m_categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_categories_category_id_seq', 5, true);


--
-- TOC entry 3934 (class 0 OID 0)
-- Dependencies: 212
-- Name: tb_m_company_company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_company_company_id_seq', 3, true);


--
-- TOC entry 3935 (class 0 OID 0)
-- Dependencies: 214
-- Name: tb_m_faktors_faktor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_faktors_faktor_id_seq', 5, true);


--
-- TOC entry 3936 (class 0 OID 0)
-- Dependencies: 216
-- Name: tb_m_group_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_group_group_id_seq', 3, true);


--
-- TOC entry 3937 (class 0 OID 0)
-- Dependencies: 218
-- Name: tb_m_job_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_job_job_id_seq', 1, true);


--
-- TOC entry 3938 (class 0 OID 0)
-- Dependencies: 220
-- Name: tb_m_job_type_job_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_job_type_job_type_id_seq', 3, true);


--
-- TOC entry 3939 (class 0 OID 0)
-- Dependencies: 222
-- Name: tb_m_judgments_judgment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_judgments_judgment_id_seq', 2, true);


--
-- TOC entry 3940 (class 0 OID 0)
-- Dependencies: 224
-- Name: tb_m_lines_line_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_lines_line_id_seq', 3, true);


--
-- TOC entry 3941 (class 0 OID 0)
-- Dependencies: 226
-- Name: tb_m_machines_machine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_machines_machine_id_seq', 3, true);


--
-- TOC entry 3942 (class 0 OID 0)
-- Dependencies: 228
-- Name: tb_m_plants_plant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_plants_plant_id_seq', 1, true);


--
-- TOC entry 3943 (class 0 OID 0)
-- Dependencies: 230
-- Name: tb_m_pos_pos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_pos_pos_id_seq', 1, true);


--
-- TOC entry 3944 (class 0 OID 0)
-- Dependencies: 232
-- Name: tb_m_shop_shop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_shop_shop_id_seq', 3, true);


--
-- TOC entry 3945 (class 0 OID 0)
-- Dependencies: 234
-- Name: tb_m_tsk_tsk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_tsk_tsk_id_seq', 1, true);


--
-- TOC entry 3946 (class 0 OID 0)
-- Dependencies: 236
-- Name: tb_m_tskk_tskk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_tskk_tskk_id_seq', 1, false);


--
-- TOC entry 3947 (class 0 OID 0)
-- Dependencies: 238
-- Name: tb_m_users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_users_user_id_seq', 1, false);


--
-- TOC entry 3948 (class 0 OID 0)
-- Dependencies: 240
-- Name: tb_r_obs_checker_obs_checker_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_r_obs_checker_obs_checker_id_seq', 1, false);


--
-- TOC entry 3949 (class 0 OID 0)
-- Dependencies: 242
-- Name: tb_r_obs_members_obs_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_r_obs_members_obs_member_id_seq', 1, false);


--
-- TOC entry 3950 (class 0 OID 0)
-- Dependencies: 244
-- Name: tb_r_obs_results_obs_result_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_r_obs_results_obs_result_id_seq', 1, false);


--
-- TOC entry 3951 (class 0 OID 0)
-- Dependencies: 246
-- Name: tb_r_observations_observation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_r_observations_observation_id_seq', 1, false);


--
-- TOC entry 3952 (class 0 OID 0)
-- Dependencies: 248
-- Name: tb_r_result_findings_result_finding_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_r_result_findings_result_finding_id_seq', 1, false);


--
-- TOC entry 3669 (class 2606 OID 26068)
-- Name: tb_m_categories pk_tb_m_categories; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_categories
    ADD CONSTRAINT pk_tb_m_categories PRIMARY KEY (category_id);


--
-- TOC entry 3671 (class 2606 OID 26070)
-- Name: tb_m_companies pk_tb_m_company; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_companies
    ADD CONSTRAINT pk_tb_m_company PRIMARY KEY (company_id);


--
-- TOC entry 3673 (class 2606 OID 26072)
-- Name: tb_m_factors pk_tb_m_faktors; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_factors
    ADD CONSTRAINT pk_tb_m_faktors PRIMARY KEY (factor_id);


--
-- TOC entry 3675 (class 2606 OID 26074)
-- Name: tb_m_groups pk_tb_m_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_groups
    ADD CONSTRAINT pk_tb_m_group PRIMARY KEY (group_id);


--
-- TOC entry 3677 (class 2606 OID 26076)
-- Name: tb_m_jobs pk_tb_m_job; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_jobs
    ADD CONSTRAINT pk_tb_m_job PRIMARY KEY (job_id);


--
-- TOC entry 3679 (class 2606 OID 26078)
-- Name: tb_m_job_types pk_tb_m_job_type; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_job_types
    ADD CONSTRAINT pk_tb_m_job_type PRIMARY KEY (job_type_id);


--
-- TOC entry 3681 (class 2606 OID 26080)
-- Name: tb_m_judgments pk_tb_m_judgments; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_judgments
    ADD CONSTRAINT pk_tb_m_judgments PRIMARY KEY (judgment_id);


--
-- TOC entry 3683 (class 2606 OID 26082)
-- Name: tb_m_lines pk_tb_m_lines; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_lines
    ADD CONSTRAINT pk_tb_m_lines PRIMARY KEY (line_id);


--
-- TOC entry 3685 (class 2606 OID 26084)
-- Name: tb_m_machines pk_tb_m_machines; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_machines
    ADD CONSTRAINT pk_tb_m_machines PRIMARY KEY (machine_id);


--
-- TOC entry 3687 (class 2606 OID 26086)
-- Name: tb_m_plants pk_tb_m_plants; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_plants
    ADD CONSTRAINT pk_tb_m_plants PRIMARY KEY (plant_id);


--
-- TOC entry 3689 (class 2606 OID 26088)
-- Name: tb_m_pos pk_tb_m_pos; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_pos
    ADD CONSTRAINT pk_tb_m_pos PRIMARY KEY (pos_id);


--
-- TOC entry 3691 (class 2606 OID 26090)
-- Name: tb_m_shop pk_tb_m_shop; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_shop
    ADD CONSTRAINT pk_tb_m_shop PRIMARY KEY (shop_id);


--
-- TOC entry 3693 (class 2606 OID 26092)
-- Name: tb_m_tsk pk_tb_m_tsk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_tsk
    ADD CONSTRAINT pk_tb_m_tsk PRIMARY KEY (tsk_id);


--
-- TOC entry 3695 (class 2606 OID 26094)
-- Name: tb_m_tskk pk_tb_m_tskk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_tskk
    ADD CONSTRAINT pk_tb_m_tskk PRIMARY KEY (tskk_id);


--
-- TOC entry 3697 (class 2606 OID 26096)
-- Name: tb_m_users pk_tb_m_users; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_users
    ADD CONSTRAINT pk_tb_m_users PRIMARY KEY (user_id);


--
-- TOC entry 3699 (class 2606 OID 26098)
-- Name: tb_r_obs_checker pk_tb_r_obs_checker; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_checker
    ADD CONSTRAINT pk_tb_r_obs_checker PRIMARY KEY (obs_checker_id);


--
-- TOC entry 3701 (class 2606 OID 26100)
-- Name: tb_r_obs_members pk_tb_r_obs_members; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_members
    ADD CONSTRAINT pk_tb_r_obs_members PRIMARY KEY (obs_member_id);


--
-- TOC entry 3703 (class 2606 OID 26102)
-- Name: tb_r_obs_results pk_tb_r_obs_results; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_results
    ADD CONSTRAINT pk_tb_r_obs_results PRIMARY KEY (obs_result_id);


--
-- TOC entry 3705 (class 2606 OID 26104)
-- Name: tb_r_observations pk_tb_r_observations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_observations
    ADD CONSTRAINT pk_tb_r_observations PRIMARY KEY (observation_id);


--
-- TOC entry 3707 (class 2606 OID 26106)
-- Name: tb_r_result_findings pk_tb_r_result_findings; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_result_findings
    ADD CONSTRAINT pk_tb_r_result_findings PRIMARY KEY (result_finding_id);


--
-- TOC entry 3708 (class 2606 OID 26107)
-- Name: tb_m_jobs fk_tb_m_job; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_jobs
    ADD CONSTRAINT fk_tb_m_job FOREIGN KEY (job_type_id) REFERENCES public.tb_m_job_types(job_type_id);


--
-- TOC entry 3709 (class 2606 OID 26112)
-- Name: tb_m_jobs fk_tb_m_job_pos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_jobs
    ADD CONSTRAINT fk_tb_m_job_pos FOREIGN KEY (pos_id) REFERENCES public.tb_m_pos(pos_id);


--
-- TOC entry 3710 (class 2606 OID 26117)
-- Name: tb_m_jobs fk_tb_m_jobs_tb_m_machines; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_jobs
    ADD CONSTRAINT fk_tb_m_jobs_tb_m_machines FOREIGN KEY (machine_id) REFERENCES public.tb_m_machines(machine_id);


--
-- TOC entry 3711 (class 2606 OID 26122)
-- Name: tb_m_lines fk_tb_m_lines_shop; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_lines
    ADD CONSTRAINT fk_tb_m_lines_shop FOREIGN KEY (shop_id) REFERENCES public.tb_m_shop(shop_id);


--
-- TOC entry 3712 (class 2606 OID 26127)
-- Name: tb_m_machines fk_tb_m_machines_line; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_machines
    ADD CONSTRAINT fk_tb_m_machines_line FOREIGN KEY (line_id) REFERENCES public.tb_m_lines(line_id);


--
-- TOC entry 3713 (class 2606 OID 26132)
-- Name: tb_m_plants fk_tb_m_plants_company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_plants
    ADD CONSTRAINT fk_tb_m_plants_company FOREIGN KEY (company_id) REFERENCES public.tb_m_companies(company_id);


--
-- TOC entry 3714 (class 2606 OID 26137)
-- Name: tb_m_pos fk_tb_m_pos_line; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_pos
    ADD CONSTRAINT fk_tb_m_pos_line FOREIGN KEY (line_id) REFERENCES public.tb_m_lines(line_id);


--
-- TOC entry 3715 (class 2606 OID 26142)
-- Name: tb_m_shop fk_tb_m_shop_plant; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_shop
    ADD CONSTRAINT fk_tb_m_shop_plant FOREIGN KEY (plant_id) REFERENCES public.tb_m_plants(plant_id);


--
-- TOC entry 3716 (class 2606 OID 26147)
-- Name: tb_m_tsk fk_tb_m_tsk_tb_m_pos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_tsk
    ADD CONSTRAINT fk_tb_m_tsk_tb_m_pos FOREIGN KEY (pos_id) REFERENCES public.tb_m_pos(pos_id);


--
-- TOC entry 3717 (class 2606 OID 26152)
-- Name: tb_m_tskk fk_tb_m_tskk_tb_m_pos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_tskk
    ADD CONSTRAINT fk_tb_m_tskk_tb_m_pos FOREIGN KEY (pos_id) REFERENCES public.tb_m_pos(pos_id);


--
-- TOC entry 3718 (class 2606 OID 26157)
-- Name: tb_m_users fk_tb_m_users_tb_m_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_users
    ADD CONSTRAINT fk_tb_m_users_tb_m_group FOREIGN KEY (group_id) REFERENCES public.tb_m_groups(group_id);


--
-- TOC entry 3719 (class 2606 OID 26162)
-- Name: tb_m_users fk_tb_m_users_tb_m_lines; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_users
    ADD CONSTRAINT fk_tb_m_users_tb_m_lines FOREIGN KEY (line_id) REFERENCES public.tb_m_lines(line_id);


--
-- TOC entry 3720 (class 2606 OID 26167)
-- Name: tb_r_obs_checker fk_tb_r_obs_checker; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_checker
    ADD CONSTRAINT fk_tb_r_obs_checker FOREIGN KEY (observation_id) REFERENCES public.tb_r_observations(observation_id);


--
-- TOC entry 3721 (class 2606 OID 26172)
-- Name: tb_r_obs_results fk_tb_r_obs_results; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_results
    ADD CONSTRAINT fk_tb_r_obs_results FOREIGN KEY (observation_id) REFERENCES public.tb_r_observations(observation_id);


--
-- TOC entry 3722 (class 2606 OID 26177)
-- Name: tb_r_obs_results fk_tb_r_obs_results_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_results
    ADD CONSTRAINT fk_tb_r_obs_results_category FOREIGN KEY (category_id) REFERENCES public.tb_m_categories(category_id);


--
-- TOC entry 3723 (class 2606 OID 26182)
-- Name: tb_r_obs_results fk_tb_r_obs_results_factor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_results
    ADD CONSTRAINT fk_tb_r_obs_results_factor FOREIGN KEY (factor_id) REFERENCES public.tb_m_factors(factor_id);


--
-- TOC entry 3724 (class 2606 OID 26187)
-- Name: tb_r_obs_results fk_tb_r_obs_results_judg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_results
    ADD CONSTRAINT fk_tb_r_obs_results_judg FOREIGN KEY (judgment_id) REFERENCES public.tb_m_judgments(judgment_id);


--
-- TOC entry 3725 (class 2606 OID 26192)
-- Name: tb_r_observations fk_tb_r_observations_job; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_observations
    ADD CONSTRAINT fk_tb_r_observations_job FOREIGN KEY (job_id) REFERENCES public.tb_m_jobs(job_id);


--
-- TOC entry 3726 (class 2606 OID 26197)
-- Name: tb_r_observations fk_tb_r_observations_tb_m_pos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_observations
    ADD CONSTRAINT fk_tb_r_observations_tb_m_pos FOREIGN KEY (pos_id) REFERENCES public.tb_m_pos(pos_id);


--
-- TOC entry 3727 (class 2606 OID 26202)
-- Name: tb_r_result_findings fk_tb_r_result_findings; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_result_findings
    ADD CONSTRAINT fk_tb_r_result_findings FOREIGN KEY (obs_result_id) REFERENCES public.tb_r_obs_results(obs_result_id);


-- Completed on 2023-07-04 08:03:59 WIB

--
-- PostgreSQL database dump complete
--

