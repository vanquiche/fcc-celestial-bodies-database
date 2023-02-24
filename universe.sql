
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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50),
    type character varying NOT NULL,
    size_thous_ly numeric(10,2) NOT NULL,
    constellation character varying(30) NOT NULL,
    distance_in_mill_ly integer
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
    name character varying(20) NOT NULL,
    planet_id integer NOT NULL,
    explored boolean,
    moon_station_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_station; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon_station (
    moon_station_id integer NOT NULL,
    name character varying(30) NOT NULL,
    moon_id integer NOT NULL,
    crew_race text,
    no_of_crew integer
);


ALTER TABLE public.moon_station OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(20) NOT NULL,
    planet_type text,
    inhabited boolean,
    star_id integer,
    no_of_moons integer NOT NULL
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
    name character varying(50) NOT NULL,
    galaxy_id integer NOT NULL,
    age_bill_yrs numeric(10,3) NOT NULL,
    is_binary boolean,
    no_of_planets integer NOT NULL
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
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'spiral', 110.00, 'Andromeda', 2537);
INSERT INTO public.galaxy VALUES (2, 'Black eye Galaxy', 'spiral', 54.00, 'Coma Berenices', 17);
INSERT INTO public.galaxy VALUES (3, 'Cartwheel Galaxy', 'lenticular ring', 144.30, 'Sculptor', 500);
INSERT INTO public.galaxy VALUES (4, 'Eye of Sauron Galaxy', 'spiral Seyfert', 58.04, 'Canes Venatici', 52);
INSERT INTO public.galaxy VALUES (5, 'Fireworks Galaxy', 'spiral', 40.00, 'Cepheus', 25);
INSERT INTO public.galaxy VALUES (6, 'Southern Pinwheel Galaxy', 'barred spiral', 27.75, 'Hydra', 15);
INSERT INTO public.galaxy VALUES (7, 'Milky Way', 'barred spiral', 52.85, 'Saggittarius', 0);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Aina-1', 3, false, NULL);
INSERT INTO public.moon VALUES (2, 'Aina-2', 3, false, NULL);
INSERT INTO public.moon VALUES (3, 'Aina-3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Venia-1', 4, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Venia-2', 4, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Lilikas child', 5, true, NULL);
INSERT INTO public.moon VALUES (7, 'Lilika-2', 5, true, NULL);
INSERT INTO public.moon VALUES (10, 'Bow', 6, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Big Bull', 6, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Brighton', 7, true, NULL);
INSERT INTO public.moon VALUES (13, 'Luminous', 7, true, NULL);
INSERT INTO public.moon VALUES (14, 'Bogh', 9, false, NULL);
INSERT INTO public.moon VALUES (16, 'Zinaida', 10, true, NULL);
INSERT INTO public.moon VALUES (17, 'Zina', 10, false, NULL);
INSERT INTO public.moon VALUES (18, 'Raja', 10, false, NULL);
INSERT INTO public.moon VALUES (19, 'Rekah', 12, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Rumi', 12, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Rem', 12, false, NULL);
INSERT INTO public.moon VALUES (25, 'Electron', 16, true, NULL);
INSERT INTO public.moon VALUES (26, 'Berta', 17, false, NULL);
INSERT INTO public.moon VALUES (27, 'Marilyn', 17, NULL, NULL);
INSERT INTO public.moon VALUES (29, 'Titan', 19, false, NULL);
INSERT INTO public.moon VALUES (31, 'Io', 20, false, NULL);
INSERT INTO public.moon VALUES (32, 'Phobos', 21, NULL, NULL);
INSERT INTO public.moon VALUES (33, 'Deimos', 21, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Korona New', 2, true, 4);
INSERT INTO public.moon VALUES (9, 'Hunter', 6, false, 5);
INSERT INTO public.moon VALUES (15, 'Sputnik', 9, true, 6);
INSERT INTO public.moon VALUES (22, 'Alex', 13, true, 7);
INSERT INTO public.moon VALUES (23, 'Mathew', 15, true, 1);
INSERT INTO public.moon VALUES (24, 'New Earth', 15, true, 2);
INSERT INTO public.moon VALUES (28, 'Moon', 18, true, 8);
INSERT INTO public.moon VALUES (30, 'Europa', 20, true, 3);


--
-- Data for Name: moon_station; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon_station VALUES (1, 'Texas', 23, 'Earthean', 20);
INSERT INTO public.moon_station VALUES (2, 'New York', 24, 'Earthean', 30);
INSERT INTO public.moon_station VALUES (3, 'Galatea', 30, 'Earthean', 15);
INSERT INTO public.moon_station VALUES (4, 'Catana', 8, 'Koronean', 25);
INSERT INTO public.moon_station VALUES (5, 'Bright Star', 9, 'Dianean', 110);
INSERT INTO public.moon_station VALUES (6, 'Gagarin', 15, 'Earthean', 55);
INSERT INTO public.moon_station VALUES (7, 'Victory', 22, 'Lidian', 15);
INSERT INTO public.moon_station VALUES (8, 'Gateway', 28, 'Earthean', 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Zeda', 'terrestrial', false, 6, 0);
INSERT INTO public.planet VALUES (3, 'Aina', 'gas giant', NULL, 6, 3);
INSERT INTO public.planet VALUES (4, 'Venia', 'gas giant', false, 3, 2);
INSERT INTO public.planet VALUES (5, 'Lilika', 'neptunian', false, 3, 2);
INSERT INTO public.planet VALUES (2, 'Korona', 'super-Earth', true, 3, 1);
INSERT INTO public.planet VALUES (6, 'Diana', 'terrestrial', true, 3, 3);
INSERT INTO public.planet VALUES (7, 'Neona', 'gas giant', false, 4, 2);
INSERT INTO public.planet VALUES (8, 'Luchia', 'terrestrial', NULL, 4, 0);
INSERT INTO public.planet VALUES (9, 'Dimir', 'super-Earth', true, 4, 2);
INSERT INTO public.planet VALUES (10, 'Zina', 'neptunian', false, 7, 3);
INSERT INTO public.planet VALUES (11, 'Derek', 'terrestrial', NULL, 7, 0);
INSERT INTO public.planet VALUES (12, 'Rado', 'gas giant', false, 8, 3);
INSERT INTO public.planet VALUES (13, 'Lidia', 'neptunian', true, 8, 1);
INSERT INTO public.planet VALUES (14, 'Zeus', 'gas giant', false, 8, 0);
INSERT INTO public.planet VALUES (15, 'Greena', 'super-Earth', true, 8, 2);
INSERT INTO public.planet VALUES (16, 'Mimosa', 'terrestrial', false, 8, 1);
INSERT INTO public.planet VALUES (17, 'Tauros', 'gas giant', NULL, 8, 2);
INSERT INTO public.planet VALUES (18, 'Earth', 'terrestrial', true, 9, 1);
INSERT INTO public.planet VALUES (19, 'Saturn', 'gas giant', false, 9, 82);
INSERT INTO public.planet VALUES (20, 'Jupiter', 'gas giant', NULL, 9, 79);
INSERT INTO public.planet VALUES (21, 'Mars', 'terrestrial', false, 9, 2);
INSERT INTO public.planet VALUES (22, 'Mercury', 'rocky', false, 9, 0);
INSERT INTO public.planet VALUES (23, 'Venus', 'terrestrial', false, 9, 0);
INSERT INTO public.planet VALUES (24, 'Uranus', 'ice giant', false, 9, 27);
INSERT INTO public.planet VALUES (25, 'Neptune', 'ice giant', false, 9, 14);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Miraj', 1, 2.500, false, 5);
INSERT INTO public.star VALUES (2, 'Kona', 6, 5.750, false, 3);
INSERT INTO public.star VALUES (3, 'Lemur', 3, 3.420, NULL, 4);
INSERT INTO public.star VALUES (4, 'Bella', 5, 4.763, true, 7);
INSERT INTO public.star VALUES (5, 'Norin', 2, 3.977, false, 4);
INSERT INTO public.star VALUES (6, 'Tipoc', 1, 6.715, false, 2);
INSERT INTO public.star VALUES (7, 'Zarina', 5, 2.990, true, 7);
INSERT INTO public.star VALUES (8, 'Lumina', 4, 3.660, false, 6);
INSERT INTO public.star VALUES (9, 'Sun', 7, 4.603, false, 8);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 5, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 9, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: moon_station moon_station_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_station
    ADD CONSTRAINT moon_station_name_key UNIQUE (name);


--
-- Name: moon_station moon_station_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_station
    ADD CONSTRAINT moon_station_pkey PRIMARY KEY (moon_station_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: moon moon_moon_station_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_station_id_fkey FOREIGN KEY (moon_station_id) REFERENCES public.moon_station(moon_station_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: moon_station moon_station_moon_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon_station
    ADD CONSTRAINT moon_station_moon_id_fkey FOREIGN KEY (moon_id) REFERENCES public.moon(moon_id);


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
