--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO alexander;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: alexander
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO alexander;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alexander
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO alexander;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: alexander
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO alexander;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alexander
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO alexander;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: alexander
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO alexander;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alexander
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO alexander;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO alexander;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: alexander
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO alexander;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alexander
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: alexander
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO alexander;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alexander
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO alexander;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: alexander
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO alexander;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alexander
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO alexander;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: alexander
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO alexander;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alexander
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO alexander;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: alexander
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO alexander;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alexander
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO alexander;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: alexander
--

CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO alexander;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alexander
--

ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO alexander;

--
-- Name: product_application; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE product_application (
    id integer NOT NULL,
    fio character varying(100) NOT NULL,
    phone character varying(50) NOT NULL,
    mail character varying(254) NOT NULL,
    count integer NOT NULL,
    sum_order double precision NOT NULL,
    datetime timestamp with time zone NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.product_application OWNER TO alexander;

--
-- Name: product_application_id_seq; Type: SEQUENCE; Schema: public; Owner: alexander
--

CREATE SEQUENCE product_application_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_application_id_seq OWNER TO alexander;

--
-- Name: product_application_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alexander
--

ALTER SEQUENCE product_application_id_seq OWNED BY product_application.id;


--
-- Name: product_cart; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE product_cart (
    id integer NOT NULL,
    price double precision NOT NULL,
    count integer NOT NULL,
    user_ip character varying(50) NOT NULL,
    product_id integer NOT NULL
);


ALTER TABLE public.product_cart OWNER TO alexander;

--
-- Name: product_cart_id_seq; Type: SEQUENCE; Schema: public; Owner: alexander
--

CREATE SEQUENCE product_cart_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_cart_id_seq OWNER TO alexander;

--
-- Name: product_cart_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alexander
--

ALTER SEQUENCE product_cart_id_seq OWNED BY product_cart.id;


--
-- Name: product_category; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE product_category (
    id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.product_category OWNER TO alexander;

--
-- Name: product_category_id_seq; Type: SEQUENCE; Schema: public; Owner: alexander
--

CREATE SEQUENCE product_category_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_category_id_seq OWNER TO alexander;

--
-- Name: product_category_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alexander
--

ALTER SEQUENCE product_category_id_seq OWNED BY product_category.id;


--
-- Name: product_imageproduct; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE product_imageproduct (
    id integer NOT NULL,
    path character varying(100) NOT NULL,
    name character varying(100) NOT NULL,
    product_id integer
);


ALTER TABLE public.product_imageproduct OWNER TO alexander;

--
-- Name: product_imageproduct_id_seq; Type: SEQUENCE; Schema: public; Owner: alexander
--

CREATE SEQUENCE product_imageproduct_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_imageproduct_id_seq OWNER TO alexander;

--
-- Name: product_imageproduct_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alexander
--

ALTER SEQUENCE product_imageproduct_id_seq OWNED BY product_imageproduct.id;


--
-- Name: product_product; Type: TABLE; Schema: public; Owner: alexander; Tablespace: 
--

CREATE TABLE product_product (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    count integer NOT NULL,
    description text NOT NULL,
    price double precision NOT NULL,
    main_img character varying(100) NOT NULL,
    category_id integer NOT NULL
);


ALTER TABLE public.product_product OWNER TO alexander;

--
-- Name: product_product_id_seq; Type: SEQUENCE; Schema: public; Owner: alexander
--

CREATE SEQUENCE product_product_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.product_product_id_seq OWNER TO alexander;

--
-- Name: product_product_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: alexander
--

ALTER SEQUENCE product_product_id_seq OWNED BY product_product.id;


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY product_application ALTER COLUMN id SET DEFAULT nextval('product_application_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY product_cart ALTER COLUMN id SET DEFAULT nextval('product_cart_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY product_category ALTER COLUMN id SET DEFAULT nextval('product_category_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY product_imageproduct ALTER COLUMN id SET DEFAULT nextval('product_imageproduct_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY product_product ALTER COLUMN id SET DEFAULT nextval('product_product_id_seq'::regclass);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alexander
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alexander
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add user	2	add_user
5	Can change user	2	change_user
6	Can delete user	2	delete_user
7	Can add permission	3	add_permission
8	Can change permission	3	change_permission
9	Can delete permission	3	delete_permission
10	Can add group	4	add_group
11	Can change group	4	change_group
12	Can delete group	4	delete_group
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add image product	7	add_imageproduct
20	Can change image product	7	change_imageproduct
21	Can delete image product	7	delete_imageproduct
22	Can add category	8	add_category
23	Can change category	8	change_category
24	Can delete category	8	delete_category
25	Can add product	9	add_product
26	Can change product	9	change_product
27	Can delete product	9	delete_product
28	Can add application	10	add_application
29	Can change application	10	change_application
30	Can delete application	10	delete_application
31	Can add cart	11	add_cart
32	Can change cart	11	change_cart
33	Can delete cart	11	delete_cart
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alexander
--

SELECT pg_catalog.setval('auth_permission_id_seq', 33, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$30000$8sILpLml2BFx$Eyu89NicNYAvVu++bc46+vxJPc0s26W52zPghjVEZSw=	2017-03-24 13:55:48.016633+07	t	sovushka			alexandr.nn54@gmail.com	t	t	2017-03-24 13:55:27.430278+07
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alexander
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alexander
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alexander
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
1	2017-03-24 15:45:31.656997+07	1	Одежда	1	[{"added": {}}]	8	1
2	2017-03-24 15:45:41.228222+07	2	Обувь	1	[{"added": {}}]	8	1
3	2017-03-24 15:46:15.154545+07	3	Аксессуар	1	[{"added": {}}]	8	1
4	2017-03-24 16:00:03.864072+07	1	Kamora	1	[{"added": {}}]	9	1
5	2017-03-24 16:02:43.229141+07	1	kamora1	1	[{"added": {}}]	7	1
6	2017-03-24 16:04:27.148842+07	1	kamora1	3		7	1
7	2017-03-24 16:05:36.840325+07	3	Аксессуар	3		8	1
8	2017-03-24 16:05:36.883356+07	2	Обувь	3		8	1
9	2017-03-24 16:05:36.894389+07	1	Одежда	3		8	1
10	2017-03-24 16:13:11.964901+07	4	clothes	1	[{"added": {}}]	8	1
11	2017-03-24 16:13:34.813773+07	5	footwear	1	[{"added": {}}]	8	1
12	2017-03-24 16:13:55.291246+07	6	accessory	1	[{"added": {}}]	8	1
13	2017-03-24 16:16:58.847162+07	2	Kamora	1	[{"added": {}}]	9	1
14	2017-03-24 16:17:22.372692+07	2	kamora1	1	[{"added": {}}]	7	1
15	2017-03-24 16:17:57.736867+07	2	kamora1	2	[{"changed": {"fields": ["path"]}}]	7	1
16	2017-03-24 16:18:32.564723+07	3	kamora2	1	[{"added": {}}]	7	1
17	2017-03-24 16:18:49.484808+07	4	kamora3	1	[{"added": {}}]	7	1
18	2017-03-24 16:21:57.431709+07	3	Парка Tommy Hilfiger	1	[{"added": {}}]	9	1
19	2017-03-24 16:23:08.694328+07	5	tommy_hilfiger1	1	[{"added": {}}]	7	1
20	2017-03-24 16:23:22.669332+07	6	tommy_hilfiger2	1	[{"added": {}}]	7	1
21	2017-03-24 16:23:32.600325+07	7	tommy_hilfiger3	1	[{"added": {}}]	7	1
22	2017-03-24 18:42:53.750844+07	1	clothes	1	[{"added": {}}]	8	1
23	2017-03-24 18:43:09.775872+07	2	footwear	1	[{"added": {}}]	8	1
24	2017-03-24 18:43:16.158571+07	3	accessory	1	[{"added": {}}]	8	1
25	2017-03-24 18:44:49.247148+07	1	Kamora	1	[{"added": {}}]	9	1
26	2017-03-24 18:46:44.590707+07	2	Парка Tommy Hilfiger	1	[{"added": {}}]	9	1
27	2017-03-24 18:58:49.786458+07	2	Парка Tommy Hilfiger	2	[{"changed": {"fields": ["main_img"]}}]	9	1
28	2017-03-24 19:00:25.86355+07	2	Парка Tommy Hilfiger	2	[{"changed": {"fields": ["main_img"]}}]	9	1
29	2017-03-24 19:00:37.880877+07	1	Kamora	2	[{"changed": {"fields": ["main_img"]}}]	9	1
30	2017-03-24 19:08:14.119727+07	3	Кеды NIKE SB CHECK SOLAR Nike	1	[{"added": {}}]	9	1
31	2017-03-24 19:10:23.91867+07	4	Бейсболка oodji	1	[{"added": {}}]	9	1
32	2017-03-24 19:12:37.869756+07	5	Кроссовки UMBRO NEWHAVEN 2 Umbro	1	[{"added": {}}]	9	1
33	2017-03-24 19:15:58.84391+07	6	Джинсы 512 Levi's®	1	[{"added": {}}]	9	1
34	2017-03-24 19:17:33.913295+07	7	Шапка Springfield	1	[{"added": {}}]	9	1
35	2017-03-24 19:18:54.370602+07	8	Очки солнцезащитные Polaroid	1	[{"added": {}}]	9	1
36	2017-03-24 19:21:15.373896+07	9	Платье Topshop	1	[{"added": {}}]	9	1
37	2017-03-24 21:48:48.94362+07	10	Bruebeck	1	[{"added": {}}]	9	1
38	2017-03-24 21:50:22.088129+07	11	Туфли Ideal	1	[{"added": {}}]	9	1
39	2017-03-24 21:51:58.160697+07	12	Сумка Topshop	1	[{"added": {}}]	9	1
40	2017-03-24 21:53:30.317281+07	13	Палантин Jennyfer	1	[{"added": {}}]	9	1
41	2017-03-24 21:55:12.505875+07	14	Платье oodji	1	[{"added": {}}]	9	1
42	2017-03-24 21:56:50.175482+07	15	Берет oodji	1	[{"added": {}}]	9	1
43	2017-03-24 21:58:38.055069+07	16	Слипоны TOMMY NO-LACE PLIMSOLL Lost Ink	1	[{"added": {}}]	9	1
44	2017-03-24 22:00:29.89971+07	17	Ботфорты River Island	1	[{"added": {}}]	9	1
45	2017-03-24 22:03:18.143554+07	18	Кеды YMD	1	[{"added": {}}]	9	1
46	2017-03-24 22:04:46.102835+07	19	Ремень Wrangler	1	[{"added": {}}]	9	1
47	2017-03-25 01:24:09.794393+07	1		1	[{"added": {}}]	7	1
48	2017-03-25 01:24:24.897118+07	2		1	[{"added": {}}]	7	1
49	2017-03-25 01:24:43.119534+07	2	ymd3	2	[{"changed": {"fields": ["name"]}}]	7	1
50	2017-03-25 01:24:49.70103+07	1	ymd2	2	[{"changed": {"fields": ["name"]}}]	7	1
51	2017-03-25 01:31:45.479666+07	3	to	1	[{"added": {}}]	7	1
52	2017-03-25 01:32:00.692168+07	3	tommy_hilfiger2	2	[{"changed": {"fields": ["name"]}}]	7	1
53	2017-03-25 01:32:17.670709+07	4	tommy_hilfiger3	1	[{"added": {}}]	7	1
54	2017-03-25 09:28:50.195349+07	5	Кроссовки UMBRO NEWHAVEN 2 Umbro	2	[{"changed": {"fields": ["description"]}}]	9	1
55	2017-03-25 09:29:11.103827+07	5	Кроссовки UMBRO NEWHAVEN 2 Umbro	2	[]	9	1
56	2017-03-25 09:29:32.775642+07	5	Кроссовки UMBRO NEWHAVEN 2 Umbro	2	[{"changed": {"fields": ["description"]}}]	9	1
57	2017-03-25 09:29:55.03359+07	5	Кроссовки UMBRO NEWHAVEN 2 Umbro	2	[{"changed": {"fields": ["description"]}}]	9	1
58	2017-03-25 10:34:57.938611+07	3	Кеды NIKE SB CHECK SOLAR Nike	2	[{"changed": {"fields": ["description"]}}]	9	1
59	2017-03-25 10:35:24.207538+07	3	Кеды NIKE SB CHECK SOLAR Nike	2	[{"changed": {"fields": ["description"]}}]	9	1
60	2017-03-25 10:35:39.291596+07	3	Кеды NIKE SB CHECK SOLAR Nike	2	[{"changed": {"fields": ["description"]}}]	9	1
61	2017-03-25 14:21:51.45208+07	2	Application object	3		10	1
62	2017-03-25 14:21:51.500079+07	1	Application object	3		10	1
63	2017-03-25 15:38:38.359199+07	4	alexandr.nn54@gmail.ru (2017-03-25 07:29:26.572520+00:00)	3		10	1
64	2017-03-25 15:38:38.380118+07	3	alexandr.nn54@gmail.ru (2017-03-25 07:29:26.541387+00:00)	3		10	1
65	2017-03-25 15:40:40.344335+07	7	alexandr.nn54@gmail.ru (2017-03-25 08:38:43.263222+00:00)	3		10	1
66	2017-03-25 15:40:40.361978+07	6	alexandr.nn54@gmail.ru (2017-03-25 08:38:43.207987+00:00)	3		10	1
67	2017-03-25 15:40:40.373038+07	5	alexandr.nn54@gmail.ru (2017-03-25 08:38:43.170468+00:00)	3		10	1
68	2017-03-25 16:42:56.973925+07	11	alexandr.nn54@gmail.ru (2017-03-25 08:41:37.458382+00:00)	3		10	1
69	2017-03-25 16:42:57.040675+07	10	alexandr.nn54@gmail.ru (2017-03-25 08:41:37.396811+00:00)	3		10	1
70	2017-03-25 16:42:57.051683+07	9	alexandr.nn54@gmail.ru (2017-03-25 08:41:37.369394+00:00)	3		10	1
71	2017-03-25 16:42:57.062823+07	8	alexandr.nn54@gmail.ru (2017-03-25 08:41:37.328384+00:00)	3		10	1
72	2017-03-25 17:25:59.682709+07	14	alexandr.nn54@gmail.ru (2017-03-25 09:45:05.681191+00:00)	3		10	1
73	2017-03-25 17:25:59.702701+07	13	alexandr.nn54@gmail.ru (2017-03-25 09:43:03.728464+00:00)	3		10	1
74	2017-03-25 17:25:59.713711+07	12	alexandr.nn54@gmail.ru (2017-03-25 09:43:03.647727+00:00)	3		10	1
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alexander
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 74, true);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	user
3	auth	permission
4	auth	group
5	contenttypes	contenttype
6	sessions	session
7	product	imageproduct
8	product	category
9	product	product
10	product	application
11	product	cart
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alexander
--

SELECT pg_catalog.setval('django_content_type_id_seq', 11, true);


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2017-03-24 10:14:07.774528+07
2	auth	0001_initial	2017-03-24 10:14:08.563271+07
3	admin	0001_initial	2017-03-24 10:14:08.740587+07
4	admin	0002_logentry_remove_auto_add	2017-03-24 10:14:08.762636+07
5	contenttypes	0002_remove_content_type_name	2017-03-24 10:14:08.806922+07
6	auth	0002_alter_permission_name_max_length	2017-03-24 10:14:08.828839+07
7	auth	0003_alter_user_email_max_length	2017-03-24 10:14:08.85121+07
8	auth	0004_alter_user_username_opts	2017-03-24 10:14:08.868173+07
9	auth	0005_alter_user_last_login_null	2017-03-24 10:14:08.883866+07
10	auth	0006_require_contenttypes_0002	2017-03-24 10:14:08.895197+07
11	auth	0007_alter_validators_add_error_messages	2017-03-24 10:14:08.927601+07
12	auth	0008_alter_user_username_max_length	2017-03-24 10:14:09.006029+07
13	sessions	0001_initial	2017-03-24 10:14:09.183732+07
14	product	0001_initial	2017-03-24 15:35:15.329268+07
15	product	0002_auto_20170324_0910	2017-03-24 16:10:47.51323+07
16	product	0003_auto_20170324_1135	2017-03-24 18:35:43.536801+07
17	product	0004_auto_20170324_1141	2017-03-24 18:41:58.838278+07
18	product	0005_auto_20170324_1158	2017-03-24 18:58:30.155452+07
19	product	0006_auto_20170324_1200	2017-03-24 19:00:13.042583+07
20	product	0007_application_cart	2017-03-25 10:49:45.608622+07
21	product	0008_auto_20170325_0421	2017-03-25 11:21:15.93227+07
\.


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alexander
--

SELECT pg_catalog.setval('django_migrations_id_seq', 21, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
8mybnt8ap6ro4pgsd674asoxjs7zzk6q	ZDUzNGJiOTdlMTkwYTEzMDAwMDcxY2U0ODAwY2JiYmNiMzE4ZGE4OTp7Il9hdXRoX3VzZXJfaGFzaCI6IjUzZjAxNTE1OTdhMTZiYzc3MTQ2MmIwYzI3ZjVmODEzZDM5NzVmMDQiLCJfYXV0aF91c2VyX2JhY2tlbmQiOiJkamFuZ28uY29udHJpYi5hdXRoLmJhY2tlbmRzLk1vZGVsQmFja2VuZCIsIl9hdXRoX3VzZXJfaWQiOiIxIn0=	2017-04-07 13:55:48.060704+07
\.


--
-- Data for Name: product_application; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY product_application (id, fio, phone, mail, count, sum_order, datetime, product_id) FROM stdin;
\.


--
-- Name: product_application_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alexander
--

SELECT pg_catalog.setval('product_application_id_seq', 14, true);


--
-- Data for Name: product_cart; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY product_cart (id, price, count, user_ip, product_id) FROM stdin;
33	2900	1	127.0.0.1	6
32	4190	1	127.0.0.1	3
31	499	1	127.0.0.1	7
\.


--
-- Name: product_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alexander
--

SELECT pg_catalog.setval('product_cart_id_seq', 33, true);


--
-- Data for Name: product_category; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY product_category (id, name) FROM stdin;
1	clothes
2	footwear
3	accessory
\.


--
-- Name: product_category_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alexander
--

SELECT pg_catalog.setval('product_category_id_seq', 3, true);


--
-- Data for Name: product_imageproduct; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY product_imageproduct (id, path, name, product_id) FROM stdin;
2	ymd3.jpg	ymd3	18
1	ymd2.jpg	ymd2	18
3	tommy_hilfiger2.jpg	tommy_hilfiger2	2
4	tommy_hilfiger3.jpg	tommy_hilfiger3	2
\.


--
-- Name: product_imageproduct_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alexander
--

SELECT pg_catalog.setval('product_imageproduct_id_seq', 4, true);


--
-- Data for Name: product_product; Type: TABLE DATA; Schema: public; Owner: alexander
--

COPY product_product (id, name, count, description, price, main_img, category_id) FROM stdin;
12	Сумка Topshop	6	Сумка Topshop выполнена из фактурной искусственной кожи, текстильная подкладка. Детали: застежка на магнитную кнопку, небольшие удобные ручки, два внутренних отделения, средник на молнии, три внутренних кармана - один на молнии, два - накладных без застежки. Пристежной плечевой ремень в комплекте.	3999	sumka_topshop1.jpg	3
2	Парка Tommy Hilfiger	5	Парка Tommy Hilfiger выполнена из плотного текстиля. Модель с натуральным утеплителем из пуха и пера. Детали: прямой крой; съемный капюшон дополнен отстегивающимся искусственным мехом; застежка на молнию и пуговицы; один внутренний карман; четыре внешних кармана; эластичные манжеты.	41199	tommy_hilfiger1.jpg	1
1	Kamora	4	Куртка Kamora выполнена из износостойкого водоотталкивающего текстиля и утеплена мягким синтепоном. Модель прямого кроя. Детали: пристроченный регулируемый по ширине капюшон со съемной оторочкой из искусственного меха, застежка на молнию и ветрозащитный клапан на пуговицах, один внутренний и четыре внешних кармана, декоративные молнии, вставки из искусственной кожи.	12399	kamora1.jpg	1
4	Бейсболка oodji	8	Состав Полиэстер - 100%\r\nЦвет серый\r\nСезон Мульти\r\nСтиль Повседневный\r\nКоллекция Весна-лето\r\nДетали аксессуаров вышивка\r\nУзор Рисунки и надписи\r\nТип головного убора Бейсболка\r\nАртикул OO001CMLIH76	990	oodji1.jpg	3
6	Джинсы 512 Levi's®	4	Джинсы 512. Низкая посадка, облегающий в бедрах крой, зауженные к низу брючины. Ткань с добавлением эластана для лучше посадки. Вес ткани 12,7унций.	2900	levis1.jpg	1
7	Шапка Springfield	8	Состав Акрил - 100%\r\nДлина 23 см\r\nЦвет серый\r\nСезон Демисезон, Зима\r\nСтиль Повседневный\r\nКоллекция Осень-зима\r\nУзор Однотонный\r\nТип головного убора Шапка-бини\r\nАртикул SP014CMKKM30	499	springfield1.jpg	3
8	Очки солнцезащитные Polaroid	20	Солнцезащитные очки Polaroid в легкой ударопрочной оправе с прозрачными линзами. Линзы с поляризацией и антибликовым покрытием UltraSight, высокая степень защиты от ультрафиолета 3N. Детали: в комплекте жесткий чехол на молнии.	3599	polaroid1.jpg	3
9	Платье Topshop	3	О ТОВАРЕ\r\nСостав Хлопок - 100%\r\nРазмер модели на фото 44\r\nРост модели на фото 177\r\nПараметры модели 83-60-89\r\nДлина мини\r\nРукав без рукава\r\nЗастежка на пуговицах\r\nЦвет черный\r\nСтрана производства Турция\r\nСезон Мульти\r\nСтиль Повседневный\r\nКоллекция Весна-лето\r\nУзор Однотонный\r\nВырез/воротник На бретелях\r\nНазначение платья Повседневное\r\nАртикул TO029EWNSZ68	3499	topshop1.jpg	1
10	Bruebeck	7	Куртка Bruebeck выполнена из плотного текстиля. Модель приталенного кроя с искусственным утеплителем. Детали: капюшон дополнен съемным искусственным мехом; гладкая подкладка; застежка на молнию и кнопки; два внешних кармана на молнии; пояс в комплекте.	1990	bruebeck1.jpg	1
11	Туфли Ideal	3	Материал верха искусственная лаковая кожа\r\nВнутренний материал искусственная кожа\r\nМатериал стельки искусственная кожа\r\nМатериал подошвы искусственный материал\r\nВысота каблука 10.5 см\r\nТип каблука Шпилька\r\nЗастежка без застежки\r\nЦвет черный\r\nСезон Мульти\r\nСтиль Сексуальный\r\nКоллекция Осень-зима\r\nДетали обуви лакированные\r\nУзор Однотонный\r\nВысота каблука Высокий\r\nТип туфель Лодочки\r\nАртикул ID005AWLQX17	3199	ideal1.jpg	2
13	Палантин Jennyfer	20	Состав Полиэстер - 100%\r\nШирина 96 см\r\nДлина 190 см\r\nЦвет синий\r\nСезон Мульти\r\nСтиль Повседневный\r\nКоллекция Весна-лето\r\nДетали аксессуаров бахрома/кисточки\r\nУзор Однотонный\r\nАртикул JE008GWLVV41	599	jennyfer1.jpg	3
14	Платье oodji	3	Состав Хлопок - 95%, Эластан - 5%\r\nДлина рукава 40 см\r\nДлина 79 см\r\nРазмер модели на фото 42/44\r\nРост модели на фото 175\r\nПараметры модели 85-63-90\r\nДлина мини\r\nРукав 3/4\r\nЗастежка без застежки\r\nЦвет фиолетовый\r\nСтрана производства Узбекистан\r\nСезон Мульти\r\nСтиль Повседневный\r\nКоллекция Весна-лето\r\nУзор Однотонный\r\nВырез/воротник Круглый вырез\r\nНазначение платья Повседневное\r\nАртикул OO001EWNLV70	499	plat_oodji1.jpg	1
15	Берет oodji	9	Состав Вискоза - 40%, Полиамид - 40%, Хлопок - 15%, Ангора - 5%\r\nЦвет черный\r\nСезон Демисезон, Зима\r\nСтиль Повседневный\r\nКоллекция Весна-лето\r\nУзор Геометрия\r\nТип головного убора Берет\r\nАртикул OO001CWMEA48	249	beret_oodji1.jpg	3
16	Слипоны TOMMY NO-LACE PLIMSOLL Lost Ink	4	Слипоны LOST INK выполнены из искусственной кожи. Детали: внутренняя отделка из искусственной кожи; подошва из термопластиковой резины.	2499	tommy_no-lace1.jpg	2
17	Ботфорты River Island	5	Ботфорты River Island выполнены из искусственной замши. Детали: сбоку застежка на молнию; шнурок по верху; высокий каблук.	8299	river_island1.jpg	2
18	Кеды YMD	6	Кеды YMD выполнены из текстиля в сочетании с искусственной замшей. Детали: контрастная шнуровка, текстильная внутренняя отделка, контрастная подошва.	2999	ymd1.jpg	2
19	Ремень Wrangler	25	Мужской ремень от Wrangler. Аксессуар создан из натуральной кожи черного цвета. Детали: контрастная белая прошивка, квадратная металлическая пряжка.	2400	remen_wrangler1.jpg	3
5	Кроссовки UMBRO NEWHAVEN 2 Umbro	3	Легкие повседневные кроссовки Umbro NEWHAVEN 2 выполнены из прочной искусственной кожи с воздухопроницаемыми вставками. Детали: шнуровка, амортизирующая подошва, стелька из легкого ЭВА.	2200	umbro1.jpg	2
3	Кеды NIKE SB CHECK SOLAR Nike	7	Кеды Nike "SB CHECK SOLAR" выполнены из натурального велюра. Детали: шнурки с наконечниками; текстильная внутренняя отделка; съемная легкая и амортизирующая стелька; резиновая подошва; контрастный логотип.	4190	solar_nike1.jpg	2
\.


--
-- Name: product_product_id_seq; Type: SEQUENCE SET; Schema: public; Owner: alexander
--

SELECT pg_catalog.setval('product_product_id_seq', 19, true);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: product_application_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY product_application
    ADD CONSTRAINT product_application_pkey PRIMARY KEY (id);


--
-- Name: product_cart_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY product_cart
    ADD CONSTRAINT product_cart_pkey PRIMARY KEY (id);


--
-- Name: product_category_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY product_category
    ADD CONSTRAINT product_category_pkey PRIMARY KEY (id);


--
-- Name: product_imageproduct_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY product_imageproduct
    ADD CONSTRAINT product_imageproduct_pkey PRIMARY KEY (id);


--
-- Name: product_product_pkey; Type: CONSTRAINT; Schema: public; Owner: alexander; Tablespace: 
--

ALTER TABLE ONLY product_product
    ADD CONSTRAINT product_product_pkey PRIMARY KEY (id);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_0e939a4f; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX auth_group_permissions_0e939a4f ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_8373b171; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX auth_group_permissions_8373b171 ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_417f1b1c; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX auth_permission_417f1b1c ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_0e939a4f; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX auth_user_groups_0e939a4f ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_e8701ad4; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX auth_user_groups_e8701ad4 ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_8373b171; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_8373b171 ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_e8701ad4; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_e8701ad4 ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_417f1b1c; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX django_admin_log_417f1b1c ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_e8701ad4; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX django_admin_log_e8701ad4 ON django_admin_log USING btree (user_id);


--
-- Name: django_session_de54fa62; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX django_session_de54fa62 ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: product_application_9bea82de; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX product_application_9bea82de ON product_application USING btree (product_id);


--
-- Name: product_cart_9bea82de; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX product_cart_9bea82de ON product_cart USING btree (product_id);


--
-- Name: product_imageproduct_9bea82de; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX product_imageproduct_9bea82de ON product_imageproduct USING btree (product_id);


--
-- Name: product_product_b583a629; Type: INDEX; Schema: public; Owner: alexander; Tablespace: 
--

CREATE INDEX product_product_b583a629 ON product_product USING btree (category_id);


--
-- Name: auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permiss_permission_id_84c5c92e_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permiss_content_type_id_2f476e4b_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id; Type: FK CONSTRAINT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_per_permission_id_1fbb5f2c_fk_auth_permission_id FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_content_type_id_c4bce8eb_fk_django_content_type_id; Type: FK CONSTRAINT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_content_type_id_c4bce8eb_fk_django_content_type_id FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_application_product_id_10854a46_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY product_application
    ADD CONSTRAINT product_application_product_id_10854a46_fk_product_product_id FOREIGN KEY (product_id) REFERENCES product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_cart_product_id_ab32bd2e_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY product_cart
    ADD CONSTRAINT product_cart_product_id_ab32bd2e_fk_product_product_id FOREIGN KEY (product_id) REFERENCES product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_imageproduct_product_id_c3beed8b_fk_product_product_id; Type: FK CONSTRAINT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY product_imageproduct
    ADD CONSTRAINT product_imageproduct_product_id_c3beed8b_fk_product_product_id FOREIGN KEY (product_id) REFERENCES product_product(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: product_product_category_id_0c725779_fk_product_category_id; Type: FK CONSTRAINT; Schema: public; Owner: alexander
--

ALTER TABLE ONLY product_product
    ADD CONSTRAINT product_product_category_id_0c725779_fk_product_category_id FOREIGN KEY (category_id) REFERENCES product_category(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


--
-- PostgreSQL database dump complete
--

