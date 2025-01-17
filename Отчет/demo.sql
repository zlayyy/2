PGDMP     (                    |            demo    15.4    15.3                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16740    demo    DATABASE     x   CREATE DATABASE demo WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Russian_Russia.1251';
    DROP DATABASE demo;
                postgres    false            �            1259    16741 (   ЗаявкаНаОбслуживание    TABLE     &  CREATE TABLE public."ЗаявкаНаОбслуживание" (
    "КодЗаявки" integer NOT NULL,
    "КодКлиента" integer,
    "СтатусЗаявки" character varying,
    "Описание" character varying,
    "ТипОборудования" character varying
);
 >   DROP TABLE public."ЗаявкаНаОбслуживание";
       public         heap    postgres    false            �            1259    16748    Клиенты    TABLE     s   CREATE TABLE public."Клиенты" (
    "КодКлиента" integer NOT NULL,
    "ФИО" character(100)
);
 $   DROP TABLE public."Клиенты";
       public         heap    postgres    false            �            1259    16756    ОбработкаЗаявки    TABLE     �   CREATE TABLE public."ОбработкаЗаявки" (
    "КодОбработки" integer NOT NULL,
    "КодСотрудника" integer,
    "КодЗаявки" integer
);
 4   DROP TABLE public."ОбработкаЗаявки";
       public         heap    postgres    false            �            1259    16761    РемонтПоЗаявки    TABLE     �   CREATE TABLE public."РемонтПоЗаявки" (
    "КодРемонта" integer NOT NULL,
    "КодОбработки" integer,
    "Отчет" integer
);
 2   DROP TABLE public."РемонтПоЗаявки";
       public         heap    postgres    false            �            1259    16766    Сотрудники    TABLE     �   CREATE TABLE public."Сотрудники" (
    "КодСотрудника" integer NOT NULL,
    "ФИО" character varying
);
 *   DROP TABLE public."Сотрудники";
       public         heap    postgres    false                      0    16741 (   ЗаявкаНаОбслуживание 
   TABLE DATA           �   COPY public."ЗаявкаНаОбслуживание" ("КодЗаявки", "КодКлиента", "СтатусЗаявки", "Описание", "ТипОборудования") FROM stdin;
    public          postgres    false    214   S                  0    16748    Клиенты 
   TABLE DATA           L   COPY public."Клиенты" ("КодКлиента", "ФИО") FROM stdin;
    public          postgres    false    215   ~!                 0    16756    ОбработкаЗаявки 
   TABLE DATA           �   COPY public."ОбработкаЗаявки" ("КодОбработки", "КодСотрудника", "КодЗаявки") FROM stdin;
    public          postgres    false    216   f"                 0    16761    РемонтПоЗаявки 
   TABLE DATA           z   COPY public."РемонтПоЗаявки" ("КодРемонта", "КодОбработки", "Отчет") FROM stdin;
    public          postgres    false    217   �"                 0    16766    Сотрудники 
   TABLE DATA           X   COPY public."Сотрудники" ("КодСотрудника", "ФИО") FROM stdin;
    public          postgres    false    218   �"       u           2606    16747 V   ЗаявкаНаОбслуживание ЗаявкаНаОбслуживание_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ЗаявкаНаОбслуживание"
    ADD CONSTRAINT "ЗаявкаНаОбслуживание_pkey" PRIMARY KEY ("КодЗаявки");
 �   ALTER TABLE ONLY public."ЗаявкаНаОбслуживание" DROP CONSTRAINT "ЗаявкаНаОбслуживание_pkey";
       public            postgres    false    214            w           2606    16752 "   Клиенты Клиенты_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."Клиенты"
    ADD CONSTRAINT "Клиенты_pkey" PRIMARY KEY ("КодКлиента");
 P   ALTER TABLE ONLY public."Клиенты" DROP CONSTRAINT "Клиенты_pkey";
       public            postgres    false    215            y           2606    16760 B   ОбработкаЗаявки ОбработкаЗаявки_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."ОбработкаЗаявки"
    ADD CONSTRAINT "ОбработкаЗаявки_pkey" PRIMARY KEY ("КодОбработки");
 p   ALTER TABLE ONLY public."ОбработкаЗаявки" DROP CONSTRAINT "ОбработкаЗаявки_pkey";
       public            postgres    false    216            {           2606    16765 >   РемонтПоЗаявки РемонтПоЗаявки_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."РемонтПоЗаявки"
    ADD CONSTRAINT "РемонтПоЗаявки_pkey" PRIMARY KEY ("КодРемонта");
 l   ALTER TABLE ONLY public."РемонтПоЗаявки" DROP CONSTRAINT "РемонтПоЗаявки_pkey";
       public            postgres    false    217            }           2606    16772 .   Сотрудники Сотрудники_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Сотрудники"
    ADD CONSTRAINT "Сотрудники_pkey" PRIMARY KEY ("КодСотрудника");
 \   ALTER TABLE ONLY public."Сотрудники" DROP CONSTRAINT "Сотрудники_pkey";
       public            postgres    false    218                       2606    16778 $   ОбработкаЗаявки fk_k2    FK CONSTRAINT     �   ALTER TABLE ONLY public."ОбработкаЗаявки"
    ADD CONSTRAINT fk_k2 FOREIGN KEY ("КодСотрудника") REFERENCES public."Сотрудники"("КодСотрудника") NOT VALID;
 P   ALTER TABLE ONLY public."ОбработкаЗаявки" DROP CONSTRAINT fk_k2;
       public          postgres    false    3197    216    218            �           2606    16783 $   ОбработкаЗаявки fk_k3    FK CONSTRAINT     �   ALTER TABLE ONLY public."ОбработкаЗаявки"
    ADD CONSTRAINT fk_k3 FOREIGN KEY ("КодЗаявки") REFERENCES public."ЗаявкаНаОбслуживание"("КодЗаявки") NOT VALID;
 P   ALTER TABLE ONLY public."ОбработкаЗаявки" DROP CONSTRAINT fk_k3;
       public          postgres    false    216    214    3189            �           2606    16788 "   РемонтПоЗаявки fk_k4    FK CONSTRAINT     �   ALTER TABLE ONLY public."РемонтПоЗаявки"
    ADD CONSTRAINT fk_k4 FOREIGN KEY ("КодОбработки") REFERENCES public."ОбработкаЗаявки"("КодОбработки") NOT VALID;
 N   ALTER TABLE ONLY public."РемонтПоЗаявки" DROP CONSTRAINT fk_k4;
       public          postgres    false    217    3193    216            ~           2606    16793 /   ЗаявкаНаОбслуживание fk_key    FK CONSTRAINT     �   ALTER TABLE ONLY public."ЗаявкаНаОбслуживание"
    ADD CONSTRAINT fk_key FOREIGN KEY ("КодКлиента") REFERENCES public."Клиенты"("КодКлиента") NOT VALID;
 [   ALTER TABLE ONLY public."ЗаявкаНаОбслуживание" DROP CONSTRAINT fk_key;
       public          postgres    false    215    214    3191                 x��RIN1<�_� ���1ɠ R""�+��$cb���D�57������]��d x���9:�Cԅ.=aD���W2���6>��)�Z�Z�΄�e�Oz;c�F2l3�a��Qy�u������z���∤��Dk�	GfР15�KRu�j]3(-�8E���� ;��S�Au��_�X]-����k�+���*$�[B��'t�\^�6��GN(Bj#x�[�7��c��Mezf�3��Qڲ��Vt�m0����~�!χ�t+�Z�͵s�pR��         �   x���;�0��>�O���2&!H|D�@z��BH��7b�(hM�Dkk��)���MpF�Ra�W����<�� ea��>�%������R�J\Y0��Ֆm�74xB���.ިX�B� ;[�f�.fGk��mLk���%?cϻ[��.���7��]{���T��w~�&4�dO��(<��OԋO��z~q�}��o����ӏz�⃆��k)u         3   x��I  �w+��{����$�@�S�L�
UN5���8��uJ��{H>[	�            x������ � �         �   x�u�M
�0���)z����0�"nE7.��j���^�͍|�F�P���{ߛ�a�PI�O<0�	����
P���e�Ӡ����H�#t�[L������j6�Qr��G���q+8u�����1�D����$I�D�(�mяY���qa�4U�9�Z�~�q��y�¯c�Y��cؠ��������9�v��	�~Ӧ���-     