PGDMP     6    2                z            j    14.2    14.2 n    t           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            u           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            v           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            w           1262    16856    j    DATABASE     ]   CREATE DATABASE j WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE j;
                postgres    false                        2615    32993    aplicaciones    SCHEMA        CREATE SCHEMA aplicaciones;
    DROP SCHEMA aplicaciones;
                postgres    false                        2615    16858    carreras    SCHEMA        CREATE SCHEMA carreras;
    DROP SCHEMA carreras;
                postgres    false            	            2615    32768    competencias    SCHEMA        CREATE SCHEMA competencias;
    DROP SCHEMA competencias;
                postgres    false                        2615    32983 
   curriculum    SCHEMA        CREATE SCHEMA curriculum;
    DROP SCHEMA curriculum;
                postgres    false                        2615    32769    experiencia    SCHEMA        CREATE SCHEMA experiencia;
    DROP SCHEMA experiencia;
                postgres    false                        2615    16860    lugares    SCHEMA        CREATE SCHEMA lugares;
    DROP SCHEMA lugares;
                postgres    false                        2615    16861    ofertas    SCHEMA        CREATE SCHEMA ofertas;
    DROP SCHEMA ofertas;
                postgres    false                        2615    16862    rol    SCHEMA        CREATE SCHEMA rol;
    DROP SCHEMA rol;
                postgres    false                        2615    16863    salarios    SCHEMA        CREATE SCHEMA salarios;
    DROP SCHEMA salarios;
                postgres    false            
            2615    16864    universidades    SCHEMA        CREATE SCHEMA universidades;
    DROP SCHEMA universidades;
                postgres    false                        2615    16865    usuario    SCHEMA        CREATE SCHEMA usuario;
    DROP SCHEMA usuario;
                postgres    false            ?            1259    33033 	   aplicados    TABLE     	  CREATE TABLE aplicaciones.aplicados (
    id integer NOT NULL,
    nombre character varying,
    apellido character varying,
    correo character varying,
    id_empresa character varying NOT NULL,
    "userId" character varying,
    id_oferta character varying
);
 #   DROP TABLE aplicaciones.aplicados;
       aplicaciones         heap    postgres    false    11            ?            1259    33032    aplicados_id_seq    SEQUENCE     ?   CREATE SEQUENCE aplicaciones.aplicados_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE aplicaciones.aplicados_id_seq;
       aplicaciones          postgres    false    246    11            x           0    0    aplicados_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE aplicaciones.aplicados_id_seq OWNED BY aplicaciones.aplicados.id;
          aplicaciones          postgres    false    245            ?            1259    16870    carrera    TABLE     ^   CREATE TABLE carreras.carrera (
    id integer NOT NULL,
    carrera character varying(30)
);
    DROP TABLE carreras.carrera;
       carreras         heap    postgres    false    7            ?            1259    16873    carrera_id_seq    SEQUENCE     ?   CREATE SEQUENCE carreras.carrera_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE carreras.carrera_id_seq;
       carreras          postgres    false    7    220            y           0    0    carrera_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE carreras.carrera_id_seq OWNED BY carreras.carrera.id;
          carreras          postgres    false    221            ?            1259    32783    competencias    TABLE     i   CREATE TABLE competencias.competencias (
    id integer NOT NULL,
    dato character varying NOT NULL
);
 &   DROP TABLE competencias.competencias;
       competencias         heap    postgres    false    9            ?            1259    32782    competencias_id_seq    SEQUENCE     ?   CREATE SEQUENCE competencias.competencias_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE competencias.competencias_id_seq;
       competencias          postgres    false    242    9            z           0    0    competencias_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE competencias.competencias_id_seq OWNED BY competencias.competencias.id;
          competencias          postgres    false    241            ?            1259    32985 
   curriculum    TABLE     y  CREATE TABLE curriculum.curriculum (
    id integer NOT NULL,
    nom_ape character varying(50) NOT NULL,
    contacto character varying(10) NOT NULL,
    edad character varying(3) NOT NULL,
    cedula character varying(10) NOT NULL,
    carrera character varying(50) NOT NULL,
    experiencia character varying(50) NOT NULL,
    competencias character varying(50) NOT NULL
);
 "   DROP TABLE curriculum.curriculum;
    
   curriculum         heap    postgres    false    13            ?            1259    32984    curriculum_id_seq    SEQUENCE     ?   CREATE SEQUENCE curriculum.curriculum_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE curriculum.curriculum_id_seq;
    
   curriculum          postgres    false    244    13            {           0    0    curriculum_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE curriculum.curriculum_id_seq OWNED BY curriculum.curriculum.id;
       
   curriculum          postgres    false    243            ?            1259    32774    experiencia    TABLE     g   CREATE TABLE experiencia.experiencia (
    id integer NOT NULL,
    dato character varying NOT NULL
);
 $   DROP TABLE experiencia.experiencia;
       experiencia         heap    postgres    false    16            ?            1259    32773    experiencia_id_seq    SEQUENCE     ?   CREATE SEQUENCE experiencia.experiencia_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE experiencia.experiencia_id_seq;
       experiencia          postgres    false    240    16            |           0    0    experiencia_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE experiencia.experiencia_id_seq OWNED BY experiencia.experiencia.id;
          experiencia          postgres    false    239            ?            1259    16880 	   municipio    TABLE     ^   CREATE TABLE lugares.municipio (
    id integer NOT NULL,
    nombre character varying(30)
);
    DROP TABLE lugares.municipio;
       lugares         heap    postgres    false    14            ?            1259    16883    municipio_id_seq    SEQUENCE     ?   CREATE SEQUENCE lugares.municipio_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE lugares.municipio_id_seq;
       lugares          postgres    false    14    222            }           0    0    municipio_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE lugares.municipio_id_seq OWNED BY lugares.municipio.id;
          lugares          postgres    false    223            ?            1259    16884    ofertas    TABLE     5  CREATE TABLE ofertas.ofertas (
    titulo character varying(100),
    descripcion character varying(500),
    municipio character varying(30),
    "empresaId" character varying(30),
    id integer NOT NULL,
    nombre character varying(30),
    id_oferta character varying(30),
    salario bigint NOT NULL
);
    DROP TABLE ofertas.ofertas;
       ofertas         heap    postgres    false    5            ?            1259    16889    ofertas_id_seq    SEQUENCE     ?   CREATE SEQUENCE ofertas.ofertas_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE ofertas.ofertas_id_seq;
       ofertas          postgres    false    224    5            ~           0    0    ofertas_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE ofertas.ofertas_id_seq OWNED BY ofertas.ofertas.id;
          ofertas          postgres    false    225            ?            1259    16890    ofertas_salario_seq    SEQUENCE     }   CREATE SEQUENCE ofertas.ofertas_salario_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE ofertas.ofertas_salario_seq;
       ofertas          postgres    false    5    224                       0    0    ofertas_salario_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE ofertas.ofertas_salario_seq OWNED BY ofertas.ofertas.salario;
          ofertas          postgres    false    226            ?            1259    16891    rol    TABLE     [   CREATE TABLE rol.rol (
    id integer NOT NULL,
    tipo character varying(30) NOT NULL
);
    DROP TABLE rol.rol;
       rol         heap    postgres    false    6            ?            1259    16894 
   rol_id_seq    SEQUENCE        CREATE SEQUENCE rol.rol_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
    DROP SEQUENCE rol.rol_id_seq;
       rol          postgres    false    6    227            ?           0    0 
   rol_id_seq    SEQUENCE OWNED BY     3   ALTER SEQUENCE rol.rol_id_seq OWNED BY rol.rol.id;
          rol          postgres    false    228            ?            1259    16895    valor1    TABLE     M   CREATE TABLE salarios.valor1 (
    id integer NOT NULL,
    valor integer
);
    DROP TABLE salarios.valor1;
       salarios         heap    postgres    false    8            ?            1259    16898    valor1_id_seq    SEQUENCE     ?   CREATE SEQUENCE salarios.valor1_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE salarios.valor1_id_seq;
       salarios          postgres    false    229    8            ?           0    0    valor1_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE salarios.valor1_id_seq OWNED BY salarios.valor1.id;
          salarios          postgres    false    230            ?            1259    16899    universidad    TABLE     f   CREATE TABLE universidades.universidad (
    id integer NOT NULL,
    nombre character varying(50)
);
 &   DROP TABLE universidades.universidad;
       universidades         heap    postgres    false    10            ?            1259    16902    universidad_id_seq    SEQUENCE     ?   CREATE SEQUENCE universidades.universidad_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE universidades.universidad_id_seq;
       universidades          postgres    false    231    10            ?           0    0    universidad_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE universidades.universidad_id_seq OWNED BY universidades.universidad.id;
          universidades          postgres    false    232            ?            1259    16903    administrador    TABLE     ?   CREATE TABLE usuario.administrador (
    id integer NOT NULL,
    nombre character varying(30),
    apellido character varying(30),
    usuario character varying(15),
    contrasena character varying(30),
    rol integer
);
 "   DROP TABLE usuario.administrador;
       usuario         heap    postgres    false    4            ?            1259    16906    administrador_id_seq    SEQUENCE     ?   CREATE SEQUENCE usuario.administrador_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE usuario.administrador_id_seq;
       usuario          postgres    false    4    233            ?           0    0    administrador_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE usuario.administrador_id_seq OWNED BY usuario.administrador.id;
          usuario          postgres    false    234            ?            1259    16907 	   aspirante    TABLE     ?  CREATE TABLE usuario.aspirante (
    nombre character varying(30),
    apellido character varying(30),
    usuario character varying(30),
    contrasena character varying(30),
    rol integer,
    correo character varying(100),
    id integer NOT NULL,
    token text,
    session text,
    ultima_modificacion timestamp without time zone,
    vencimiento_token timestamp without time zone,
    identificacion character varying(15)
);
    DROP TABLE usuario.aspirante;
       usuario         heap    postgres    false    4            ?            1259    16912    aspirante_id_seq    SEQUENCE     ?   CREATE SEQUENCE usuario.aspirante_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE usuario.aspirante_id_seq;
       usuario          postgres    false    4    235            ?           0    0    aspirante_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE usuario.aspirante_id_seq OWNED BY usuario.aspirante.id;
          usuario          postgres    false    236            ?            1259    16913    empresa    TABLE     ?  CREATE TABLE usuario.empresa (
    id integer NOT NULL,
    nombre character varying(30),
    usuario character varying(30),
    contrasena character varying(30),
    rol integer,
    correo character varying(100),
    direccion character varying(100),
    "telefono_Id" character varying(15) NOT NULL,
    session text,
    token text,
    ultima_modificacion timestamp without time zone,
    vencimiento_token timestamp without time zone
);
    DROP TABLE usuario.empresa;
       usuario         heap    postgres    false    4            ?            1259    16918    empresa_id_seq    SEQUENCE     ?   CREATE SEQUENCE usuario.empresa_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE usuario.empresa_id_seq;
       usuario          postgres    false    237    4            ?           0    0    empresa_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE usuario.empresa_id_seq OWNED BY usuario.empresa.id;
          usuario          postgres    false    238            ?           2604    33036    aplicados id    DEFAULT     x   ALTER TABLE ONLY aplicaciones.aplicados ALTER COLUMN id SET DEFAULT nextval('aplicaciones.aplicados_id_seq'::regclass);
 A   ALTER TABLE aplicaciones.aplicados ALTER COLUMN id DROP DEFAULT;
       aplicaciones          postgres    false    245    246    246            ?           2604    16920 
   carrera id    DEFAULT     l   ALTER TABLE ONLY carreras.carrera ALTER COLUMN id SET DEFAULT nextval('carreras.carrera_id_seq'::regclass);
 ;   ALTER TABLE carreras.carrera ALTER COLUMN id DROP DEFAULT;
       carreras          postgres    false    221    220            ?           2604    32786    competencias id    DEFAULT     ~   ALTER TABLE ONLY competencias.competencias ALTER COLUMN id SET DEFAULT nextval('competencias.competencias_id_seq'::regclass);
 D   ALTER TABLE competencias.competencias ALTER COLUMN id DROP DEFAULT;
       competencias          postgres    false    242    241    242            ?           2604    32988    curriculum id    DEFAULT     v   ALTER TABLE ONLY curriculum.curriculum ALTER COLUMN id SET DEFAULT nextval('curriculum.curriculum_id_seq'::regclass);
 @   ALTER TABLE curriculum.curriculum ALTER COLUMN id DROP DEFAULT;
    
   curriculum          postgres    false    244    243    244            ?           2604    32777    experiencia id    DEFAULT     z   ALTER TABLE ONLY experiencia.experiencia ALTER COLUMN id SET DEFAULT nextval('experiencia.experiencia_id_seq'::regclass);
 B   ALTER TABLE experiencia.experiencia ALTER COLUMN id DROP DEFAULT;
       experiencia          postgres    false    240    239    240            ?           2604    16922    municipio id    DEFAULT     n   ALTER TABLE ONLY lugares.municipio ALTER COLUMN id SET DEFAULT nextval('lugares.municipio_id_seq'::regclass);
 <   ALTER TABLE lugares.municipio ALTER COLUMN id DROP DEFAULT;
       lugares          postgres    false    223    222            ?           2604    16923 
   ofertas id    DEFAULT     j   ALTER TABLE ONLY ofertas.ofertas ALTER COLUMN id SET DEFAULT nextval('ofertas.ofertas_id_seq'::regclass);
 :   ALTER TABLE ofertas.ofertas ALTER COLUMN id DROP DEFAULT;
       ofertas          postgres    false    225    224            ?           2604    16924    ofertas salario    DEFAULT     t   ALTER TABLE ONLY ofertas.ofertas ALTER COLUMN salario SET DEFAULT nextval('ofertas.ofertas_salario_seq'::regclass);
 ?   ALTER TABLE ofertas.ofertas ALTER COLUMN salario DROP DEFAULT;
       ofertas          postgres    false    226    224            ?           2604    16925    rol id    DEFAULT     Z   ALTER TABLE ONLY rol.rol ALTER COLUMN id SET DEFAULT nextval('rol.rol_id_seq'::regclass);
 2   ALTER TABLE rol.rol ALTER COLUMN id DROP DEFAULT;
       rol          postgres    false    228    227            ?           2604    16926 	   valor1 id    DEFAULT     j   ALTER TABLE ONLY salarios.valor1 ALTER COLUMN id SET DEFAULT nextval('salarios.valor1_id_seq'::regclass);
 :   ALTER TABLE salarios.valor1 ALTER COLUMN id DROP DEFAULT;
       salarios          postgres    false    230    229            ?           2604    16927    universidad id    DEFAULT     ~   ALTER TABLE ONLY universidades.universidad ALTER COLUMN id SET DEFAULT nextval('universidades.universidad_id_seq'::regclass);
 D   ALTER TABLE universidades.universidad ALTER COLUMN id DROP DEFAULT;
       universidades          postgres    false    232    231            ?           2604    16928    administrador id    DEFAULT     v   ALTER TABLE ONLY usuario.administrador ALTER COLUMN id SET DEFAULT nextval('usuario.administrador_id_seq'::regclass);
 @   ALTER TABLE usuario.administrador ALTER COLUMN id DROP DEFAULT;
       usuario          postgres    false    234    233            ?           2604    16929    aspirante id    DEFAULT     n   ALTER TABLE ONLY usuario.aspirante ALTER COLUMN id SET DEFAULT nextval('usuario.aspirante_id_seq'::regclass);
 <   ALTER TABLE usuario.aspirante ALTER COLUMN id DROP DEFAULT;
       usuario          postgres    false    236    235            ?           2604    16930 
   empresa id    DEFAULT     j   ALTER TABLE ONLY usuario.empresa ALTER COLUMN id SET DEFAULT nextval('usuario.empresa_id_seq'::regclass);
 :   ALTER TABLE usuario.empresa ALTER COLUMN id DROP DEFAULT;
       usuario          postgres    false    238    237            q          0    33033 	   aplicados 
   TABLE DATA           h   COPY aplicaciones.aplicados (id, nombre, apellido, correo, id_empresa, "userId", id_oferta) FROM stdin;
    aplicaciones          postgres    false    246   pv       W          0    16870    carrera 
   TABLE DATA           0   COPY carreras.carrera (id, carrera) FROM stdin;
    carreras          postgres    false    220   ?v       m          0    32783    competencias 
   TABLE DATA           6   COPY competencias.competencias (id, dato) FROM stdin;
    competencias          postgres    false    242   w       o          0    32985 
   curriculum 
   TABLE DATA           q   COPY curriculum.curriculum (id, nom_ape, contacto, edad, cedula, carrera, experiencia, competencias) FROM stdin;
 
   curriculum          postgres    false    244   pw       k          0    32774    experiencia 
   TABLE DATA           4   COPY experiencia.experiencia (id, dato) FROM stdin;
    experiencia          postgres    false    240   ?w       Y          0    16880 	   municipio 
   TABLE DATA           0   COPY lugares.municipio (id, nombre) FROM stdin;
    lugares          postgres    false    222   ?w       [          0    16884    ofertas 
   TABLE DATA           o   COPY ofertas.ofertas (titulo, descripcion, municipio, "empresaId", id, nombre, id_oferta, salario) FROM stdin;
    ofertas          postgres    false    224   Bx       ^          0    16891    rol 
   TABLE DATA           $   COPY rol.rol (id, tipo) FROM stdin;
    rol          postgres    false    227   _x       `          0    16895    valor1 
   TABLE DATA           -   COPY salarios.valor1 (id, valor) FROM stdin;
    salarios          postgres    false    229   |x       b          0    16899    universidad 
   TABLE DATA           8   COPY universidades.universidad (id, nombre) FROM stdin;
    universidades          postgres    false    231   ?x       d          0    16903    administrador 
   TABLE DATA           X   COPY usuario.administrador (id, nombre, apellido, usuario, contrasena, rol) FROM stdin;
    usuario          postgres    false    233   [y       f          0    16907 	   aspirante 
   TABLE DATA           ?   COPY usuario.aspirante (nombre, apellido, usuario, contrasena, rol, correo, id, token, session, ultima_modificacion, vencimiento_token, identificacion) FROM stdin;
    usuario          postgres    false    235   xy       h          0    16913    empresa 
   TABLE DATA           ?   COPY usuario.empresa (id, nombre, usuario, contrasena, rol, correo, direccion, "telefono_Id", session, token, ultima_modificacion, vencimiento_token) FROM stdin;
    usuario          postgres    false    237   ?y       ?           0    0    aplicados_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('aplicaciones.aplicados_id_seq', 2, true);
          aplicaciones          postgres    false    245            ?           0    0    carrera_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('carreras.carrera_id_seq', 1, false);
          carreras          postgres    false    221            ?           0    0    competencias_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('competencias.competencias_id_seq', 1, false);
          competencias          postgres    false    241            ?           0    0    curriculum_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('curriculum.curriculum_id_seq', 3, true);
       
   curriculum          postgres    false    243            ?           0    0    experiencia_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('experiencia.experiencia_id_seq', 1, false);
          experiencia          postgres    false    239            ?           0    0    municipio_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('lugares.municipio_id_seq', 9, true);
          lugares          postgres    false    223            ?           0    0    ofertas_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('ofertas.ofertas_id_seq', 28, true);
          ofertas          postgres    false    225            ?           0    0    ofertas_salario_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('ofertas.ofertas_salario_seq', 2, true);
          ofertas          postgres    false    226            ?           0    0 
   rol_id_seq    SEQUENCE SET     6   SELECT pg_catalog.setval('rol.rol_id_seq', 1, false);
          rol          postgres    false    228            ?           0    0    valor1_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('salarios.valor1_id_seq', 1, false);
          salarios          postgres    false    230            ?           0    0    universidad_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('universidades.universidad_id_seq', 1, true);
          universidades          postgres    false    232            ?           0    0    administrador_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('usuario.administrador_id_seq', 1, false);
          usuario          postgres    false    234            ?           0    0    aspirante_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('usuario.aspirante_id_seq', 24, true);
          usuario          postgres    false    236            ?           0    0    empresa_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('usuario.empresa_id_seq', 22, true);
          usuario          postgres    false    238            ?           2606    33040    aplicados aplicados_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY aplicaciones.aplicados
    ADD CONSTRAINT aplicados_pkey PRIMARY KEY (id_empresa);
 H   ALTER TABLE ONLY aplicaciones.aplicados DROP CONSTRAINT aplicados_pkey;
       aplicaciones            postgres    false    246            ?           2606    16934    carrera carrera_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY carreras.carrera
    ADD CONSTRAINT carrera_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY carreras.carrera DROP CONSTRAINT carrera_pkey;
       carreras            postgres    false    220            ?           2606    32790    competencias competencias_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY competencias.competencias
    ADD CONSTRAINT competencias_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY competencias.competencias DROP CONSTRAINT competencias_pkey;
       competencias            postgres    false    242            ?           2606    32990    curriculum curriculum_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY curriculum.curriculum
    ADD CONSTRAINT curriculum_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY curriculum.curriculum DROP CONSTRAINT curriculum_pkey;
    
   curriculum            postgres    false    244            ?           2606    32781    experiencia experiencia_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY experiencia.experiencia
    ADD CONSTRAINT experiencia_pkey PRIMARY KEY (id);
 K   ALTER TABLE ONLY experiencia.experiencia DROP CONSTRAINT experiencia_pkey;
       experiencia            postgres    false    240            ?           2606    16938    municipio municipio_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY lugares.municipio
    ADD CONSTRAINT municipio_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY lugares.municipio DROP CONSTRAINT municipio_pkey;
       lugares            postgres    false    222            ?           2606    16940    ofertas ofertas_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY ofertas.ofertas
    ADD CONSTRAINT ofertas_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY ofertas.ofertas DROP CONSTRAINT ofertas_pkey;
       ofertas            postgres    false    224            ?           2606    16942    rol pk_rol_rol 
   CONSTRAINT     I   ALTER TABLE ONLY rol.rol
    ADD CONSTRAINT pk_rol_rol PRIMARY KEY (id);
 5   ALTER TABLE ONLY rol.rol DROP CONSTRAINT pk_rol_rol;
       rol            postgres    false    227            ?           2606    16944    valor1 valor1_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY salarios.valor1
    ADD CONSTRAINT valor1_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY salarios.valor1 DROP CONSTRAINT valor1_pkey;
       salarios            postgres    false    229            ?           2606    16946    universidad universidad_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY universidades.universidad
    ADD CONSTRAINT universidad_pkey PRIMARY KEY (id);
 M   ALTER TABLE ONLY universidades.universidad DROP CONSTRAINT universidad_pkey;
       universidades            postgres    false    231            ?           2606    16948    aspirante aspirante_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY usuario.aspirante
    ADD CONSTRAINT aspirante_pkey PRIMARY KEY (id);
 C   ALTER TABLE ONLY usuario.aspirante DROP CONSTRAINT aspirante_pkey;
       usuario            postgres    false    235            ?           2606    16950    empresa empresa_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY usuario.empresa
    ADD CONSTRAINT empresa_pkey PRIMARY KEY (id);
 ?   ALTER TABLE ONLY usuario.empresa DROP CONSTRAINT empresa_pkey;
       usuario            postgres    false    237            ?           2606    16952 &   administrador id_usuario_administrador 
   CONSTRAINT     e   ALTER TABLE ONLY usuario.administrador
    ADD CONSTRAINT id_usuario_administrador PRIMARY KEY (id);
 Q   ALTER TABLE ONLY usuario.administrador DROP CONSTRAINT id_usuario_administrador;
       usuario            postgres    false    233            q      x?????? ? ?      W   g   x?U?1?@??+xRB?G??? ??N+?mt??
t????#-V? ?e?q?r??_?n;??p????2??'???Lc???????$????~?*2gZ{"?<?)      m   \   x?U?;? ??=' ??ki???("?>@ooM;S?%ys?A?????|???oDS????6?{.?U???|??^?L6????9$????(      o      x?????? ? ?      k   ,   x?3?4S?M-N-?2?4TH<?1?????2?4????b???? )??      Y   i   x?3?t??JL>?????5G!(?81????-19?$?$?(a??V?W??e????R???e???_\X?Z??e?\??????rYpFe ????e	46=??;F??? ?F!)      [      x?????? ? ?      ^      x?????? ? ?      `   &   x?3?44 .#N#(????2?4??L9M??=... ???      b   ?   x?u?;?@??)|$~@? -??k!K9???Qq?\???y?f?*={#?&???$J5y$X?m;???e?+!?	*??*?????e1??S/??2?FE^?_wK.?0??p&?|>`??=??t2g??:?7??hY????<?? ?a?O1      d      x?????? ? ?      f      x?????? ? ?      h      x?????? ? ?     