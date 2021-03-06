PGDMP         ;                v        	   books_app    10.3    10.3     �
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �
           1262    16654 	   books_app    DATABASE     �   CREATE DATABASE books_app WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE books_app;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            �
           0    0    SCHEMA public    ACL     &   GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12924    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16657    books    TABLE       CREATE TABLE public.books (
    book_id integer NOT NULL,
    author character varying(255) NOT NULL,
    title character varying(255) NOT NULL,
    isbn character varying(50) NOT NULL,
    image character varying(200) NOT NULL,
    description text NOT NULL
);
    DROP TABLE public.books;
       public         postgres    false    6            �            1259    16655    books_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.books_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.books_book_id_seq;
       public       postgres    false    6    197            �
           0    0    books_book_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.books_book_id_seq OWNED BY public.books.book_id;
            public       postgres    false    196            o
           2604    16660    books book_id    DEFAULT     n   ALTER TABLE ONLY public.books ALTER COLUMN book_id SET DEFAULT nextval('public.books_book_id_seq'::regclass);
 <   ALTER TABLE public.books ALTER COLUMN book_id DROP DEFAULT;
       public       postgres    false    196    197    197            �
          0    16657    books 
   TABLE DATA               Q   COPY public.books (book_id, author, title, isbn, image, description) FROM stdin;
    public       postgres    false    197   �       �
           0    0    books_book_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.books_book_id_seq', 1, false);
            public       postgres    false    196            q
           2606    16665    books books_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.books
    ADD CONSTRAINT books_pkey PRIMARY KEY (book_id);
 :   ALTER TABLE ONLY public.books DROP CONSTRAINT books_pkey;
       public         postgres    false    197            �
   �  x��Xko���,��E�_$Ŋ��`\(N�y4�ӦKrIn���݇d���3��_M�Ž���8��}̜9sfƋ�[�.W⽋m�B�|h�x#;%\-">Զ��8���Ş8:�a���`��C���1���Ç�s�0o�k�������Fe�tu��<{T���חiu���Ơ���cE���?�]s�xp�\w|� ��Ku��w��Ip�&�T�;�&�^ڕx�|�|�<MV�2n���;8�c�ζE{~���ɯ�_a��u\&o�Zy�q����j�ÓW�P|+��蕮T���,���P��AU�J+%�}"��v^TJV��VY�ʻ�4�q�iU�V���'��1�Z+�5�u�ҥ���oZ'Zez��N$��Z|�s!⁺�UI�����0�ٛ��C2R���WJ�%]1;^�:��t5\x*��*��f�{�������P��O�-��,�QX�|�.�h��x�P��:�M��;)�_B��- +��w���F^j� ?H.�-�u2��6�V���bu��z��P��m���Ly1L��3 �.��ά��L���a-m�a��!���}���D���J�~���%��V,Erت QV�k���3>N��'�2&�7D�LO�,�Lt��t���>�ё:D��%hkW�m�W�;�S邂�,t��A�XY��g32�l�m�k?�:����I#��Բ�D5^��Q��fh� �!��u��p)J���KI�����U��\]��A&v�I����C(5ȝ�V�j25�3#�@b�@DEpt�H/�d(��BF��#.�(�ų��8�)(�"�A�a\��xE"�������[��U,��`t��c���ZuH8:�u�Zi�g�2�Ccq�b�H��p@t2�3���`FfO��J^^r��g���Ϲ2_��.�������c�t�I&���L��]Ǽ�!ӊ�I�j��
��֚�$�N(��6�]��F ��0R���jK�d!�>��^����q�]G�.��d`�wClA�:qI�B�m��d�d�I����rT�Y����pb�e.<�ot�l��f�,Ӗ
�6j, q�?�&)LkEiC���R��fKc����"(����Pn���TIqyé�˜��~H����QC�m�&��D4�SO��>@8��c���dhJ�:���+څ���b��o�A����`�G�������^�Ο�fP-[����\� �Q����X}��Zp2!��xZ𑠔�8��� �sYH,�O�Ġ��n%�]�T6��`�Sat@�@&�$��5a5f�3�вY�+�� ��퍛���]u4���'c���<�qx˕�F�%��*[�������>���8��1�P��=�G��~K-Oz�*�h�{�F[5f:�M$U0I�� ���Ѝ|�uQql������>�1`�5ܟt`;�|�����A�S?�nVQa��0#�q�$��&YN��-���O^)K�D�pkt�(ݼ�v�}�w�����7���a������7៵�^�B�
s��?��g]��b�d�:tj.޸zQ*�� �s�u���Z���gI���-S�Z;��(��zrU#G�L�����d���p�a��.��n,�g�.��?�Q����R�:���.�i�݆�Ө�$ת�ZI��<F�$��c���j���O��r�q��
�\���2����QAŏ����R�����7�X԰6��@��!����Y|%C����[j����eL	:���9����MMXp��^����R!��vv�K��,����4DX���J3ѕ�f��e���uF����e�`0�DE��R��8�����T�AϢ��r\2�(�D��dg3 TSY���oi,���|�`��W�c��z����G#�����7����h��o�m��4D2%���<�o��Oɯ�4�"e*�k��&�w�Ҩ?�zH�Q xǘE��F;K4U�>̜&�o�I��T�p�S�Xq�I4�p�=N��F��I��#a��jYy=!� a�]=��hN�������ӧo�����F�0���{=eT�!I4R����ы;���h�8;g��R�� Ez�6��A˖�O��Y]��f
���Z6:��hM�X��5v���߷	Tck@M�W2{s�dJ0>���2Qf�e�4����ɪ�Fg@q<�j�\�����mM�<��Rs?�܏=�c���s?��7ƞO󝝝� *��<     