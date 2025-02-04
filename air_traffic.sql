PGDMP         %                x            air_traffic    11.2    11.1     u           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            v           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            w           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            x           1262    16619    air_traffic    DATABASE     }   CREATE DATABASE air_traffic WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE air_traffic;
             gabbycampos    false            �            1259    16633 	   locations    TABLE     �   CREATE TABLE public.locations (
    id integer NOT NULL,
    from_country text,
    to_country text,
    from_city text,
    to_city text
);
    DROP TABLE public.locations;
       public         postgres    false            �            1259    16631    airline_id_seq    SEQUENCE     �   CREATE SEQUENCE public.airline_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.airline_id_seq;
       public       postgres    false    199            y           0    0    airline_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.airline_id_seq OWNED BY public.locations.id;
            public       postgres    false    198            �            1259    16622    tickets    TABLE     �   CREATE TABLE public.tickets (
    id integer NOT NULL,
    first_name text NOT NULL,
    last_name text NOT NULL,
    seat text NOT NULL,
    airline text NOT NULL
);
    DROP TABLE public.tickets;
       public         gabbycampos    false            �            1259    16620    tickets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.tickets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.tickets_id_seq;
       public       gabbycampos    false    197            z           0    0    tickets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.tickets_id_seq OWNED BY public.tickets.id;
            public       gabbycampos    false    196            �            1259    16644    time_of_travel    TABLE     �   CREATE TABLE public.time_of_travel (
    id integer NOT NULL,
    departure timestamp without time zone,
    arrival timestamp without time zone
);
 "   DROP TABLE public.time_of_travel;
       public         postgres    false            �            1259    16642    time_of_travel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.time_of_travel_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.time_of_travel_id_seq;
       public       postgres    false    201            {           0    0    time_of_travel_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.time_of_travel_id_seq OWNED BY public.time_of_travel.id;
            public       postgres    false    200            �           2604    16636    locations id    DEFAULT     j   ALTER TABLE ONLY public.locations ALTER COLUMN id SET DEFAULT nextval('public.airline_id_seq'::regclass);
 ;   ALTER TABLE public.locations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �           2604    16625 
   tickets id    DEFAULT     h   ALTER TABLE ONLY public.tickets ALTER COLUMN id SET DEFAULT nextval('public.tickets_id_seq'::regclass);
 9   ALTER TABLE public.tickets ALTER COLUMN id DROP DEFAULT;
       public       gabbycampos    false    196    197    197            �           2604    16647    time_of_travel id    DEFAULT     v   ALTER TABLE ONLY public.time_of_travel ALTER COLUMN id SET DEFAULT nextval('public.time_of_travel_id_seq'::regclass);
 @   ALTER TABLE public.time_of_travel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    201    201            p          0    16633 	   locations 
   TABLE DATA               U   COPY public.locations (id, from_country, to_country, from_city, to_city) FROM stdin;
    public       postgres    false    199   �       n          0    16622    tickets 
   TABLE DATA               K   COPY public.tickets (id, first_name, last_name, seat, airline) FROM stdin;
    public       gabbycampos    false    197   �       r          0    16644    time_of_travel 
   TABLE DATA               @   COPY public.time_of_travel (id, departure, arrival) FROM stdin;
    public       postgres    false    201   u       |           0    0    airline_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.airline_id_seq', 10, true);
            public       postgres    false    198            }           0    0    tickets_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.tickets_id_seq', 10, true);
            public       gabbycampos    false    196            ~           0    0    time_of_travel_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.time_of_travel_id_seq', 1, false);
            public       postgres    false    200            �           2606    16641    locations airline_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.locations
    ADD CONSTRAINT airline_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.locations DROP CONSTRAINT airline_pkey;
       public         postgres    false    199            �           2606    16630    tickets tickets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.tickets
    ADD CONSTRAINT tickets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.tickets DROP CONSTRAINT tickets_pkey;
       public         gabbycampos    false    197            �           2606    16649 "   time_of_travel time_of_travel_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.time_of_travel
    ADD CONSTRAINT time_of_travel_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.time_of_travel DROP CONSTRAINT time_of_travel_pkey;
       public         postgres    false    201            p   �   x�}P�N1�g��_���L6�� K��h^֣��x"����El�b�9�53�UpY��3�����ͅ6k0��jA�^��n�C豷a���t�WZh��tPw��LB+����ZZ$����5�����ry�gt�2ԨM-]�
	_�sZM�T���������KT��v/_�E�P��,|9H��"�G�M�_�V�j��K��=D/�G�4��q�S)��P������:��#f�S0��      n   �   x�m�KN�@D�5��	�?|�����ɉ�a�qڸɤ-f�A�=X�M�uU�z^XUz�hD�EQb��`rl:��Dq`ߍ䰲(�D	Cb��L�v�O�M�gdy��]$s{	�S��aGʑ��qyQc�}N7'%��N���A���{�T�(�����͝�������΢x�e�Y�{�Hw'���/�E^^�e)���h�&��XZÞ�����ę�c���iD      r      x������ � �     