--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;


CREATE DATABASE "modulo1" WITH TEMPLATE = template0 ENCODING = 'UTF8';

\connect "modulo1"


--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: estudiante_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.estudiante_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.estudiante_seq OWNER TO postgres;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: estudiante; Type: TABLE; Schema: public; Owner: postgres; Tablespace: 
--

CREATE TABLE public.estudiante (
    id integer DEFAULT nextval('public.estudiante_seq'::regclass) NOT NULL,
    nombre character varying
);


ALTER TABLE public.estudiante OWNER TO postgres;

--
-- Data for Name: estudiante; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.estudiante (id, nombre) FROM stdin;
1	Edward Rodrigo Hinojosa Ignacio
2	Juan Diego Ali Castillo
3	Misael Roca Saucedo
4	Joel Andres Quisbert Calderon
5	Jose Daniel Arancibia Sanjines
6	Erick Vladimir Hidalgo Conde
7	Alpharius Ramirez
\.


--
-- Name: estudiante_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.estudiante_seq', 8, true);


--
-- Name: estudiante_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres; Tablespace: 
--

ALTER TABLE ONLY public.estudiante
    ADD CONSTRAINT estudiante_pkey PRIMARY KEY (id);


--
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

