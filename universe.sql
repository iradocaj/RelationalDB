--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
-- Name: dodatna; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dodatna (
    dodatna_id integer NOT NULL,
    name character varying(50) NOT NULL,
    age integer
);


ALTER TABLE public.dodatna OWNER TO freecodecamp;

--
-- Name: dodatna_dodatna_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dodatna_dodatna_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dodatna_dodatna_id_seq OWNER TO freecodecamp;

--
-- Name: dodatna_dodatna_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dodatna_dodatna_id_seq OWNED BY public.dodatna.dodatna_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    size integer,
    test integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    planet_id integer,
    name character varying(50) NOT NULL,
    size integer,
    test integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    star_id integer,
    name character varying(50) NOT NULL,
    has_life boolean,
    distance_from_earth numeric(5,2),
    age integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(50) NOT NULL,
    age_in_millions integer,
    is_alive boolean
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: dodatna dodatna_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dodatna ALTER COLUMN dodatna_id SET DEFAULT nextval('public.dodatna_dodatna_id_seq'::regclass);


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: dodatna; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dodatna VALUES (1, 'a', 1);
INSERT INTO public.dodatna VALUES (2, 'b', 2);
INSERT INTO public.dodatna VALUES (3, 'c', 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'milky way', 'nesto', 25, 1);
INSERT INTO public.galaxy VALUES (2, 'galaksija2', 'nesto2', 30, 1);
INSERT INTO public.galaxy VALUES (3, 'galaksija3', 'nesto3', 31, 8);
INSERT INTO public.galaxy VALUES (4, 'galaksija4', 'nesto4', 31, 8);
INSERT INTO public.galaxy VALUES (5, 'galaksija5', 'nesto5', 31, 8);
INSERT INTO public.galaxy VALUES (6, 'galaksija6', 'nesto6', 31, 8);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'a', 1, 1);
INSERT INTO public.moon VALUES (2, 1, 'a', 2, 1);
INSERT INTO public.moon VALUES (3, 1, 'a', 3, 1);
INSERT INTO public.moon VALUES (4, 1, 'a', 4, 1);
INSERT INTO public.moon VALUES (5, 1, 'a', 5, 1);
INSERT INTO public.moon VALUES (6, 1, 'a', 6, 1);
INSERT INTO public.moon VALUES (7, 1, 'a', 7, 1);
INSERT INTO public.moon VALUES (8, 1, 'a', 8, 1);
INSERT INTO public.moon VALUES (9, 1, 'a', 9, 1);
INSERT INTO public.moon VALUES (10, 1, 'a', 10, 1);
INSERT INTO public.moon VALUES (11, 1, 'a', 11, 1);
INSERT INTO public.moon VALUES (12, 1, 'a', 12, 1);
INSERT INTO public.moon VALUES (13, 1, 'a', 13, 1);
INSERT INTO public.moon VALUES (14, 1, 'a', 14, 1);
INSERT INTO public.moon VALUES (15, 1, 'a', 15, 1);
INSERT INTO public.moon VALUES (16, 1, 'a', 16, 1);
INSERT INTO public.moon VALUES (17, 1, 'a', 17, 1);
INSERT INTO public.moon VALUES (18, 1, 'a', 18, 1);
INSERT INTO public.moon VALUES (19, 1, 'a', 19, 1);
INSERT INTO public.moon VALUES (20, 1, 'a', 20, 1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'a', true, 100.00, 1);
INSERT INTO public.planet VALUES (2, 1, 'a', true, 100.00, 2);
INSERT INTO public.planet VALUES (3, 1, 'a', true, 100.00, 3);
INSERT INTO public.planet VALUES (4, 1, 'a', true, 100.00, 4);
INSERT INTO public.planet VALUES (5, 1, 'a', true, 100.00, 5);
INSERT INTO public.planet VALUES (6, 1, 'a', true, 100.00, 6);
INSERT INTO public.planet VALUES (7, 1, 'a', true, 100.00, 7);
INSERT INTO public.planet VALUES (8, 1, 'a', true, 100.00, 8);
INSERT INTO public.planet VALUES (9, 1, 'a', true, 100.00, 9);
INSERT INTO public.planet VALUES (10, 1, 'a', true, 100.00, 10);
INSERT INTO public.planet VALUES (11, 1, 'a', true, 100.00, 11);
INSERT INTO public.planet VALUES (12, 1, 'a', true, 100.00, 12);
INSERT INTO public.planet VALUES (13, 1, 'a', true, 100.00, 13);
INSERT INTO public.planet VALUES (14, 1, 'a', true, 100.00, 14);
INSERT INTO public.planet VALUES (15, 1, 'a', true, 100.00, 15);
INSERT INTO public.planet VALUES (16, 1, 'a', true, 100.00, 16);
INSERT INTO public.planet VALUES (17, 1, 'a', true, 100.00, 17);
INSERT INTO public.planet VALUES (18, 1, 'a', true, 100.00, 18);
INSERT INTO public.planet VALUES (19, 1, 'a', true, 100.00, 19);
INSERT INTO public.planet VALUES (20, 1, 'a', true, 100.00, 20);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'a', 100, true);
INSERT INTO public.star VALUES (2, 1, 'b', 200, false);
INSERT INTO public.star VALUES (3, 2, 'c', 250, true);
INSERT INTO public.star VALUES (4, 3, 'd', 800, true);
INSERT INTO public.star VALUES (5, 4, 'e', 500, true);
INSERT INTO public.star VALUES (6, 5, 'f', 600, false);


--
-- Name: dodatna_dodatna_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dodatna_dodatna_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: dodatna dodatna_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dodatna
    ADD CONSTRAINT dodatna_age_key UNIQUE (age);


--
-- Name: dodatna dodatna_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dodatna
    ADD CONSTRAINT dodatna_pkey PRIMARY KEY (dodatna_id);


--
-- Name: galaxy galaxy_description_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_description_key UNIQUE (description);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon moon_size_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_size_key UNIQUE (size);


--
-- Name: planet planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_age_key UNIQUE (age);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_age_in_millions_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_age_in_millions_key UNIQUE (age_in_millions);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

