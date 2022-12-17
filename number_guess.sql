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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    number_guesses integer NOT NULL,
    user_id integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(20) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 703, 2);
INSERT INTO public.games VALUES (2, 689, 2);
INSERT INTO public.games VALUES (3, 626, 3);
INSERT INTO public.games VALUES (4, 265, 3);
INSERT INTO public.games VALUES (5, 913, 2);
INSERT INTO public.games VALUES (6, 597, 2);
INSERT INTO public.games VALUES (7, 955, 2);
INSERT INTO public.games VALUES (8, 18, 1);
INSERT INTO public.games VALUES (9, 8, 1);
INSERT INTO public.games VALUES (10, 8, 4);
INSERT INTO public.games VALUES (11, 294, 4);
INSERT INTO public.games VALUES (12, 837, 5);
INSERT INTO public.games VALUES (13, 867, 5);
INSERT INTO public.games VALUES (14, 339, 4);
INSERT INTO public.games VALUES (15, 482, 4);
INSERT INTO public.games VALUES (16, 621, 4);
INSERT INTO public.games VALUES (17, 345, 6);
INSERT INTO public.games VALUES (18, 29, 6);
INSERT INTO public.games VALUES (19, 228, 7);
INSERT INTO public.games VALUES (20, 445, 7);
INSERT INTO public.games VALUES (21, 894, 6);
INSERT INTO public.games VALUES (22, 902, 6);
INSERT INTO public.games VALUES (23, 79, 6);
INSERT INTO public.games VALUES (24, 244, 8);
INSERT INTO public.games VALUES (25, 112, 8);
INSERT INTO public.games VALUES (26, 606, 9);
INSERT INTO public.games VALUES (27, 718, 9);
INSERT INTO public.games VALUES (28, 599, 8);
INSERT INTO public.games VALUES (29, 181, 8);
INSERT INTO public.games VALUES (30, 578, 8);
INSERT INTO public.games VALUES (31, 393, 10);
INSERT INTO public.games VALUES (32, 637, 10);
INSERT INTO public.games VALUES (33, 714, 11);
INSERT INTO public.games VALUES (34, 256, 11);
INSERT INTO public.games VALUES (35, 329, 10);
INSERT INTO public.games VALUES (36, 78, 10);
INSERT INTO public.games VALUES (37, 927, 10);
INSERT INTO public.games VALUES (38, 60, 12);
INSERT INTO public.games VALUES (39, 417, 12);
INSERT INTO public.games VALUES (40, 875, 13);
INSERT INTO public.games VALUES (41, 708, 13);
INSERT INTO public.games VALUES (42, 827, 12);
INSERT INTO public.games VALUES (43, 834, 12);
INSERT INTO public.games VALUES (44, 936, 12);
INSERT INTO public.games VALUES (45, 322, 14);
INSERT INTO public.games VALUES (46, 201, 14);
INSERT INTO public.games VALUES (47, 168, 15);
INSERT INTO public.games VALUES (48, 511, 15);
INSERT INTO public.games VALUES (49, 796, 14);
INSERT INTO public.games VALUES (50, 636, 14);
INSERT INTO public.games VALUES (51, 327, 14);
INSERT INTO public.games VALUES (52, 90, 16);
INSERT INTO public.games VALUES (53, 722, 16);
INSERT INTO public.games VALUES (54, 534, 17);
INSERT INTO public.games VALUES (55, 385, 17);
INSERT INTO public.games VALUES (56, 228, 16);
INSERT INTO public.games VALUES (57, 987, 16);
INSERT INTO public.games VALUES (58, 173, 16);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'samuel');
INSERT INTO public.users VALUES (2, 'user_1671301405059');
INSERT INTO public.users VALUES (3, 'user_1671301405058');
INSERT INTO public.users VALUES (4, 'user_1671301774460');
INSERT INTO public.users VALUES (5, 'user_1671301774459');
INSERT INTO public.users VALUES (6, 'user_1671301937851');
INSERT INTO public.users VALUES (7, 'user_1671301937850');
INSERT INTO public.users VALUES (8, 'user_1671301973191');
INSERT INTO public.users VALUES (9, 'user_1671301973190');
INSERT INTO public.users VALUES (10, 'user_1671301995623');
INSERT INTO public.users VALUES (11, 'user_1671301995622');
INSERT INTO public.users VALUES (12, 'user_1671302054039');
INSERT INTO public.users VALUES (13, 'user_1671302054038');
INSERT INTO public.users VALUES (14, 'user_1671302156227');
INSERT INTO public.users VALUES (15, 'user_1671302156226');
INSERT INTO public.users VALUES (16, 'user_1671302181194');
INSERT INTO public.users VALUES (17, 'user_1671302181193');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 58, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 17, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

