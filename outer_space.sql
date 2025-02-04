PGDMP     8    	                x            outer_space    11.2    11.1     j           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            k           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            l           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            m           1262    16585    outer_space    DATABASE     }   CREATE DATABASE outer_space WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE outer_space;
             gabbycampos    false            �            1259    16610    orbits    TABLE     v   CREATE TABLE public.orbits (
    id integer NOT NULL,
    period_in_years double precision,
    orbits_around text
);
    DROP TABLE public.orbits;
       public         postgres    false            �            1259    16608    orbits_id_seq    SEQUENCE     �   CREATE SEQUENCE public.orbits_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orbits_id_seq;
       public       postgres    false    199            n           0    0    orbits_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orbits_id_seq OWNED BY public.orbits.id;
            public       postgres    false    198            �            1259    16588    planets    TABLE     }   CREATE TABLE public.planets (
    id integer NOT NULL,
    name text NOT NULL,
    galaxy text NOT NULL,
    moons text[]
);
    DROP TABLE public.planets;
       public         gabbycampos    false            �            1259    16586    planets_id_seq    SEQUENCE     �   CREATE SEQUENCE public.planets_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.planets_id_seq;
       public       gabbycampos    false    197            o           0    0    planets_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.planets_id_seq OWNED BY public.planets.id;
            public       gabbycampos    false    196            �           2604    16613 	   orbits id    DEFAULT     f   ALTER TABLE ONLY public.orbits ALTER COLUMN id SET DEFAULT nextval('public.orbits_id_seq'::regclass);
 8   ALTER TABLE public.orbits ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    198    199            �           2604    16591 
   planets id    DEFAULT     h   ALTER TABLE ONLY public.planets ALTER COLUMN id SET DEFAULT nextval('public.planets_id_seq'::regclass);
 9   ALTER TABLE public.planets ALTER COLUMN id DROP DEFAULT;
       public       gabbycampos    false    196    197    197            g          0    16610    orbits 
   TABLE DATA               D   COPY public.orbits (id, period_in_years, orbits_around) FROM stdin;
    public       postgres    false    199   F       e          0    16588    planets 
   TABLE DATA               :   COPY public.planets (id, name, galaxy, moons) FROM stdin;
    public       gabbycampos    false    197   �       p           0    0    orbits_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orbits_id_seq', 6, true);
            public       postgres    false    198            q           0    0    planets_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.planets_id_seq', 6, true);
            public       gabbycampos    false    196            �           2606    16618    orbits orbits_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orbits
    ADD CONSTRAINT orbits_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orbits DROP CONSTRAINT orbits_pkey;
       public         postgres    false    199            �           2606    16596    planets planets_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.planets
    ADD CONSTRAINT planets_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.planets DROP CONSTRAINT planets_pkey;
       public         gabbycampos    false    197            g   l   x�3�4��HU.��2�4Գ0�D�pYcN=3CKT`�6�443ѳ0@��M����4(ʯ��MTpN�+I,-��2*426@���9��ũ
�f\1z\\\ �.*!      e   �   x�]N;k�0��_!<y5��	�PCL�d���uA'CC���%پ7���1&oJ������V4�\)��.L�Q����YvĽ�h?���%1ڥ�蒆@�r��-4;T�<���!|c�^���l�*7/���hPh"'	PQ$n�;�%8��<0#Ԋ=&O9�2ڕ����}RH8Dv�כks蘔�v�~�Nk�Ў]�     