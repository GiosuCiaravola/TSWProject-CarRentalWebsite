PGDMP     '                    {           GMCNRent    15.2    15.2                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16410    GMCNRent    DATABASE     }   CREATE DATABASE "GMCNRent" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Italian_Italy.1252';
    DROP DATABASE "GMCNRent";
                postgres    false            �            1259    24615    noleggio    TABLE     �   CREATE TABLE public.noleggio (
    utente character varying(100) NOT NULL,
    veicolo character varying(7) NOT NULL,
    data_inizio date NOT NULL,
    data_fine date NOT NULL
);
    DROP TABLE public.noleggio;
       public         heap    postgres    false                       0    0    TABLE noleggio    ACL     +   GRANT ALL ON TABLE public.noleggio TO www;
          public          postgres    false    216            �            1259    24602    utente    TABLE     �  CREATE TABLE public.utente (
    nome character varying(30) NOT NULL,
    cognome character varying(30) NOT NULL,
    email character varying(100) NOT NULL,
    password character varying(255) NOT NULL,
    numero_patente character varying(20) NOT NULL,
    patente_auto character varying(7) NOT NULL,
    patente_moto character varying(7) NOT NULL,
    numero_carta character varying(16),
    data_scadenza_carta date,
    codice_carta character varying(3)
);
    DROP TABLE public.utente;
       public         heap    postgres    false                       0    0    TABLE utente    ACL     )   GRANT ALL ON TABLE public.utente TO www;
          public          postgres    false    214            �            1259    24607    veicolo    TABLE     .  CREATE TABLE public.veicolo (
    nome character varying(50) NOT NULL,
    targa character varying(7) NOT NULL,
    data_inserimento date NOT NULL,
    patente character varying(2) NOT NULL,
    descrizione character varying(255) NOT NULL,
    prezzo_al_giorno numeric(5,2),
    tipo_veicolo character varying(4) NOT NULL,
    immagine character varying(255) NOT NULL,
    numero_posti integer NOT NULL,
    CONSTRAINT veicolo_tipo_veicolo_check CHECK (((tipo_veicolo)::text = ANY ((ARRAY['Auto'::character varying, 'Moto'::character varying])::text[])))
);
    DROP TABLE public.veicolo;
       public         heap    postgres    false                       0    0    TABLE veicolo    ACL     *   GRANT ALL ON TABLE public.veicolo TO www;
          public          postgres    false    215                      0    24615    noleggio 
   TABLE DATA           K   COPY public.noleggio (utente, veicolo, data_inizio, data_fine) FROM stdin;
    public          postgres    false    216   �                 0    24602    utente 
   TABLE DATA           �   COPY public.utente (nome, cognome, email, password, numero_patente, patente_auto, patente_moto, numero_carta, data_scadenza_carta, codice_carta) FROM stdin;
    public          postgres    false    214   x                 0    24607    veicolo 
   TABLE DATA           �   COPY public.veicolo (nome, targa, data_inserimento, patente, descrizione, prezzo_al_giorno, tipo_veicolo, immagine, numero_posti) FROM stdin;
    public          postgres    false    215          r           2606    24619    noleggio noleggio_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.noleggio
    ADD CONSTRAINT noleggio_pkey PRIMARY KEY (utente, veicolo, data_inizio);
 @   ALTER TABLE ONLY public.noleggio DROP CONSTRAINT noleggio_pkey;
       public            postgres    false    216    216    216            n           2606    24606    utente utente_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY public.utente
    ADD CONSTRAINT utente_pkey PRIMARY KEY (email);
 <   ALTER TABLE ONLY public.utente DROP CONSTRAINT utente_pkey;
       public            postgres    false    214            p           2606    24614    veicolo veicolo_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY public.veicolo
    ADD CONSTRAINT veicolo_pkey PRIMARY KEY (targa);
 >   ALTER TABLE ONLY public.veicolo DROP CONSTRAINT veicolo_pkey;
       public            postgres    false    215            s           2606    24620    noleggio noleggio_utente_fkey    FK CONSTRAINT        ALTER TABLE ONLY public.noleggio
    ADD CONSTRAINT noleggio_utente_fkey FOREIGN KEY (utente) REFERENCES public.utente(email);
 G   ALTER TABLE ONLY public.noleggio DROP CONSTRAINT noleggio_utente_fkey;
       public          postgres    false    214    3182    216            t           2606    24625    noleggio noleggio_veicolo_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.noleggio
    ADD CONSTRAINT noleggio_veicolo_fkey FOREIGN KEY (veicolo) REFERENCES public.veicolo(targa) ON DELETE CASCADE;
 H   ALTER TABLE ONLY public.noleggio DROP CONSTRAINT noleggio_veicolo_fkey;
       public          postgres    false    216    215    3184               �   x��л�@К��싰FmH(t-mV 8ɲ�����\b���sro&,��v�wK�Tz�u#e8'�Aed"@��T�����Z#
�W���a�}�q�Q�iZ����]�}�А��>�b_�p�5R�wFk�#N3��Pp3q!Wt_i���?�^$�����9�f����o�         �  x�e��n�0���Ŝm;?M��	I�)��d���8?8$vI��D}�y�� Ԋ���Ε��N8��e�%�I*��rHEz7@pP��!�V՚��"ۙ��Tɱ�y\��㧎�qM5��ͦG����0^��h��'&�8-�D%���N����J�/�Ő�k��f��A��"�dQl�g�4��:N�_�j�㑹Rأ������^@�h��i' � ��P7�~��M�h��7�1R�V��NJ�����l�f�I�K���ϐ��l*�lk���ܜ֕�$��v��
��� ׺���~�}�գ��j�HF8�'R z5虑n|O��Y��}6��"��T=E
a''��\����<�PH����jx��?3�{;��7���G�e�i�;6���         
  x����r�8���S�z㍬�n���%���\i���l 
�16@*e=�,g=����  E��ʕ�$8��n�3O��쒗�����$9��e���	}8I�'�Yr��S%
�k���*�9�ˍ�M����L0�^�_J%����+���W��"�F�B
&�6^ˍ��rml�*+JٔX��NX$�Boi]ˍ]a;+����R�^�𬫄�b����̒�6�ɼ�|�p 	c�P�X���ĥ��a���|+q&VL�ASJ>Lf�0M��6ɧ����pQ�����߰�E2;� �ټ���x�y6�~n�N:�d��9+��^έg�h�r�*S�c	��.��0�?YeM)��Cvi4�����`N������M��w�<�?��g�1MQ����{� [.�Qz(���I ++h}�v�R��+����Ve0�C��陹�V:6���}�����eٻ�d�e�I:�_`IK���QX$�fB��I�#�����R�yV��\�=�p�ka�y#I:ɆS����7�vbs;d���b��T�l��a$�Å��ƄW릮��8D��o����u�$���<��>��n��緄(;I���)}9�d#���
���}@�M8����߹u��l�&��"�!��\��U��OƁ�����(�S��#^������D1v��
.���/��XN�Hz͊��8�0�~L�����Bئ�ѽQ��/�f�Z'��&黛E�&� �AB�"�:Ni�y���KC9ѕ������9�%Iȕ^� ���}����r趦װ�'�Yص�!�g�����F����|8�}#�� ���{@ח�F(m�f���I���NP=.��6�Z,���\A�93  d��wu���XKU��1ײ�J��Z�eO��)�5,�au��aR�<��!�j���"��'y�	�q!�y�d�Y�KA=�J@meHxN�� (�B{��6��Hw8W�e29ՅW��o�癎�&�Irs��?"b'qL3p�G�~ %Pf���}|v�) ���o��n����t�5� ��A�h�����q��"�k�%���J�6Cv�)ׄ��Z��B�Ŵ��FTeH��U��s���+|_���+RBL���;e^�`��h���*$��װT�x��~4�:�:;���S,�𓯫��������~ľLq8[*�ƑC=l��,�ճd�5���%:��zB�$Y9��	�~��r����֪ɻR���(�d�L�"3[r�Z8#�z5��W��#_$����$RU[��Ɩ\�mR�= �H��WR�k4�ԍ�ȧucc�7�#���v�g���2�7V��u������ڇ6���"��װ=@�P�B���`�[��<�qh��5�O�N���k(��q�[��R����f�.UÐ����$���Ê�~��`w��6Ji}�*���{lH�ka����������1ʮa��%g�_n�G�O}?K:߃�)~ �=���O�w�A����v�|�>���]̾K�����>���I�.9�}�Z�]w�L���[�,0��k���)4�wo�WRO��˖����-���	?!���U([2�TQ�H��<�y����3��7>ydO۵E�׆�����(M������t�M'��ƥ|�	=W�+z}�U��J�*;�8�2��SQ��Gl�~Jʥ��7�b�,鸥ĳ���n2L�!*���qw�}"ٍU�z�;\�c�Rv�����Hr:;���KKЬ�(�߸㏒�H�o����d��&�E6�LGρK:]'K�!q��+*}���.�\��Z�0��������jTMrB�~o��Si�*Nd}���TKT3j���0������tQ?L���_�r?��w蘓�"����u�e��#���S/D���~��b����$��\���n������U4!c��7���Z��y7C��£/'�X��uY��H����.n�$'�l<���4")��8��VlvLoL�9r��}Eb��ً�޻�m��+��[�@7KivKL�9L&������:��z�4��gmzu wC���e=M�׎H�;��T�Y��S?úV�8�P��������dV�#E�Qj��N��b��#�A�o���������orH�ˀ����v4�%���M��g�(���Q��+׻����o����V��B���k��k��4x�y���	�F���/?�߫��kB1��e��lw?z�QD)��ڇ��h�/A���&���V{�G7oy���ˏ�8k���JAY!q�����LQu;B_e������,M�. j�u]��w�|��y���J滂�߹���4�/��j����f���"$"4���#�K�7�cB��<��pF7�y,�-�a2:��pK�4K�!;x�� FҚf�=i͓{��i�GnWoA8�n�(�3��Tw�=��h'�m)F5���EANq�nc���͈VOc=�[��~bw�,]
�q���v��ctH~�#7(�ѿ�GGG��j��     