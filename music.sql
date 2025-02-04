PGDMP             
            x            music    11.2    11.1     r           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            s           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            t           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            u           1262    16652    music    DATABASE     w   CREATE DATABASE music WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8';
    DROP DATABASE music;
             gabbycampos    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            v           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3            �            1259    16666    artists_name    TABLE     w   CREATE TABLE public.artists_name (
    id integer NOT NULL,
    artists text[],
    album text,
    song_id integer
);
     DROP TABLE public.artists_name;
       public         postgres    false    3            �            1259    16664    artists_name_id_seq    SEQUENCE     �   CREATE SEQUENCE public.artists_name_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.artists_name_id_seq;
       public       postgres    false    199    3            w           0    0    artists_name_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.artists_name_id_seq OWNED BY public.artists_name.id;
            public       postgres    false    198            �            1259    16680    producers_name    TABLE     R   CREATE TABLE public.producers_name (
    producers text[],
    song_id integer
);
 "   DROP TABLE public.producers_name;
       public         postgres    false    3            �            1259    16655    songs    TABLE     �   CREATE TABLE public.songs (
    id integer NOT NULL,
    title text NOT NULL,
    duration_in_seconds integer NOT NULL,
    release_date date NOT NULL
);
    DROP TABLE public.songs;
       public         gabbycampos    false    3            �            1259    16653    songs_id_seq    SEQUENCE     �   CREATE SEQUENCE public.songs_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.songs_id_seq;
       public       gabbycampos    false    3    197            x           0    0    songs_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.songs_id_seq OWNED BY public.songs.id;
            public       gabbycampos    false    196            �           2604    16669    artists_name id    DEFAULT     r   ALTER TABLE ONLY public.artists_name ALTER COLUMN id SET DEFAULT nextval('public.artists_name_id_seq'::regclass);
 >   ALTER TABLE public.artists_name ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    199    199            �           2604    16658    songs id    DEFAULT     d   ALTER TABLE ONLY public.songs ALTER COLUMN id SET DEFAULT nextval('public.songs_id_seq'::regclass);
 7   ALTER TABLE public.songs ALTER COLUMN id DROP DEFAULT;
       public       gabbycampos    false    197    196    197            n          0    16666    artists_name 
   TABLE DATA               C   COPY public.artists_name (id, artists, album, song_id) FROM stdin;
    public       postgres    false    199          o          0    16680    producers_name 
   TABLE DATA               <   COPY public.producers_name (producers, song_id) FROM stdin;
    public       postgres    false    200   Z       l          0    16655    songs 
   TABLE DATA               M   COPY public.songs (id, title, duration_in_seconds, release_date) FROM stdin;
    public       gabbycampos    false    197   '       y           0    0    artists_name_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.artists_name_id_seq', 10, true);
            public       postgres    false    198            z           0    0    songs_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.songs_id_seq', 10, true);
            public       gabbycampos    false    196            �           2606    16674    artists_name artists_name_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.artists_name
    ADD CONSTRAINT artists_name_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.artists_name DROP CONSTRAINT artists_name_pkey;
       public         postgres    false    199            �           2606    16663    songs songs_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.songs
    ADD CONSTRAINT songs_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.songs DROP CONSTRAINT songs_pkey;
       public         gabbycampos    false    197            �           2606    16675 &   artists_name artists_name_song_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.artists_name
    ADD CONSTRAINT artists_name_song_id_fkey FOREIGN KEY (song_id) REFERENCES public.songs(id);
 P   ALTER TABLE ONLY public.artists_name DROP CONSTRAINT artists_name_song_id_fkey;
       public       postgres    false    197    3053    199            �           2606    16686 *   producers_name producers_name_song_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.producers_name
    ADD CONSTRAINT producers_name_song_id_fkey FOREIGN KEY (song_id) REFERENCES public.songs(id);
 T   ALTER TABLE ONLY public.producers_name DROP CONSTRAINT producers_name_song_id_fkey;
       public       postgres    false    197    200    3053            n   8  x�-�KO�@���_a�����4�J�EUB\Lb��l�I����Gp���g*+W�a-Yf�n�w���m:p{�0�4ƍ�E�Tc]0n��	:��hM^���<��1�����9����0��y�tMO�eg�Sz����s�5��<�+�8_B��ᶑ�h�����b��q/���f��
��n��T�*�zՎ{᳗��.�P�%�w�}�sq�4�B᝗�C3�;ƹ�
$�굔�q~�+���*��ŭv���R|�bqEW�KVh�5��M���)7.�¤���;xQ5WU㚗�Zh��Ǔ1�Zb}�      o   �   x��Ak1F��W9/��jۣ�G��
^z��Y2&&2ɂ��ߝ=~���v(Z�Փ�خ��S�KNl��3�C~���+h1�(�+>a�$��1aa�{��-�^9��)�����`�8�Ke���V��x�=J�d�K�s�e��S���B3u�ڈ�e��U:zR�
O�3nQ���z����c^LTH�      l   �   x���n�0@��W�2ņ�v=T��I�4i�h�
*l���s��O����S����i�6�&�N��c&�ua^����ZA��dtA���)b�Ǹ�9�5g��IS�Jh�0i�
�P�M��)���g�ś�;�̅ ���5���3�<���1���e�x�6��9sI�*�9ShbMN���_\�F|�G\�:�d��i�5���KB�e�ݬ�����6���Q���5�;��׋R��M      