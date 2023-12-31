PGDMP                 
    	    {            arqui_bd    15.2    15.2 8    :           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ;           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            <           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            =           1262    32876    arqui_bd    DATABASE     z   CREATE DATABASE arqui_bd WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'Spanish_Peru.1252';
    DROP DATABASE arqui_bd;
                postgres    false            �            1259    32878    clientes    TABLE       CREATE TABLE public.clientes (
    id_cliente integer NOT NULL,
    direccion character varying(255),
    dni integer,
    email character varying(255),
    nombre_completo character varying(255),
    password character varying(255),
    tipo_registro character varying(255)
);
    DROP TABLE public.clientes;
       public         heap    postgres    false            �            1259    32877    clientes_id_cliente_seq    SEQUENCE     �   CREATE SEQUENCE public.clientes_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.clientes_id_cliente_seq;
       public          postgres    false    215            >           0    0    clientes_id_cliente_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.clientes_id_cliente_seq OWNED BY public.clientes.id_cliente;
          public          postgres    false    214            �            1259    32887    evaluaciones    TABLE     �   CREATE TABLE public.evaluaciones (
    id_evaluacion integer NOT NULL,
    calificacion integer,
    comentario character varying(255),
    fecha timestamp(6) without time zone,
    id_cliente integer,
    id_limpiador integer
);
     DROP TABLE public.evaluaciones;
       public         heap    postgres    false            �            1259    32886    evaluaciones_id_evaluacion_seq    SEQUENCE     �   CREATE SEQUENCE public.evaluaciones_id_evaluacion_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.evaluaciones_id_evaluacion_seq;
       public          postgres    false    217            ?           0    0    evaluaciones_id_evaluacion_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.evaluaciones_id_evaluacion_seq OWNED BY public.evaluaciones.id_evaluacion;
          public          postgres    false    216            �            1259    32894    limpiadores    TABLE     �  CREATE TABLE public.limpiadores (
    id_limpiador integer NOT NULL,
    calificacion real NOT NULL,
    "contraseña" character varying(255),
    descripcion character varying(255) NOT NULL,
    dni integer,
    edad integer,
    email character varying(255),
    nombre_completo character varying(255),
    num_servicios integer,
    telefono character varying(255) NOT NULL,
    tipo_registro character varying(255)
);
    DROP TABLE public.limpiadores;
       public         heap    postgres    false            �            1259    32893    limpiadores_id_limpiador_seq    SEQUENCE     �   CREATE SEQUENCE public.limpiadores_id_limpiador_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.limpiadores_id_limpiador_seq;
       public          postgres    false    219            @           0    0    limpiadores_id_limpiador_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.limpiadores_id_limpiador_seq OWNED BY public.limpiadores.id_limpiador;
          public          postgres    false    218            �            1259    32902    limpiadores_tipo_limpieza    TABLE     �   CREATE TABLE public.limpiadores_tipo_limpieza (
    limpiador_id_limpiador integer NOT NULL,
    tipo_limpieza_id_tipolimpieza integer NOT NULL
);
 -   DROP TABLE public.limpiadores_tipo_limpieza;
       public         heap    postgres    false            �            1259    32906    reservas_servicio    TABLE     ,  CREATE TABLE public.reservas_servicio (
    id_reserva integer NOT NULL,
    fecha_reserva timestamp(6) without time zone,
    fecha_servicio timestamp(6) without time zone,
    metodo_pago character varying(255) NOT NULL,
    id_cliente integer,
    id_limpiador integer,
    id_servicio integer
);
 %   DROP TABLE public.reservas_servicio;
       public         heap    postgres    false            �            1259    32905     reservas_servicio_id_reserva_seq    SEQUENCE     �   CREATE SEQUENCE public.reservas_servicio_id_reserva_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.reservas_servicio_id_reserva_seq;
       public          postgres    false    222            A           0    0     reservas_servicio_id_reserva_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.reservas_servicio_id_reserva_seq OWNED BY public.reservas_servicio.id_reserva;
          public          postgres    false    221            �            1259    32913 	   servicios    TABLE     8  CREATE TABLE public.servicios (
    id_servicio integer NOT NULL,
    direccion character varying(255) NOT NULL,
    estado character varying(255) NOT NULL,
    fin timestamp(6) without time zone,
    inicio timestamp(6) without time zone,
    precio real NOT NULL,
    tareas character varying(255) NOT NULL
);
    DROP TABLE public.servicios;
       public         heap    postgres    false            �            1259    32912    servicios_id_servicio_seq    SEQUENCE     �   CREATE SEQUENCE public.servicios_id_servicio_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.servicios_id_servicio_seq;
       public          postgres    false    224            B           0    0    servicios_id_servicio_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.servicios_id_servicio_seq OWNED BY public.servicios.id_servicio;
          public          postgres    false    223            �            1259    32922    tipos_limpieza    TABLE     �   CREATE TABLE public.tipos_limpieza (
    id_tipolimpieza integer NOT NULL,
    descripcion character varying(255),
    nombre character varying(255) NOT NULL
);
 "   DROP TABLE public.tipos_limpieza;
       public         heap    postgres    false            �            1259    32921 "   tipos_limpieza_id_tipolimpieza_seq    SEQUENCE     �   CREATE SEQUENCE public.tipos_limpieza_id_tipolimpieza_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.tipos_limpieza_id_tipolimpieza_seq;
       public          postgres    false    226            C           0    0 "   tipos_limpieza_id_tipolimpieza_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.tipos_limpieza_id_tipolimpieza_seq OWNED BY public.tipos_limpieza.id_tipolimpieza;
          public          postgres    false    225            �           2604    32881    clientes id_cliente    DEFAULT     z   ALTER TABLE ONLY public.clientes ALTER COLUMN id_cliente SET DEFAULT nextval('public.clientes_id_cliente_seq'::regclass);
 B   ALTER TABLE public.clientes ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    215    214    215            �           2604    32890    evaluaciones id_evaluacion    DEFAULT     �   ALTER TABLE ONLY public.evaluaciones ALTER COLUMN id_evaluacion SET DEFAULT nextval('public.evaluaciones_id_evaluacion_seq'::regclass);
 I   ALTER TABLE public.evaluaciones ALTER COLUMN id_evaluacion DROP DEFAULT;
       public          postgres    false    217    216    217            �           2604    32897    limpiadores id_limpiador    DEFAULT     �   ALTER TABLE ONLY public.limpiadores ALTER COLUMN id_limpiador SET DEFAULT nextval('public.limpiadores_id_limpiador_seq'::regclass);
 G   ALTER TABLE public.limpiadores ALTER COLUMN id_limpiador DROP DEFAULT;
       public          postgres    false    219    218    219            �           2604    32909    reservas_servicio id_reserva    DEFAULT     �   ALTER TABLE ONLY public.reservas_servicio ALTER COLUMN id_reserva SET DEFAULT nextval('public.reservas_servicio_id_reserva_seq'::regclass);
 K   ALTER TABLE public.reservas_servicio ALTER COLUMN id_reserva DROP DEFAULT;
       public          postgres    false    221    222    222            �           2604    32916    servicios id_servicio    DEFAULT     ~   ALTER TABLE ONLY public.servicios ALTER COLUMN id_servicio SET DEFAULT nextval('public.servicios_id_servicio_seq'::regclass);
 D   ALTER TABLE public.servicios ALTER COLUMN id_servicio DROP DEFAULT;
       public          postgres    false    224    223    224            �           2604    32925    tipos_limpieza id_tipolimpieza    DEFAULT     �   ALTER TABLE ONLY public.tipos_limpieza ALTER COLUMN id_tipolimpieza SET DEFAULT nextval('public.tipos_limpieza_id_tipolimpieza_seq'::regclass);
 M   ALTER TABLE public.tipos_limpieza ALTER COLUMN id_tipolimpieza DROP DEFAULT;
       public          postgres    false    225    226    226            ,          0    32878    clientes 
   TABLE DATA           o   COPY public.clientes (id_cliente, direccion, dni, email, nombre_completo, password, tipo_registro) FROM stdin;
    public          postgres    false    215   I       .          0    32887    evaluaciones 
   TABLE DATA           p   COPY public.evaluaciones (id_evaluacion, calificacion, comentario, fecha, id_cliente, id_limpiador) FROM stdin;
    public          postgres    false    217   �I       0          0    32894    limpiadores 
   TABLE DATA           �   COPY public.limpiadores (id_limpiador, calificacion, "contraseña", descripcion, dni, edad, email, nombre_completo, num_servicios, telefono, tipo_registro) FROM stdin;
    public          postgres    false    219   �I       1          0    32902    limpiadores_tipo_limpieza 
   TABLE DATA           j   COPY public.limpiadores_tipo_limpieza (limpiador_id_limpiador, tipo_limpieza_id_tipolimpieza) FROM stdin;
    public          postgres    false    220   �I       3          0    32906    reservas_servicio 
   TABLE DATA           �   COPY public.reservas_servicio (id_reserva, fecha_reserva, fecha_servicio, metodo_pago, id_cliente, id_limpiador, id_servicio) FROM stdin;
    public          postgres    false    222   J       5          0    32913 	   servicios 
   TABLE DATA           `   COPY public.servicios (id_servicio, direccion, estado, fin, inicio, precio, tareas) FROM stdin;
    public          postgres    false    224   *J       7          0    32922    tipos_limpieza 
   TABLE DATA           N   COPY public.tipos_limpieza (id_tipolimpieza, descripcion, nombre) FROM stdin;
    public          postgres    false    226   GJ       D           0    0    clientes_id_cliente_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.clientes_id_cliente_seq', 3, true);
          public          postgres    false    214            E           0    0    evaluaciones_id_evaluacion_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.evaluaciones_id_evaluacion_seq', 1, false);
          public          postgres    false    216            F           0    0    limpiadores_id_limpiador_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.limpiadores_id_limpiador_seq', 1, false);
          public          postgres    false    218            G           0    0     reservas_servicio_id_reserva_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.reservas_servicio_id_reserva_seq', 1, false);
          public          postgres    false    221            H           0    0    servicios_id_servicio_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.servicios_id_servicio_seq', 1, false);
          public          postgres    false    223            I           0    0 "   tipos_limpieza_id_tipolimpieza_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.tipos_limpieza_id_tipolimpieza_seq', 1, false);
          public          postgres    false    225            �           2606    32885    clientes clientes_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id_cliente);
 @   ALTER TABLE ONLY public.clientes DROP CONSTRAINT clientes_pkey;
       public            postgres    false    215            �           2606    32892    evaluaciones evaluaciones_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.evaluaciones
    ADD CONSTRAINT evaluaciones_pkey PRIMARY KEY (id_evaluacion);
 H   ALTER TABLE ONLY public.evaluaciones DROP CONSTRAINT evaluaciones_pkey;
       public            postgres    false    217            �           2606    32901    limpiadores limpiadores_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.limpiadores
    ADD CONSTRAINT limpiadores_pkey PRIMARY KEY (id_limpiador);
 F   ALTER TABLE ONLY public.limpiadores DROP CONSTRAINT limpiadores_pkey;
       public            postgres    false    219            �           2606    32911 (   reservas_servicio reservas_servicio_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.reservas_servicio
    ADD CONSTRAINT reservas_servicio_pkey PRIMARY KEY (id_reserva);
 R   ALTER TABLE ONLY public.reservas_servicio DROP CONSTRAINT reservas_servicio_pkey;
       public            postgres    false    222            �           2606    32920    servicios servicios_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.servicios
    ADD CONSTRAINT servicios_pkey PRIMARY KEY (id_servicio);
 B   ALTER TABLE ONLY public.servicios DROP CONSTRAINT servicios_pkey;
       public            postgres    false    224            �           2606    32929 "   tipos_limpieza tipos_limpieza_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.tipos_limpieza
    ADD CONSTRAINT tipos_limpieza_pkey PRIMARY KEY (id_tipolimpieza);
 L   ALTER TABLE ONLY public.tipos_limpieza DROP CONSTRAINT tipos_limpieza_pkey;
       public            postgres    false    226            �           2606    32931 .   reservas_servicio uk_ketu0dts4bqh5xb3j1rle360w 
   CONSTRAINT     p   ALTER TABLE ONLY public.reservas_servicio
    ADD CONSTRAINT uk_ketu0dts4bqh5xb3j1rle360w UNIQUE (id_servicio);
 X   ALTER TABLE ONLY public.reservas_servicio DROP CONSTRAINT uk_ketu0dts4bqh5xb3j1rle360w;
       public            postgres    false    222            �           2606    32932 (   evaluaciones fk750n32lpibmhmhjwps07e99qk    FK CONSTRAINT     �   ALTER TABLE ONLY public.evaluaciones
    ADD CONSTRAINT fk750n32lpibmhmhjwps07e99qk FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);
 R   ALTER TABLE ONLY public.evaluaciones DROP CONSTRAINT fk750n32lpibmhmhjwps07e99qk;
       public          postgres    false    217    215    3209            �           2606    32937 (   evaluaciones fk9i9d5cyy929n0mp0m5s34b3pw    FK CONSTRAINT     �   ALTER TABLE ONLY public.evaluaciones
    ADD CONSTRAINT fk9i9d5cyy929n0mp0m5s34b3pw FOREIGN KEY (id_limpiador) REFERENCES public.limpiadores(id_limpiador);
 R   ALTER TABLE ONLY public.evaluaciones DROP CONSTRAINT fk9i9d5cyy929n0mp0m5s34b3pw;
       public          postgres    false    219    3213    217            �           2606    32957 -   reservas_servicio fkea49t9sbfv97poj5t8014ahjs    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservas_servicio
    ADD CONSTRAINT fkea49t9sbfv97poj5t8014ahjs FOREIGN KEY (id_limpiador) REFERENCES public.limpiadores(id_limpiador);
 W   ALTER TABLE ONLY public.reservas_servicio DROP CONSTRAINT fkea49t9sbfv97poj5t8014ahjs;
       public          postgres    false    219    222    3213            �           2606    32952 -   reservas_servicio fkfehyluvq4nwji50qq1vgl21m9    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservas_servicio
    ADD CONSTRAINT fkfehyluvq4nwji50qq1vgl21m9 FOREIGN KEY (id_cliente) REFERENCES public.clientes(id_cliente);
 W   ALTER TABLE ONLY public.reservas_servicio DROP CONSTRAINT fkfehyluvq4nwji50qq1vgl21m9;
       public          postgres    false    215    222    3209            �           2606    32947 5   limpiadores_tipo_limpieza fkll98gqrkv7u50ege6sw062xhs    FK CONSTRAINT     �   ALTER TABLE ONLY public.limpiadores_tipo_limpieza
    ADD CONSTRAINT fkll98gqrkv7u50ege6sw062xhs FOREIGN KEY (limpiador_id_limpiador) REFERENCES public.limpiadores(id_limpiador);
 _   ALTER TABLE ONLY public.limpiadores_tipo_limpieza DROP CONSTRAINT fkll98gqrkv7u50ege6sw062xhs;
       public          postgres    false    220    219    3213            �           2606    32942 5   limpiadores_tipo_limpieza fknnn8pho1fxc3au9dlcaa3da8q    FK CONSTRAINT     �   ALTER TABLE ONLY public.limpiadores_tipo_limpieza
    ADD CONSTRAINT fknnn8pho1fxc3au9dlcaa3da8q FOREIGN KEY (tipo_limpieza_id_tipolimpieza) REFERENCES public.tipos_limpieza(id_tipolimpieza);
 _   ALTER TABLE ONLY public.limpiadores_tipo_limpieza DROP CONSTRAINT fknnn8pho1fxc3au9dlcaa3da8q;
       public          postgres    false    226    220    3221            �           2606    32962 -   reservas_servicio fkq2qlmfuf18rlavudtt4fugn11    FK CONSTRAINT     �   ALTER TABLE ONLY public.reservas_servicio
    ADD CONSTRAINT fkq2qlmfuf18rlavudtt4fugn11 FOREIGN KEY (id_servicio) REFERENCES public.servicios(id_servicio);
 W   ALTER TABLE ONLY public.reservas_servicio DROP CONSTRAINT fkq2qlmfuf18rlavudtt4fugn11;
       public          postgres    false    224    3219    222            ,   �   x�U�K�0����*��J���D�2�T��5}�����L��qhOP1U֌3]�r�s����#\��p���LL8ߣ��'�9��a�!�UA�!�[9���O�;�3�H�-���3�x]V����V���)}?����-!?��B+      .      x������ � �      0      x������ � �      1      x������ � �      3      x������ � �      5      x������ � �      7      x������ � �     