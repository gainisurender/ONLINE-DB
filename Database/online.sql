--
-- PostgreSQL database dump
--

-- Dumped from database version 13.6
-- Dumped by pg_dump version 13.6

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
-- Name: customer; Type: TABLE; Schema: public; Owner: sanirasu_admin
--

CREATE TABLE public.customer (
    id bigint NOT NULL,
    name character varying NOT NULL,
    password character varying NOT NULL,
    gender character varying NOT NULL,
    date_of_birth date NOT NULL,
    email character varying NOT NULL,
    mobile bigint NOT NULL,
    customer_address character varying
);


ALTER TABLE public.customer OWNER TO sanirasu_admin;

--
-- Name: customer_id_seq; Type: SEQUENCE; Schema: public; Owner: sanirasu_admin
--

CREATE SEQUENCE public.customer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.customer_id_seq OWNER TO sanirasu_admin;

--
-- Name: customer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sanirasu_admin
--

ALTER SEQUENCE public.customer_id_seq OWNED BY public.customer.id;


--
-- Name: order_product; Type: TABLE; Schema: public; Owner: sanirasu_admin
--

CREATE TABLE public.order_product (
    order_id bigint,
    product_id bigint
);


ALTER TABLE public.order_product OWNER TO sanirasu_admin;

--
-- Name: orders; Type: TABLE; Schema: public; Owner: sanirasu_admin
--

CREATE TABLE public.orders (
    id bigint NOT NULL,
    customer_id bigint NOT NULL,
    ordered_at timestamp with time zone NOT NULL,
    total_price numeric NOT NULL,
    mode_of_payment character varying NOT NULL,
    discount integer NOT NULL
);


ALTER TABLE public.orders OWNER TO sanirasu_admin;

--
-- Name: orders_id_seq; Type: SEQUENCE; Schema: public; Owner: sanirasu_admin
--

CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.orders_id_seq OWNER TO sanirasu_admin;

--
-- Name: orders_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sanirasu_admin
--

ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;


--
-- Name: product; Type: TABLE; Schema: public; Owner: sanirasu_admin
--

CREATE TABLE public.product (
    id bigint NOT NULL,
    name character varying NOT NULL,
    price numeric NOT NULL
);


ALTER TABLE public.product OWNER TO sanirasu_admin;

--
-- Name: product_id_seq; Type: SEQUENCE; Schema: public; Owner: sanirasu_admin
--

CREATE SEQUENCE public.product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_id_seq OWNER TO sanirasu_admin;

--
-- Name: product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sanirasu_admin
--

ALTER SEQUENCE public.product_id_seq OWNED BY public.product.id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: sanirasu_admin
--

CREATE TABLE public.tags (
    id bigint NOT NULL,
    brand character varying NOT NULL,
    color character varying NOT NULL,
    model character varying NOT NULL,
    product_id bigint NOT NULL,
    content text NOT NULL
);


ALTER TABLE public.tags OWNER TO sanirasu_admin;

--
-- Name: tags_id_seq; Type: SEQUENCE; Schema: public; Owner: sanirasu_admin
--

CREATE SEQUENCE public.tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_id_seq OWNER TO sanirasu_admin;

--
-- Name: tags_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: sanirasu_admin
--

ALTER SEQUENCE public.tags_id_seq OWNED BY public.tags.id;


--
-- Name: customer id; Type: DEFAULT; Schema: public; Owner: sanirasu_admin
--

ALTER TABLE ONLY public.customer ALTER COLUMN id SET DEFAULT nextval('public.customer_id_seq'::regclass);


--
-- Name: orders id; Type: DEFAULT; Schema: public; Owner: sanirasu_admin
--

ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);


--
-- Name: product id; Type: DEFAULT; Schema: public; Owner: sanirasu_admin
--

ALTER TABLE ONLY public.product ALTER COLUMN id SET DEFAULT nextval('public.product_id_seq'::regclass);


--
-- Name: tags id; Type: DEFAULT; Schema: public; Owner: sanirasu_admin
--

ALTER TABLE ONLY public.tags ALTER COLUMN id SET DEFAULT nextval('public.tags_id_seq'::regclass);


--
-- Data for Name: customer; Type: TABLE DATA; Schema: public; Owner: sanirasu_admin
--

COPY public.customer (id, name, password, gender, date_of_birth, email, mobile, customer_address) FROM stdin;
1	surender	1234567	male	2000-08-05	gainisurender@gmail.com	8975687886	hyderabad
5	navya	nalla	female	2000-08-06	navya@gmail.com	788574757	banglore
2	string	string	male	2022-03-17	string	43576	\N
3	Suri	string	Male	2022-03-17	suri@gmail.com	9988776655	Goa
\.


--
-- Data for Name: order_product; Type: TABLE DATA; Schema: public; Owner: sanirasu_admin
--

COPY public.order_product (order_id, product_id) FROM stdin;
1	1
\.


--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: sanirasu_admin
--

COPY public.orders (id, customer_id, ordered_at, total_price, mode_of_payment, discount) FROM stdin;
1	1	2022-03-05 00:00:00+05:30	2000	COD	50
2	1	2022-03-17 16:06:34.734+05:30	1000	cash	0
3	5	2022-03-17 16:17:06.877+05:30	10000	COD	50
\.


--
-- Data for Name: product; Type: TABLE DATA; Schema: public; Owner: sanirasu_admin
--

COPY public.product (id, name, price) FROM stdin;
1	string	100
2	string	1000
3	string	1000
\.


--
-- Data for Name: tags; Type: TABLE DATA; Schema: public; Owner: sanirasu_admin
--

COPY public.tags (id, brand, color, model, product_id, content) FROM stdin;
4	string	string	string	1	string
1	dell	blue	dell	1	cgvvgh
5	string	string	string	1	string
6	string	string	string	1	string
\.


--
-- Name: customer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sanirasu_admin
--

SELECT pg_catalog.setval('public.customer_id_seq', 3, true);


--
-- Name: orders_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sanirasu_admin
--

SELECT pg_catalog.setval('public.orders_id_seq', 3, true);


--
-- Name: product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sanirasu_admin
--

SELECT pg_catalog.setval('public.product_id_seq', 3, true);


--
-- Name: tags_id_seq; Type: SEQUENCE SET; Schema: public; Owner: sanirasu_admin
--

SELECT pg_catalog.setval('public.tags_id_seq', 6, true);


--
-- Name: customer customer_pkey; Type: CONSTRAINT; Schema: public; Owner: sanirasu_admin
--

ALTER TABLE ONLY public.customer
    ADD CONSTRAINT customer_pkey PRIMARY KEY (id);


--
-- Name: orders orders_pkey; Type: CONSTRAINT; Schema: public; Owner: sanirasu_admin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);


--
-- Name: product product_pkey; Type: CONSTRAINT; Schema: public; Owner: sanirasu_admin
--

ALTER TABLE ONLY public.product
    ADD CONSTRAINT product_pkey PRIMARY KEY (id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: sanirasu_admin
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (id);


--
-- Name: orders customer_id; Type: FK CONSTRAINT; Schema: public; Owner: sanirasu_admin
--

ALTER TABLE ONLY public.orders
    ADD CONSTRAINT customer_id FOREIGN KEY (customer_id) REFERENCES public.customer(id) NOT VALID;


--
-- Name: order_product order_id; Type: FK CONSTRAINT; Schema: public; Owner: sanirasu_admin
--

ALTER TABLE ONLY public.order_product
    ADD CONSTRAINT order_id FOREIGN KEY (order_id) REFERENCES public.orders(id) NOT VALID;


--
-- Name: order_product product_id; Type: FK CONSTRAINT; Schema: public; Owner: sanirasu_admin
--

ALTER TABLE ONLY public.order_product
    ADD CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES public.product(id) NOT VALID;


--
-- Name: tags product_id; Type: FK CONSTRAINT; Schema: public; Owner: sanirasu_admin
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES public.product(id) NOT VALID;


--
-- PostgreSQL database dump complete
--

