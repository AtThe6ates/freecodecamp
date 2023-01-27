--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(20) NOT NULL,
    diameter integer,
    weight integer,
    atmosphere boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20) NOT NULL,
    weight integer,
    diameter integer,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    weight integer,
    diameter integer,
    atmosphere boolean,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    diameter integer,
    weight integer,
    atmosphere boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    diameter integer,
    weight integer,
    distance numeric,
    description text,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, 'bla', NULL, NULL, NULL);
INSERT INTO public.asteroid VALUES (2, 'blub', NULL, NULL, NULL);
INSERT INTO public.asteroid VALUES (3, 'foo', NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'default', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'default', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'default', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'default', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'default', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (1, 'default', NULL, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'default', 3000, 100, NULL, 1);
INSERT INTO public.moon VALUES (2, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'default', NULL, NULL, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'default', 1000, 30000, NULL, 1);
INSERT INTO public.planet VALUES (2, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (3, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (4, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (6, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (7, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (8, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (9, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (10, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (11, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (12, 'default', NULL, NULL, NULL, NULL);
INSERT INTO public.planet VALUES (13, 'default', NULL, NULL, NULL, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'default', 10000, 3000000, NULL, NULL, NULL);
INSERT INTO public.star VALUES (2, 'default', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (3, 'default', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (4, 'default', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (5, 'default', NULL, NULL, NULL, NULL, NULL);
INSERT INTO public.star VALUES (6, 'default', NULL, NULL, NULL, NULL, NULL);


--
-- Name: asteroid asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_pkey PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_galaxy_id_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key1 UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id_key UNIQUE (planet_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id_key UNIQUE (star_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

