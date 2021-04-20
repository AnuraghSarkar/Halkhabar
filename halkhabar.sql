--
-- PostgreSQL database dump
--

-- Dumped from database version 12.6 (Ubuntu 12.6-1.pgdg20.10+1)
-- Dumped by pg_dump version 12.6 (Ubuntu 12.6-1.pgdg20.10+1)

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
-- Name: account_emailaddress; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.account_emailaddress OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailaddress_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailaddress_id_seq OWNER TO postgres;

--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailaddress_id_seq OWNED BY public.account_emailaddress.id;


--
-- Name: account_emailconfirmation; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);


ALTER TABLE public.account_emailconfirmation OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.account_emailconfirmation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.account_emailconfirmation_id_seq OWNER TO postgres;

--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.account_emailconfirmation_id_seq OWNED BY public.account_emailconfirmation.id;


--
-- Name: auth_group; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);


ALTER TABLE public.auth_group OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_id_seq OWNER TO postgres;

--
-- Name: auth_group_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;


--
-- Name: auth_group_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_group_permissions OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_group_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;


--
-- Name: auth_permission; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);


ALTER TABLE public.auth_permission OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_permission_id_seq OWNER TO postgres;

--
-- Name: auth_permission_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;


--
-- Name: auth_user; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);


ALTER TABLE public.auth_user OWNER TO postgres;

--
-- Name: auth_user_groups; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);


ALTER TABLE public.auth_user_groups OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_groups_id_seq OWNER TO postgres;

--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;


--
-- Name: auth_user_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_id_seq OWNER TO postgres;

--
-- Name: auth_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;


--
-- Name: auth_user_user_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);


ALTER TABLE public.auth_user_user_permissions OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.auth_user_user_permissions_id_seq OWNER TO postgres;

--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;


--
-- Name: django_admin_log; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_admin_log (
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


ALTER TABLE public.django_admin_log OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_admin_log_id_seq OWNER TO postgres;

--
-- Name: django_admin_log_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;


--
-- Name: django_content_type; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);


ALTER TABLE public.django_content_type OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_content_type_id_seq OWNER TO postgres;

--
-- Name: django_content_type_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;


--
-- Name: django_migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);


ALTER TABLE public.django_migrations OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_migrations_id_seq OWNER TO postgres;

--
-- Name: django_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;


--
-- Name: django_session; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);


ALTER TABLE public.django_session OWNER TO postgres;

--
-- Name: django_site; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.django_site OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.django_site_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.django_site_id_seq OWNER TO postgres;

--
-- Name: django_site_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;


--
-- Name: social_comment; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_comment (
    id integer NOT NULL,
    comment text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    author_id integer NOT NULL,
    post_id integer NOT NULL,
    parent_id integer
);


ALTER TABLE public.social_comment OWNER TO postgres;

--
-- Name: social_comment_dislikes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_comment_dislikes (
    id integer NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.social_comment_dislikes OWNER TO postgres;

--
-- Name: social_comment_dislikes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_comment_dislikes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_comment_dislikes_id_seq OWNER TO postgres;

--
-- Name: social_comment_dislikes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_comment_dislikes_id_seq OWNED BY public.social_comment_dislikes.id;


--
-- Name: social_comment_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_comment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_comment_id_seq OWNER TO postgres;

--
-- Name: social_comment_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_comment_id_seq OWNED BY public.social_comment.id;


--
-- Name: social_comment_likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_comment_likes (
    id integer NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.social_comment_likes OWNER TO postgres;

--
-- Name: social_comment_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_comment_likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_comment_likes_id_seq OWNER TO postgres;

--
-- Name: social_comment_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_comment_likes_id_seq OWNED BY public.social_comment_likes.id;


--
-- Name: social_notification; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_notification (
    id integer NOT NULL,
    notification_type integer NOT NULL,
    date timestamp with time zone NOT NULL,
    user_has_seen boolean NOT NULL,
    comment_id integer,
    from_user_id integer,
    post_id integer,
    to_user_id integer
);


ALTER TABLE public.social_notification OWNER TO postgres;

--
-- Name: social_notification_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_notification_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_notification_id_seq OWNER TO postgres;

--
-- Name: social_notification_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_notification_id_seq OWNED BY public.social_notification.id;


--
-- Name: social_post; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_post (
    id integer NOT NULL,
    body text NOT NULL,
    created_on timestamp with time zone NOT NULL,
    author_id integer NOT NULL,
    image character varying(100)
);


ALTER TABLE public.social_post OWNER TO postgres;

--
-- Name: social_post_dislikes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_post_dislikes (
    id integer NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.social_post_dislikes OWNER TO postgres;

--
-- Name: social_post_dislikes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_post_dislikes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_post_dislikes_id_seq OWNER TO postgres;

--
-- Name: social_post_dislikes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_post_dislikes_id_seq OWNED BY public.social_post_dislikes.id;


--
-- Name: social_post_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_post_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_post_id_seq OWNER TO postgres;

--
-- Name: social_post_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_post_id_seq OWNED BY public.social_post.id;


--
-- Name: social_post_likes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_post_likes (
    id integer NOT NULL,
    post_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.social_post_likes OWNER TO postgres;

--
-- Name: social_post_likes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_post_likes_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_post_likes_id_seq OWNER TO postgres;

--
-- Name: social_post_likes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_post_likes_id_seq OWNED BY public.social_post_likes.id;


--
-- Name: social_userprofile; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_userprofile (
    user_id integer NOT NULL,
    name character varying(30),
    bio text,
    birthdate date,
    location character varying(100),
    picture character varying(100) NOT NULL
);


ALTER TABLE public.social_userprofile OWNER TO postgres;

--
-- Name: social_userprofile_followers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.social_userprofile_followers (
    id integer NOT NULL,
    userprofile_id integer NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.social_userprofile_followers OWNER TO postgres;

--
-- Name: social_userprofile_followers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.social_userprofile_followers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.social_userprofile_followers_id_seq OWNER TO postgres;

--
-- Name: social_userprofile_followers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.social_userprofile_followers_id_seq OWNED BY public.social_userprofile_followers.id;


--
-- Name: socialaccount_socialaccount; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialaccount OWNER TO postgres;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialaccount_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialaccount_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialaccount_id_seq OWNED BY public.socialaccount_socialaccount.id;


--
-- Name: socialaccount_socialapp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);


ALTER TABLE public.socialaccount_socialapp OWNER TO postgres;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_id_seq OWNED BY public.socialaccount_socialapp.id;


--
-- Name: socialaccount_socialapp_sites; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialapp_sites OWNER TO postgres;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialapp_sites_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialapp_sites_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialapp_sites_id_seq OWNED BY public.socialaccount_socialapp_sites.id;


--
-- Name: socialaccount_socialtoken; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);


ALTER TABLE public.socialaccount_socialtoken OWNER TO postgres;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.socialaccount_socialtoken_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.socialaccount_socialtoken_id_seq OWNER TO postgres;

--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.socialaccount_socialtoken_id_seq OWNED BY public.socialaccount_socialtoken.id;


--
-- Name: account_emailaddress id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress ALTER COLUMN id SET DEFAULT nextval('public.account_emailaddress_id_seq'::regclass);


--
-- Name: account_emailconfirmation id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('public.account_emailconfirmation_id_seq'::regclass);


--
-- Name: auth_group id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);


--
-- Name: auth_group_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);


--
-- Name: auth_permission id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);


--
-- Name: auth_user id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);


--
-- Name: auth_user_groups id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);


--
-- Name: auth_user_user_permissions id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);


--
-- Name: django_admin_log id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);


--
-- Name: django_content_type id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);


--
-- Name: django_migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);


--
-- Name: django_site id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);


--
-- Name: social_comment id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment ALTER COLUMN id SET DEFAULT nextval('public.social_comment_id_seq'::regclass);


--
-- Name: social_comment_dislikes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment_dislikes ALTER COLUMN id SET DEFAULT nextval('public.social_comment_dislikes_id_seq'::regclass);


--
-- Name: social_comment_likes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment_likes ALTER COLUMN id SET DEFAULT nextval('public.social_comment_likes_id_seq'::regclass);


--
-- Name: social_notification id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_notification ALTER COLUMN id SET DEFAULT nextval('public.social_notification_id_seq'::regclass);


--
-- Name: social_post id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_post ALTER COLUMN id SET DEFAULT nextval('public.social_post_id_seq'::regclass);


--
-- Name: social_post_dislikes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_post_dislikes ALTER COLUMN id SET DEFAULT nextval('public.social_post_dislikes_id_seq'::regclass);


--
-- Name: social_post_likes id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_post_likes ALTER COLUMN id SET DEFAULT nextval('public.social_post_likes_id_seq'::regclass);


--
-- Name: social_userprofile_followers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_userprofile_followers ALTER COLUMN id SET DEFAULT nextval('public.social_userprofile_followers_id_seq'::regclass);


--
-- Name: socialaccount_socialaccount id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialaccount_id_seq'::regclass);


--
-- Name: socialaccount_socialapp id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_id_seq'::regclass);


--
-- Name: socialaccount_socialapp_sites id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialapp_sites_id_seq'::regclass);


--
-- Name: socialaccount_socialtoken id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('public.socialaccount_socialtoken_id_seq'::regclass);


--
-- Data for Name: account_emailaddress; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
12	anuraghtimalsina@gmail.com	t	t	14
15	trithatimalsina@gmail.com	t	t	17
\.


--
-- Data for Name: account_emailconfirmation; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
\.


--
-- Data for Name: auth_group; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group (id, name) FROM stdin;
\.


--
-- Data for Name: auth_group_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
\.


--
-- Data for Name: auth_permission; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
1	Can add log entry	1	add_logentry
2	Can change log entry	1	change_logentry
3	Can delete log entry	1	delete_logentry
4	Can view log entry	1	view_logentry
5	Can add permission	2	add_permission
6	Can change permission	2	change_permission
7	Can delete permission	2	delete_permission
8	Can view permission	2	view_permission
9	Can add group	3	add_group
10	Can change group	3	change_group
11	Can delete group	3	delete_group
12	Can view group	3	view_group
13	Can add user	4	add_user
14	Can change user	4	change_user
15	Can delete user	4	delete_user
16	Can view user	4	view_user
17	Can add email address	5	add_emailaddress
18	Can change email address	5	change_emailaddress
19	Can delete email address	5	delete_emailaddress
20	Can view email address	5	view_emailaddress
21	Can add email confirmation	6	add_emailconfirmation
22	Can change email confirmation	6	change_emailconfirmation
23	Can delete email confirmation	6	delete_emailconfirmation
24	Can view email confirmation	6	view_emailconfirmation
25	Can add social account	7	add_socialaccount
26	Can change social account	7	change_socialaccount
27	Can delete social account	7	delete_socialaccount
28	Can view social account	7	view_socialaccount
29	Can add social application	8	add_socialapp
30	Can change social application	8	change_socialapp
31	Can delete social application	8	delete_socialapp
32	Can view social application	8	view_socialapp
33	Can add social application token	9	add_socialtoken
34	Can change social application token	9	change_socialtoken
35	Can delete social application token	9	delete_socialtoken
36	Can view social application token	9	view_socialtoken
37	Can add content type	10	add_contenttype
38	Can change content type	10	change_contenttype
39	Can delete content type	10	delete_contenttype
40	Can view content type	10	view_contenttype
41	Can add session	11	add_session
42	Can change session	11	change_session
43	Can delete session	11	delete_session
44	Can view session	11	view_session
45	Can add post	12	add_post
46	Can change post	12	change_post
47	Can delete post	12	delete_post
48	Can view post	12	view_post
49	Can add comment	13	add_comment
50	Can change comment	13	change_comment
51	Can delete comment	13	delete_comment
52	Can view comment	13	view_comment
53	Can add user profile	14	add_userprofile
54	Can change user profile	14	change_userprofile
55	Can delete user profile	14	delete_userprofile
56	Can view user profile	14	view_userprofile
57	Can add notification	15	add_notification
58	Can change notification	15	change_notification
59	Can delete notification	15	delete_notification
60	Can view notification	15	view_notification
61	Can add site	16	add_site
62	Can change site	16	change_site
63	Can delete site	16	delete_site
64	Can view site	16	view_site
\.


--
-- Data for Name: auth_user; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
17	pbkdf2_sha256$216000$EXBoPwa4oTMp$hY5+2wzvN5pbNxU/lgcYjudsigNzLm9fKxq9HUwiPCA=	2021-04-20 22:29:24.28241+05:45	f	anuragh			trithatimalsina@gmail.com	f	t	2021-04-20 14:11:52.69529+05:45
14	pbkdf2_sha256$216000$fKSO8Trvs2iO$6oBv0t7yrpFxFZWsXWosjhS5Rjt9ZCIPXUC4AukeWiM=	2021-04-20 22:30:06.118519+05:45	t	admin	Anuragh	Timalsina	anuraghtimalsina@gmail.com	t	t	2021-04-19 16:38:06+05:45
\.


--
-- Data for Name: auth_user_groups; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
\.


--
-- Data for Name: auth_user_user_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
\.


--
-- Data for Name: django_admin_log; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
19	2021-04-19 16:49:18.076563+05:45	14	admin	2	[{"changed": {"fields": ["First name", "Last name", "Email address"]}}]	4	14
20	2021-04-19 17:02:45.49049+05:45	8	Post object (8)	1	[{"added": {}}]	12	14
21	2021-04-20 12:29:46.137639+05:45	12	shirsak	2	[{"changed": {"fields": ["password"]}}]	4	14
22	2021-04-20 13:18:47.464996+05:45	15	halkhabar	3		4	14
23	2021-04-20 13:18:47.474414+05:45	12	shirsak	3		4	14
24	2021-04-20 14:09:31.741959+05:45	12	Post object (12)	1	[{"added": {}}]	12	14
25	2021-04-20 14:10:03.893796+05:45	13	Post object (13)	1	[{"added": {}}]	12	14
26	2021-04-20 14:13:28.702879+05:45	14	Post object (14)	1	[{"added": {}}]	12	14
27	2021-04-20 21:42:25.431632+05:45	17	Post object (17)	1	[{"added": {}}]	12	14
28	2021-04-20 21:42:38.243878+05:45	18	Post object (18)	1	[{"added": {}}]	12	14
29	2021-04-20 22:05:42.324676+05:45	19	UserProfile object (19)	3		14	14
30	2021-04-20 22:05:49.954812+05:45	19	dummy	3		4	14
\.


--
-- Data for Name: django_content_type; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_content_type (id, app_label, model) FROM stdin;
1	admin	logentry
2	auth	permission
3	auth	group
4	auth	user
5	account	emailaddress
6	account	emailconfirmation
7	socialaccount	socialaccount
8	socialaccount	socialapp
9	socialaccount	socialtoken
10	contenttypes	contenttype
11	sessions	session
12	social	post
13	social	comment
14	social	userprofile
15	social	notification
16	sites	site
\.


--
-- Data for Name: django_migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_migrations (id, app, name, applied) FROM stdin;
1	contenttypes	0001_initial	2021-04-08 19:23:12.726305+05:45
2	auth	0001_initial	2021-04-08 19:23:12.781922+05:45
3	account	0001_initial	2021-04-08 19:23:12.910336+05:45
4	account	0002_email_max_length	2021-04-08 19:23:12.956169+05:45
5	admin	0001_initial	2021-04-08 19:23:12.98765+05:45
6	admin	0002_logentry_remove_auto_add	2021-04-08 19:23:13.011561+05:45
7	admin	0003_logentry_add_action_flag_choices	2021-04-08 19:23:13.021191+05:45
8	contenttypes	0002_remove_content_type_name	2021-04-08 19:23:13.03969+05:45
9	auth	0002_alter_permission_name_max_length	2021-04-08 19:23:13.051814+05:45
10	auth	0003_alter_user_email_max_length	2021-04-08 19:23:13.06455+05:45
11	auth	0004_alter_user_username_opts	2021-04-08 19:23:13.078915+05:45
12	auth	0005_alter_user_last_login_null	2021-04-08 19:23:13.091515+05:45
13	auth	0006_require_contenttypes_0002	2021-04-08 19:23:13.095205+05:45
14	auth	0007_alter_validators_add_error_messages	2021-04-08 19:23:13.104383+05:45
15	auth	0008_alter_user_username_max_length	2021-04-08 19:23:13.120224+05:45
16	auth	0009_alter_user_last_name_max_length	2021-04-08 19:23:13.132875+05:45
17	auth	0010_alter_group_name_max_length	2021-04-08 19:23:13.144634+05:45
18	auth	0011_update_proxy_permissions	2021-04-08 19:23:13.157388+05:45
19	auth	0012_alter_user_first_name_max_length	2021-04-08 19:23:13.17234+05:45
20	sessions	0001_initial	2021-04-08 19:23:13.186961+05:45
21	sites	0001_initial	2021-04-08 19:23:13.205129+05:45
22	sites	0002_alter_domain_unique	2021-04-08 19:23:13.217458+05:45
23	social	0001_initial	2021-04-08 19:23:13.237915+05:45
24	social	0002_comment	2021-04-08 19:23:13.265588+05:45
25	social	0003_userprofile	2021-04-08 19:23:13.296507+05:45
26	social	0004_auto_20210327_1043	2021-04-08 19:23:13.328066+05:45
27	social	0005_auto_20210328_1056	2021-04-08 19:23:13.374986+05:45
28	social	0006_auto_20210402_1540	2021-04-08 19:23:13.451109+05:45
29	social	0007_auto_20210402_1908	2021-04-08 19:23:13.545187+05:45
30	social	0008_auto_20210402_1909	2021-04-08 19:23:13.667441+05:45
31	social	0009_auto_20210402_1915	2021-04-08 19:23:13.711553+05:45
32	social	0010_auto_20210402_1924	2021-04-08 19:23:13.743323+05:45
33	social	0011_notification	2021-04-08 19:23:13.767224+05:45
34	socialaccount	0001_initial	2021-04-08 19:23:13.888686+05:45
35	socialaccount	0002_token_max_lengths	2021-04-08 19:23:13.97353+05:45
36	socialaccount	0003_extra_data_default_dict	2021-04-08 19:23:13.990622+05:45
37	social	0012_post_image	2021-04-19 06:41:41.584738+05:45
\.


--
-- Data for Name: django_session; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
ne0poyecgn9ahfa0obokq1k2rsnlueeu	.eJxVjMsOwiAQRf-FtSHDo4V26d5vIAMDFjVgSptojP-uTbrQ7T3nnhdzuC6TW1ucXSY2MiHY4Xf0GK6xbIQuWM6Vh1qWOXu-KXynjZ8qxdtxd_8CE7bp-x6MN6AkkU0kJaloKfkoMYAJqTcayfbQIYAQQeOQQAUN0HfGdkpbKbdoi63lWlx83PP8ZCO8P7bTPtE:1lXzXV:bB8ye93x1BnUW7oywWDI47gFtkxgVIgoqU8TZQuyeXk	2021-05-02 10:45:09.98245+05:45
y4shd9uhzr5vxhpn7lwohaui39q3japg	.eJxVjMsOwiAQRf-FtSHDo4V26d5vIAMDFjVgSptojP-uTbrQ7T3nnhdzuC6TW1ucXSY2MiHY4Xf0GK6xbIQuWM6Vh1qWOXu-KXynjZ8qxdtxd_8CE7bp-x6MN6AkkU0kJaloKfkoMYAJqTcayfbQIYAQQeOQQAUN0HfGdkpbKbdoi63lWlx83PP8ZCO8P7bTPtE:1lY4F2:YXEPvWartjLkKPaJ160J7DZSUZzJqhcPMe0mLTERKDk	2021-05-02 15:46:24.096445+05:45
mccquu3nzy17oo80slf7zhzy102vjtio	.eJxVjEEOwiAQRe_C2pCB0nbo0r1nIDBMLWrAlDbRGO-uTbrQ7X_vv5dwfl0mt1aeXYpiEEocfrfg6cp5A_Hi87lIKnmZU5CbInda5alEvh139y8w-Tp93wEC2NEjAhN3qGyLxhgKVjF02FCjQY2GkFuLnW5i1Bo19NYztWyx36KVa00lO37c0_wUA7w_akw-Zg:1lXep7:b0qeJHuRKbSnrzxPdt5K1qmJ-rJ8WrRz1PvXEBT7VgI	2021-05-01 12:37:57.843145+05:45
0goc2q9owuok03wmcxfyhbwmyzp98141	.eJxVjEEOwiAQRe_C2hCgU-i4dN8zNDMwSNXQpLQr491Nky50-997_60m2rcy7U3WaU7qqiyoy-_IFJ9SD5IeVO-Ljkvd1pn1oeiTNj0uSV630_07KNTKUQNh34fEkE0yztDgwDMKx0g42D6jN0IuM4KIQGdCdh6IM9hgO8zq8wUYRjho:1lYsji:Z-R3LZLBUF-bWN0kUlFHa4nuh_-eqZeWxVbcyKXKOFM	2021-05-04 21:41:26.584883+05:45
m9ikv3fss1j9gxvignf05t7en8y76cwr	.eJxVjMEOgyAQRP-Fc2MElyDe2h8hC7tEUoqJQi9N_73aePE4b2beR2AISyvVvXlNMTE5fmHKYiot55tw2Ors2sarSyQmIa24QI_hyeVoMOcDd6ev-2_Oeuvue-JSU8CalvI4XxfVjNu8e5QlCDICDcYbANTekmIwOsLY22h6UlJ7Ccr4YYjWBpYj4eANWug1kfj-AKunR70:1lYsoB:MC4YWCkcl6gd2Zu315V_x4dw346sbnuLi_IqdmoOSR8	2021-05-04 21:46:03.811744+05:45
fl2rklndwrbcs6opy41whndj5xy8sqjo	.eJxVjEEOwiAQRe_C2hBaage6dO8ZCDMdBDVgSptojHfXmi50-9_77ymcX-bolsqTS6MYRANi9zuipwvnlYxnn09FUsnzlFCuitxolccy8vWwuX-B6Gv8vHVoofWN7jvNVnnAwAygjTGoMACRsgCAewsWTG8ZrekICTQo1oa-0cq1ppId329peohBvd6icz8X:1lYtHi:Nmjw49_Y_mi8g2BHirSWBCRTCA7clcXBAkRAFN9kG_U	2021-05-04 22:16:34.247873+05:45
y7x6kz44mi74pdp5ns4zxmxk6mvvjgk6	.eJxVjEEOwiAQRe_C2pCB0pZ26d4zEJgZLGrAlDbRGO-uTbrQ7X_vv5dwfl0mt1aeXSIxCqXF4XcMHq-cN0IXn89FYsnLnILcFLnTKk-F-Hbc3b_A5Ov0feuBIzY29Ba8YlSsurZv0ID2PAB1EJUFpW2jFYEJjKYdImnQZAgi4xatXGsq2fHjnuanGOH9AaO1PyU:1lYkCD:M0kWPd3VhRSXsgE8Zeyd5eA3Fhkw2OkwtI4UPOAKnAI	2021-05-04 12:34:17.974181+05:45
9ubgfmlq2h3t1oa6lqy3lu1vkb3k4xog	.eJxVjMsOwiAQRf-FdUMApw-6dO83kAEGiyIkbXFj_HetaUy6Pefc-2LoXKl5NU-aY4jkDT0wJjbmmlLzt3WhmY0ssIYZrOv0Ayb6L5NwhBbdnfJm_A3ztXBX8jpHy7eE73bhl-Ipnff2cDDhMm1rQN22vbcQhBdK4KCgs5qsc6gH2QbdCUIVrAYigpPog-oAbQDZy5MO7P0B4KVKLQ:1lYksy:wO8mMRO9eRJyYuwgmlLNqkBf05CHr28X0UaqE0j0YnA	2021-05-04 13:18:28.628817+05:45
\.


--
-- Data for Name: django_site; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.django_site (id, domain, name) FROM stdin;
1	example.com	example.com
\.


--
-- Data for Name: social_comment; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_comment (id, comment, created_on, author_id, post_id, parent_id) FROM stdin;
\.


--
-- Data for Name: social_comment_dislikes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_comment_dislikes (id, comment_id, user_id) FROM stdin;
\.


--
-- Data for Name: social_comment_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_comment_likes (id, comment_id, user_id) FROM stdin;
\.


--
-- Data for Name: social_notification; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_notification (id, notification_type, date, user_has_seen, comment_id, from_user_id, post_id, to_user_id) FROM stdin;
\.


--
-- Data for Name: social_post; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_post (id, body, created_on, author_id, image) FROM stdin;
17	Hey This is For you	2021-04-20 21:41:58+05:45	17	upload/post_photos/life.png
18	Another One	2021-04-20 21:42:29+05:45	14	
\.


--
-- Data for Name: social_post_dislikes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_post_dislikes (id, post_id, user_id) FROM stdin;
\.


--
-- Data for Name: social_post_likes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_post_likes (id, post_id, user_id) FROM stdin;
16	17	14
\.


--
-- Data for Name: social_userprofile; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_userprofile (user_id, name, bio, birthdate, location, picture) FROM stdin;
14	Monkey D Luffy	Updated	2021-03-26	East Blue	upload/profile_pictures/ok.png
17	Anuragh TImalsina	Updated	2001-11-26	Nepal	upload/profile_pictures/v_lrPXkMe.jpg
\.


--
-- Data for Name: social_userprofile_followers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.social_userprofile_followers (id, userprofile_id, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialaccount; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialapp_sites; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
\.


--
-- Data for Name: socialaccount_socialtoken; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
\.


--
-- Name: account_emailaddress_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailaddress_id_seq', 19, true);


--
-- Name: account_emailconfirmation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.account_emailconfirmation_id_seq', 1, false);


--
-- Name: auth_group_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);


--
-- Name: auth_group_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);


--
-- Name: auth_permission_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_permission_id_seq', 64, true);


--
-- Name: auth_user_groups_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);


--
-- Name: auth_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_id_seq', 21, true);


--
-- Name: auth_user_user_permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 128, true);


--
-- Name: django_admin_log_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_admin_log_id_seq', 30, true);


--
-- Name: django_content_type_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_content_type_id_seq', 16, true);


--
-- Name: django_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_migrations_id_seq', 37, true);


--
-- Name: django_site_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);


--
-- Name: social_comment_dislikes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_comment_dislikes_id_seq', 2, true);


--
-- Name: social_comment_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_comment_id_seq', 8, true);


--
-- Name: social_comment_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_comment_likes_id_seq', 3, true);


--
-- Name: social_notification_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_notification_id_seq', 57, true);


--
-- Name: social_post_dislikes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_post_dislikes_id_seq', 9, true);


--
-- Name: social_post_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_post_id_seq', 21, true);


--
-- Name: social_post_likes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_post_likes_id_seq', 24, true);


--
-- Name: social_userprofile_followers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.social_userprofile_followers_id_seq', 24, true);


--
-- Name: socialaccount_socialaccount_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialaccount_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_id_seq', 1, false);


--
-- Name: socialaccount_socialapp_sites_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialapp_sites_id_seq', 1, false);


--
-- Name: socialaccount_socialtoken_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.socialaccount_socialtoken_id_seq', 1, false);


--
-- Name: account_emailaddress account_emailaddress_email_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);


--
-- Name: account_emailaddress account_emailaddress_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);


--
-- Name: account_emailconfirmation account_emailconfirmation_key_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);


--
-- Name: account_emailconfirmation account_emailconfirmation_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);


--
-- Name: auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);


--
-- Name: auth_group_permissions auth_group_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_group auth_group_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);


--
-- Name: auth_permission auth_permission_content_type_id_codename_01ab375a_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);


--
-- Name: auth_permission auth_permission_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);


--
-- Name: auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);


--
-- Name: auth_user auth_user_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);


--
-- Name: auth_user auth_user_username_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);


--
-- Name: django_admin_log django_admin_log_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);


--
-- Name: django_content_type django_content_type_app_label_model_76bd3d3b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);


--
-- Name: django_content_type django_content_type_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);


--
-- Name: django_migrations django_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);


--
-- Name: django_session django_session_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);


--
-- Name: django_site django_site_domain_a2e37b91_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);


--
-- Name: django_site django_site_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);


--
-- Name: social_comment_dislikes social_comment_dislikes_comment_id_user_id_6839003b_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment_dislikes
    ADD CONSTRAINT social_comment_dislikes_comment_id_user_id_6839003b_uniq UNIQUE (comment_id, user_id);


--
-- Name: social_comment_dislikes social_comment_dislikes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment_dislikes
    ADD CONSTRAINT social_comment_dislikes_pkey PRIMARY KEY (id);


--
-- Name: social_comment_likes social_comment_likes_comment_id_user_id_b4f56e3d_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment_likes
    ADD CONSTRAINT social_comment_likes_comment_id_user_id_b4f56e3d_uniq UNIQUE (comment_id, user_id);


--
-- Name: social_comment_likes social_comment_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment_likes
    ADD CONSTRAINT social_comment_likes_pkey PRIMARY KEY (id);


--
-- Name: social_comment social_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment
    ADD CONSTRAINT social_comment_pkey PRIMARY KEY (id);


--
-- Name: social_notification social_notification_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_notification
    ADD CONSTRAINT social_notification_pkey PRIMARY KEY (id);


--
-- Name: social_post_dislikes social_post_dislikes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_post_dislikes
    ADD CONSTRAINT social_post_dislikes_pkey PRIMARY KEY (id);


--
-- Name: social_post_dislikes social_post_dislikes_post_id_user_id_aac921cc_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_post_dislikes
    ADD CONSTRAINT social_post_dislikes_post_id_user_id_aac921cc_uniq UNIQUE (post_id, user_id);


--
-- Name: social_post_likes social_post_likes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_post_likes
    ADD CONSTRAINT social_post_likes_pkey PRIMARY KEY (id);


--
-- Name: social_post_likes social_post_likes_post_id_user_id_55af4ee2_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_post_likes
    ADD CONSTRAINT social_post_likes_post_id_user_id_55af4ee2_uniq UNIQUE (post_id, user_id);


--
-- Name: social_post social_post_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_post
    ADD CONSTRAINT social_post_pkey PRIMARY KEY (id);


--
-- Name: social_userprofile_followers social_userprofile_follo_userprofile_id_user_id_e2f63de5_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_userprofile_followers
    ADD CONSTRAINT social_userprofile_follo_userprofile_id_user_id_e2f63de5_uniq UNIQUE (userprofile_id, user_id);


--
-- Name: social_userprofile_followers social_userprofile_followers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_userprofile_followers
    ADD CONSTRAINT social_userprofile_followers_pkey PRIMARY KEY (id);


--
-- Name: social_userprofile social_userprofile_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_userprofile
    ADD CONSTRAINT social_userprofile_pkey PRIMARY KEY (user_id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_provider_uid_fc810c6e_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);


--
-- Name: socialaccount_socialapp socialaccount_socialapp_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialapp_sites socialaccount_socialapp_sites_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);


--
-- Name: socialaccount_socialtoken socialaccount_socialtoken_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);


--
-- Name: account_emailaddress_email_03be32b2_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_email_03be32b2_like ON public.account_emailaddress USING btree (email varchar_pattern_ops);


--
-- Name: account_emailaddress_user_id_2c513194; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailaddress_user_id_2c513194 ON public.account_emailaddress USING btree (user_id);


--
-- Name: account_emailconfirmation_email_address_id_5b7f8c58; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON public.account_emailconfirmation USING btree (email_address_id);


--
-- Name: account_emailconfirmation_key_f43612bd_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX account_emailconfirmation_key_f43612bd_like ON public.account_emailconfirmation USING btree (key varchar_pattern_ops);


--
-- Name: auth_group_name_a6ea08ec_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);


--
-- Name: auth_group_permissions_group_id_b120cbf9; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);


--
-- Name: auth_group_permissions_permission_id_84c5c92e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);


--
-- Name: auth_permission_content_type_id_2f476e4b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);


--
-- Name: auth_user_groups_group_id_97559544; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);


--
-- Name: auth_user_groups_user_id_6a12ed8b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);


--
-- Name: auth_user_user_permissions_permission_id_1fbb5f2c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);


--
-- Name: auth_user_user_permissions_user_id_a95ead1b; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);


--
-- Name: auth_user_username_6821ab7c_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);


--
-- Name: django_admin_log_content_type_id_c4bce8eb; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);


--
-- Name: django_admin_log_user_id_c564eba6; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);


--
-- Name: django_session_expire_date_a5c62663; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);


--
-- Name: django_session_session_key_c0390e0f_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);


--
-- Name: django_site_domain_a2e37b91_like; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);


--
-- Name: social_comment_author_id_efe921df; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_comment_author_id_efe921df ON public.social_comment USING btree (author_id);


--
-- Name: social_comment_dislikes_comment_id_3be3299d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_comment_dislikes_comment_id_3be3299d ON public.social_comment_dislikes USING btree (comment_id);


--
-- Name: social_comment_dislikes_user_id_8f7ad2e1; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_comment_dislikes_user_id_8f7ad2e1 ON public.social_comment_dislikes USING btree (user_id);


--
-- Name: social_comment_likes_comment_id_f27e6923; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_comment_likes_comment_id_f27e6923 ON public.social_comment_likes USING btree (comment_id);


--
-- Name: social_comment_likes_user_id_ce4abf67; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_comment_likes_user_id_ce4abf67 ON public.social_comment_likes USING btree (user_id);


--
-- Name: social_comment_parent_id_a94a370c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_comment_parent_id_a94a370c ON public.social_comment USING btree (parent_id);


--
-- Name: social_comment_post_id_c5f61de0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_comment_post_id_c5f61de0 ON public.social_comment USING btree (post_id);


--
-- Name: social_notification_comment_id_96989c7e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_notification_comment_id_96989c7e ON public.social_notification USING btree (comment_id);


--
-- Name: social_notification_from_user_id_12de717a; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_notification_from_user_id_12de717a ON public.social_notification USING btree (from_user_id);


--
-- Name: social_notification_post_id_b9ab7062; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_notification_post_id_b9ab7062 ON public.social_notification USING btree (post_id);


--
-- Name: social_notification_to_user_id_948924d4; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_notification_to_user_id_948924d4 ON public.social_notification USING btree (to_user_id);


--
-- Name: social_post_author_id_db6459ee; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_post_author_id_db6459ee ON public.social_post USING btree (author_id);


--
-- Name: social_post_dislikes_post_id_0fd3cea0; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_post_dislikes_post_id_0fd3cea0 ON public.social_post_dislikes USING btree (post_id);


--
-- Name: social_post_dislikes_user_id_95be54ef; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_post_dislikes_user_id_95be54ef ON public.social_post_dislikes USING btree (user_id);


--
-- Name: social_post_likes_post_id_a0331ad2; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_post_likes_post_id_a0331ad2 ON public.social_post_likes USING btree (post_id);


--
-- Name: social_post_likes_user_id_ea3a4e4f; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_post_likes_user_id_ea3a4e4f ON public.social_post_likes USING btree (user_id);


--
-- Name: social_userprofile_followers_user_id_7dbd33fe; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_userprofile_followers_user_id_7dbd33fe ON public.social_userprofile_followers USING btree (user_id);


--
-- Name: social_userprofile_followers_userprofile_id_c769aa8e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX social_userprofile_followers_userprofile_id_c769aa8e ON public.social_userprofile_followers USING btree (userprofile_id);


--
-- Name: socialaccount_socialaccount_user_id_8146e70c; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON public.socialaccount_socialaccount USING btree (user_id);


--
-- Name: socialaccount_socialapp_sites_site_id_2579dee5; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON public.socialaccount_socialapp_sites USING btree (site_id);


--
-- Name: socialaccount_socialapp_sites_socialapp_id_97fb6e7d; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON public.socialaccount_socialapp_sites USING btree (socialapp_id);


--
-- Name: socialaccount_socialtoken_account_id_951f210e; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON public.socialaccount_socialtoken USING btree (account_id);


--
-- Name: socialaccount_socialtoken_app_id_636a42d7; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON public.socialaccount_socialtoken USING btree (app_id);


--
-- Name: account_emailaddress account_emailaddress_user_id_2c513194_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: account_emailconfirmation account_emailconfirm_email_address_id_5b7f8c58_fk_account_e; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES public.account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_comment social_comment_author_id_efe921df_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment
    ADD CONSTRAINT social_comment_author_id_efe921df_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_comment_dislikes social_comment_disli_comment_id_3be3299d_fk_social_co; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment_dislikes
    ADD CONSTRAINT social_comment_disli_comment_id_3be3299d_fk_social_co FOREIGN KEY (comment_id) REFERENCES public.social_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_comment_dislikes social_comment_dislikes_user_id_8f7ad2e1_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment_dislikes
    ADD CONSTRAINT social_comment_dislikes_user_id_8f7ad2e1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_comment_likes social_comment_likes_comment_id_f27e6923_fk_social_comment_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment_likes
    ADD CONSTRAINT social_comment_likes_comment_id_f27e6923_fk_social_comment_id FOREIGN KEY (comment_id) REFERENCES public.social_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_comment_likes social_comment_likes_user_id_ce4abf67_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment_likes
    ADD CONSTRAINT social_comment_likes_user_id_ce4abf67_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_comment social_comment_parent_id_a94a370c_fk_social_comment_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment
    ADD CONSTRAINT social_comment_parent_id_a94a370c_fk_social_comment_id FOREIGN KEY (parent_id) REFERENCES public.social_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_comment social_comment_post_id_c5f61de0_fk_social_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_comment
    ADD CONSTRAINT social_comment_post_id_c5f61de0_fk_social_post_id FOREIGN KEY (post_id) REFERENCES public.social_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_notification social_notification_comment_id_96989c7e_fk_social_comment_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_notification
    ADD CONSTRAINT social_notification_comment_id_96989c7e_fk_social_comment_id FOREIGN KEY (comment_id) REFERENCES public.social_comment(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_notification social_notification_from_user_id_12de717a_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_notification
    ADD CONSTRAINT social_notification_from_user_id_12de717a_fk_auth_user_id FOREIGN KEY (from_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_notification social_notification_post_id_b9ab7062_fk_social_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_notification
    ADD CONSTRAINT social_notification_post_id_b9ab7062_fk_social_post_id FOREIGN KEY (post_id) REFERENCES public.social_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_notification social_notification_to_user_id_948924d4_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_notification
    ADD CONSTRAINT social_notification_to_user_id_948924d4_fk_auth_user_id FOREIGN KEY (to_user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_post social_post_author_id_db6459ee_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_post
    ADD CONSTRAINT social_post_author_id_db6459ee_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_post_dislikes social_post_dislikes_post_id_0fd3cea0_fk_social_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_post_dislikes
    ADD CONSTRAINT social_post_dislikes_post_id_0fd3cea0_fk_social_post_id FOREIGN KEY (post_id) REFERENCES public.social_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_post_dislikes social_post_dislikes_user_id_95be54ef_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_post_dislikes
    ADD CONSTRAINT social_post_dislikes_user_id_95be54ef_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_post_likes social_post_likes_post_id_a0331ad2_fk_social_post_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_post_likes
    ADD CONSTRAINT social_post_likes_post_id_a0331ad2_fk_social_post_id FOREIGN KEY (post_id) REFERENCES public.social_post(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_post_likes social_post_likes_user_id_ea3a4e4f_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_post_likes
    ADD CONSTRAINT social_post_likes_user_id_ea3a4e4f_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_userprofile_followers social_userprofile_f_userprofile_id_c769aa8e_fk_social_us; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_userprofile_followers
    ADD CONSTRAINT social_userprofile_f_userprofile_id_c769aa8e_fk_social_us FOREIGN KEY (userprofile_id) REFERENCES public.social_userprofile(user_id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_userprofile_followers social_userprofile_followers_user_id_7dbd33fe_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_userprofile_followers
    ADD CONSTRAINT social_userprofile_followers_user_id_7dbd33fe_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: social_userprofile social_userprofile_user_id_fcd0318c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.social_userprofile
    ADD CONSTRAINT social_userprofile_user_id_fcd0318c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_account_id_951f210e_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES public.socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialtoken socialaccount_social_app_id_636a42d7_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_site_id_2579dee5_fk_django_si; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialapp_sites socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES public.socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;


--
-- Name: socialaccount_socialaccount socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;


--
-- PostgreSQL database dump complete
--

