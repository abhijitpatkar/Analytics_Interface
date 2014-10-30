--
-- PostgreSQL database dump
--

SET statement_timeout = 0;
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
-- Name: analytics_mst_candidates; Type: TABLE; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE TABLE analytics_mst_candidates (
    cand_id integer NOT NULL,
    cand_registration_number character varying(10) NOT NULL,
    cand_fname character varying(30) NOT NULL,
    cand_mname character varying(30),
    cand_lname character varying(30) NOT NULL,
    cand_email character varying(150) NOT NULL,
    cand_phone character varying(30),
    cand_mobile character varying(15),
    cand_name_for_address character varying(100),
    cand_address character varying(500),
    cand_pincode character varying(10),
    cand_cour_name character varying(20),
    cand_gender character varying(1),
    cand_date_of_birth timestamp with time zone,
    cand_application_datetime timestamp with time zone NOT NULL,
    cand_sample_age integer
);


ALTER TABLE public.analytics_mst_candidates OWNER TO abhijit;

--
-- Name: analytics_mst_candidates_cand_id_seq; Type: SEQUENCE; Schema: public; Owner: abhijit
--

CREATE SEQUENCE analytics_mst_candidates_cand_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.analytics_mst_candidates_cand_id_seq OWNER TO abhijit;

--
-- Name: analytics_mst_candidates_cand_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abhijit
--

ALTER SEQUENCE analytics_mst_candidates_cand_id_seq OWNED BY analytics_mst_candidates.cand_id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO abhijit;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: abhijit
--

CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO abhijit;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abhijit
--

ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO abhijit;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: abhijit
--

CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO abhijit;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abhijit
--

ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO abhijit;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: abhijit
--

CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO abhijit;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abhijit
--

ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    is_superuser boolean NOT NULL,
    username character varying(30) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(75) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO abhijit;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO abhijit;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: abhijit
--

CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO abhijit;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abhijit
--

ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: abhijit
--

CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO abhijit;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abhijit
--

ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO abhijit;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: abhijit
--

CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO abhijit;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abhijit
--

ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE TABLE django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    user_id integer NOT NULL,
    content_type_id integer,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);


ALTER TABLE public.django_admin_log OWNER TO abhijit;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: abhijit
--

CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO abhijit;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abhijit
--

ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE TABLE django_content_type (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO abhijit;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: abhijit
--

CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO abhijit;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abhijit
--

ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO abhijit;

--
-- Name: tastypie_apiaccess; Type: TABLE; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE TABLE tastypie_apiaccess (
    id integer NOT NULL,
    identifier character varying(255) NOT NULL,
    url character varying(255) NOT NULL,
    request_method character varying(10) NOT NULL,
    accessed integer NOT NULL,
    CONSTRAINT tastypie_apiaccess_accessed_check CHECK ((accessed >= 0))
);


ALTER TABLE public.tastypie_apiaccess OWNER TO abhijit;

--
-- Name: tastypie_apiaccess_id_seq; Type: SEQUENCE; Schema: public; Owner: abhijit
--

CREATE SEQUENCE tastypie_apiaccess_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tastypie_apiaccess_id_seq OWNER TO abhijit;

--
-- Name: tastypie_apiaccess_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abhijit
--

ALTER SEQUENCE tastypie_apiaccess_id_seq OWNED BY tastypie_apiaccess.id;


--
-- Name: tastypie_apikey; Type: TABLE; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE TABLE tastypie_apikey (
    id integer NOT NULL,
    user_id integer NOT NULL,
    key character varying(128) NOT NULL,
    created timestamp with time zone NOT NULL
);


ALTER TABLE public.tastypie_apikey OWNER TO abhijit;

--
-- Name: tastypie_apikey_id_seq; Type: SEQUENCE; Schema: public; Owner: abhijit
--

CREATE SEQUENCE tastypie_apikey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tastypie_apikey_id_seq OWNER TO abhijit;

--
-- Name: tastypie_apikey_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: abhijit
--

ALTER SEQUENCE tastypie_apikey_id_seq OWNED BY tastypie_apikey.id;


--
-- Name: cand_id; Type: DEFAULT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY analytics_mst_candidates ALTER COLUMN cand_id SET DEFAULT nextval('analytics_mst_candidates_cand_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY tastypie_apiaccess ALTER COLUMN id SET DEFAULT nextval('tastypie_apiaccess_id_seq'::regclass);


--
-- Name: id; Type: DEFAULT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY tastypie_apikey ALTER COLUMN id SET DEFAULT nextval('tastypie_apikey_id_seq'::regclass);


--
-- Data for Name: analytics_mst_candidates; Type: TABLE DATA; Schema: public; Owner: abhijit
--

COPY analytics_mst_candidates (cand_id, cand_registration_number, cand_fname, cand_mname, cand_lname, cand_email, cand_phone, cand_mobile, cand_name_for_address, cand_address, cand_pincode, cand_cour_name, cand_gender, cand_date_of_birth, cand_application_datetime, cand_sample_age) FROM stdin;
30999	C030999	ANILA	\N	DAVID	nithinta7@gmail.com                                                                                                                                   	\N	\N	C Y DAVID	\N	683572	Science	F	1995-12-15 11:30:00+05:30	2013-04-10 15:09:53.76173+05:30	14
31018	C031018	THOGATA	MOHANKUMAR	PRANATHI	pranathi.dholla@gmail.com                                                                                                                             	\N	\N	THOGATA MOHANKUMAR PRANATHI	\N	500020	Science	F	1995-05-18 10:30:00+05:30	2013-04-06 21:33:50.834826+05:30	15
31035	C031035	VIDHI	\N	LAHOTY	vidhilahoty@gmail.com                                                                                                                                 	\N	\N	VIDHI LAHOTY	\N	781005	Science	F	1995-04-28 10:30:00+05:30	2013-04-10 23:59:27.529859+05:30	14
30953	C030953	TANMITA	\N	DUTTA	dbinayak10@yahoo.com                                                                                                                                  	\N	\N	Tanmita Dutta	\N	790114	Science	F	1995-12-06 11:30:00+05:30	2013-04-05 20:53:56.58151+05:30	16
29257	C029257	DISHA	\N	YADAV	dishayadav81@gmail.com                                                                                                                                	\N	\N	DISHA YADAV	\N	462016	Science	F	1995-03-30 11:30:00+05:30	2013-03-16 09:58:28.00674+05:30	14
31435	C031435	RAMALAKSHMI	\N	PARASA	ramalakshmiparasa@gmail.com                                                                                                                           	\N	\N	RAMALAKSHMI PARASA	\N	521329	Science	F	1995-04-21 10:30:00+05:30	2013-04-10 15:04:15.646545+05:30	14
30629	C030629	PRATEEK	\N	PRIYADARSHI	prateekpriyadarshi.19@gmail.com                                                                                                                       	\N	\N	PRATEEK PRIYADARSHI	\N	800003	Science	M	1993-04-28 10:30:00+05:30	2013-04-09 21:08:03.828302+05:30	15
30600	C030600	CHANDRIL	ROY	CHOWDHURY	chandril.rch@gmail.com                                                                                                                                	\N	\N	CHANDRIL ROY CHOWDHURY	\N	700089	Science	M	1994-12-10 11:30:00+05:30	2013-04-09 13:39:03.505821+05:30	15
31359	C031359	MEDHA	\N	AURORA	suresh.k4@gmail.com                                                                                                                                   	\N	\N	Medha Aurora	\N	122017	Science	F	1994-10-03 10:30:00+05:30	2013-04-10 17:15:45.925686+05:30	16
28796	C028796	SWETHA	\N	R	swetha3000@yahoo.co.in                                                                                                                                	\N	\N	SWETHA R 	\N	600020	Science	F	1996-05-30 10:30:00+05:30	2013-03-03 21:24:18.803857+05:30	16
31073	C031073	CHIQUITA	GABRIELLA	PAUL	chicktakiah@gmail.com                                                                                                                                 	\N	\N	Chiquita Paul 	\N	500028	Science	F	1995-10-24 10:30:00+05:30	2013-04-09 16:34:19.886353+05:30	16
28752	C028752	PRANAY	VIKAS	MOVVA	mpv096@gmail.com                                                                                                                                      	\N	\N	m.pranay vikas	\N	700061	Commerce	M	1996-08-17 10:30:00+05:30	2013-03-25 12:06:56.261001+05:30	15
29932	C029932	MEGHANA	\N	REDDY	uday_27@yahoo.com                                                                                                                                     	\N	\N	C. MEGHANA REDDY	\N	600015	Commerce	F	1996-06-13 10:30:00+05:30	2013-03-29 11:11:29.120652+05:30	16
28717	C028717	ANKITA	\N	SARMA	ankita_asha90@yahoo.com                                                                                                                               	\N	\N	Ankita Sarma	\N	600020	Commerce	F	1994-09-12 10:30:00+05:30	2013-02-13 00:02:30.801982+05:30	16
30070	C030070	PRASHANT	\N	KUMAR	prashant2824kumar@gmail.com                                                                                                                           	\N	\N	PRASHANT KUMAR	\N	800001	Commerce	M	1995-01-28 11:30:00+05:30	2013-03-20 19:49:53.422171+05:30	16
29241	C029241	THIRUMAMANGAI	\N	THIRUMAVALAVAN	shyamalan.rocks@gmail.com                                                                                                                             	\N	\N	Thirumamangai T	\N	600099	Commerce	F	1993-12-21 11:30:00+05:30	2013-03-08 16:05:25.892399+05:30	14
31500	C031500	PRABHAT	\N	PRIYANSHU	ppriyanshu1947@gmail.com                                                                                                                              	\N	\N	PRABHAT PRIYANSHU	\N	825320	Commerce	M	1995-03-10 11:30:00+05:30	2013-04-10 21:09:52.657265+05:30	15
30855	C030855	RAMKISHAN	\N	VISHNOI	rock.rs29@gmail.com                                                                                                                                   	\N	\N	Ramkishan vishnoi	\N	342006	Arts	M	1995-10-01 10:30:00+05:30	2013-04-10 19:20:17.439261+05:30	15
30901	C030901	AAISWANI	\N	MOHAN	rupshikha09@yahoo.com                                                                                                                                 	\N	\N	Aaiswani Mohan	\N	786125	Arts	F	1994-11-17 11:30:00+05:30	2013-04-06 17:54:23.928307+05:30	15
\.


--
-- Name: analytics_mst_candidates_cand_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abhijit
--

SELECT pg_catalog.setval('analytics_mst_candidates_cand_id_seq', 1, false);


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: abhijit
--

COPY auth_group (id, name) FROM stdin;
\.


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abhijit
--

SELECT pg_catalog.setval('auth_group_id_seq', 1, false);


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: abhijit
--

COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abhijit
--

SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: abhijit
--

COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can add permission	2	add_permission
5	Can change permission	2	change_permission
6	Can delete permission	2	delete_permission
7	Can add group	3	add_group
8	Can change group	3	change_group
9	Can delete group	3	delete_group
10	Can add user	4	add_user
11	Can change user	4	change_user
12	Can delete user	4	delete_user
13	Can add content type	5	add_contenttype
14	Can change content type	5	change_contenttype
15	Can delete content type	5	delete_contenttype
16	Can add session	6	add_session
17	Can change session	6	change_session
18	Can delete session	6	delete_session
19	Can add mst_candidates	7	add_mst_candidates
20	Can change mst_candidates	7	change_mst_candidates
21	Can delete mst_candidates	7	delete_mst_candidates
34	Can add api access	12	add_apiaccess
35	Can change api access	12	change_apiaccess
36	Can delete api access	12	delete_apiaccess
37	Can add api key	13	add_apikey
38	Can change api key	13	change_apikey
39	Can delete api key	13	delete_apikey
\.


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abhijit
--

SELECT pg_catalog.setval('auth_permission_id_seq', 39, true);


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: abhijit
--

COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
1	pbkdf2_sha256$12000$lsmaCN1bGpH1$0PFvtwm5lEOftqydGKlBhkiuB+67O5fqsZc1ySWG2hw=	2014-10-29 12:41:05.302993+05:30	t	abhijit@123			abhijit.patkar@gmail.com	t	t	2014-10-29 12:41:05.302993+05:30
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: abhijit
--

COPY auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abhijit
--

SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abhijit
--

SELECT pg_catalog.setval('auth_user_id_seq', 1, true);


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: abhijit
--

COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abhijit
--

SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: abhijit
--

COPY django_admin_log (id, action_time, user_id, content_type_id, object_id, object_repr, action_flag, change_message) FROM stdin;
\.


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abhijit
--

SELECT pg_catalog.setval('django_admin_log_id_seq', 1, false);


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: abhijit
--

COPY django_content_type (id, name, app_label, model) FROM stdin;
1	log entry	admin	logentry
2	permission	auth	permission
3	group	auth	group
4	user	auth	user
5	content type	contenttypes	contenttype
6	session	sessions	session
7	mst_candidates	analytics	mst_candidates
12	api access	tastypie	apiaccess
13	api key	tastypie	apikey
\.


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abhijit
--

SELECT pg_catalog.setval('django_content_type_id_seq', 13, true);


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: abhijit
--

COPY django_session (session_key, session_data, expire_date) FROM stdin;
uix4t2ynxuk8dyfofoyppv8c385j08gl	YmU0YTA3MzY0MWJhMDc3MjBiNDI2NjBjZTdlMDM2MTY0YzBlNTQzOTp7fQ==	2014-11-12 12:58:46.860492+05:30
\.


--
-- Data for Name: tastypie_apiaccess; Type: TABLE DATA; Schema: public; Owner: abhijit
--

COPY tastypie_apiaccess (id, identifier, url, request_method, accessed) FROM stdin;
\.


--
-- Name: tastypie_apiaccess_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abhijit
--

SELECT pg_catalog.setval('tastypie_apiaccess_id_seq', 1, false);


--
-- Data for Name: tastypie_apikey; Type: TABLE DATA; Schema: public; Owner: abhijit
--

COPY tastypie_apikey (id, user_id, key, created) FROM stdin;
\.


--
-- Name: tastypie_apikey_id_seq; Type: SEQUENCE SET; Schema: public; Owner: abhijit
--

SELECT pg_catalog.setval('tastypie_apikey_id_seq', 1, false);


--
-- Name: analytics_mst_candidates_pkey; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY analytics_mst_candidates
    ADD CONSTRAINT analytics_mst_candidates_pkey PRIMARY KEY (cand_id);


--
-- Name: auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions_group_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_key UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission_content_type_id_codename_key; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_key UNIQUE (content_type_id, codename);


--
-- Name: auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups_user_id_group_id_key; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_key UNIQUE (user_id, group_id);


--
-- Name: auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions_user_id_permission_id_key; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_key UNIQUE (user_id, permission_id);


--
-- Name: auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type_app_label_model_key; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_key UNIQUE (app_label, model);


--
-- Name: django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: tastypie_apiaccess_pkey; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY tastypie_apiaccess
    ADD CONSTRAINT tastypie_apiaccess_pkey PRIMARY KEY (id);


--
-- Name: tastypie_apikey_pkey; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY tastypie_apikey
    ADD CONSTRAINT tastypie_apikey_pkey PRIMARY KEY (id);


--
-- Name: tastypie_apikey_user_id_key; Type: CONSTRAINT; Schema: public; Owner: abhijit; Tablespace: 
--

ALTER TABLE ONLY tastypie_apikey
    ADD CONSTRAINT tastypie_apikey_user_id_key UNIQUE (user_id);


--
-- Name: auth_group_name_like; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX auth_group_name_like ON auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX auth_group_permissions_group_id ON auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX auth_group_permissions_permission_id ON auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX auth_permission_content_type_id ON auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX auth_user_groups_group_id ON auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX auth_user_groups_user_id ON auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_permission_id ON auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX auth_user_user_permissions_user_id ON auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_like; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX auth_user_username_like ON auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX django_admin_log_content_type_id ON django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX django_admin_log_user_id ON django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX django_session_expire_date ON django_session USING btree (expire_date);


--
-- Name: django_session_session_key_like; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX django_session_session_key_like ON django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: tastypie_apikey_key; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX tastypie_apikey_key ON tastypie_apikey USING btree (key);


--
-- Name: tastypie_apikey_key_like; Type: INDEX; Schema: public; Owner: abhijit; Tablespace: 
--

CREATE INDEX tastypie_apikey_key_like ON tastypie_apikey USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups_group_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_fkey FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions_permission_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_permission_id_fkey FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_93d2d1f8; Type: FK CONSTRAINT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT content_type_id_refs_id_93d2d1f8 FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: content_type_id_refs_id_d043b34a; Type: FK CONSTRAINT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT content_type_id_refs_id_d043b34a FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: group_id_refs_id_f4b32aac; Type: FK CONSTRAINT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT group_id_refs_id_f4b32aac FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: tastypie_apikey_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY tastypie_apikey
    ADD CONSTRAINT tastypie_apikey_user_id_fkey FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_40c41112; Type: FK CONSTRAINT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT user_id_refs_id_40c41112 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_4dc23c39; Type: FK CONSTRAINT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT user_id_refs_id_4dc23c39 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: user_id_refs_id_c0d12874; Type: FK CONSTRAINT; Schema: public; Owner: abhijit
--

ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT user_id_refs_id_c0d12874 FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;


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

