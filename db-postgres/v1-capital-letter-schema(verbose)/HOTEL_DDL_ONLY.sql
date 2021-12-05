--
-- PostgreSQL database dump
--

-- Dumped from database version 13.5
-- Dumped by pg_dump version 13.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'ISO_8859_5';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: postgres; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE postgres WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';


ALTER DATABASE postgres OWNER TO postgres;

\connect postgres

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'ISO_8859_5';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: DATABASE postgres; Type: COMMENT; Schema: -; Owner: postgres
--

COMMENT ON DATABASE postgres IS 'default administrative connection database';


--
-- Name: HOTEL; Type: SCHEMA; Schema: -; Owner: postgres
--

CREATE SCHEMA "HOTEL";


ALTER SCHEMA "HOTEL" OWNER TO postgres;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: MGMT_ITEM; Type: TABLE; Schema: HOTEL; Owner: postgres
--

CREATE TABLE "HOTEL"."MGMT_ITEM" (
    "ITEM_ID" bigint NOT NULL,
    "ITEM_NAME" character varying NOT NULL,
    "ITEM_CATE_ID" integer NOT NULL,
    "ITEM_TRAIT_ID" integer NOT NULL,
    "ITEM_ORDER" integer NOT NULL
);


ALTER TABLE "HOTEL"."MGMT_ITEM" OWNER TO postgres;

--
-- Name: MGMT_ITEM_CATEGORY; Type: TABLE; Schema: HOTEL; Owner: postgres
--

CREATE TABLE "HOTEL"."MGMT_ITEM_CATEGORY" (
    "ITEM_CATE_ID" integer NOT NULL,
    "ITEM_CATE_NAME" character varying NOT NULL,
    "ITEM_CATE_ORDER" smallint NOT NULL
);


ALTER TABLE "HOTEL"."MGMT_ITEM_CATEGORY" OWNER TO postgres;

--
-- Name: MGMT_ITEM_TRAIT; Type: TABLE; Schema: HOTEL; Owner: postgres
--

CREATE TABLE "HOTEL"."MGMT_ITEM_TRAIT" (
    "ITEM_TRAIT_ID" integer NOT NULL,
    "ITEM_TRAIT_NAME" character varying NOT NULL
);


ALTER TABLE "HOTEL"."MGMT_ITEM_TRAIT" OWNER TO postgres;

--
-- Name: MGMT_ITEM_TRAIT_DTL; Type: TABLE; Schema: HOTEL; Owner: postgres
--

CREATE TABLE "HOTEL"."MGMT_ITEM_TRAIT_DTL" (
    "ITEM_TRAIT_DTL_ID" integer NOT NULL,
    "ITEM_TRAIT_DTL_NAME" character varying NOT NULL,
    "ITEM_TRAIT_ID" integer NOT NULL,
    "ITEM_TRAIT_DTL_ORDER" smallint NOT NULL
);


ALTER TABLE "HOTEL"."MGMT_ITEM_TRAIT_DTL" OWNER TO postgres;

--
-- Name: MGMT_ITEM_TRAIT_SETTING; Type: TABLE; Schema: HOTEL; Owner: postgres
--

CREATE TABLE "HOTEL"."MGMT_ITEM_TRAIT_SETTING" (
    "ITEM_TRAIT_SETTING_ID" bigint NOT NULL,
    "ITEM_ID" integer NOT NULL,
    "ITEM_TRAIT_DTL_ID" integer NOT NULL,
    "ITEM_TRAIT_SETTING_VALUE" character varying NOT NULL,
    "ITEM_TRAIT_SETTING_ORDER" smallint NOT NULL
);


ALTER TABLE "HOTEL"."MGMT_ITEM_TRAIT_SETTING" OWNER TO postgres;

--
-- Name: MGMT_ORG_ENTITY; Type: TABLE; Schema: HOTEL; Owner: postgres
--

CREATE TABLE "HOTEL"."MGMT_ORG_ENTITY" (
    "ENTITY_ID" bigint NOT NULL,
    "ENTITY_HICHY_ID" integer NOT NULL,
    "ENTITY_DESC" character varying NOT NULL,
    "UPPER_ENTITY_ID" bigint
);


ALTER TABLE "HOTEL"."MGMT_ORG_ENTITY" OWNER TO postgres;

--
-- Name: MGMT_ORG_HICHY; Type: TABLE; Schema: HOTEL; Owner: postgres
--

CREATE TABLE "HOTEL"."MGMT_ORG_HICHY" (
    "DEPT_HICHY_ID" integer NOT NULL,
    "DEPT_HICHY_NAME" character varying NOT NULL
);


ALTER TABLE "HOTEL"."MGMT_ORG_HICHY" OWNER TO postgres;

--
-- Name: MGMT_ITEM_CATEGORY MGMT_ITEM_CATEGORY_pkey; Type: CONSTRAINT; Schema: HOTEL; Owner: postgres
--

ALTER TABLE ONLY "HOTEL"."MGMT_ITEM_CATEGORY"
    ADD CONSTRAINT "MGMT_ITEM_CATEGORY_pkey" PRIMARY KEY ("ITEM_CATE_ID");


--
-- Name: MGMT_ITEM_TRAIT_DTL MGMT_ITEM_TRAIT_DTL_pkey; Type: CONSTRAINT; Schema: HOTEL; Owner: postgres
--

ALTER TABLE ONLY "HOTEL"."MGMT_ITEM_TRAIT_DTL"
    ADD CONSTRAINT "MGMT_ITEM_TRAIT_DTL_pkey" PRIMARY KEY ("ITEM_TRAIT_DTL_ID");


--
-- Name: MGMT_ITEM_TRAIT_SETTING MGMT_ITEM_TRAIT_SETTING_pkey; Type: CONSTRAINT; Schema: HOTEL; Owner: postgres
--

ALTER TABLE ONLY "HOTEL"."MGMT_ITEM_TRAIT_SETTING"
    ADD CONSTRAINT "MGMT_ITEM_TRAIT_SETTING_pkey" PRIMARY KEY ("ITEM_TRAIT_SETTING_VALUE");


--
-- Name: MGMT_ITEM_TRAIT MGMT_ITEM_TRAIT_pkey; Type: CONSTRAINT; Schema: HOTEL; Owner: postgres
--

ALTER TABLE ONLY "HOTEL"."MGMT_ITEM_TRAIT"
    ADD CONSTRAINT "MGMT_ITEM_TRAIT_pkey" PRIMARY KEY ("ITEM_TRAIT_ID");


--
-- Name: MGMT_ORG_ENTITY MGMT_ORG_DEPT_pkey; Type: CONSTRAINT; Schema: HOTEL; Owner: postgres
--

ALTER TABLE ONLY "HOTEL"."MGMT_ORG_ENTITY"
    ADD CONSTRAINT "MGMT_ORG_DEPT_pkey" PRIMARY KEY ("ENTITY_ID");


--
-- Name: MGMT_ORG_HICHY MGMT_ORG_HICHY_pkey; Type: CONSTRAINT; Schema: HOTEL; Owner: postgres
--

ALTER TABLE ONLY "HOTEL"."MGMT_ORG_HICHY"
    ADD CONSTRAINT "MGMT_ORG_HICHY_pkey" PRIMARY KEY ("DEPT_HICHY_ID");


--
-- Name: MGMT_ITEM MGMT_ORG_REPO_pkey; Type: CONSTRAINT; Schema: HOTEL; Owner: postgres
--

ALTER TABLE ONLY "HOTEL"."MGMT_ITEM"
    ADD CONSTRAINT "MGMT_ORG_REPO_pkey" PRIMARY KEY ("ITEM_ID");


--
-- Name: MGMT_ORG_ENTITY FK_ENTITY_HICHY_ID; Type: FK CONSTRAINT; Schema: HOTEL; Owner: postgres
--

ALTER TABLE ONLY "HOTEL"."MGMT_ORG_ENTITY"
    ADD CONSTRAINT "FK_ENTITY_HICHY_ID" FOREIGN KEY ("ENTITY_HICHY_ID") REFERENCES "HOTEL"."MGMT_ORG_HICHY"("DEPT_HICHY_ID");


--
-- Name: MGMT_ITEM FK_ITEM_CATE_ID; Type: FK CONSTRAINT; Schema: HOTEL; Owner: postgres
--

ALTER TABLE ONLY "HOTEL"."MGMT_ITEM"
    ADD CONSTRAINT "FK_ITEM_CATE_ID" FOREIGN KEY ("ITEM_CATE_ID") REFERENCES "HOTEL"."MGMT_ITEM_CATEGORY"("ITEM_CATE_ID");


--
-- Name: MGMT_ITEM_TRAIT_SETTING FK_ITEM_ID; Type: FK CONSTRAINT; Schema: HOTEL; Owner: postgres
--

ALTER TABLE ONLY "HOTEL"."MGMT_ITEM_TRAIT_SETTING"
    ADD CONSTRAINT "FK_ITEM_ID" FOREIGN KEY ("ITEM_ID") REFERENCES "HOTEL"."MGMT_ITEM"("ITEM_ID");


--
-- Name: MGMT_ITEM_TRAIT_SETTING FK_ITEM_TRAIT_DTL_ID; Type: FK CONSTRAINT; Schema: HOTEL; Owner: postgres
--

ALTER TABLE ONLY "HOTEL"."MGMT_ITEM_TRAIT_SETTING"
    ADD CONSTRAINT "FK_ITEM_TRAIT_DTL_ID" FOREIGN KEY ("ITEM_TRAIT_DTL_ID") REFERENCES "HOTEL"."MGMT_ITEM_TRAIT_DTL"("ITEM_TRAIT_DTL_ID");


--
-- Name: MGMT_ITEM_TRAIT_DTL FK_ITEM_TRAIT_ID; Type: FK CONSTRAINT; Schema: HOTEL; Owner: postgres
--

ALTER TABLE ONLY "HOTEL"."MGMT_ITEM_TRAIT_DTL"
    ADD CONSTRAINT "FK_ITEM_TRAIT_ID" FOREIGN KEY ("ITEM_TRAIT_ID") REFERENCES "HOTEL"."MGMT_ITEM_TRAIT"("ITEM_TRAIT_ID");


--
-- Name: MGMT_ITEM FK_ITEM_TRAIT_ID; Type: FK CONSTRAINT; Schema: HOTEL; Owner: postgres
--

ALTER TABLE ONLY "HOTEL"."MGMT_ITEM"
    ADD CONSTRAINT "FK_ITEM_TRAIT_ID" FOREIGN KEY ("ITEM_TRAIT_ID") REFERENCES "HOTEL"."MGMT_ITEM_TRAIT"("ITEM_TRAIT_ID");


--
-- Name: MGMT_ORG_ENTITY FK_UPPER_ENTITY_ID; Type: FK CONSTRAINT; Schema: HOTEL; Owner: postgres
--

ALTER TABLE ONLY "HOTEL"."MGMT_ORG_ENTITY"
    ADD CONSTRAINT "FK_UPPER_ENTITY_ID" FOREIGN KEY ("UPPER_ENTITY_ID") REFERENCES "HOTEL"."MGMT_ORG_ENTITY"("ENTITY_ID");


--
-- PostgreSQL database dump complete
--

