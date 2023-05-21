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
-- Name: black_hole; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.black_hole (
    name character varying(30) NOT NULL,
    black_hole_id integer NOT NULL,
    type_of_black_hole character varying(30)
);


ALTER TABLE public.black_hole OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.black_hole_black_hole_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.black_hole_black_hole_id_seq OWNER TO freecodecamp;

--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.black_hole_black_hole_id_seq OWNED BY public.black_hole.black_hole_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    age_by_million_years integer,
    distance_by_million_km numeric(4,1),
    size_by_million_km integer,
    name character varying(30) NOT NULL
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
    age_by_million_years integer,
    size_by_million_km integer,
    distance_by_million_km numeric(4,1),
    star_system_name text,
    planet_id integer NOT NULL,
    name character varying(30) NOT NULL
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
    age_by_million_years integer,
    size_by_million_km integer,
    distance_by_million_km numeric(4,1),
    star_system_name text,
    possibility_for_life boolean,
    has_water boolean,
    star_id integer NOT NULL,
    name character varying(30) NOT NULL
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
    age_by_million_years integer,
    size_by_million_km integer,
    distance_by_million_km numeric(4,1),
    star_system_name text,
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL
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
-- Name: black_hole black_hole_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole ALTER COLUMN black_hole_id SET DEFAULT nextval('public.black_hole_black_hole_id_seq'::regclass);


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
-- Data for Name: black_hole; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.black_hole VALUES ('sagittarius_A*', 1, 'super_massive');
INSERT INTO public.black_hole VALUES ('cygnus_X-1', 2, 'massive');
INSERT INTO public.black_hole VALUES ('cygnus_X-3', 3, 'massive');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 7200, 0.0, 9300, 'milky_way');
INSERT INTO public.galaxy VALUES (2, 3000, 0.0, 9000, 'milky_way2');
INSERT INTO public.galaxy VALUES (3, 3000, 0.0, 9000, 'milky_way3');
INSERT INTO public.galaxy VALUES (4, 3000, 0.0, 9000, 'ilky_way3');
INSERT INTO public.galaxy VALUES (5, 3000, 0.0, 9000, 'milky_way4');
INSERT INTO public.galaxy VALUES (6, 3000, 0.0, 9000, 'milky_way5');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 4400, 139, 0.0, 'solar_system', 1, 'moon');
INSERT INTO public.moon VALUES (2, 4400, 139, 0.0, 'solar_system', 1, 'moon1');
INSERT INTO public.moon VALUES (3, 4400, 139, 0.0, 'solar_system', 1, 'moon2');
INSERT INTO public.moon VALUES (4, 4400, 139, 0.0, 'solar_system', 1, 'moo32');
INSERT INTO public.moon VALUES (5, 4400, 139, 0.0, 'solar_system', 1, 'moo3');
INSERT INTO public.moon VALUES (6, 4400, 139, 0.0, 'solar_system', 1, 'moo31');
INSERT INTO public.moon VALUES (7, 4400, 139, 0.0, 'solar_system', 1, 'moon3');
INSERT INTO public.moon VALUES (8, 4400, 139, 0.0, 'solar_system', 1, 'moon4');
INSERT INTO public.moon VALUES (9, 4400, 139, 0.0, 'solar_system', 1, 'moon5');
INSERT INTO public.moon VALUES (10, 4400, 139, 0.0, 'solar_system', 1, 'moon6');
INSERT INTO public.moon VALUES (11, 4400, 139, 0.0, 'solar_system', 1, 'moon7');
INSERT INTO public.moon VALUES (12, 4400, 139, 0.0, 'solar_system', 1, 'moon8');
INSERT INTO public.moon VALUES (13, 4400, 139, 0.0, 'solar_system', 1, 'moo98');
INSERT INTO public.moon VALUES (14, 4400, 139, 0.0, 'solar_system', 1, 'moo9n8');
INSERT INTO public.moon VALUES (15, 4400, 139, 0.0, 'solar_system', 1, 'moon9');
INSERT INTO public.moon VALUES (16, 4400, 139, 0.0, 'solar_system', 1, 'moon10');
INSERT INTO public.moon VALUES (17, 4400, 139, 0.0, 'solar_system', 1, 'moon11');
INSERT INTO public.moon VALUES (18, 4400, 139, 0.0, 'solar_system', 1, 'moon12');
INSERT INTO public.moon VALUES (19, 4400, 139, 0.0, 'solar_system', 1, 'moon32');
INSERT INTO public.moon VALUES (20, 4400, 139, 0.0, 'solar_system', 1, 'moon324');


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 0, 139, 150.0, 'solar_system', true, true, 1, 'earth');
INSERT INTO public.planet VALUES (2, 400, 120, 33.9, 'solar_system', false, true, 1, 'mars');
INSERT INTO public.planet VALUES (3, 400, 120, 33.9, 'solar_system', false, true, 1, 'jupiter');
INSERT INTO public.planet VALUES (4, 400, 120, 33.9, 'solar_system', false, true, 1, 'jupiter1');
INSERT INTO public.planet VALUES (5, 400, 120, 33.9, 'solar_system', false, true, 1, 'jupiter2');
INSERT INTO public.planet VALUES (6, 400, 120, 33.9, 'solar_system', false, true, 1, 'jupiter3');
INSERT INTO public.planet VALUES (7, 400, 120, 33.9, 'solar_system', false, true, 1, 'jupiter4');
INSERT INTO public.planet VALUES (8, 400, 120, 33.9, 'solar_system', false, true, 1, 'jupiter5');
INSERT INTO public.planet VALUES (9, 400, 120, 33.9, 'solar_system', false, true, 1, 'jupiter6');
INSERT INTO public.planet VALUES (10, 400, 120, 33.9, 'solar_system', false, true, 1, 'jupiter7');
INSERT INTO public.planet VALUES (11, 400, 120, 33.9, 'solar_system', false, true, 1, 'jupiter8');
INSERT INTO public.planet VALUES (12, 400, 120, 33.9, 'solar_system', false, true, 1, 'jupiter9');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 4600, 139, 150.0, 'solar_system', 1, 'sun');
INSERT INTO public.star VALUES (2, 4600, 139, 150.0, 'solar_system', 1, 'sun2');
INSERT INTO public.star VALUES (3, 4600, 139, 150.0, 'solar_system', 1, 'sun3');
INSERT INTO public.star VALUES (4, 4600, 139, 150.0, 'solar_system', 1, 'sun4');
INSERT INTO public.star VALUES (5, 4600, 139, 150.0, 'solar_system', 1, 'sun5');
INSERT INTO public.star VALUES (6, 4600, 139, 150.0, 'solar_system', 1, 'sun6');


--
-- Name: black_hole_black_hole_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.black_hole_black_hole_id_seq', 1, false);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 5, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 3, true);


--
-- Name: black_hole black_hole_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_name_key UNIQUE (name);


--
-- Name: black_hole black_hole_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.black_hole
    ADD CONSTRAINT black_hole_pkey PRIMARY KEY (black_hole_id);


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
-- Name: star fk_galaxy; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT fk_galaxy FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- Name: moon fk_planet; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT fk_planet FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet fk_star; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT fk_star FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- PostgreSQL database dump complete
--

