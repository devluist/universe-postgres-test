--
-- PostgreSQL database dump
--

-- Dumped from database version 14.2
-- Dumped by pg_dump version 14.2

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

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';


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
-- Name: dark_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.dark_hole (
    dark_hole_id integer NOT NULL,
    name character varying(30) NOT NULL,
    earth_distance integer NOT NULL,
    radius integer,
    age numeric(4,2),
    description text,
    is_near_earth boolean
);


ALTER TABLE public.dark_hole OWNER TO freecodecamp;

--
-- Name: dark_hole_dark_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.dark_hole_dark_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.dark_hole_dark_hole_id_seq OWNER TO freecodecamp;

--
-- Name: dark_hole_dark_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.dark_hole_dark_hole_id_seq OWNED BY public.dark_hole.dark_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    radius integer NOT NULL,
    age integer,
    temperature_celcius numeric(5,2),
    description text,
    has_life boolean
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
    name character varying(30) NOT NULL,
    radius integer NOT NULL,
    age integer,
    temperature_celcius numeric(5,2),
    description text,
    has_life boolean,
    planet_id integer
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
    name character varying(30) NOT NULL,
    radius integer NOT NULL,
    age integer,
    temperature_celcius numeric(5,2),
    description text,
    has_life boolean,
    star_id integer
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
    name character varying(30) NOT NULL,
    radius integer NOT NULL,
    age integer,
    temperature_celcius numeric(5,2),
    description text,
    has_life boolean,
    galaxy_id integer
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
-- Name: dark_hole dark_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dark_hole ALTER COLUMN dark_hole_id SET DEFAULT nextval('public.dark_hole_dark_hole_id_seq'::regclass);


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
-- Data for Name: dark_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.dark_hole VALUES (1, 'Arp 151', 30000, 400, 30.00, 'Is really dark', false);
INSERT INTO public.dark_hole VALUES (2, 'IC 1459', 300, 800, 12.00, 'Is dark', false);
INSERT INTO public.dark_hole VALUES (3, 'M104', 5500, 80, 92.00, 'Dark', false);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (2, 'Milky Way', 9999, 1000000, 500.00, 'Where solar system exist', true);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 1000, 90000, 15.20, 'Close to home', false);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Galaxy', 2000, 9900, 25.00, 'Mostly gas and dust', false);
INSERT INTO public.galaxy VALUES (5, 'NH-3T54', 200000, 1900, 30.00, 'Made of Noble gases', false);
INSERT INTO public.galaxy VALUES (6, 'Dark-T24', 900000, 900, 100.00, 'Made of dark matter', false);
INSERT INTO public.galaxy VALUES (7, 'Stars T4424', 700000, 1000, 100.00, 'Made of stars', false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 999, 99, 10.00, 'Our moon', false, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 999, 999, 100.00, 'Mars moon', false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 999, 999, 100.00, 'Mars moon', false, 4);
INSERT INTO public.moon VALUES (5, 'lo', 999, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (6, 'Europa', 999, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (7, 'Ganymode', 999, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (8, 'Callisto', 999, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (9, 'Amalthea', 999, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (10, 'Himalia', 999, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (11, 'Elara', 999, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (12, 'Pasiphae', 8999, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (13, 'Sinope', 8899, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (14, 'Lysithea', 8899, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (15, 'Carme', 8899, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (16, 'Ananke', 8899, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (17, 'Leda', 8899, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (18, 'Thebe', 8899, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (19, 'Adrastea', 8899, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (20, 'Metis', 8899, 999, 100.00, 'Jupiter moon', false, 5);
INSERT INTO public.moon VALUES (21, 'Callirrhoe', 8899, 999, 100.00, 'Jupiter moon', false, 5);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 110, 180, 999.00, 'Closest to Sun in the Milky Way', false, 2);
INSERT INTO public.planet VALUES (2, 'Venus', 90, 1080, 888.00, '2nd Closest to Sun in the Milky Way', false, 2);
INSERT INTO public.planet VALUES (5, 'Jupiter', 11900, 10080, 130.00, '5nd Closest to Sun in the Milky Way', false, 2);
INSERT INTO public.planet VALUES (6, 'Saturn', 111900, 9080, 930.00, '6nd Closest to Sun in the Milky Way', false, 2);
INSERT INTO public.planet VALUES (7, 'Uranus', 1900, 980, 5.00, '7nd Closest to Sun in the Milky Way', false, 2);
INSERT INTO public.planet VALUES (8, 'Neptune', 1900, 990, 0.00, '8nd Closest to Sun in the Milky Way', false, 2);
INSERT INTO public.planet VALUES (9, 'Dimidium', 1999, 990, 10.00, '1 exoplanet', false, 4);
INSERT INTO public.planet VALUES (10, 'Galileo', 9999, 999, 10.00, '2 exoplanet', false, 5);
INSERT INTO public.planet VALUES (11, 'Brahe', 999, 999, 10.00, '3 exoplanet', false, 5);
INSERT INTO public.planet VALUES (12, 'Lipperhey', 99999, 99, 10.00, '4 exoplanet', false, 5);
INSERT INTO public.planet VALUES (3, 'Earth', 1900, 10080, 30.00, '3nd Closest to Sun in the Milky Way', false, 2);
INSERT INTO public.planet VALUES (4, 'Mars', 900, 10080, 777.00, '4nd Closest to Sun in the Milky Way', false, 2);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'The Sun', 7000, 100, 10.00, 'Milky Way sun', false, 2);
INSERT INTO public.star VALUES (3, 'Star 3', 400, 1900, 190.00, 'Star 3', false, 4);
INSERT INTO public.star VALUES (4, 'Star 4', 600, 900, 999.00, 'Star 4', false, 5);
INSERT INTO public.star VALUES (5, 'Star 5', 800, 1900, 999.00, 'Star 5', false, 5);
INSERT INTO public.star VALUES (6, 'Star 6', 800, 1900, 888.00, 'Star 6', false, 5);
INSERT INTO public.star VALUES (7, 'Star 7', 11800, 80, 777.00, 'Star 7', false, 5);


--
-- Name: dark_hole_dark_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.dark_hole_dark_hole_id_seq', 3, true);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 7, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: dark_hole dark_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dark_hole
    ADD CONSTRAINT dark_hole_pkey PRIMARY KEY (dark_hole_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_id UNIQUE (galaxy_id);


--
-- Name: dark_hole unique_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.dark_hole
    ADD CONSTRAINT unique_id UNIQUE (dark_hole_id);


--
-- Name: moon unique_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon UNIQUE (moon_id);


--
-- Name: moon unique_moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_id UNIQUE (moon_id);


--
-- Name: planet unique_planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_id UNIQUE (planet_id);


--
-- Name: star unique_star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_id UNIQUE (star_id);


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

