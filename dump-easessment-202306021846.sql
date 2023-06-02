--
-- PostgreSQL database dump
--

-- Dumped from database version 14.7 (Homebrew)
-- Dumped by pg_dump version 14.7 (Homebrew)

-- Started on 2023-06-02 18:46:38 WIB

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
-- Name: public; Type: SCHEMA; Schema: -; Owner: toyota
--

CREATE SCHEMA public;


ALTER SCHEMA public OWNER TO toyota;

--
-- TOC entry 3892 (class 0 OID 0)
-- Dependencies: 3
-- Name: SCHEMA public; Type: COMMENT; Schema: -; Owner: toyota
--

COMMENT ON SCHEMA public IS 'standard public schema';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- TOC entry 232 (class 1259 OID 70153)
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
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_m_categories OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 70152)
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
-- TOC entry 3893 (class 0 OID 0)
-- Dependencies: 231
-- Name: tb_m_categories_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_categories_category_id_seq OWNED BY public.tb_m_categories.category_id;


--
-- TOC entry 220 (class 1259 OID 70055)
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
-- TOC entry 219 (class 1259 OID 70054)
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
-- TOC entry 3894 (class 0 OID 0)
-- Dependencies: 219
-- Name: tb_m_company_company_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_company_company_id_seq OWNED BY public.tb_m_companies.company_id;


--
-- TOC entry 230 (class 1259 OID 70146)
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
-- TOC entry 229 (class 1259 OID 70145)
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
-- TOC entry 3895 (class 0 OID 0)
-- Dependencies: 229
-- Name: tb_m_faktors_faktor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_faktors_faktor_id_seq OWNED BY public.tb_m_factors.factor_id;


--
-- TOC entry 228 (class 1259 OID 70100)
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
-- TOC entry 227 (class 1259 OID 70099)
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
-- TOC entry 3896 (class 0 OID 0)
-- Dependencies: 227
-- Name: tb_m_group_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_group_group_id_seq OWNED BY public.tb_m_groups.group_id;


--
-- TOC entry 226 (class 1259 OID 70085)
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
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_m_jobs OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 70084)
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
-- TOC entry 3897 (class 0 OID 0)
-- Dependencies: 225
-- Name: tb_m_job_job_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_job_job_id_seq OWNED BY public.tb_m_jobs.job_id;


--
-- TOC entry 224 (class 1259 OID 70078)
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
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_m_job_types OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 70077)
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
-- TOC entry 3898 (class 0 OID 0)
-- Dependencies: 223
-- Name: tb_m_job_type_job_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_job_type_job_type_id_seq OWNED BY public.tb_m_job_types.job_type_id;


--
-- TOC entry 248 (class 1259 OID 70268)
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
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_m_judgments OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 70267)
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
-- TOC entry 3899 (class 0 OID 0)
-- Dependencies: 247
-- Name: tb_m_judgments_judgment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_judgments_judgment_id_seq OWNED BY public.tb_m_judgments.judgment_id;


--
-- TOC entry 212 (class 1259 OID 70014)
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
-- TOC entry 211 (class 1259 OID 70013)
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
-- TOC entry 3900 (class 0 OID 0)
-- Dependencies: 211
-- Name: tb_m_lines_line_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_lines_line_id_seq OWNED BY public.tb_m_lines.line_id;


--
-- TOC entry 222 (class 1259 OID 70062)
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
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_m_machines OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 70061)
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
-- TOC entry 3901 (class 0 OID 0)
-- Dependencies: 221
-- Name: tb_m_machines_machine_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_machines_machine_id_seq OWNED BY public.tb_m_machines.machine_id;


--
-- TOC entry 218 (class 1259 OID 70048)
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
-- TOC entry 217 (class 1259 OID 70047)
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
-- TOC entry 3902 (class 0 OID 0)
-- Dependencies: 217
-- Name: tb_m_plants_plant_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_plants_plant_id_seq OWNED BY public.tb_m_plants.plant_id;


--
-- TOC entry 214 (class 1259 OID 70034)
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
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_m_pos OWNER TO postgres;

--
-- TOC entry 213 (class 1259 OID 70033)
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
-- TOC entry 3903 (class 0 OID 0)
-- Dependencies: 213
-- Name: tb_m_pos_pos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_pos_pos_id_seq OWNED BY public.tb_m_pos.pos_id;


--
-- TOC entry 216 (class 1259 OID 70041)
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
-- TOC entry 215 (class 1259 OID 70040)
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
-- TOC entry 3904 (class 0 OID 0)
-- Dependencies: 215
-- Name: tb_m_shop_shop_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_shop_shop_id_seq OWNED BY public.tb_m_shop.shop_id;


--
-- TOC entry 234 (class 1259 OID 70173)
-- Name: tb_m_tsk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_tsk (
    tsk_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    tsk_nm character varying(100) NOT NULL,
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
-- TOC entry 233 (class 1259 OID 70172)
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
-- TOC entry 3905 (class 0 OID 0)
-- Dependencies: 233
-- Name: tb_m_tsk_tsk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_tsk_tsk_id_seq OWNED BY public.tb_m_tsk.tsk_id;


--
-- TOC entry 236 (class 1259 OID 70182)
-- Name: tb_m_tskk; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_m_tskk (
    tskk_id integer NOT NULL,
    pos_id integer NOT NULL,
    uuid integer NOT NULL,
    tskk_nm character varying(100) NOT NULL,
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
-- TOC entry 235 (class 1259 OID 70181)
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
-- TOC entry 3906 (class 0 OID 0)
-- Dependencies: 235
-- Name: tb_m_tskk_tskk_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_tskk_tskk_id_seq OWNED BY public.tb_m_tskk.tskk_id;


--
-- TOC entry 210 (class 1259 OID 70001)
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
-- TOC entry 209 (class 1259 OID 70000)
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
-- TOC entry 3907 (class 0 OID 0)
-- Dependencies: 209
-- Name: tb_m_users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_m_users_user_id_seq OWNED BY public.tb_m_users.user_id;


--
-- TOC entry 242 (class 1259 OID 70215)
-- Name: tb_r_obs_checker; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_r_obs_checker (
    obs_checker_id integer NOT NULL,
    observation_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    plan_checker character varying(255) NOT NULL,
    actual_checker character varying(255),
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_r_obs_checker OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 70214)
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
-- TOC entry 3908 (class 0 OID 0)
-- Dependencies: 241
-- Name: tb_r_obs_checker_obs_checker_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_r_obs_checker_obs_checker_id_seq OWNED BY public.tb_r_obs_checker.obs_checker_id;


--
-- TOC entry 240 (class 1259 OID 70208)
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
-- TOC entry 239 (class 1259 OID 70207)
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
-- TOC entry 3909 (class 0 OID 0)
-- Dependencies: 239
-- Name: tb_r_obs_members_obs_member_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_r_obs_members_obs_member_id_seq OWNED BY public.tb_r_obs_members.obs_member_id;


--
-- TOC entry 244 (class 1259 OID 70222)
-- Name: tb_r_obs_results; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_r_obs_results (
    obs_result_id integer NOT NULL,
    observation_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    category_id integer NOT NULL,
    factor_id integer NOT NULL,
    judgment_id integer NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_r_obs_results OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 70221)
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
-- TOC entry 3910 (class 0 OID 0)
-- Dependencies: 243
-- Name: tb_r_obs_results_obs_result_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_r_obs_results_obs_result_id_seq OWNED BY public.tb_r_obs_results.obs_result_id;


--
-- TOC entry 238 (class 1259 OID 70201)
-- Name: tb_r_observations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tb_r_observations (
    observation_id integer NOT NULL,
    uuid character varying(40) NOT NULL,
    plan_check_dt timestamp without time zone NOT NULL,
    actual_check_dt timestamp without time zone,
    pos_id integer NOT NULL,
    job_id integer NOT NULL,
    group_id integer NOT NULL,
    created_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    created_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    changed_by character varying(100) DEFAULT 'SYSTEM'::character varying NOT NULL,
    changed_dt timestamp without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    deleted_by character varying(100) DEFAULT NULL::character varying,
    deleted_dt timestamp without time zone
);


ALTER TABLE public.tb_r_observations OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 70200)
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
-- TOC entry 3911 (class 0 OID 0)
-- Dependencies: 237
-- Name: tb_r_observations_observation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_r_observations_observation_id_seq OWNED BY public.tb_r_observations.observation_id;


--
-- TOC entry 246 (class 1259 OID 70229)
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
-- TOC entry 245 (class 1259 OID 70228)
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
-- TOC entry 3912 (class 0 OID 0)
-- Dependencies: 245
-- Name: tb_r_result_findings_result_finding_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tb_r_result_findings_result_finding_id_seq OWNED BY public.tb_r_result_findings.result_finding_id;


--
-- TOC entry 3594 (class 2604 OID 70156)
-- Name: tb_m_categories category_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_categories ALTER COLUMN category_id SET DEFAULT nextval('public.tb_m_categories_category_id_seq'::regclass);


--
-- TOC entry 3558 (class 2604 OID 70058)
-- Name: tb_m_companies company_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_companies ALTER COLUMN company_id SET DEFAULT nextval('public.tb_m_company_company_id_seq'::regclass);


--
-- TOC entry 3588 (class 2604 OID 70149)
-- Name: tb_m_factors factor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_factors ALTER COLUMN factor_id SET DEFAULT nextval('public.tb_m_faktors_faktor_id_seq'::regclass);


--
-- TOC entry 3582 (class 2604 OID 70103)
-- Name: tb_m_groups group_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_groups ALTER COLUMN group_id SET DEFAULT nextval('public.tb_m_group_group_id_seq'::regclass);


--
-- TOC entry 3570 (class 2604 OID 70081)
-- Name: tb_m_job_types job_type_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_job_types ALTER COLUMN job_type_id SET DEFAULT nextval('public.tb_m_job_type_job_type_id_seq'::regclass);


--
-- TOC entry 3576 (class 2604 OID 70088)
-- Name: tb_m_jobs job_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_jobs ALTER COLUMN job_id SET DEFAULT nextval('public.tb_m_job_job_id_seq'::regclass);


--
-- TOC entry 3642 (class 2604 OID 70271)
-- Name: tb_m_judgments judgment_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_judgments ALTER COLUMN judgment_id SET DEFAULT nextval('public.tb_m_judgments_judgment_id_seq'::regclass);


--
-- TOC entry 3534 (class 2604 OID 70017)
-- Name: tb_m_lines line_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_lines ALTER COLUMN line_id SET DEFAULT nextval('public.tb_m_lines_line_id_seq'::regclass);


--
-- TOC entry 3564 (class 2604 OID 70065)
-- Name: tb_m_machines machine_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_machines ALTER COLUMN machine_id SET DEFAULT nextval('public.tb_m_machines_machine_id_seq'::regclass);


--
-- TOC entry 3552 (class 2604 OID 70051)
-- Name: tb_m_plants plant_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_plants ALTER COLUMN plant_id SET DEFAULT nextval('public.tb_m_plants_plant_id_seq'::regclass);


--
-- TOC entry 3540 (class 2604 OID 70037)
-- Name: tb_m_pos pos_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_pos ALTER COLUMN pos_id SET DEFAULT nextval('public.tb_m_pos_pos_id_seq'::regclass);


--
-- TOC entry 3546 (class 2604 OID 70044)
-- Name: tb_m_shop shop_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_shop ALTER COLUMN shop_id SET DEFAULT nextval('public.tb_m_shop_shop_id_seq'::regclass);


--
-- TOC entry 3600 (class 2604 OID 70176)
-- Name: tb_m_tsk tsk_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_tsk ALTER COLUMN tsk_id SET DEFAULT nextval('public.tb_m_tsk_tsk_id_seq'::regclass);


--
-- TOC entry 3606 (class 2604 OID 70185)
-- Name: tb_m_tskk tskk_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_tskk ALTER COLUMN tskk_id SET DEFAULT nextval('public.tb_m_tskk_tskk_id_seq'::regclass);


--
-- TOC entry 3528 (class 2604 OID 70004)
-- Name: tb_m_users user_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_users ALTER COLUMN user_id SET DEFAULT nextval('public.tb_m_users_user_id_seq'::regclass);


--
-- TOC entry 3624 (class 2604 OID 70218)
-- Name: tb_r_obs_checker obs_checker_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_checker ALTER COLUMN obs_checker_id SET DEFAULT nextval('public.tb_r_obs_checker_obs_checker_id_seq'::regclass);


--
-- TOC entry 3618 (class 2604 OID 70211)
-- Name: tb_r_obs_members obs_member_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_members ALTER COLUMN obs_member_id SET DEFAULT nextval('public.tb_r_obs_members_obs_member_id_seq'::regclass);


--
-- TOC entry 3630 (class 2604 OID 70225)
-- Name: tb_r_obs_results obs_result_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_results ALTER COLUMN obs_result_id SET DEFAULT nextval('public.tb_r_obs_results_obs_result_id_seq'::regclass);


--
-- TOC entry 3612 (class 2604 OID 70204)
-- Name: tb_r_observations observation_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_observations ALTER COLUMN observation_id SET DEFAULT nextval('public.tb_r_observations_observation_id_seq'::regclass);


--
-- TOC entry 3636 (class 2604 OID 70232)
-- Name: tb_r_result_findings result_finding_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_result_findings ALTER COLUMN result_finding_id SET DEFAULT nextval('public.tb_r_result_findings_result_finding_id_seq'::regclass);


--
-- TOC entry 3870 (class 0 OID 70153)
-- Dependencies: 232
-- Data for Name: tb_m_categories; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3858 (class 0 OID 70055)
-- Dependencies: 220
-- Data for Name: tb_m_companies; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_m_companies VALUES (1, '6a698c03-9f92-4db1-b7a2-399b0b2b2157', 'PT. Toyota Motor Manufacturing Indonesia', 'SYSTEM', '2023-06-01 21:04:07.455747', 'SYSTEM', '2023-06-01 21:04:07.455747', NULL, NULL);


--
-- TOC entry 3868 (class 0 OID 70146)
-- Dependencies: 230
-- Data for Name: tb_m_factors; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_m_factors VALUES (1, 'c8895db9-e57d-454f-b70a-9133aa2453e3', 'Man', 'SYSTEM', '2023-06-01 23:08:02.866866', 'SYSTEM', '2023-06-01 23:08:02.866866', NULL, NULL);
INSERT INTO public.tb_m_factors VALUES (2, '431572d0-7942-490f-9d6d-8907c041b0f7', 'Machine', 'SYSTEM', '2023-06-01 23:08:02.866866', 'SYSTEM', '2023-06-01 23:08:02.866866', NULL, NULL);
INSERT INTO public.tb_m_factors VALUES (3, '08019271-85e5-409c-b06e-40a9ac7a3ccf', 'Material', 'SYSTEM', '2023-06-01 23:08:02.866866', 'SYSTEM', '2023-06-01 23:08:02.866866', NULL, NULL);
INSERT INTO public.tb_m_factors VALUES (4, '683d1e2b-8f30-4722-9806-e88962158d7d', 'Methode', 'SYSTEM', '2023-06-01 23:08:02.866866', 'SYSTEM', '2023-06-01 23:08:02.866866', NULL, NULL);
INSERT INTO public.tb_m_factors VALUES (5, '5947f1c7-607d-4ffc-8cc4-e72c921ac1b5', 'Environtment', 'SYSTEM', '2023-06-01 23:08:02.866866', 'SYSTEM', '2023-06-01 23:08:02.866866', NULL, NULL);


--
-- TOC entry 3866 (class 0 OID 70100)
-- Dependencies: 228
-- Data for Name: tb_m_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_m_groups VALUES (1, 'e9fd36b0-e4f8-4be7-a7ff-0f85158ce823', 'NON', 'SYSTEM', '2023-06-01 21:07:35.946731', 'SYSTEM', '2023-06-01 21:07:35.946731', NULL, NULL);
INSERT INTO public.tb_m_groups VALUES (3, 'cb7e9c37-b39c-49b4-b34d-b0a8f9f462df', 'WHITE', 'SYSTEM', '2023-06-01 21:07:35.946731', 'SYSTEM', '2023-06-01 21:07:35.946731', NULL, NULL);
INSERT INTO public.tb_m_groups VALUES (2, '36ad3451-e2fe-4b50-84b0-2d6ca942ae1e', 'RED', 'SYSTEM', '2023-06-01 21:07:35.946731', 'SYSTEM', '2023-06-01 21:07:35.946731', NULL, NULL);


--
-- TOC entry 3862 (class 0 OID 70078)
-- Dependencies: 224
-- Data for Name: tb_m_job_types; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_m_job_types VALUES (2, '880c68aa-35d8-4bda-aefa-95765730bbbe', 'Type 3', 'SYSTEM', '2023-06-01 21:07:35.984644', 'SYSTEM', '2023-06-01 21:07:35.984644', NULL, NULL);
INSERT INTO public.tb_m_job_types VALUES (1, '4af65e66-f526-4fd2-86bf-88160c5a94d0', 'Type 1', 'SYSTEM', '2023-06-01 21:07:35.984644', 'SYSTEM', '2023-06-01 21:07:35.984644', NULL, NULL);


--
-- TOC entry 3864 (class 0 OID 70085)
-- Dependencies: 226
-- Data for Name: tb_m_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3886 (class 0 OID 70268)
-- Dependencies: 248
-- Data for Name: tb_m_judgments; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3850 (class 0 OID 70014)
-- Dependencies: 212
-- Data for Name: tb_m_lines; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_m_lines VALUES (1, 'fd85482c-9e54-4832-96c8-321f574e8536', 'Cylinder Head', 'Machining Cylinder Head', 2, 'CH', 'SYSTEM', '2023-06-01 21:07:36.141894', 'SYSTEM', '2023-06-01 21:07:36.141894', NULL, NULL);


--
-- TOC entry 3860 (class 0 OID 70062)
-- Dependencies: 222
-- Data for Name: tb_m_machines; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3856 (class 0 OID 70048)
-- Dependencies: 218
-- Data for Name: tb_m_plants; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_m_plants VALUES (1, 1, 'f61cac7e-b122-4fb5-b0e3-81ec17753d54', 'Engine Plant#3 Karawang', 'SYSTEM', '2023-06-01 21:07:36.252317', 'SYSTEM', '2023-06-01 21:07:36.252317', NULL, NULL);


--
-- TOC entry 3852 (class 0 OID 70034)
-- Dependencies: 214
-- Data for Name: tb_m_pos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_m_pos VALUES (1, 1, '91808253-13a0-44ab-978d-7c38a6630b63', 'Pos 1', 'SYSTEM', '2023-06-01 22:49:18.931722', 'SYSTEM', '2023-06-01 22:49:18.931722', NULL, NULL);
INSERT INTO public.tb_m_pos VALUES (2, 1, '91eb45f5-a71d-4796-bb28-b70a09b804ae', 'Pos 2', 'SYSTEM', '2023-06-01 22:49:18.931722', 'SYSTEM', '2023-06-01 22:49:18.931722', NULL, NULL);
INSERT INTO public.tb_m_pos VALUES (3, 1, '2f165c06-0f40-42e8-a18c-d69d319fe95d', 'Pos 3', 'SYSTEM', '2023-06-01 22:49:18.931722', 'SYSTEM', '2023-06-01 22:49:18.931722', NULL, NULL);
INSERT INTO public.tb_m_pos VALUES (4, 1, '574cf12d-9849-4d9f-ace8-1d1ecd347c2a', 'Pos 4', 'SYSTEM', '2023-06-01 22:49:18.931722', 'SYSTEM', '2023-06-01 22:49:18.931722', NULL, NULL);
INSERT INTO public.tb_m_pos VALUES (5, 1, 'f1dae682-43c8-4a1c-9334-ffb2f30221dd', 'Pos 5', 'SYSTEM', '2023-06-01 22:49:18.931722', 'SYSTEM', '2023-06-01 22:49:18.931722', NULL, NULL);
INSERT INTO public.tb_m_pos VALUES (6, 1, 'c7f77986-eded-4672-95bd-e07b217d0967', 'Pos 6', 'SYSTEM', '2023-06-01 22:49:18.931722', 'SYSTEM', '2023-06-01 22:49:18.931722', NULL, NULL);
INSERT INTO public.tb_m_pos VALUES (7, 1, '7558a7b6-6c75-440b-b70e-702a3ba805bd', 'Pos 7', 'SYSTEM', '2023-06-01 22:49:18.931722', 'SYSTEM', '2023-06-01 22:49:18.931722', NULL, NULL);
INSERT INTO public.tb_m_pos VALUES (8, 1, '7064ed08-4b8b-4ad4-a6e8-c1bca8a38154', 'Pos 8', 'SYSTEM', '2023-06-01 23:19:37.280114', 'SYSTEM', '2023-06-01 23:19:37.280114', NULL, NULL);
INSERT INTO public.tb_m_pos VALUES (9, 1, '5a91fe32-cca2-4ed6-9b77-aa2bf649f21e', 'Pos 9', 'SYSTEM', '2023-06-01 23:19:37.280114', 'SYSTEM', '2023-06-01 23:19:37.280114', NULL, NULL);
INSERT INTO public.tb_m_pos VALUES (10, 1, 'adffaed4-961d-4808-9c8a-1f2379190f78', 'Pos 10', 'SYSTEM', '2023-06-01 23:19:37.280114', 'SYSTEM', '2023-06-01 23:19:37.280114', NULL, NULL);
INSERT INTO public.tb_m_pos VALUES (11, 1, '2749bd77-0f5c-4eaa-97c2-0d56fef0afaa', 'Pos 11', 'SYSTEM', '2023-06-01 23:19:37.280114', 'SYSTEM', '2023-06-01 23:19:37.280114', NULL, NULL);


--
-- TOC entry 3854 (class 0 OID 70041)
-- Dependencies: 216
-- Data for Name: tb_m_shop; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_m_shop VALUES (3, 'f371d51c-729f-46b8-b1c1-dafd520380fb', 1, 'Assembly', 'SYSTEM', '2023-06-01 21:07:36.390082', 'SYSTEM', '2023-06-01 21:07:36.390082', NULL, NULL);
INSERT INTO public.tb_m_shop VALUES (2, 'a5a404f9-2d1e-42fe-aefb-a60eaabd6402', 1, 'Machining', 'SYSTEM', '2023-06-01 21:07:36.390082', 'SYSTEM', '2023-06-01 21:07:36.390082', NULL, NULL);
INSERT INTO public.tb_m_shop VALUES (1, '5070e98a-acbb-4f1b-8075-0abe681c53ba', 1, 'Casting', 'SYSTEM', '2023-06-01 21:07:36.390082', 'SYSTEM', '2023-06-01 21:07:36.390082', NULL, NULL);


--
-- TOC entry 3872 (class 0 OID 70173)
-- Dependencies: 234
-- Data for Name: tb_m_tsk; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3874 (class 0 OID 70182)
-- Dependencies: 236
-- Data for Name: tb_m_tskk; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3848 (class 0 OID 70001)
-- Dependencies: 210
-- Data for Name: tb_m_users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.tb_m_users VALUES (1, 'f2247616-8a40-4c0f-bbd2-33b059e834ad', 'Fajar Tri Cahyono', '1629083', '082211511213', '2023-06-01 22:40:47.509444', 'SYSTEM', '2023-06-01 22:40:47.509444', 'SYSTEM', NULL, NULL, 1, '$2a$10$dhGJsQqe2JGk6sfxDpjC.O34zHKeiAOs3mr8j8idhdwSFBmLkECzK', 1, true);
INSERT INTO public.tb_m_users VALUES (2, '5ffa52fe-68c1-4f99-8a14-7e6c1038b086', 'Dita Nurlita', '1527511', '081385678582', '2023-06-01 23:21:06.82027', 'SYSTEM', '2023-06-01 23:21:06.82027', 'SYSTEM', NULL, NULL, 1, '$2a$10$NgxL7OjQT0xvDrhCmqMAL.lgLeGwUw6238MBVkfeocEJismxWF/O6', 1, true);


--
-- TOC entry 3880 (class 0 OID 70215)
-- Dependencies: 242
-- Data for Name: tb_r_obs_checker; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3878 (class 0 OID 70208)
-- Dependencies: 240
-- Data for Name: tb_r_obs_members; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3882 (class 0 OID 70222)
-- Dependencies: 244
-- Data for Name: tb_r_obs_results; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3876 (class 0 OID 70201)
-- Dependencies: 238
-- Data for Name: tb_r_observations; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3884 (class 0 OID 70229)
-- Dependencies: 246
-- Data for Name: tb_r_result_findings; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 3913 (class 0 OID 0)
-- Dependencies: 231
-- Name: tb_m_categories_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_categories_category_id_seq', 1, false);


--
-- TOC entry 3914 (class 0 OID 0)
-- Dependencies: 219
-- Name: tb_m_company_company_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_company_company_id_seq', 3, true);


--
-- TOC entry 3915 (class 0 OID 0)
-- Dependencies: 229
-- Name: tb_m_faktors_faktor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_faktors_faktor_id_seq', 5, true);


--
-- TOC entry 3916 (class 0 OID 0)
-- Dependencies: 227
-- Name: tb_m_group_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_group_group_id_seq', 3, true);


--
-- TOC entry 3917 (class 0 OID 0)
-- Dependencies: 225
-- Name: tb_m_job_job_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_job_job_id_seq', 1, false);


--
-- TOC entry 3918 (class 0 OID 0)
-- Dependencies: 223
-- Name: tb_m_job_type_job_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_job_type_job_type_id_seq', 3, true);


--
-- TOC entry 3919 (class 0 OID 0)
-- Dependencies: 247
-- Name: tb_m_judgments_judgment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_judgments_judgment_id_seq', 1, false);


--
-- TOC entry 3920 (class 0 OID 0)
-- Dependencies: 211
-- Name: tb_m_lines_line_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_lines_line_id_seq', 1, true);


--
-- TOC entry 3921 (class 0 OID 0)
-- Dependencies: 221
-- Name: tb_m_machines_machine_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_machines_machine_id_seq', 1, false);


--
-- TOC entry 3922 (class 0 OID 0)
-- Dependencies: 217
-- Name: tb_m_plants_plant_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_plants_plant_id_seq', 1, true);


--
-- TOC entry 3923 (class 0 OID 0)
-- Dependencies: 213
-- Name: tb_m_pos_pos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_pos_pos_id_seq', 1, true);


--
-- TOC entry 3924 (class 0 OID 0)
-- Dependencies: 215
-- Name: tb_m_shop_shop_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_shop_shop_id_seq', 3, true);


--
-- TOC entry 3925 (class 0 OID 0)
-- Dependencies: 233
-- Name: tb_m_tsk_tsk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_tsk_tsk_id_seq', 1, false);


--
-- TOC entry 3926 (class 0 OID 0)
-- Dependencies: 235
-- Name: tb_m_tskk_tskk_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_tskk_tskk_id_seq', 1, false);


--
-- TOC entry 3927 (class 0 OID 0)
-- Dependencies: 209
-- Name: tb_m_users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_m_users_user_id_seq', 1, false);


--
-- TOC entry 3928 (class 0 OID 0)
-- Dependencies: 241
-- Name: tb_r_obs_checker_obs_checker_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_r_obs_checker_obs_checker_id_seq', 1, false);


--
-- TOC entry 3929 (class 0 OID 0)
-- Dependencies: 239
-- Name: tb_r_obs_members_obs_member_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_r_obs_members_obs_member_id_seq', 1, false);


--
-- TOC entry 3930 (class 0 OID 0)
-- Dependencies: 243
-- Name: tb_r_obs_results_obs_result_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_r_obs_results_obs_result_id_seq', 1, false);


--
-- TOC entry 3931 (class 0 OID 0)
-- Dependencies: 237
-- Name: tb_r_observations_observation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_r_observations_observation_id_seq', 1, false);


--
-- TOC entry 3932 (class 0 OID 0)
-- Dependencies: 245
-- Name: tb_r_result_findings_result_finding_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tb_r_result_findings_result_finding_id_seq', 1, false);


--
-- TOC entry 3671 (class 2606 OID 70158)
-- Name: tb_m_categories pk_tb_m_categories; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_categories
    ADD CONSTRAINT pk_tb_m_categories PRIMARY KEY (category_id);


--
-- TOC entry 3659 (class 2606 OID 70060)
-- Name: tb_m_companies pk_tb_m_company; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_companies
    ADD CONSTRAINT pk_tb_m_company PRIMARY KEY (company_id);


--
-- TOC entry 3669 (class 2606 OID 70151)
-- Name: tb_m_factors pk_tb_m_faktors; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_factors
    ADD CONSTRAINT pk_tb_m_faktors PRIMARY KEY (factor_id);


--
-- TOC entry 3667 (class 2606 OID 70105)
-- Name: tb_m_groups pk_tb_m_group; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_groups
    ADD CONSTRAINT pk_tb_m_group PRIMARY KEY (group_id);


--
-- TOC entry 3665 (class 2606 OID 70092)
-- Name: tb_m_jobs pk_tb_m_job; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_jobs
    ADD CONSTRAINT pk_tb_m_job PRIMARY KEY (job_id);


--
-- TOC entry 3663 (class 2606 OID 70083)
-- Name: tb_m_job_types pk_tb_m_job_type; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_job_types
    ADD CONSTRAINT pk_tb_m_job_type PRIMARY KEY (job_type_id);


--
-- TOC entry 3687 (class 2606 OID 70273)
-- Name: tb_m_judgments pk_tb_m_judgments; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_judgments
    ADD CONSTRAINT pk_tb_m_judgments PRIMARY KEY (judgment_id);


--
-- TOC entry 3651 (class 2606 OID 70019)
-- Name: tb_m_lines pk_tb_m_lines; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_lines
    ADD CONSTRAINT pk_tb_m_lines PRIMARY KEY (line_id);


--
-- TOC entry 3661 (class 2606 OID 70067)
-- Name: tb_m_machines pk_tb_m_machines; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_machines
    ADD CONSTRAINT pk_tb_m_machines PRIMARY KEY (machine_id);


--
-- TOC entry 3657 (class 2606 OID 70053)
-- Name: tb_m_plants pk_tb_m_plants; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_plants
    ADD CONSTRAINT pk_tb_m_plants PRIMARY KEY (plant_id);


--
-- TOC entry 3653 (class 2606 OID 70039)
-- Name: tb_m_pos pk_tb_m_pos; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_pos
    ADD CONSTRAINT pk_tb_m_pos PRIMARY KEY (pos_id);


--
-- TOC entry 3655 (class 2606 OID 70046)
-- Name: tb_m_shop pk_tb_m_shop; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_shop
    ADD CONSTRAINT pk_tb_m_shop PRIMARY KEY (shop_id);


--
-- TOC entry 3673 (class 2606 OID 70180)
-- Name: tb_m_tsk pk_tb_m_tsk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_tsk
    ADD CONSTRAINT pk_tb_m_tsk PRIMARY KEY (tsk_id);


--
-- TOC entry 3675 (class 2606 OID 70189)
-- Name: tb_m_tskk pk_tb_m_tskk; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_tskk
    ADD CONSTRAINT pk_tb_m_tskk PRIMARY KEY (tskk_id);


--
-- TOC entry 3649 (class 2606 OID 70012)
-- Name: tb_m_users pk_tb_m_users; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_users
    ADD CONSTRAINT pk_tb_m_users PRIMARY KEY (user_id);


--
-- TOC entry 3681 (class 2606 OID 70220)
-- Name: tb_r_obs_checker pk_tb_r_obs_checker; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_checker
    ADD CONSTRAINT pk_tb_r_obs_checker PRIMARY KEY (obs_checker_id);


--
-- TOC entry 3679 (class 2606 OID 70213)
-- Name: tb_r_obs_members pk_tb_r_obs_members; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_members
    ADD CONSTRAINT pk_tb_r_obs_members PRIMARY KEY (obs_member_id);


--
-- TOC entry 3683 (class 2606 OID 70227)
-- Name: tb_r_obs_results pk_tb_r_obs_results; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_results
    ADD CONSTRAINT pk_tb_r_obs_results PRIMARY KEY (obs_result_id);


--
-- TOC entry 3677 (class 2606 OID 70206)
-- Name: tb_r_observations pk_tb_r_observations; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_observations
    ADD CONSTRAINT pk_tb_r_observations PRIMARY KEY (observation_id);


--
-- TOC entry 3685 (class 2606 OID 70236)
-- Name: tb_r_result_findings pk_tb_r_result_findings; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_result_findings
    ADD CONSTRAINT pk_tb_r_result_findings PRIMARY KEY (result_finding_id);


--
-- TOC entry 3695 (class 2606 OID 70093)
-- Name: tb_m_jobs fk_tb_m_job; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_jobs
    ADD CONSTRAINT fk_tb_m_job FOREIGN KEY (job_type_id) REFERENCES public.tb_m_job_types(job_type_id);


--
-- TOC entry 3696 (class 2606 OID 70167)
-- Name: tb_m_jobs fk_tb_m_job_pos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_jobs
    ADD CONSTRAINT fk_tb_m_job_pos FOREIGN KEY (pos_id) REFERENCES public.tb_m_pos(pos_id);


--
-- TOC entry 3690 (class 2606 OID 70116)
-- Name: tb_m_lines fk_tb_m_lines_shop; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_lines
    ADD CONSTRAINT fk_tb_m_lines_shop FOREIGN KEY (shop_id) REFERENCES public.tb_m_shop(shop_id);


--
-- TOC entry 3694 (class 2606 OID 70121)
-- Name: tb_m_machines fk_tb_m_machines_line; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_machines
    ADD CONSTRAINT fk_tb_m_machines_line FOREIGN KEY (line_id) REFERENCES public.tb_m_lines(line_id);


--
-- TOC entry 3693 (class 2606 OID 70106)
-- Name: tb_m_plants fk_tb_m_plants_company; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_plants
    ADD CONSTRAINT fk_tb_m_plants_company FOREIGN KEY (company_id) REFERENCES public.tb_m_companies(company_id);


--
-- TOC entry 3691 (class 2606 OID 70126)
-- Name: tb_m_pos fk_tb_m_pos_line; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_pos
    ADD CONSTRAINT fk_tb_m_pos_line FOREIGN KEY (line_id) REFERENCES public.tb_m_lines(line_id);


--
-- TOC entry 3692 (class 2606 OID 70111)
-- Name: tb_m_shop fk_tb_m_shop_plant; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_shop
    ADD CONSTRAINT fk_tb_m_shop_plant FOREIGN KEY (plant_id) REFERENCES public.tb_m_plants(plant_id);


--
-- TOC entry 3697 (class 2606 OID 70190)
-- Name: tb_m_tsk fk_tb_m_tsk_tb_m_pos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_tsk
    ADD CONSTRAINT fk_tb_m_tsk_tb_m_pos FOREIGN KEY (pos_id) REFERENCES public.tb_m_pos(pos_id);


--
-- TOC entry 3698 (class 2606 OID 70195)
-- Name: tb_m_tskk fk_tb_m_tskk_tb_m_pos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_tskk
    ADD CONSTRAINT fk_tb_m_tskk_tb_m_pos FOREIGN KEY (pos_id) REFERENCES public.tb_m_pos(pos_id);


--
-- TOC entry 3688 (class 2606 OID 70131)
-- Name: tb_m_users fk_tb_m_users_tb_m_group; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_users
    ADD CONSTRAINT fk_tb_m_users_tb_m_group FOREIGN KEY (group_id) REFERENCES public.tb_m_groups(group_id);


--
-- TOC entry 3689 (class 2606 OID 70296)
-- Name: tb_m_users fk_tb_m_users_tb_m_lines; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_m_users
    ADD CONSTRAINT fk_tb_m_users_tb_m_lines FOREIGN KEY (line_id) REFERENCES public.tb_m_lines(line_id);


--
-- TOC entry 3702 (class 2606 OID 70247)
-- Name: tb_r_obs_checker fk_tb_r_obs_checker; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_checker
    ADD CONSTRAINT fk_tb_r_obs_checker FOREIGN KEY (observation_id) REFERENCES public.tb_r_observations(observation_id);


--
-- TOC entry 3701 (class 2606 OID 70242)
-- Name: tb_r_obs_members fk_tb_r_obs_members; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_members
    ADD CONSTRAINT fk_tb_r_obs_members FOREIGN KEY (observation_id) REFERENCES public.tb_r_observations(observation_id);


--
-- TOC entry 3703 (class 2606 OID 70252)
-- Name: tb_r_obs_results fk_tb_r_obs_results; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_results
    ADD CONSTRAINT fk_tb_r_obs_results FOREIGN KEY (observation_id) REFERENCES public.tb_r_observations(observation_id);


--
-- TOC entry 3705 (class 2606 OID 70262)
-- Name: tb_r_obs_results fk_tb_r_obs_results_category; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_results
    ADD CONSTRAINT fk_tb_r_obs_results_category FOREIGN KEY (category_id) REFERENCES public.tb_m_categories(category_id);


--
-- TOC entry 3704 (class 2606 OID 70257)
-- Name: tb_r_obs_results fk_tb_r_obs_results_factor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_results
    ADD CONSTRAINT fk_tb_r_obs_results_factor FOREIGN KEY (factor_id) REFERENCES public.tb_m_factors(factor_id);


--
-- TOC entry 3706 (class 2606 OID 70274)
-- Name: tb_r_obs_results fk_tb_r_obs_results_judg; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_obs_results
    ADD CONSTRAINT fk_tb_r_obs_results_judg FOREIGN KEY (judgment_id) REFERENCES public.tb_m_judgments(judgment_id);


--
-- TOC entry 3700 (class 2606 OID 70284)
-- Name: tb_r_observations fk_tb_r_observations_job; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_observations
    ADD CONSTRAINT fk_tb_r_observations_job FOREIGN KEY (job_id) REFERENCES public.tb_m_jobs(job_id);


--
-- TOC entry 3699 (class 2606 OID 70237)
-- Name: tb_r_observations fk_tb_r_observations_tb_m_pos; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_observations
    ADD CONSTRAINT fk_tb_r_observations_tb_m_pos FOREIGN KEY (pos_id) REFERENCES public.tb_m_pos(pos_id);


--
-- TOC entry 3707 (class 2606 OID 70279)
-- Name: tb_r_result_findings fk_tb_r_result_findings; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tb_r_result_findings
    ADD CONSTRAINT fk_tb_r_result_findings FOREIGN KEY (obs_result_id) REFERENCES public.tb_r_obs_results(obs_result_id);


-- Completed on 2023-06-02 18:46:38 WIB

--
-- PostgreSQL database dump complete
--

