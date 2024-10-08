PGDMP  
    7                |            spring_security_disease_db    16.3    16.3     �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    24727    spring_security_disease_db    DATABASE     �   CREATE DATABASE spring_security_disease_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Portuguese_Brazil.1252';
 *   DROP DATABASE spring_security_disease_db;
                postgres    false            �            1259    24737    diseases    TABLE     �   CREATE TABLE public.diseases (
    id text NOT NULL,
    cid text NOT NULL,
    name text NOT NULL,
    symptoms text NOT NULL,
    treatments text NOT NULL,
    risk smallint NOT NULL
);
    DROP TABLE public.diseases;
       public         heap    postgres    false            �            1259    24728    flyway_schema_history    TABLE     �  CREATE TABLE public.flyway_schema_history (
    installed_rank integer NOT NULL,
    version character varying(50),
    description character varying(200) NOT NULL,
    type character varying(20) NOT NULL,
    script character varying(1000) NOT NULL,
    checksum integer,
    installed_by character varying(100) NOT NULL,
    installed_on timestamp without time zone DEFAULT now() NOT NULL,
    execution_time integer NOT NULL,
    success boolean NOT NULL
);
 )   DROP TABLE public.flyway_schema_history;
       public         heap    postgres    false            �            1259    24746    users    TABLE     �   CREATE TABLE public.users (
    id text NOT NULL,
    login text NOT NULL,
    password text NOT NULL,
    role text NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            �          0    24737    diseases 
   TABLE DATA           M   COPY public.diseases (id, cid, name, symptoms, treatments, risk) FROM stdin;
    public          postgres    false    216   �       �          0    24728    flyway_schema_history 
   TABLE DATA           �   COPY public.flyway_schema_history (installed_rank, version, description, type, script, checksum, installed_by, installed_on, execution_time, success) FROM stdin;
    public          postgres    false    215          �          0    24746    users 
   TABLE DATA           :   COPY public.users (id, login, password, role) FROM stdin;
    public          postgres    false    217   �       &           2606    24745    diseases diseases_cid_key 
   CONSTRAINT     S   ALTER TABLE ONLY public.diseases
    ADD CONSTRAINT diseases_cid_key UNIQUE (cid);
 C   ALTER TABLE ONLY public.diseases DROP CONSTRAINT diseases_cid_key;
       public            postgres    false    216            (           2606    24743    diseases diseases_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.diseases
    ADD CONSTRAINT diseases_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.diseases DROP CONSTRAINT diseases_pkey;
       public            postgres    false    216            #           2606    24735 .   flyway_schema_history flyway_schema_history_pk 
   CONSTRAINT     x   ALTER TABLE ONLY public.flyway_schema_history
    ADD CONSTRAINT flyway_schema_history_pk PRIMARY KEY (installed_rank);
 X   ALTER TABLE ONLY public.flyway_schema_history DROP CONSTRAINT flyway_schema_history_pk;
       public            postgres    false    215            *           2606    24754    users users_login_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_login_key UNIQUE (login);
 ?   ALTER TABLE ONLY public.users DROP CONSTRAINT users_login_key;
       public            postgres    false    217            ,           2606    24752    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    217            $           1259    24736    flyway_schema_history_s_idx    INDEX     `   CREATE INDEX flyway_schema_history_s_idx ON public.flyway_schema_history USING btree (success);
 /   DROP INDEX public.flyway_schema_history_s_idx;
       public            postgres    false    215            �   /	  x�}X�r��|V�ޮ���j_�1��ఁy��Tu�Uam�$���<��ۀ����Ug�̓�Q�Ð�ЋJ��8�r��5yY�g��XjE��8qΆ�j��p_uvli�N��%1V����w�nO݋n���EE��f[��~q�m�ʪS�cg�S���DMʕX��n�vF��U�d�rC�(j<nG��_�h�dQ����}/(�J�F����@�Y�\��fד�L�:oH(!+:u/�wD�xN��z��?~�ԽC����+rIX��MuX�^�Faw��D����n0��7����~�\�F�bK�GO��VE�Q^x�����!�IT��\�>�U8��b#Q�H�{Cum�ip��I��8��ÈZ�T±�&v_w_݊D���u;L�x�~��!��G��<���/d�ŉ7�I����xq#��QCe"�0VA�;�����h%Y��|YOM��Q�Cߛ���Uf�-�Eo�i���+����t�=��2s���֛�6]K�_�d��0,�TzQV�+)�"c��
���p^G�sI�]�x՛�S���u�+���`��vt������%n�k�������b(���ь�V�CMԯ�R���A��8���h,�CE�
1z�˲�����I���i�����K!S�<��?������yxMO�C\�_���֭wM_�-���sԭ�a�wK�>���!�'gw_!N��ծ��������*t}O-�d$�$gPq�"&�e���R0xE+Oi?H�q�(�&�(q�u:x�v�������'�I[!��r�o�q��}�{��"�QK35sٟ�(���&���`����o+�y�e��/b-т�e���=T� �#-���3� ��~��d�/1�1B�tӰ@�#5�re����%����tOK�k7���T�@Y��� �������W/�&��2�c�Z�1!�"E�:������PL�c�} �V\t�/x��J��;,B��5��D�s'==f��;��|�(�,�]��0�'�x//�f���ׂU2٤%q=I�39ɼ2'��2)DY�<%�Q|�C9�v�@�۩�
pe�ܓ������m����INB��4	�4���_�^?O��v[z�H�X,U�4��Y��/H����<��W�P��d�a�i!��B �i;�;L`�t=};������g�r�H�L�-��ʺ�~/d�4Z9������a �E��� peJ�$

9g����W8~qL�җ"���Y*�0!�y��a�k�8o#�9�(!V��U�5#s���ۉ��mw�*���ŀ
�QV�A[lN;:Lj�S}�)�˿x��'��8��s�i��;L�`�����BG�&�
��8�j��*qn�عD�D�5�=9�q[���y����r/���	z���>��k���6\��t@���c����HtYf���R!�,��:Pƙ��!������(�%�XA�ݓ+���V�]+~G��Ƿ����յh��yŗj��g�V\�а�,���ȉ�XifP�	��2�~^(�Xh�{��9�f���ҝ= de��s��Kҡ�[xm������H4�F��"��e�B�04���t˺��sB�'���Qav>��o�m|]Y�F��=�'0v��/�2M��Ο3W�Wd���"}o���Qx)7,��>K���KL%L	��L"I!й�{����7�_܊�,zRN�\�� ��ؠ=q�<��M�R�:�E��1�6��4��)�;��Oa�4eB|���~�`t;�~��^}7B��><���g����-��n��$�&�H���%��w;��!�%��_앚��a���w�����,P;+>s�Vc�@@�ovʮ �����z�8�Rn�(�\�H]��I^�R{I�(����J`�@�\gp��[?r�䄢}�-1|��%���m'�5�G9��ߋ���ݟ�،��]Sx�K��*`�1*Y�p䠂���	������xi�\�@���V�H|X@��t^t�V�ł00�M��<�$e�v?f��s~/�66T�)���,�Ll�z�fw?L��>�d��D �QA�ٯa�}��%I�[��S��ګO0V{=���t�ޛ�S��I�)8������������[�3!J]Y��D���l�8�Jd�c'�sň��|���8>�O��h����x7��q��f��q&�H���8Rs�a@Ҁ�4IA[�0�s]$�kAw����O����۟��G_����Z<C�G>�GN��E�쏒�.X�����A� �<K�e��l6� )��G      �   �   x���A
1@�uz
/В��m�nDp%U�jS��n������^m/����YkѪ�Y�`K���:�M@�J^��z�~j����b��C��ŉ �1B7��ݵ�7�_�3��H�)��GZ�� �Y�9c�P^>�      �   �   x�E��N�@@���l���?�)��JѸ�s!�����֧��q���V��T�A~��7?�a��)84�)̋?s�P̆��xV�O$y��nB�4��lí����ܙ�\��X4���b�w�����j"k�� 3	N��Y�)�9����ᎋ_��$N{A�tu�+�T�<hB�������U!¨������wo�/�mߢ�n��$Q}�EA     