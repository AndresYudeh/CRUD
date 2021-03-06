PGDMP     	    %                 z            crud    14.1    14.1 L    Q           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            R           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            S           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            T           1262    18560    crud    DATABASE     `   CREATE DATABASE crud WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'Spanish_Spain.1252';
    DROP DATABASE crud;
                postgres    false            ?            1259    19033    caracteristica_de_nino    TABLE     ?   CREATE TABLE public.caracteristica_de_nino (
    enfermedades character(250) NOT NULL,
    alergias character(250) NOT NULL,
    discapacidades character(250) NOT NULL,
    indicaciones character(250) NOT NULL,
    cedula_nino character(250) NOT NULL
);
 *   DROP TABLE public.caracteristica_de_nino;
       public         heap    postgres    false            ?            1259    19041    cliente    TABLE     W  CREATE TABLE public.cliente (
    id_cliente integer NOT NULL,
    cedula character(250) NOT NULL,
    cedula_nino character(250) NOT NULL,
    nombre character(250) NOT NULL,
    apellido character(250) NOT NULL,
    ideologia character(250) NOT NULL,
    correo character(250) NOT NULL,
    cell_1 text NOT NULL,
    cell_2 text NOT NULL
);
    DROP TABLE public.cliente;
       public         heap    postgres    false            ?            1259    19040    cliente_id_cliente_seq    SEQUENCE     ?   CREATE SEQUENCE public.cliente_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cliente_id_cliente_seq;
       public          postgres    false    211            U           0    0    cliente_id_cliente_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cliente_id_cliente_seq OWNED BY public.cliente.id_cliente;
          public          postgres    false    210            ?            1259    19056 	   domicilio    TABLE     ?   CREATE TABLE public.domicilio (
    direccion character(250) NOT NULL,
    id_cliente integer NOT NULL,
    cedula character(250) NOT NULL,
    ciudad character(250) NOT NULL,
    telefono integer NOT NULL
);
    DROP TABLE public.domicilio;
       public         heap    postgres    false            ?            1259    19055    domicilio_id_cliente_seq    SEQUENCE     ?   CREATE SEQUENCE public.domicilio_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.domicilio_id_cliente_seq;
       public          postgres    false    213            V           0    0    domicilio_id_cliente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.domicilio_id_cliente_seq OWNED BY public.domicilio.id_cliente;
          public          postgres    false    212            ?            1259    19064    factura    TABLE     ?   CREATE TABLE public.factura (
    id_factura character(250) NOT NULL,
    id_pago character(250) NOT NULL,
    monto_de_pago integer,
    fecha_de_pago date NOT NULL
);
    DROP TABLE public.factura;
       public         heap    postgres    false            ?            1259    19072    ninero    TABLE     v  CREATE TABLE public.ninero (
    id_ninero integer NOT NULL,
    nombre_ni character(250) NOT NULL,
    apellido_ni character(250) NOT NULL,
    cedula_ni character(250) NOT NULL,
    ideologia_ni character(250) NOT NULL,
    nacimiento date NOT NULL,
    correo_ni character(250) NOT NULL,
    cell_ni character varying(10) NOT NULL,
    valor_por_hora integer NOT NULL
);
    DROP TABLE public.ninero;
       public         heap    postgres    false            ?            1259    19071    ninero_id_ninero_seq    SEQUENCE     ?   CREATE SEQUENCE public.ninero_id_ninero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.ninero_id_ninero_seq;
       public          postgres    false    216            W           0    0    ninero_id_ninero_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.ninero_id_ninero_seq OWNED BY public.ninero.id_ninero;
          public          postgres    false    215            ?            1259    19082    nino    TABLE     ?   CREATE TABLE public.nino (
    cedula_nino character(250) NOT NULL,
    nombre_nino character(250) NOT NULL,
    apellido_nino character(250) NOT NULL,
    nacimiento_nino date NOT NULL
);
    DROP TABLE public.nino;
       public         heap    postgres    false            ?            1259    19090    ocupacion_ninero    TABLE     ?   CREATE TABLE public.ocupacion_ninero (
    id_ninero integer NOT NULL,
    aficion character(250) NOT NULL,
    cedula_ni character(250) NOT NULL
);
 $   DROP TABLE public.ocupacion_ninero;
       public         heap    postgres    false            ?            1259    19089    ocupacion_ninero_id_ninero_seq    SEQUENCE     ?   CREATE SEQUENCE public.ocupacion_ninero_id_ninero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.ocupacion_ninero_id_ninero_seq;
       public          postgres    false    219            X           0    0    ocupacion_ninero_id_ninero_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.ocupacion_ninero_id_ninero_seq OWNED BY public.ocupacion_ninero.id_ninero;
          public          postgres    false    218            ?            1259    19098    pago    TABLE     ?   CREATE TABLE public.pago (
    id_pago character(250) NOT NULL,
    metodo_de_pago character(250) NOT NULL,
    monto_de_pago integer NOT NULL,
    fecha_de_pago date NOT NULL,
    id_solicitud character varying(250) NOT NULL
);
    DROP TABLE public.pago;
       public         heap    postgres    false            ?            1259    19106    referencias    TABLE     ?   CREATE TABLE public.referencias (
    referencia_ni character(250) NOT NULL,
    id_ninero integer NOT NULL,
    cedula_ni character(250) NOT NULL,
    "rf_aÑo" character varying(4) NOT NULL
);
    DROP TABLE public.referencias;
       public         heap    postgres    false            ?            1259    19105    referencias_id_ninero_seq    SEQUENCE     ?   CREATE SEQUENCE public.referencias_id_ninero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.referencias_id_ninero_seq;
       public          postgres    false    222            Y           0    0    referencias_id_ninero_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.referencias_id_ninero_seq OWNED BY public.referencias.id_ninero;
          public          postgres    false    221            ?            1259    19116 	   solicitud    TABLE     ?  CREATE TABLE public.solicitud (
    id_solicitud character(250) NOT NULL,
    fecha_ingreso timestamp without time zone NOT NULL,
    fecha_salida timestamp without time zone NOT NULL,
    estado_de_solicitud character(1) NOT NULL,
    observaciones character(250) NOT NULL,
    id_cliente integer NOT NULL,
    cedula character(250) NOT NULL,
    id_ninero integer NOT NULL,
    cedula_ni character(250) NOT NULL,
    calificacion integer NOT NULL
);
    DROP TABLE public.solicitud;
       public         heap    postgres    false            ?            1259    19114    solicitud_id_cliente_seq    SEQUENCE     ?   CREATE SEQUENCE public.solicitud_id_cliente_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.solicitud_id_cliente_seq;
       public          postgres    false    225            Z           0    0    solicitud_id_cliente_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.solicitud_id_cliente_seq OWNED BY public.solicitud.id_cliente;
          public          postgres    false    223            ?            1259    19115    solicitud_id_ninero_seq    SEQUENCE     ?   CREATE SEQUENCE public.solicitud_id_ninero_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.solicitud_id_ninero_seq;
       public          postgres    false    225            [           0    0    solicitud_id_ninero_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.solicitud_id_ninero_seq OWNED BY public.solicitud.id_ninero;
          public          postgres    false    224            ?           2604    19044    cliente id_cliente    DEFAULT     x   ALTER TABLE ONLY public.cliente ALTER COLUMN id_cliente SET DEFAULT nextval('public.cliente_id_cliente_seq'::regclass);
 A   ALTER TABLE public.cliente ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    211    210    211            ?           2604    19059    domicilio id_cliente    DEFAULT     |   ALTER TABLE ONLY public.domicilio ALTER COLUMN id_cliente SET DEFAULT nextval('public.domicilio_id_cliente_seq'::regclass);
 C   ALTER TABLE public.domicilio ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    212    213    213            ?           2604    19075    ninero id_ninero    DEFAULT     t   ALTER TABLE ONLY public.ninero ALTER COLUMN id_ninero SET DEFAULT nextval('public.ninero_id_ninero_seq'::regclass);
 ?   ALTER TABLE public.ninero ALTER COLUMN id_ninero DROP DEFAULT;
       public          postgres    false    215    216    216            ?           2604    19093    ocupacion_ninero id_ninero    DEFAULT     ?   ALTER TABLE ONLY public.ocupacion_ninero ALTER COLUMN id_ninero SET DEFAULT nextval('public.ocupacion_ninero_id_ninero_seq'::regclass);
 I   ALTER TABLE public.ocupacion_ninero ALTER COLUMN id_ninero DROP DEFAULT;
       public          postgres    false    218    219    219            ?           2604    19109    referencias id_ninero    DEFAULT     ~   ALTER TABLE ONLY public.referencias ALTER COLUMN id_ninero SET DEFAULT nextval('public.referencias_id_ninero_seq'::regclass);
 D   ALTER TABLE public.referencias ALTER COLUMN id_ninero DROP DEFAULT;
       public          postgres    false    222    221    222            ?           2604    19119    solicitud id_cliente    DEFAULT     |   ALTER TABLE ONLY public.solicitud ALTER COLUMN id_cliente SET DEFAULT nextval('public.solicitud_id_cliente_seq'::regclass);
 C   ALTER TABLE public.solicitud ALTER COLUMN id_cliente DROP DEFAULT;
       public          postgres    false    225    223    225            ?           2604    19120    solicitud id_ninero    DEFAULT     z   ALTER TABLE ONLY public.solicitud ALTER COLUMN id_ninero SET DEFAULT nextval('public.solicitud_id_ninero_seq'::regclass);
 B   ALTER TABLE public.solicitud ALTER COLUMN id_ninero DROP DEFAULT;
       public          postgres    false    224    225    225            >          0    19033    caracteristica_de_nino 
   TABLE DATA           s   COPY public.caracteristica_de_nino (enfermedades, alergias, discapacidades, indicaciones, cedula_nino) FROM stdin;
    public          postgres    false    209   _`       @          0    19041    cliente 
   TABLE DATA           w   COPY public.cliente (id_cliente, cedula, cedula_nino, nombre, apellido, ideologia, correo, cell_1, cell_2) FROM stdin;
    public          postgres    false    211   .b       B          0    19056 	   domicilio 
   TABLE DATA           T   COPY public.domicilio (direccion, id_cliente, cedula, ciudad, telefono) FROM stdin;
    public          postgres    false    213   ?d       C          0    19064    factura 
   TABLE DATA           T   COPY public.factura (id_factura, id_pago, monto_de_pago, fecha_de_pago) FROM stdin;
    public          postgres    false    214   /f       E          0    19072    ninero 
   TABLE DATA           ?   COPY public.ninero (id_ninero, nombre_ni, apellido_ni, cedula_ni, ideologia_ni, nacimiento, correo_ni, cell_ni, valor_por_hora) FROM stdin;
    public          postgres    false    216   ?f       F          0    19082    nino 
   TABLE DATA           X   COPY public.nino (cedula_nino, nombre_nino, apellido_nino, nacimiento_nino) FROM stdin;
    public          postgres    false    217   _i       H          0    19090    ocupacion_ninero 
   TABLE DATA           I   COPY public.ocupacion_ninero (id_ninero, aficion, cedula_ni) FROM stdin;
    public          postgres    false    219   ?j       I          0    19098    pago 
   TABLE DATA           c   COPY public.pago (id_pago, metodo_de_pago, monto_de_pago, fecha_de_pago, id_solicitud) FROM stdin;
    public          postgres    false    220   ?l       K          0    19106    referencias 
   TABLE DATA           U   COPY public.referencias (referencia_ni, id_ninero, cedula_ni, "rf_aÑo") FROM stdin;
    public          postgres    false    222   xm       N          0    19116 	   solicitud 
   TABLE DATA           ?   COPY public.solicitud (id_solicitud, fecha_ingreso, fecha_salida, estado_de_solicitud, observaciones, id_cliente, cedula, id_ninero, cedula_ni, calificacion) FROM stdin;
    public          postgres    false    225   Vo       \           0    0    cliente_id_cliente_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.cliente_id_cliente_seq', 8, true);
          public          postgres    false    210            ]           0    0    domicilio_id_cliente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.domicilio_id_cliente_seq', 1, false);
          public          postgres    false    212            ^           0    0    ninero_id_ninero_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.ninero_id_ninero_seq', 9, true);
          public          postgres    false    215            _           0    0    ocupacion_ninero_id_ninero_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.ocupacion_ninero_id_ninero_seq', 1, false);
          public          postgres    false    218            `           0    0    referencias_id_ninero_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.referencias_id_ninero_seq', 1, false);
          public          postgres    false    221            a           0    0    solicitud_id_cliente_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.solicitud_id_cliente_seq', 1, false);
          public          postgres    false    223            b           0    0    solicitud_id_ninero_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.solicitud_id_ninero_seq', 1, false);
          public          postgres    false    224            ?           2606    19052    cliente cliente_cedula_key 
   CONSTRAINT     W   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_cedula_key UNIQUE (cedula);
 D   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_cedula_key;
       public            postgres    false    211            ?           2606    19054    cliente cliente_cedula_nino_key 
   CONSTRAINT     a   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_cedula_nino_key UNIQUE (cedula_nino);
 I   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_cedula_nino_key;
       public            postgres    false    211            ?           2606    19050    cliente cliente_id_cliente_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_id_cliente_key UNIQUE (id_cliente);
 H   ALTER TABLE ONLY public.cliente DROP CONSTRAINT cliente_id_cliente_key;
       public            postgres    false    211            ?           2606    19081    ninero ninero_cedula_ni_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.ninero
    ADD CONSTRAINT ninero_cedula_ni_key UNIQUE (cedula_ni);
 E   ALTER TABLE ONLY public.ninero DROP CONSTRAINT ninero_cedula_ni_key;
       public            postgres    false    216            ?           2606    19039 0   caracteristica_de_nino pk_caracteristica_de_nino 
   CONSTRAINT     x   ALTER TABLE ONLY public.caracteristica_de_nino
    ADD CONSTRAINT pk_caracteristica_de_nino PRIMARY KEY (indicaciones);
 Z   ALTER TABLE ONLY public.caracteristica_de_nino DROP CONSTRAINT pk_caracteristica_de_nino;
       public            postgres    false    209            ?           2606    19048    cliente pk_cliente 
   CONSTRAINT     `   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT pk_cliente PRIMARY KEY (id_cliente, cedula);
 <   ALTER TABLE ONLY public.cliente DROP CONSTRAINT pk_cliente;
       public            postgres    false    211    211            ?           2606    19063    domicilio pk_domicilio 
   CONSTRAINT     [   ALTER TABLE ONLY public.domicilio
    ADD CONSTRAINT pk_domicilio PRIMARY KEY (direccion);
 @   ALTER TABLE ONLY public.domicilio DROP CONSTRAINT pk_domicilio;
       public            postgres    false    213            ?           2606    19070    factura pk_factura 
   CONSTRAINT     X   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT pk_factura PRIMARY KEY (id_factura);
 <   ALTER TABLE ONLY public.factura DROP CONSTRAINT pk_factura;
       public            postgres    false    214            ?           2606    19097    ocupacion_ninero pk_idninero2 
   CONSTRAINT     b   ALTER TABLE ONLY public.ocupacion_ninero
    ADD CONSTRAINT pk_idninero2 PRIMARY KEY (id_ninero);
 G   ALTER TABLE ONLY public.ocupacion_ninero DROP CONSTRAINT pk_idninero2;
       public            postgres    false    219            ?           2606    19104    pago pk_idpago 
   CONSTRAINT     o   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT pk_idpago PRIMARY KEY (id_pago, monto_de_pago, fecha_de_pago);
 8   ALTER TABLE ONLY public.pago DROP CONSTRAINT pk_idpago;
       public            postgres    false    220    220    220            ?           2606    19079    ninero pk_ninero 
   CONSTRAINT     `   ALTER TABLE ONLY public.ninero
    ADD CONSTRAINT pk_ninero PRIMARY KEY (id_ninero, cedula_ni);
 :   ALTER TABLE ONLY public.ninero DROP CONSTRAINT pk_ninero;
       public            postgres    false    216    216            ?           2606    19088    nino pk_nino 
   CONSTRAINT     S   ALTER TABLE ONLY public.nino
    ADD CONSTRAINT pk_nino PRIMARY KEY (cedula_nino);
 6   ALTER TABLE ONLY public.nino DROP CONSTRAINT pk_nino;
       public            postgres    false    217            ?           2606    19113    referencias pk_referencia 
   CONSTRAINT     b   ALTER TABLE ONLY public.referencias
    ADD CONSTRAINT pk_referencia PRIMARY KEY (referencia_ni);
 C   ALTER TABLE ONLY public.referencias DROP CONSTRAINT pk_referencia;
       public            postgres    false    222            ?           2606    19124    solicitud pk_solicitud 
   CONSTRAINT     ^   ALTER TABLE ONLY public.solicitud
    ADD CONSTRAINT pk_solicitud PRIMARY KEY (id_solicitud);
 @   ALTER TABLE ONLY public.solicitud DROP CONSTRAINT pk_solicitud;
       public            postgres    false    225            ?           2606    19165    solicitud fk_relationship_10    FK CONSTRAINT     ?   ALTER TABLE ONLY public.solicitud
    ADD CONSTRAINT fk_relationship_10 FOREIGN KEY (id_cliente, cedula) REFERENCES public.cliente(id_cliente, cedula);
 F   ALTER TABLE ONLY public.solicitud DROP CONSTRAINT fk_relationship_10;
       public          postgres    false    225    211    225    211    3222            ?           2606    19135    domicilio fk_relationship_11    FK CONSTRAINT     ?   ALTER TABLE ONLY public.domicilio
    ADD CONSTRAINT fk_relationship_11 FOREIGN KEY (id_cliente, cedula) REFERENCES public.cliente(id_cliente, cedula) ON UPDATE RESTRICT ON DELETE RESTRICT;
 F   ALTER TABLE ONLY public.domicilio DROP CONSTRAINT fk_relationship_11;
       public          postgres    false    211    211    3222    213    213            ?           2606    19125 )   caracteristica_de_nino fk_relationship_12    FK CONSTRAINT     ?   ALTER TABLE ONLY public.caracteristica_de_nino
    ADD CONSTRAINT fk_relationship_12 FOREIGN KEY (cedula_nino) REFERENCES public.nino(cedula_nino) ON UPDATE RESTRICT ON DELETE RESTRICT;
 S   ALTER TABLE ONLY public.caracteristica_de_nino DROP CONSTRAINT fk_relationship_12;
       public          postgres    false    3232    209    217            ?           2606    19150    pago fk_relationship_13    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT fk_relationship_13 FOREIGN KEY (id_solicitud) REFERENCES public.solicitud(id_solicitud);
 A   ALTER TABLE ONLY public.pago DROP CONSTRAINT fk_relationship_13;
       public          postgres    false    220    225    3240            ?           2606    19140    factura fk_relationship_14    FK CONSTRAINT     ?   ALTER TABLE ONLY public.factura
    ADD CONSTRAINT fk_relationship_14 FOREIGN KEY (id_pago, monto_de_pago, fecha_de_pago) REFERENCES public.pago(id_pago, monto_de_pago, fecha_de_pago) ON UPDATE RESTRICT ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.factura DROP CONSTRAINT fk_relationship_14;
       public          postgres    false    214    220    220    220    3236    214    214            ?           2606    19130    cliente fk_relationship_15    FK CONSTRAINT     ?   ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT fk_relationship_15 FOREIGN KEY (cedula_nino) REFERENCES public.nino(cedula_nino) ON UPDATE RESTRICT ON DELETE RESTRICT;
 D   ALTER TABLE ONLY public.cliente DROP CONSTRAINT fk_relationship_15;
       public          postgres    false    3232    211    217            ?           2606    19160    referencias fk_relationship_4    FK CONSTRAINT     ?   ALTER TABLE ONLY public.referencias
    ADD CONSTRAINT fk_relationship_4 FOREIGN KEY (id_ninero, cedula_ni) REFERENCES public.ninero(id_ninero, cedula_ni) ON UPDATE RESTRICT ON DELETE RESTRICT;
 G   ALTER TABLE ONLY public.referencias DROP CONSTRAINT fk_relationship_4;
       public          postgres    false    3230    222    222    216    216            ?           2606    19145 "   ocupacion_ninero fk_relationship_5    FK CONSTRAINT     ?   ALTER TABLE ONLY public.ocupacion_ninero
    ADD CONSTRAINT fk_relationship_5 FOREIGN KEY (id_ninero, cedula_ni) REFERENCES public.ninero(id_ninero, cedula_ni) ON UPDATE RESTRICT ON DELETE RESTRICT;
 L   ALTER TABLE ONLY public.ocupacion_ninero DROP CONSTRAINT fk_relationship_5;
       public          postgres    false    219    216    219    3230    216            ?           2606    19155    pago fk_relationship_55    FK CONSTRAINT     ?   ALTER TABLE ONLY public.pago
    ADD CONSTRAINT fk_relationship_55 FOREIGN KEY (id_solicitud) REFERENCES public.solicitud(id_solicitud) ON UPDATE RESTRICT ON DELETE RESTRICT;
 A   ALTER TABLE ONLY public.pago DROP CONSTRAINT fk_relationship_55;
       public          postgres    false    220    225    3240            ?           2606    19170    solicitud fk_relationship_7    FK CONSTRAINT     ?   ALTER TABLE ONLY public.solicitud
    ADD CONSTRAINT fk_relationship_7 FOREIGN KEY (id_ninero, cedula_ni) REFERENCES public.ninero(id_ninero, cedula_ni);
 E   ALTER TABLE ONLY public.solicitud DROP CONSTRAINT fk_relationship_7;
       public          postgres    false    3230    216    216    225    225            >   ?  x?홿n?0?gx?{?(?	?'?e????n?
??Ʃ?83t?3?b54?*??*[?????w??|??W??h})Ѳ)??@c_??? ?Q???v\2?e?a??#=(=?????|?dE?f??Q|#^??K???%Ӫ??8ܪ:???堳^q???~?{n1OH???????9??.]?Fɨ???m]q3??2?:?9?i???????HYdɌd?????nhC??n|?r?})?:????z??H?	?7?5??ު?+|??xn??kܘ?Z? ??YO??U>Q	?i]?OIҼ\d9IBG?M|펴??0@?,????fG\??????????l?g_?{n??(???sCw)!???3???n??????7;?H????n&???A??c????5??iY?????N??"?7;??Ϟ;M??6?[o7↮o粔???w?0???(XQ|      @   m  x???=??0?k?:?????8?g?Ҍ%b-C??2?&H?3?b?)r??WM?	??H0??5ZH???ĄԮ??	Y?Jn?]覱~?P?Jn??Ѕ????????H???C??	????f????߆7??r?~xj?SiO??x#?v?(????H?*??WGA??si<⿴??b!?/a^??N??mb{Xb?C?0?҆??2??=?? ??wFq?8?????T
???t+???[??	?ڨ?Vr?ma?????!?(?v???P??~?8?6?O?????S%cW??8j?䞨t"??F(?K[̭D~?????Vr?=????1?_???p??f??2???h?O??FHŝO?_[???W&?'?i??*)??Wtm"~????/???W??H??f2?2?!?.7??G??R??L? ?????+ Ӓ???t??u?!J[?-??0??&vS????//xt$??{?2?[?f?3A???.O?]???T??D??ԏ??$ɏןՍ/m%??'躟???????w?_?n??de???_)?ܓ?ϽѶY?D?N?4V???9M?7>??D??#\?wĶ?[2?{T???
td??D??G|??0D????Rg%c?2N???SUU𺅯      B   t  x???Aj?0E??)t?$X#ɒ????????:?(??N ???4??j!??_???g?޻???Of??[V`YZ&ى??Vn?Ԋ??n\???<??U?c??????l?3???????K??7ՙ\?F˱?<?I?&?r`????v???_f??????e0v??B?`~?*?!??e?`??k??j~???K??t0wD???`>?P?\??O???b~?????U}??!?A@t?vT}???􇝡g?_?b[???p?4L??l???????~??Ȟ?7?6????z?T?h}?Z?.,?ߍ?m?+Dv?'Fq1_?????3?搹???/,/SG@|???|?*H????(?7?}E)?-?K?      C   ?   x?喱?0c\??dL?~@?????%\???vfG?q??!?>gX?6??f??5?{$U?d4????DUW{(Y8{4U?Zo@?*{4U}??+h`eO??????xE{4U??	??4?$h ?zw@?;??'q@Q?}܁?໤?~TLQ?      E   c  x???An?0EףS?
H??]g?E]h7-??DD"@:
?ܪg??:t?A\L?	????8Rp????zrD?J??<??b???W?mhC???U???׶???.?Ĝ??mũ??m*x???*\/????^f???4׶??@?U')?`]00???~??? ???$??8?? ?zmj[?Z?B+m+5??qfƾ???z??>?i:?~#????8?v???6NO8$?-?ī? %??Qj[?Z??u+U?;@?!N	H ?zKˏ2?7>?0??1l?{q???ĩ? {k??Rն???.?,????VY?h??Ȑ??UR???????)N#u???
????&?+?@qy?&8?j[?Z?+`?eV?{??;P*???v?h????qa@??!>3????]??#В6??k8??k???\?-?????Ü?q??_???x@q?9??O ??:?d?mek1_???VK8R??O????EK??	S?S?~???^?F?,Xm?=?;k????=O???
Hp?O???2.?]?P??)??Oa???) ?um+[??L ????C^?r???R????7??????0l      F   ?  x???]N!???U???????3IM_????!?:	?4??rnLk?
??o???p Q5]-43?#??N??1u???[5??/K_pzshl?@!?C?x?xW@ɹ??? ?Sņ???5t5???e%?/?;Y?[????y"ܗ??L??~P??e?T?!??ͬ??Y"CVf??͠?n???g?:Q4??܇:?/+????Sņ\?_??W???5?ѿy????>g\\{?.4U?:UlH?w????[=?8@??˄?n?3??Ϲ?????»*_??:UlH??7Z?^?j?i??-??=.O????5?-?^?UצN?y??ҍs??.???O?>?C>?{?y???_??Z>??S?&l??=????z3?lp???;?????~???????E??@      H   w  x?喽n?0?g?????!2u?r1N????6??8;t?֕?5j??"=X?H?=?:KN?ZJZ??z8??HaP^(?;x,%Y???Ң^???byrP?G%??i@zxO??8???G?[|??f????,-VD??????o??O?;	???(?T=ROb??????Mnz<}??uųbm+K??[׷?4?=?A\??ӗ??e?t???!??8??O??%??<?ֶ??XS??ٺ?җ????,?<??KP???¾Ӽ?k?T?Z???b????2B????)?Z?ϰ????F'??~??????????)??wū???'?}o??>?<a?5}G???0??D????5?6k[YZ?e???M*      I   ?   x???;?0k??@?]??? ???%MP\@??R????H@??+vN0??y?6ĉJ̡.q??>&?x:?W??j??8r??K97??mrh-?l??+
?Y?B)!8	???0hv?|JABB@{aP??O!B????'????????J	?@{a??~S5	??6??XJ?????A??0_??u$0I???#?/???<?k??!?e?#??=f??./~E      K   ?  x???Kn?0???)? A ?I?$^6??vS???8uYP?J?F?u?EΠ?u$ÈS?F?.R#?? rF#??籰|%??i0j|$g???_?Q?W(-|??Zkf??Mnؒ|.?$-?2??`zr??ӑ????h?a?h?a?????????B?G????<?'?k????Ϲ??%M?;4??^nQ?L$"?????s??I*??!?7???H???opK??G{D ?H?:????????n?#?"?P???$????WǺ@Z???????a?K?H>i@?A?W?/?2?N?????e ???Zۑ?? ?5?Ҋ??z??sas\U^?y	?T??^????&??;??~|?5v??gAS^eZG??yv??`?KT?hO?o̶
?0?W?>g???f|7o???^c?*??J=r<????n??Ԩ9Ӽj?v???hoT?1???r??o謁Y      N   *  x???͎?0???S?t?q?$?8?b9r?????%N*?qx^??&m9 !??;Uj4r?q??e>|?H*?????%J@q˘??؊??wjo;0FoT???enR???c????Ujg.?L???J?JQ?v?????????n??́?:gC	?Olx?B?????o???FN?+F???h׫??f?`?A?%?į^??ix
Km?;??@?N???????zy??DVI?K?ڙKk?DQ??J?̥5?!O?FM??9????????a?????Z????3$?7?~??˪H.H2?@?}0???|? ?'lmsM?Q???`???]7???j??N?n????:?t?+?h????+}??|ޡ[?8???????+&9L?yL?P?
N.H2l???H??Ȁ?36 ι?޿I?l*?%7Ǽ????*?(+N?)7?Ej7?h???V??)??`Cφkx??eEH?c/?^_*n%??|E??@.W5q????Ӽ??s???`A????3???+_?>5;;f?+??<4?}@?ʘ8??????y^?R ??m?p ??Q3??Ƕ???5???(?Bx?vA6?bƢ?G8 ???d?	?m:??g?
J???p =??Hd??H???76?x\T???XR??gDg7??*????5?????8?K?Y7<?8?ЮVFw?ʀ??^_h1I7#CM???=j?? g5E?M??>L??NB????
?C???~???}?+w-??gѮ)?1??>j?@u>?m?H??@??4?AE?7?+?FM?????h;?)貁??'?5????b?9?M     