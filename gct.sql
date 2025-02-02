PGDMP                         |           GCT    14.10    15.3 t    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    33526    GCT    DATABASE     g   CREATE DATABASE "GCT" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'C';
    DROP DATABASE "GCT";
                postgres    false                        2615    2200    public    SCHEMA     2   -- *not* creating schema, since initdb creates it
 2   -- *not* dropping schema, since initdb creates it
                postgres    false            �           0    0    SCHEMA public    ACL     Q   REVOKE USAGE ON SCHEMA public FROM PUBLIC;
GRANT ALL ON SCHEMA public TO PUBLIC;
                   postgres    false    4            �            1259    42038    achievements    TABLE     �   CREATE TABLE public.achievements (
    id bigint NOT NULL,
    achievementdate timestamp(6) without time zone,
    achievementdescription text,
    achievementname character varying(100),
    studentid integer
);
     DROP TABLE public.achievements;
       public         heap    postgres    false    4            �            1259    42037    achievements_id_seq    SEQUENCE     �   CREATE SEQUENCE public.achievements_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.achievements_id_seq;
       public          postgres    false    4    228            �           0    0    achievements_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.achievements_id_seq OWNED BY public.achievements.id;
          public          postgres    false    227            �            1259    42087    borrows    TABLE     �   CREATE TABLE public.borrows (
    borrow_id integer NOT NULL,
    student_id integer NOT NULL,
    book_id integer NOT NULL,
    borrow_date date NOT NULL,
    return_date timestamp(6) without time zone
);
    DROP TABLE public.borrows;
       public         heap    postgres    false    4            �            1259    42086    borrows_borrow_id_seq    SEQUENCE     �   CREATE SEQUENCE public.borrows_borrow_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.borrows_borrow_id_seq;
       public          postgres    false    233    4            �           0    0    borrows_borrow_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.borrows_borrow_id_seq OWNED BY public.borrows.borrow_id;
          public          postgres    false    232            �            1259    41909    course    TABLE     �   CREATE TABLE public.course (
    id integer NOT NULL,
    code character varying(255) NOT NULL,
    description character varying(255),
    name character varying(255) NOT NULL
);
    DROP TABLE public.course;
       public         heap    postgres    false    4            �            1259    41908    course_id_seq    SEQUENCE     �   CREATE SEQUENCE public.course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.course_id_seq;
       public          postgres    false    226    4            �           0    0    course_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.course_id_seq OWNED BY public.course.id;
          public          postgres    false    225            �            1259    41751    course_staff    TABLE     c   CREATE TABLE public.course_staff (
    staff_id bigint NOT NULL,
    course_id integer NOT NULL
);
     DROP TABLE public.course_staff;
       public         heap    postgres    false    4            �            1259    41736    course_student    TABLE     h   CREATE TABLE public.course_student (
    course_id integer NOT NULL,
    student_id integer NOT NULL
);
 "   DROP TABLE public.course_student;
       public         heap    postgres    false    4            �            1259    33606    courseoffered    TABLE     �   CREATE TABLE public.courseoffered (
    id integer NOT NULL,
    course_id integer,
    staff_id integer,
    semester character varying(20) NOT NULL,
    year integer NOT NULL,
    total_seats integer NOT NULL,
    available_seats integer NOT NULL
);
 !   DROP TABLE public.courseoffered;
       public         heap    postgres    false    4            �            1259    33605    courseoffered_id_seq    SEQUENCE     �   CREATE SEQUENCE public.courseoffered_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.courseoffered_id_seq;
       public          postgres    false    4    216            �           0    0    courseoffered_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.courseoffered_id_seq OWNED BY public.courseoffered.id;
          public          postgres    false    215            �            1259    42076    librarybook    TABLE       CREATE TABLE public.librarybook (
    book_id integer NOT NULL,
    title character varying(255) NOT NULL,
    author character varying(255) NOT NULL,
    publication_date timestamp(6) without time zone,
    genre character varying(50),
    isbn character varying(130)
);
    DROP TABLE public.librarybook;
       public         heap    postgres    false    4            �            1259    42075    librarybook_book_id_seq    SEQUENCE     �   CREATE SEQUENCE public.librarybook_book_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.librarybook_book_id_seq;
       public          postgres    false    231    4            �           0    0    librarybook_book_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.librarybook_book_id_seq OWNED BY public.librarybook.book_id;
          public          postgres    false    230            �            1259    33644    projecttransaction    TABLE     �   CREATE TABLE public.projecttransaction (
    id integer NOT NULL,
    student_id integer,
    project_name character varying(100) NOT NULL,
    transaction_date date NOT NULL,
    transaction_amount numeric(10,2) NOT NULL
);
 &   DROP TABLE public.projecttransaction;
       public         heap    postgres    false    4            �            1259    33643    projecttransaction_id_seq    SEQUENCE     �   CREATE SEQUENCE public.projecttransaction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.projecttransaction_id_seq;
       public          postgres    false    220    4            �           0    0    projecttransaction_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.projecttransaction_id_seq OWNED BY public.projecttransaction.id;
          public          postgres    false    219            �            1259    33588    staff    TABLE     �   CREATE TABLE public.staff (
    id bigint NOT NULL,
    name character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    designation character varying(100) NOT NULL
);
    DROP TABLE public.staff;
       public         heap    postgres    false    4            �            1259    33587    staff_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staff_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 #   DROP SEQUENCE public.staff_id_seq;
       public          postgres    false    4    212            �           0    0    staff_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE public.staff_id_seq OWNED BY public.staff.id;
          public          postgres    false    211            �            1259    33597    staffdepartment    TABLE     k   CREATE TABLE public.staffdepartment (
    id integer NOT NULL,
    name character varying(100) NOT NULL
);
 #   DROP TABLE public.staffdepartment;
       public         heap    postgres    false    4            �            1259    33596    staffdepartment_id_seq    SEQUENCE     �   CREATE SEQUENCE public.staffdepartment_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.staffdepartment_id_seq;
       public          postgres    false    214    4            �           0    0    staffdepartment_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.staffdepartment_id_seq OWNED BY public.staffdepartment.id;
          public          postgres    false    213            �            1259    33577    student    TABLE       CREATE TABLE public.student (
    id integer NOT NULL,
    email character varying(100) NOT NULL,
    enrollment_no character varying(20) NOT NULL,
    address text,
    phone_number character varying(13),
    first_name character varying(15),
    last_name character varying(15)
);
    DROP TABLE public.student;
       public         heap    postgres    false    4            �            1259    33576    student_id_seq    SEQUENCE     �   CREATE SEQUENCE public.student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.student_id_seq;
       public          postgres    false    4    210            �           0    0    student_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.student_id_seq OWNED BY public.student.id;
          public          postgres    false    209            �            1259    42060    student_studentreport    TABLE     v   CREATE TABLE public.student_studentreport (
    student_id integer NOT NULL,
    studentreport_id integer NOT NULL
);
 )   DROP TABLE public.student_studentreport;
       public         heap    postgres    false    4            �            1259    33625    studentregistration    TABLE     �   CREATE TABLE public.studentregistration (
    id integer NOT NULL,
    student_id integer,
    course_id integer,
    registration_date timestamp(6) without time zone NOT NULL,
    status character varying(20) NOT NULL
);
 '   DROP TABLE public.studentregistration;
       public         heap    postgres    false    4            �            1259    33624    studentregistration_id_seq    SEQUENCE     �   CREATE SEQUENCE public.studentregistration_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.studentregistration_id_seq;
       public          postgres    false    4    218            �           0    0    studentregistration_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.studentregistration_id_seq OWNED BY public.studentregistration.id;
          public          postgres    false    217            �            1259    33656    studentreport    TABLE     �   CREATE TABLE public.studentreport (
    id integer NOT NULL,
    student_id integer,
    course_id integer,
    grade character varying(5) NOT NULL,
    semester character varying(20) NOT NULL
);
 !   DROP TABLE public.studentreport;
       public         heap    postgres    false    4            �            1259    33655    studentreport_id_seq    SEQUENCE     �   CREATE SEQUENCE public.studentreport_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.studentreport_id_seq;
       public          postgres    false    222    4            �           0    0    studentreport_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.studentreport_id_seq OWNED BY public.studentreport.id;
          public          postgres    false    221            �           2604    42051    achievements id    DEFAULT     r   ALTER TABLE ONLY public.achievements ALTER COLUMN id SET DEFAULT nextval('public.achievements_id_seq'::regclass);
 >   ALTER TABLE public.achievements ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    227    228            �           2604    42090    borrows borrow_id    DEFAULT     v   ALTER TABLE ONLY public.borrows ALTER COLUMN borrow_id SET DEFAULT nextval('public.borrows_borrow_id_seq'::regclass);
 @   ALTER TABLE public.borrows ALTER COLUMN borrow_id DROP DEFAULT;
       public          postgres    false    232    233    233            �           2604    41912 	   course id    DEFAULT     f   ALTER TABLE ONLY public.course ALTER COLUMN id SET DEFAULT nextval('public.course_id_seq'::regclass);
 8   ALTER TABLE public.course ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    225    226            �           2604    33609    courseoffered id    DEFAULT     t   ALTER TABLE ONLY public.courseoffered ALTER COLUMN id SET DEFAULT nextval('public.courseoffered_id_seq'::regclass);
 ?   ALTER TABLE public.courseoffered ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            �           2604    42079    librarybook book_id    DEFAULT     z   ALTER TABLE ONLY public.librarybook ALTER COLUMN book_id SET DEFAULT nextval('public.librarybook_book_id_seq'::regclass);
 B   ALTER TABLE public.librarybook ALTER COLUMN book_id DROP DEFAULT;
       public          postgres    false    230    231    231            �           2604    33647    projecttransaction id    DEFAULT     ~   ALTER TABLE ONLY public.projecttransaction ALTER COLUMN id SET DEFAULT nextval('public.projecttransaction_id_seq'::regclass);
 D   ALTER TABLE public.projecttransaction ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            �           2604    41860    staff id    DEFAULT     d   ALTER TABLE ONLY public.staff ALTER COLUMN id SET DEFAULT nextval('public.staff_id_seq'::regclass);
 7   ALTER TABLE public.staff ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    211    212            �           2604    33600    staffdepartment id    DEFAULT     x   ALTER TABLE ONLY public.staffdepartment ALTER COLUMN id SET DEFAULT nextval('public.staffdepartment_id_seq'::regclass);
 A   ALTER TABLE public.staffdepartment ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    214    214            �           2604    33580 
   student id    DEFAULT     h   ALTER TABLE ONLY public.student ALTER COLUMN id SET DEFAULT nextval('public.student_id_seq'::regclass);
 9   ALTER TABLE public.student ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    209    210    210            �           2604    33628    studentregistration id    DEFAULT     �   ALTER TABLE ONLY public.studentregistration ALTER COLUMN id SET DEFAULT nextval('public.studentregistration_id_seq'::regclass);
 E   ALTER TABLE public.studentregistration ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218            �           2604    33659    studentreport id    DEFAULT     t   ALTER TABLE ONLY public.studentreport ALTER COLUMN id SET DEFAULT nextval('public.studentreport_id_seq'::regclass);
 ?   ALTER TABLE public.studentreport ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            �          0    42038    achievements 
   TABLE DATA           o   COPY public.achievements (id, achievementdate, achievementdescription, achievementname, studentid) FROM stdin;
    public          postgres    false    228   t�       �          0    42087    borrows 
   TABLE DATA           [   COPY public.borrows (borrow_id, student_id, book_id, borrow_date, return_date) FROM stdin;
    public          postgres    false    233   3�       �          0    41909    course 
   TABLE DATA           =   COPY public.course (id, code, description, name) FROM stdin;
    public          postgres    false    226   P�       �          0    41751    course_staff 
   TABLE DATA           ;   COPY public.course_staff (staff_id, course_id) FROM stdin;
    public          postgres    false    224   �       �          0    41736    course_student 
   TABLE DATA           ?   COPY public.course_student (course_id, student_id) FROM stdin;
    public          postgres    false    223   +�       ~          0    33606    courseoffered 
   TABLE DATA           n   COPY public.courseoffered (id, course_id, staff_id, semester, year, total_seats, available_seats) FROM stdin;
    public          postgres    false    216   U�       �          0    42076    librarybook 
   TABLE DATA           \   COPY public.librarybook (book_id, title, author, publication_date, genre, isbn) FROM stdin;
    public          postgres    false    231   r�       �          0    33644    projecttransaction 
   TABLE DATA           p   COPY public.projecttransaction (id, student_id, project_name, transaction_date, transaction_amount) FROM stdin;
    public          postgres    false    220   z�       z          0    33588    staff 
   TABLE DATA           =   COPY public.staff (id, name, email, designation) FROM stdin;
    public          postgres    false    212   ��       |          0    33597    staffdepartment 
   TABLE DATA           3   COPY public.staffdepartment (id, name) FROM stdin;
    public          postgres    false    214   ̖       x          0    33577    student 
   TABLE DATA           i   COPY public.student (id, email, enrollment_no, address, phone_number, first_name, last_name) FROM stdin;
    public          postgres    false    210   �       �          0    42060    student_studentreport 
   TABLE DATA           M   COPY public.student_studentreport (student_id, studentreport_id) FROM stdin;
    public          postgres    false    229   ��       �          0    33625    studentregistration 
   TABLE DATA           c   COPY public.studentregistration (id, student_id, course_id, registration_date, status) FROM stdin;
    public          postgres    false    218   ��       �          0    33656    studentreport 
   TABLE DATA           S   COPY public.studentreport (id, student_id, course_id, grade, semester) FROM stdin;
    public          postgres    false    222   "�       �           0    0    achievements_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.achievements_id_seq', 2, true);
          public          postgres    false    227            �           0    0    borrows_borrow_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.borrows_borrow_id_seq', 8, true);
          public          postgres    false    232            �           0    0    course_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.course_id_seq', 10, true);
          public          postgres    false    225            �           0    0    courseoffered_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.courseoffered_id_seq', 1, false);
          public          postgres    false    215            �           0    0    librarybook_book_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.librarybook_book_id_seq', 72, true);
          public          postgres    false    230            �           0    0    projecttransaction_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.projecttransaction_id_seq', 1, false);
          public          postgres    false    219            �           0    0    staff_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.staff_id_seq', 18, true);
          public          postgres    false    211            �           0    0    staffdepartment_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.staffdepartment_id_seq', 1, false);
          public          postgres    false    213            �           0    0    student_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.student_id_seq', 42, true);
          public          postgres    false    209            �           0    0    studentregistration_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.studentregistration_id_seq', 13, true);
          public          postgres    false    217            �           0    0    studentreport_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.studentreport_id_seq', 43, true);
          public          postgres    false    221            �           2606    42053    achievements achievements_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT achievements_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.achievements DROP CONSTRAINT achievements_pkey;
       public            postgres    false    228            �           2606    42092    borrows borrows_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY public.borrows
    ADD CONSTRAINT borrows_pkey PRIMARY KEY (borrow_id);
 >   ALTER TABLE ONLY public.borrows DROP CONSTRAINT borrows_pkey;
       public            postgres    false    233            �           2606    41916    course course_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.course
    ADD CONSTRAINT course_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.course DROP CONSTRAINT course_pkey;
       public            postgres    false    226            �           2606    41850    course_staff course_staff_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public.course_staff
    ADD CONSTRAINT course_staff_pkey PRIMARY KEY (staff_id, course_id);
 H   ALTER TABLE ONLY public.course_staff DROP CONSTRAINT course_staff_pkey;
       public            postgres    false    224    224            �           2606    41740 "   course_student course_student_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY public.course_student
    ADD CONSTRAINT course_student_pkey PRIMARY KEY (course_id, student_id);
 L   ALTER TABLE ONLY public.course_student DROP CONSTRAINT course_student_pkey;
       public            postgres    false    223    223            �           2606    33613 7   courseoffered courseoffered_course_id_semester_year_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.courseoffered
    ADD CONSTRAINT courseoffered_course_id_semester_year_key UNIQUE (course_id, semester, year);
 a   ALTER TABLE ONLY public.courseoffered DROP CONSTRAINT courseoffered_course_id_semester_year_key;
       public            postgres    false    216    216    216            �           2606    33611     courseoffered courseoffered_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.courseoffered
    ADD CONSTRAINT courseoffered_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.courseoffered DROP CONSTRAINT courseoffered_pkey;
       public            postgres    false    216            �           2606    42112     librarybook librarybook_isbn_key 
   CONSTRAINT     [   ALTER TABLE ONLY public.librarybook
    ADD CONSTRAINT librarybook_isbn_key UNIQUE (isbn);
 J   ALTER TABLE ONLY public.librarybook DROP CONSTRAINT librarybook_isbn_key;
       public            postgres    false    231            �           2606    42083    librarybook librarybook_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY public.librarybook
    ADD CONSTRAINT librarybook_pkey PRIMARY KEY (book_id);
 F   ALTER TABLE ONLY public.librarybook DROP CONSTRAINT librarybook_pkey;
       public            postgres    false    231            �           2606    33649 *   projecttransaction projecttransaction_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.projecttransaction
    ADD CONSTRAINT projecttransaction_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.projecttransaction DROP CONSTRAINT projecttransaction_pkey;
       public            postgres    false    220            �           2606    33595    staff staff_email_key 
   CONSTRAINT     Q   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_email_key UNIQUE (email);
 ?   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_email_key;
       public            postgres    false    212            �           2606    41862    staff staff_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_pkey;
       public            postgres    false    212            �           2606    33604 (   staffdepartment staffdepartment_name_key 
   CONSTRAINT     c   ALTER TABLE ONLY public.staffdepartment
    ADD CONSTRAINT staffdepartment_name_key UNIQUE (name);
 R   ALTER TABLE ONLY public.staffdepartment DROP CONSTRAINT staffdepartment_name_key;
       public            postgres    false    214            �           2606    33602 $   staffdepartment staffdepartment_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.staffdepartment
    ADD CONSTRAINT staffdepartment_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.staffdepartment DROP CONSTRAINT staffdepartment_pkey;
       public            postgres    false    214            �           2606    33584    student student_email_key 
   CONSTRAINT     U   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_email_key UNIQUE (email);
 C   ALTER TABLE ONLY public.student DROP CONSTRAINT student_email_key;
       public            postgres    false    210            �           2606    33586 !   student student_enrollment_no_key 
   CONSTRAINT     e   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_enrollment_no_key UNIQUE (enrollment_no);
 K   ALTER TABLE ONLY public.student DROP CONSTRAINT student_enrollment_no_key;
       public            postgres    false    210            �           2606    33582    student student_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public.student
    ADD CONSTRAINT student_pkey PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.student DROP CONSTRAINT student_pkey;
       public            postgres    false    210            �           2606    33630 ,   studentregistration studentregistration_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.studentregistration
    ADD CONSTRAINT studentregistration_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.studentregistration DROP CONSTRAINT studentregistration_pkey;
       public            postgres    false    218            �           2606    33632 @   studentregistration studentregistration_student_id_course_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.studentregistration
    ADD CONSTRAINT studentregistration_student_id_course_id_key UNIQUE (student_id, course_id);
 j   ALTER TABLE ONLY public.studentregistration DROP CONSTRAINT studentregistration_student_id_course_id_key;
       public            postgres    false    218    218            �           2606    33661     studentreport studentreport_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.studentreport
    ADD CONSTRAINT studentreport_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.studentreport DROP CONSTRAINT studentreport_pkey;
       public            postgres    false    222            �           2606    33663 =   studentreport studentreport_student_id_course_id_semester_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.studentreport
    ADD CONSTRAINT studentreport_student_id_course_id_semester_key UNIQUE (student_id, course_id, semester);
 g   ALTER TABLE ONLY public.studentreport DROP CONSTRAINT studentreport_student_id_course_id_semester_key;
       public            postgres    false    222    222    222            �           2606    41918 #   course uk_i60mruj0y7a7vs99dqpiye7en 
   CONSTRAINT     ^   ALTER TABLE ONLY public.course
    ADD CONSTRAINT uk_i60mruj0y7a7vs99dqpiye7en UNIQUE (code);
 M   ALTER TABLE ONLY public.course DROP CONSTRAINT uk_i60mruj0y7a7vs99dqpiye7en;
       public            postgres    false    226            �           2606    42064 2   student_studentreport uk_nveqs80xibv0i3hhs0b03dia6 
   CONSTRAINT     y   ALTER TABLE ONLY public.student_studentreport
    ADD CONSTRAINT uk_nveqs80xibv0i3hhs0b03dia6 UNIQUE (studentreport_id);
 \   ALTER TABLE ONLY public.student_studentreport DROP CONSTRAINT uk_nveqs80xibv0i3hhs0b03dia6;
       public            postgres    false    229            �           2606    42046    achievements Student_id    FK CONSTRAINT     |   ALTER TABLE ONLY public.achievements
    ADD CONSTRAINT "Student_id" FOREIGN KEY (studentid) REFERENCES public.student(id);
 C   ALTER TABLE ONLY public.achievements DROP CONSTRAINT "Student_id";
       public          postgres    false    3508    210    228            �           2606    42098    borrows borrows_book_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.borrows
    ADD CONSTRAINT borrows_book_id_fkey FOREIGN KEY (book_id) REFERENCES public.librarybook(book_id);
 F   ALTER TABLE ONLY public.borrows DROP CONSTRAINT borrows_book_id_fkey;
       public          postgres    false    233    231    3546            �           2606    42093    borrows borrows_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.borrows
    ADD CONSTRAINT borrows_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id);
 I   ALTER TABLE ONLY public.borrows DROP CONSTRAINT borrows_student_id_fkey;
       public          postgres    false    233    3508    210            �           2606    41868 '   course_staff course_staff_staff_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_staff
    ADD CONSTRAINT course_staff_staff_id_fkey FOREIGN KEY (staff_id) REFERENCES public.staff(id);
 Q   ALTER TABLE ONLY public.course_staff DROP CONSTRAINT course_staff_staff_id_fkey;
       public          postgres    false    212    3512    224            �           2606    41746 -   course_student course_student_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_student
    ADD CONSTRAINT course_student_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id);
 W   ALTER TABLE ONLY public.course_student DROP CONSTRAINT course_student_student_id_fkey;
       public          postgres    false    3508    210    223            �           2606    41863 )   courseoffered courseoffered_staff_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.courseoffered
    ADD CONSTRAINT courseoffered_staff_id_fkey FOREIGN KEY (staff_id) REFERENCES public.staff(id) ON DELETE CASCADE;
 S   ALTER TABLE ONLY public.courseoffered DROP CONSTRAINT courseoffered_staff_id_fkey;
       public          postgres    false    3512    216    212            �           2606    42070 1   student_studentreport fk6xhxgop1feyy1k149siw9hn2w    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_studentreport
    ADD CONSTRAINT fk6xhxgop1feyy1k149siw9hn2w FOREIGN KEY (student_id) REFERENCES public.student(id);
 [   ALTER TABLE ONLY public.student_studentreport DROP CONSTRAINT fk6xhxgop1feyy1k149siw9hn2w;
       public          postgres    false    210    3508    229            �           2606    42065 1   student_studentreport fkaelq787p7wy6auhl6r6nnra9m    FK CONSTRAINT     �   ALTER TABLE ONLY public.student_studentreport
    ADD CONSTRAINT fkaelq787p7wy6auhl6r6nnra9m FOREIGN KEY (studentreport_id) REFERENCES public.studentreport(id);
 [   ALTER TABLE ONLY public.student_studentreport DROP CONSTRAINT fkaelq787p7wy6auhl6r6nnra9m;
       public          postgres    false    229    222    3528            �           2606    41989 /   studentregistration fkg2xvbpe6b205qdygou28fpo5l    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentregistration
    ADD CONSTRAINT fkg2xvbpe6b205qdygou28fpo5l FOREIGN KEY (course_id) REFERENCES public.course(id);
 Y   ALTER TABLE ONLY public.studentregistration DROP CONSTRAINT fkg2xvbpe6b205qdygou28fpo5l;
       public          postgres    false    226    3536    218            �           2606    41979 *   course_student fklmj50qx9k98b7li5li74nnylb    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_student
    ADD CONSTRAINT fklmj50qx9k98b7li5li74nnylb FOREIGN KEY (course_id) REFERENCES public.course(id);
 T   ALTER TABLE ONLY public.course_student DROP CONSTRAINT fklmj50qx9k98b7li5li74nnylb;
       public          postgres    false    223    226    3536            �           2606    41974 (   course_staff fksp7bmhann6mhr4rm5f8lrrrkw    FK CONSTRAINT     �   ALTER TABLE ONLY public.course_staff
    ADD CONSTRAINT fksp7bmhann6mhr4rm5f8lrrrkw FOREIGN KEY (course_id) REFERENCES public.course(id);
 R   ALTER TABLE ONLY public.course_staff DROP CONSTRAINT fksp7bmhann6mhr4rm5f8lrrrkw;
       public          postgres    false    224    226    3536            �           2606    42014 -   studentreport new_foreign_key_constraint_name    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentreport
    ADD CONSTRAINT new_foreign_key_constraint_name FOREIGN KEY (course_id) REFERENCES public.course(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.studentreport DROP CONSTRAINT new_foreign_key_constraint_name;
       public          postgres    false    226    222    3536            �           2606    33650 5   projecttransaction projecttransaction_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.projecttransaction
    ADD CONSTRAINT projecttransaction_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.projecttransaction DROP CONSTRAINT projecttransaction_student_id_fkey;
       public          postgres    false    220    3508    210            �           2606    33633 7   studentregistration studentregistration_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentregistration
    ADD CONSTRAINT studentregistration_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.studentregistration DROP CONSTRAINT studentregistration_student_id_fkey;
       public          postgres    false    3508    210    218            �           2606    33664 +   studentreport studentreport_student_id_fkey    FK CONSTRAINT     �   ALTER TABLE ONLY public.studentreport
    ADD CONSTRAINT studentreport_student_id_fkey FOREIGN KEY (student_id) REFERENCES public.student(id) ON DELETE CASCADE;
 U   ALTER TABLE ONLY public.studentreport DROP CONSTRAINT studentreport_student_id_fkey;
       public          postgres    false    210    3508    222            �   �   x�m��� �gx�{�6��ŭnF���N{	ІR�>����M�}~��J���N�R�zb0#Ӄ,�8.	f����� `�)���E�5��ѽ��h�L~���؊}�8E~׎�k���$�/əq!)�;�E��Z
	�'�8E�ִ$��Р%�f���1j�o�,^[)�}$SB      �      x������ � �      �   �  x����r�0���S�RM�=�&�vrh����C�&\T�R�>}Aj�yr�L,��&�~��}s��~�HB���ƻK !�p��U��5��.��
-�G[��c��ϒPq �
t�=k0��.ZP���m|��\�%Rt�o*�'�+[�Y��Ά�E�8�����w�-���W��	���pviQ��0�n��0Z0��+�V��q��"5	F\d_�F�iF��2_��1����N1�.uY�
��B�Z���:;�?YYH�ȶs�%�C��W	���4�y�"��k�i4l����#4jU-$�'x^��^ra{��R/-5·T�cD�Y�~�հ_��E��-��#��	�����HLʙ��I�S�E�k��!Z���W^�S��y��΃�S�QǏc�C���S!��$���I�P�sR��*�ב���`e{���P�u�X6�۔4�M��o˸��嶁�9��u�iݦ��+W���k\2�
�}{Jj)H���	�w�]�Kc{�eu��ݚ�O,�﨑<����|&��M�)VD{
0*#�P^����"�8E~c���;��3:��r�N��z����!� �q�S���Ü`	�<���|���.��hmɃ�Y׺뚀��٤�{�hi�t:�mͱk����iΰ*�_E��� �>��      �      x�34�4�24�4f\1z\\\ 1�      �      x�3�46�2� �D��qqq ,�S      ~      x������ � �      �   �  x����r�8���Sh7+�?f�$�d���e�:��Hpc4��K�����+�SNWo�N�

�:�~�P�vkB�u���M,8�͍�շ�\�q׫�-[���˚����%��$��l�vm�`�%m/�pQ�5H�׭��sS�)��T�M[>׍�����܀�;`�7�{|��<�<��W�����OOiQ�G��M�3�V�y1v��oɭ��� �d�q��M
��9�*`na��^�m�B�X�;�oQ--x�c�l�:G-�EM.�z��ؓ�x�o�8���[�d)OP)�D�*�2�m=8�2�<C��r����]���G�"�!����j�NV+�d�#ʶl��߱5�;e�-�!D�Jd<<���m�^!}'I*�H���ǃD��mݙ���ͻ�΢��~�6�G��.#��<�gIeF���UϮ����>έ�<J�]o�i���
Ɵn��2�'x�p�ѩ��C���+TE_��ż��5���Q)Nk~�$��j�����	�?�<�L`y!�FMסգ���\O���&_*���Ʃ�\:�W[5�ʇn"i������_i:�N�J���;���fO^��ܹ�"�`���%�W�͑��:��&+�'~e��[@_���Ŋ�*����݇�Z��`�x:s:��{k�0��Ҷ{�18���s�&��w肖�l{5�:\����yr?���:ka7�X�[�3��ߕ��L�����+�bI<*����͹��U�-v������~�#"�      �      x������ � �      z   %  x�]��N�0�ϓ��X��H�Uي*�8q�Clۑ o�'��}s��/�8����>j�Y~0_�7�q ���6$��e�ɇf��%ш{�i԰�Y�f���֨(^��"<���ؘ�Η��U��������6�w��}O��4�%E4�
�c%�5�d��#�����3�<�W
!0�O�:��Cܹ�BVs�3h�I(�yL%,��+��遼}Ρ�&�:숅y���7�J�T���s�`&�q���YF�J��T��Qeڿ���(�� q>䞏���1'
�S�����o�i����L      |      x������ � �      x   �  x�u�݊�0���S���,��5���Mӆ
{3[�ײd�v߾R�&�z��?�#��09T�N�O��^S��v rQ�8��G���Lf��(2��"�R�9���m@���PM:�P"��@5?��h\��Խޓ���`2��5��8�^H��?y����z�I�;0�} ` &3�[�=4�@	EY�=��Ƨ~@sBm�L��dh�P7�i�ǥ�)���im]��Z���u��<���k�h��2sHD̿;]��o���g:�Y����~�z�?�����^��'s��� \Oc)����D�|��z�ZuT�+�7��c0|���Zt�jڨ#c�ZA�|��������M�`��]@X�@����fR��*�q�05�K��P:u���߼�^"��1K��      �      x������ � �      �   T   x�3�46�4�4202�50�54U00�#Π����Ԣ�.�*#B�,A��	�24 )3!�̐�ؘeF e�-5)#�=... ޽=�      �   ^   x�e�+�0EQ��
V��$*�� �/�a�R�b�����0a����Vb1e�^�T�x���թ�8��jNƩR�c�e�G���O���^�Y1�     