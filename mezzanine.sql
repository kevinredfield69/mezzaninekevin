PGDMP                         v         	   mezzanine    9.6.10    9.6.10 X   F
           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            G
           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            H
           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            I
           1262    16531 	   mezzanine    DATABASE     {   CREATE DATABASE mezzanine WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'es_ES.UTF-8' LC_CTYPE = 'es_ES.UTF-8';
    DROP DATABASE mezzanine;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            J
           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12393    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            K
           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    16564 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         kevin    false    3            �            1259    16562    auth_group_id_seq    SEQUENCE     z   CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       kevin    false    3    192            L
           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       kevin    false    191            �            1259    16574    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         kevin    false    3            �            1259    16572    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       kevin    false    3    194            M
           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       kevin    false    193            �            1259    16556    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         kevin    false    3            �            1259    16554    auth_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       kevin    false    3    190            N
           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       kevin    false    189            �            1259    16582 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         kevin    false    3            �            1259    16592    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         kevin    false    3            �            1259    16590    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       kevin    false    198    3            O
           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       kevin    false    197            �            1259    16580    auth_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       kevin    false    3    196            P
           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       kevin    false    195            �            1259    16600    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         kevin    false    3            �            1259    16598 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       kevin    false    200    3            Q
           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       kevin    false    199            �            1259    16699    blog_blogcategory    TABLE     �   CREATE TABLE public.blog_blogcategory (
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000) NOT NULL,
    site_id integer NOT NULL
);
 %   DROP TABLE public.blog_blogcategory;
       public         kevin    false    3            �            1259    16697    blog_blogcategory_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_blogcategory_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.blog_blogcategory_id_seq;
       public       kevin    false    206    3            R
           0    0    blog_blogcategory_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.blog_blogcategory_id_seq OWNED BY public.blog_blogcategory.id;
            public       kevin    false    205            �            1259    16710    blog_blogpost    TABLE     z  CREATE TABLE public.blog_blogpost (
    id integer NOT NULL,
    comments_count integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    rating_count integer NOT NULL,
    rating_sum integer NOT NULL,
    rating_average double precision NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000) NOT NULL,
    _meta_title character varying(500),
    description text NOT NULL,
    gen_description boolean NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone,
    status integer NOT NULL,
    publish_date timestamp with time zone,
    expiry_date timestamp with time zone,
    short_url character varying(200),
    in_sitemap boolean NOT NULL,
    content text NOT NULL,
    allow_comments boolean NOT NULL,
    featured_image character varying(255),
    site_id integer NOT NULL,
    user_id integer NOT NULL
);
 !   DROP TABLE public.blog_blogpost;
       public         kevin    false    3            �            1259    16721    blog_blogpost_categories    TABLE     �   CREATE TABLE public.blog_blogpost_categories (
    id integer NOT NULL,
    blogpost_id integer NOT NULL,
    blogcategory_id integer NOT NULL
);
 ,   DROP TABLE public.blog_blogpost_categories;
       public         kevin    false    3            �            1259    16719    blog_blogpost_categories_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_blogpost_categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.blog_blogpost_categories_id_seq;
       public       kevin    false    3    210            S
           0    0    blog_blogpost_categories_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.blog_blogpost_categories_id_seq OWNED BY public.blog_blogpost_categories.id;
            public       kevin    false    209            �            1259    16708    blog_blogpost_id_seq    SEQUENCE     }   CREATE SEQUENCE public.blog_blogpost_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.blog_blogpost_id_seq;
       public       kevin    false    208    3            T
           0    0    blog_blogpost_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.blog_blogpost_id_seq OWNED BY public.blog_blogpost.id;
            public       kevin    false    207            �            1259    16729    blog_blogpost_related_posts    TABLE     �   CREATE TABLE public.blog_blogpost_related_posts (
    id integer NOT NULL,
    from_blogpost_id integer NOT NULL,
    to_blogpost_id integer NOT NULL
);
 /   DROP TABLE public.blog_blogpost_related_posts;
       public         kevin    false    3            �            1259    16727 "   blog_blogpost_related_posts_id_seq    SEQUENCE     �   CREATE SEQUENCE public.blog_blogpost_related_posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.blog_blogpost_related_posts_id_seq;
       public       kevin    false    3    212            U
           0    0 "   blog_blogpost_related_posts_id_seq    SEQUENCE OWNED BY     i   ALTER SEQUENCE public.blog_blogpost_related_posts_id_seq OWNED BY public.blog_blogpost_related_posts.id;
            public       kevin    false    211            �            1259    16786    conf_setting    TABLE     �   CREATE TABLE public.conf_setting (
    id integer NOT NULL,
    name character varying(50) NOT NULL,
    value character varying(2000) NOT NULL,
    site_id integer NOT NULL
);
     DROP TABLE public.conf_setting;
       public         kevin    false    3            �            1259    16784    conf_setting_id_seq    SEQUENCE     |   CREATE SEQUENCE public.conf_setting_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.conf_setting_id_seq;
       public       kevin    false    3    214            V
           0    0    conf_setting_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.conf_setting_id_seq OWNED BY public.conf_setting.id;
            public       kevin    false    213            �            1259    16803    core_sitepermission    TABLE     c   CREATE TABLE public.core_sitepermission (
    id integer NOT NULL,
    user_id integer NOT NULL
);
 '   DROP TABLE public.core_sitepermission;
       public         kevin    false    3            �            1259    16801    core_sitepermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_sitepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.core_sitepermission_id_seq;
       public       kevin    false    216    3            W
           0    0    core_sitepermission_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.core_sitepermission_id_seq OWNED BY public.core_sitepermission.id;
            public       kevin    false    215            �            1259    16813    core_sitepermission_sites    TABLE     �   CREATE TABLE public.core_sitepermission_sites (
    id integer NOT NULL,
    sitepermission_id integer NOT NULL,
    site_id integer NOT NULL
);
 -   DROP TABLE public.core_sitepermission_sites;
       public         kevin    false    3            �            1259    16811     core_sitepermission_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.core_sitepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.core_sitepermission_sites_id_seq;
       public       kevin    false    3    218            X
           0    0     core_sitepermission_sites_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.core_sitepermission_sites_id_seq OWNED BY public.core_sitepermission_sites.id;
            public       kevin    false    217            �            1259    16660    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         kevin    false    3            �            1259    16658    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       kevin    false    3    202            Y
           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       kevin    false    201            �            1259    16856    django_comment_flags    TABLE     �   CREATE TABLE public.django_comment_flags (
    id integer NOT NULL,
    flag character varying(30) NOT NULL,
    flag_date timestamp with time zone NOT NULL,
    comment_id integer NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.django_comment_flags;
       public         kevin    false    3            �            1259    16854    django_comment_flags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_comment_flags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.django_comment_flags_id_seq;
       public       kevin    false    222    3            Z
           0    0    django_comment_flags_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public.django_comment_flags_id_seq OWNED BY public.django_comment_flags.id;
            public       kevin    false    221            �            1259    16845    django_comments    TABLE     �  CREATE TABLE public.django_comments (
    id integer NOT NULL,
    object_pk text NOT NULL,
    user_name character varying(50) NOT NULL,
    user_email character varying(254) NOT NULL,
    user_url character varying(200) NOT NULL,
    comment text NOT NULL,
    submit_date timestamp with time zone NOT NULL,
    ip_address inet,
    is_public boolean NOT NULL,
    is_removed boolean NOT NULL,
    content_type_id integer NOT NULL,
    site_id integer NOT NULL,
    user_id integer
);
 #   DROP TABLE public.django_comments;
       public         kevin    false    3            �            1259    16843    django_comments_id_seq    SEQUENCE        CREATE SEQUENCE public.django_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.django_comments_id_seq;
       public       kevin    false    3    220            [
           0    0    django_comments_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.django_comments_id_seq OWNED BY public.django_comments.id;
            public       kevin    false    219            �            1259    16546    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         kevin    false    3            �            1259    16544    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       kevin    false    188    3            \
           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       kevin    false    187            �            1259    16535    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         kevin    false    3            �            1259    16533    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       kevin    false    186    3            ]
           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       kevin    false    185            �            1259    17113    django_redirect    TABLE     �   CREATE TABLE public.django_redirect (
    id integer NOT NULL,
    site_id integer NOT NULL,
    old_path character varying(200) NOT NULL,
    new_path character varying(200) NOT NULL
);
 #   DROP TABLE public.django_redirect;
       public         kevin    false    3            �            1259    17111    django_redirect_id_seq    SEQUENCE        CREATE SEQUENCE public.django_redirect_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.django_redirect_id_seq;
       public       kevin    false    3    245            ^
           0    0    django_redirect_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.django_redirect_id_seq OWNED BY public.django_redirect.id;
            public       kevin    false    244            �            1259    17129    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         kevin    false    3            �            1259    16691    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         kevin    false    3            �            1259    16689    django_site_id_seq    SEQUENCE     {   CREATE SEQUENCE public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public       kevin    false    204    3            _
           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
            public       kevin    false    203            �            1259    16945    forms_field    TABLE     �  CREATE TABLE public.forms_field (
    id integer NOT NULL,
    _order integer,
    label text NOT NULL,
    field_type integer NOT NULL,
    required boolean NOT NULL,
    visible boolean NOT NULL,
    choices character varying(1000) NOT NULL,
    "default" character varying(2000) NOT NULL,
    placeholder_text character varying(100) NOT NULL,
    help_text text NOT NULL,
    form_id integer NOT NULL
);
    DROP TABLE public.forms_field;
       public         kevin    false    3            �            1259    16943    forms_field_id_seq    SEQUENCE     {   CREATE SEQUENCE public.forms_field_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.forms_field_id_seq;
       public       kevin    false    3    228            `
           0    0    forms_field_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.forms_field_id_seq OWNED BY public.forms_field.id;
            public       kevin    false    227            �            1259    16956    forms_fieldentry    TABLE     �   CREATE TABLE public.forms_fieldentry (
    id integer NOT NULL,
    field_id integer NOT NULL,
    value character varying(2000),
    entry_id integer NOT NULL
);
 $   DROP TABLE public.forms_fieldentry;
       public         kevin    false    3            �            1259    16954    forms_fieldentry_id_seq    SEQUENCE     �   CREATE SEQUENCE public.forms_fieldentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.forms_fieldentry_id_seq;
       public       kevin    false    230    3            a
           0    0    forms_fieldentry_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.forms_fieldentry_id_seq OWNED BY public.forms_fieldentry.id;
            public       kevin    false    229            �            1259    16965 
   forms_form    TABLE     �  CREATE TABLE public.forms_form (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    button_text character varying(50) NOT NULL,
    response text NOT NULL,
    send_email boolean NOT NULL,
    email_from character varying(254) NOT NULL,
    email_copies character varying(200) NOT NULL,
    email_subject character varying(200) NOT NULL,
    email_message text NOT NULL
);
    DROP TABLE public.forms_form;
       public         kevin    false    3            �            1259    16975    forms_formentry    TABLE     �   CREATE TABLE public.forms_formentry (
    id integer NOT NULL,
    entry_time timestamp with time zone NOT NULL,
    form_id integer NOT NULL
);
 #   DROP TABLE public.forms_formentry;
       public         kevin    false    3            �            1259    16973    forms_formentry_id_seq    SEQUENCE        CREATE SEQUENCE public.forms_formentry_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.forms_formentry_id_seq;
       public       kevin    false    233    3            b
           0    0    forms_formentry_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.forms_formentry_id_seq OWNED BY public.forms_formentry.id;
            public       kevin    false    232            �            1259    17005    galleries_gallery    TABLE     �   CREATE TABLE public.galleries_gallery (
    page_ptr_id integer NOT NULL,
    content text NOT NULL,
    zip_import character varying(100) NOT NULL
);
 %   DROP TABLE public.galleries_gallery;
       public         kevin    false    3            �            1259    17015    galleries_galleryimage    TABLE     �   CREATE TABLE public.galleries_galleryimage (
    id integer NOT NULL,
    _order integer,
    file character varying(200) NOT NULL,
    description character varying(1000) NOT NULL,
    gallery_id integer NOT NULL
);
 *   DROP TABLE public.galleries_galleryimage;
       public         kevin    false    3            �            1259    17013    galleries_galleryimage_id_seq    SEQUENCE     �   CREATE SEQUENCE public.galleries_galleryimage_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.galleries_galleryimage_id_seq;
       public       kevin    false    3    236            c
           0    0    galleries_galleryimage_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.galleries_galleryimage_id_seq OWNED BY public.galleries_galleryimage.id;
            public       kevin    false    235            �            1259    17037    generic_assignedkeyword    TABLE     �   CREATE TABLE public.generic_assignedkeyword (
    id integer NOT NULL,
    _order integer,
    object_pk integer NOT NULL,
    content_type_id integer NOT NULL,
    keyword_id integer NOT NULL
);
 +   DROP TABLE public.generic_assignedkeyword;
       public         kevin    false    3            �            1259    17035    generic_assignedkeyword_id_seq    SEQUENCE     �   CREATE SEQUENCE public.generic_assignedkeyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.generic_assignedkeyword_id_seq;
       public       kevin    false    238    3            d
           0    0    generic_assignedkeyword_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.generic_assignedkeyword_id_seq OWNED BY public.generic_assignedkeyword.id;
            public       kevin    false    237            �            1259    17045    generic_keyword    TABLE     �   CREATE TABLE public.generic_keyword (
    id integer NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000) NOT NULL,
    site_id integer NOT NULL
);
 #   DROP TABLE public.generic_keyword;
       public         kevin    false    3            �            1259    17043    generic_keyword_id_seq    SEQUENCE        CREATE SEQUENCE public.generic_keyword_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.generic_keyword_id_seq;
       public       kevin    false    3    240            e
           0    0    generic_keyword_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.generic_keyword_id_seq OWNED BY public.generic_keyword.id;
            public       kevin    false    239            �            1259    17056    generic_rating    TABLE     �   CREATE TABLE public.generic_rating (
    id integer NOT NULL,
    value integer NOT NULL,
    rating_date timestamp with time zone,
    object_pk integer NOT NULL,
    content_type_id integer NOT NULL,
    user_id integer
);
 "   DROP TABLE public.generic_rating;
       public         kevin    false    3            �            1259    17054    generic_rating_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.generic_rating_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.generic_rating_id_seq;
       public       kevin    false    242    3            f
           0    0    generic_rating_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.generic_rating_id_seq OWNED BY public.generic_rating.id;
            public       kevin    false    241            �            1259    17062    generic_threadedcomment    TABLE       CREATE TABLE public.generic_threadedcomment (
    comment_ptr_id integer NOT NULL,
    rating_count integer NOT NULL,
    rating_sum integer NOT NULL,
    rating_average double precision NOT NULL,
    by_author boolean NOT NULL,
    replied_to_id integer
);
 +   DROP TABLE public.generic_threadedcomment;
       public         kevin    false    3            �            1259    16908 
   pages_link    TABLE     E   CREATE TABLE public.pages_link (
    page_ptr_id integer NOT NULL
);
    DROP TABLE public.pages_link;
       public         kevin    false    3            �            1259    16899 
   pages_page    TABLE       CREATE TABLE public.pages_page (
    id integer NOT NULL,
    keywords_string character varying(500) NOT NULL,
    title character varying(500) NOT NULL,
    slug character varying(2000) NOT NULL,
    _meta_title character varying(500),
    description text NOT NULL,
    gen_description boolean NOT NULL,
    created timestamp with time zone,
    updated timestamp with time zone,
    status integer NOT NULL,
    publish_date timestamp with time zone,
    expiry_date timestamp with time zone,
    short_url character varying(200),
    in_sitemap boolean NOT NULL,
    _order integer,
    in_menus character varying(100),
    titles character varying(1000),
    content_model character varying(50),
    login_required boolean NOT NULL,
    parent_id integer,
    site_id integer NOT NULL
);
    DROP TABLE public.pages_page;
       public         kevin    false    3            �            1259    16897    pages_page_id_seq    SEQUENCE     z   CREATE SEQUENCE public.pages_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.pages_page_id_seq;
       public       kevin    false    3    224            g
           0    0    pages_page_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.pages_page_id_seq OWNED BY public.pages_page.id;
            public       kevin    false    223            �            1259    16913    pages_richtextpage    TABLE     h   CREATE TABLE public.pages_richtextpage (
    page_ptr_id integer NOT NULL,
    content text NOT NULL
);
 &   DROP TABLE public.pages_richtextpage;
       public         kevin    false    3            �            1259    17144    twitter_query    TABLE     �   CREATE TABLE public.twitter_query (
    id integer NOT NULL,
    type character varying(10) NOT NULL,
    value character varying(140) NOT NULL,
    interested boolean NOT NULL
);
 !   DROP TABLE public.twitter_query;
       public         kevin    false    3            �            1259    17142    twitter_query_id_seq    SEQUENCE     }   CREATE SEQUENCE public.twitter_query_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.twitter_query_id_seq;
       public       kevin    false    248    3            h
           0    0    twitter_query_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.twitter_query_id_seq OWNED BY public.twitter_query.id;
            public       kevin    false    247            �            1259    17152    twitter_tweet    TABLE     �  CREATE TABLE public.twitter_tweet (
    id integer NOT NULL,
    remote_id character varying(50) NOT NULL,
    created_at timestamp with time zone,
    text text,
    profile_image_url character varying(200),
    user_name character varying(100),
    full_name character varying(100),
    retweeter_profile_image_url character varying(200),
    retweeter_user_name character varying(100),
    retweeter_full_name character varying(100),
    query_id integer NOT NULL
);
 !   DROP TABLE public.twitter_tweet;
       public         kevin    false    3            �            1259    17150    twitter_tweet_id_seq    SEQUENCE     }   CREATE SEQUENCE public.twitter_tweet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.twitter_tweet_id_seq;
       public       kevin    false    3    250            i
           0    0    twitter_tweet_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.twitter_tweet_id_seq OWNED BY public.twitter_tweet.id;
            public       kevin    false    249            �           2604    16567    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    192    191    192            �           2604    16577    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    193    194    194            �           2604    16559    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    190    189    190            �           2604    16585    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    195    196    196            �           2604    16595    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    198    197    198            �           2604    16603    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    200    199    200            �           2604    16702    blog_blogcategory id    DEFAULT     |   ALTER TABLE ONLY public.blog_blogcategory ALTER COLUMN id SET DEFAULT nextval('public.blog_blogcategory_id_seq'::regclass);
 C   ALTER TABLE public.blog_blogcategory ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    206    205    206            �           2604    16713    blog_blogpost id    DEFAULT     t   ALTER TABLE ONLY public.blog_blogpost ALTER COLUMN id SET DEFAULT nextval('public.blog_blogpost_id_seq'::regclass);
 ?   ALTER TABLE public.blog_blogpost ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    208    207    208            �           2604    16724    blog_blogpost_categories id    DEFAULT     �   ALTER TABLE ONLY public.blog_blogpost_categories ALTER COLUMN id SET DEFAULT nextval('public.blog_blogpost_categories_id_seq'::regclass);
 J   ALTER TABLE public.blog_blogpost_categories ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    210    209    210            �           2604    16732    blog_blogpost_related_posts id    DEFAULT     �   ALTER TABLE ONLY public.blog_blogpost_related_posts ALTER COLUMN id SET DEFAULT nextval('public.blog_blogpost_related_posts_id_seq'::regclass);
 M   ALTER TABLE public.blog_blogpost_related_posts ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    211    212    212            �           2604    16789    conf_setting id    DEFAULT     r   ALTER TABLE ONLY public.conf_setting ALTER COLUMN id SET DEFAULT nextval('public.conf_setting_id_seq'::regclass);
 >   ALTER TABLE public.conf_setting ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    214    213    214            �           2604    16806    core_sitepermission id    DEFAULT     �   ALTER TABLE ONLY public.core_sitepermission ALTER COLUMN id SET DEFAULT nextval('public.core_sitepermission_id_seq'::regclass);
 E   ALTER TABLE public.core_sitepermission ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    215    216    216            �           2604    16816    core_sitepermission_sites id    DEFAULT     �   ALTER TABLE ONLY public.core_sitepermission_sites ALTER COLUMN id SET DEFAULT nextval('public.core_sitepermission_sites_id_seq'::regclass);
 K   ALTER TABLE public.core_sitepermission_sites ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    218    217    218            �           2604    16663    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    202    201    202            �           2604    16859    django_comment_flags id    DEFAULT     �   ALTER TABLE ONLY public.django_comment_flags ALTER COLUMN id SET DEFAULT nextval('public.django_comment_flags_id_seq'::regclass);
 F   ALTER TABLE public.django_comment_flags ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    222    221    222            �           2604    16848    django_comments id    DEFAULT     x   ALTER TABLE ONLY public.django_comments ALTER COLUMN id SET DEFAULT nextval('public.django_comments_id_seq'::regclass);
 A   ALTER TABLE public.django_comments ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    220    219    220            �           2604    16549    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    187    188    188            �           2604    16538    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    186    185    186            �           2604    17116    django_redirect id    DEFAULT     x   ALTER TABLE ONLY public.django_redirect ALTER COLUMN id SET DEFAULT nextval('public.django_redirect_id_seq'::regclass);
 A   ALTER TABLE public.django_redirect ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    244    245    245            �           2604    16694    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    204    203    204            �           2604    16948    forms_field id    DEFAULT     p   ALTER TABLE ONLY public.forms_field ALTER COLUMN id SET DEFAULT nextval('public.forms_field_id_seq'::regclass);
 =   ALTER TABLE public.forms_field ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    228    227    228            �           2604    16959    forms_fieldentry id    DEFAULT     z   ALTER TABLE ONLY public.forms_fieldentry ALTER COLUMN id SET DEFAULT nextval('public.forms_fieldentry_id_seq'::regclass);
 B   ALTER TABLE public.forms_fieldentry ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    229    230    230            �           2604    16978    forms_formentry id    DEFAULT     x   ALTER TABLE ONLY public.forms_formentry ALTER COLUMN id SET DEFAULT nextval('public.forms_formentry_id_seq'::regclass);
 A   ALTER TABLE public.forms_formentry ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    233    232    233            �           2604    17018    galleries_galleryimage id    DEFAULT     �   ALTER TABLE ONLY public.galleries_galleryimage ALTER COLUMN id SET DEFAULT nextval('public.galleries_galleryimage_id_seq'::regclass);
 H   ALTER TABLE public.galleries_galleryimage ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    235    236    236            �           2604    17040    generic_assignedkeyword id    DEFAULT     �   ALTER TABLE ONLY public.generic_assignedkeyword ALTER COLUMN id SET DEFAULT nextval('public.generic_assignedkeyword_id_seq'::regclass);
 I   ALTER TABLE public.generic_assignedkeyword ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    237    238    238            �           2604    17048    generic_keyword id    DEFAULT     x   ALTER TABLE ONLY public.generic_keyword ALTER COLUMN id SET DEFAULT nextval('public.generic_keyword_id_seq'::regclass);
 A   ALTER TABLE public.generic_keyword ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    240    239    240            �           2604    17059    generic_rating id    DEFAULT     v   ALTER TABLE ONLY public.generic_rating ALTER COLUMN id SET DEFAULT nextval('public.generic_rating_id_seq'::regclass);
 @   ALTER TABLE public.generic_rating ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    242    241    242            �           2604    16902    pages_page id    DEFAULT     n   ALTER TABLE ONLY public.pages_page ALTER COLUMN id SET DEFAULT nextval('public.pages_page_id_seq'::regclass);
 <   ALTER TABLE public.pages_page ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    224    223    224            �           2604    17147    twitter_query id    DEFAULT     t   ALTER TABLE ONLY public.twitter_query ALTER COLUMN id SET DEFAULT nextval('public.twitter_query_id_seq'::regclass);
 ?   ALTER TABLE public.twitter_query ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    247    248    248            �           2604    17155    twitter_tweet id    DEFAULT     t   ALTER TABLE ONLY public.twitter_tweet ALTER COLUMN id SET DEFAULT nextval('public.twitter_tweet_id_seq'::regclass);
 ?   ALTER TABLE public.twitter_tweet ALTER COLUMN id DROP DEFAULT;
       public       kevin    false    249    250    250            	
          0    16564 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       kevin    false    192   2�      j
           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       kevin    false    191            
          0    16574    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       kevin    false    194   O�      k
           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       kevin    false    193            
          0    16556    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       kevin    false    190   l�      l
           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 88, true);
            public       kevin    false    189            
          0    16582 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       kevin    false    196   �      
          0    16592    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       kevin    false    198   (�      m
           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       kevin    false    197            n
           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
            public       kevin    false    195            
          0    16600    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       kevin    false    200   E�      o
           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       kevin    false    199            
          0    16699    blog_blogcategory 
   TABLE DATA               E   COPY public.blog_blogcategory (id, title, slug, site_id) FROM stdin;
    public       kevin    false    206   b�      p
           0    0    blog_blogcategory_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.blog_blogcategory_id_seq', 1, false);
            public       kevin    false    205            
          0    16710    blog_blogpost 
   TABLE DATA               5  COPY public.blog_blogpost (id, comments_count, keywords_string, rating_count, rating_sum, rating_average, title, slug, _meta_title, description, gen_description, created, updated, status, publish_date, expiry_date, short_url, in_sitemap, content, allow_comments, featured_image, site_id, user_id) FROM stdin;
    public       kevin    false    208   �      
          0    16721    blog_blogpost_categories 
   TABLE DATA               T   COPY public.blog_blogpost_categories (id, blogpost_id, blogcategory_id) FROM stdin;
    public       kevin    false    210   ��      q
           0    0    blog_blogpost_categories_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.blog_blogpost_categories_id_seq', 1, false);
            public       kevin    false    209            r
           0    0    blog_blogpost_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.blog_blogpost_id_seq', 1, false);
            public       kevin    false    207            
          0    16729    blog_blogpost_related_posts 
   TABLE DATA               [   COPY public.blog_blogpost_related_posts (id, from_blogpost_id, to_blogpost_id) FROM stdin;
    public       kevin    false    212   ��      s
           0    0 "   blog_blogpost_related_posts_id_seq    SEQUENCE SET     Q   SELECT pg_catalog.setval('public.blog_blogpost_related_posts_id_seq', 1, false);
            public       kevin    false    211            
          0    16786    conf_setting 
   TABLE DATA               @   COPY public.conf_setting (id, name, value, site_id) FROM stdin;
    public       kevin    false    214   ��      t
           0    0    conf_setting_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.conf_setting_id_seq', 1, false);
            public       kevin    false    213            !
          0    16803    core_sitepermission 
   TABLE DATA               :   COPY public.core_sitepermission (id, user_id) FROM stdin;
    public       kevin    false    216   ��      u
           0    0    core_sitepermission_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.core_sitepermission_id_seq', 1, false);
            public       kevin    false    215            #
          0    16813    core_sitepermission_sites 
   TABLE DATA               S   COPY public.core_sitepermission_sites (id, sitepermission_id, site_id) FROM stdin;
    public       kevin    false    218   �      v
           0    0     core_sitepermission_sites_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.core_sitepermission_sites_id_seq', 1, false);
            public       kevin    false    217            
          0    16660    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       kevin    false    202   -�      w
           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
            public       kevin    false    201            '
          0    16856    django_comment_flags 
   TABLE DATA               X   COPY public.django_comment_flags (id, flag, flag_date, comment_id, user_id) FROM stdin;
    public       kevin    false    222   J�      x
           0    0    django_comment_flags_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public.django_comment_flags_id_seq', 1, false);
            public       kevin    false    221            %
          0    16845    django_comments 
   TABLE DATA               �   COPY public.django_comments (id, object_pk, user_name, user_email, user_url, comment, submit_date, ip_address, is_public, is_removed, content_type_id, site_id, user_id) FROM stdin;
    public       kevin    false    220   g�      y
           0    0    django_comments_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_comments_id_seq', 1, false);
            public       kevin    false    219            
          0    16546    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       kevin    false    188   ��      z
           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 29, true);
            public       kevin    false    187            
          0    16535    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       kevin    false    186   ��      {
           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 41, true);
            public       kevin    false    185            >
          0    17113    django_redirect 
   TABLE DATA               J   COPY public.django_redirect (id, site_id, old_path, new_path) FROM stdin;
    public       kevin    false    245   ��      |
           0    0    django_redirect_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.django_redirect_id_seq', 1, false);
            public       kevin    false    244            ?
          0    17129    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       kevin    false    246   ��      
          0    16691    django_site 
   TABLE DATA               7   COPY public.django_site (id, domain, name) FROM stdin;
    public       kevin    false    204   ��      }
           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
            public       kevin    false    203            -
          0    16945    forms_field 
   TABLE DATA               �   COPY public.forms_field (id, _order, label, field_type, required, visible, choices, "default", placeholder_text, help_text, form_id) FROM stdin;
    public       kevin    false    228   �      ~
           0    0    forms_field_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.forms_field_id_seq', 1, false);
            public       kevin    false    227            /
          0    16956    forms_fieldentry 
   TABLE DATA               I   COPY public.forms_fieldentry (id, field_id, value, entry_id) FROM stdin;
    public       kevin    false    230   5�      
           0    0    forms_fieldentry_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.forms_fieldentry_id_seq', 1, false);
            public       kevin    false    229            0
          0    16965 
   forms_form 
   TABLE DATA               �   COPY public.forms_form (page_ptr_id, content, button_text, response, send_email, email_from, email_copies, email_subject, email_message) FROM stdin;
    public       kevin    false    231   R�      2
          0    16975    forms_formentry 
   TABLE DATA               B   COPY public.forms_formentry (id, entry_time, form_id) FROM stdin;
    public       kevin    false    233   o�      �
           0    0    forms_formentry_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.forms_formentry_id_seq', 1, false);
            public       kevin    false    232            3
          0    17005    galleries_gallery 
   TABLE DATA               M   COPY public.galleries_gallery (page_ptr_id, content, zip_import) FROM stdin;
    public       kevin    false    234   ��      5
          0    17015    galleries_galleryimage 
   TABLE DATA               [   COPY public.galleries_galleryimage (id, _order, file, description, gallery_id) FROM stdin;
    public       kevin    false    236   ��      �
           0    0    galleries_galleryimage_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.galleries_galleryimage_id_seq', 1, false);
            public       kevin    false    235            7
          0    17037    generic_assignedkeyword 
   TABLE DATA               e   COPY public.generic_assignedkeyword (id, _order, object_pk, content_type_id, keyword_id) FROM stdin;
    public       kevin    false    238   ��      �
           0    0    generic_assignedkeyword_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.generic_assignedkeyword_id_seq', 1, false);
            public       kevin    false    237            9
          0    17045    generic_keyword 
   TABLE DATA               C   COPY public.generic_keyword (id, title, slug, site_id) FROM stdin;
    public       kevin    false    240   ��      �
           0    0    generic_keyword_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.generic_keyword_id_seq', 1, false);
            public       kevin    false    239            ;
          0    17056    generic_rating 
   TABLE DATA               e   COPY public.generic_rating (id, value, rating_date, object_pk, content_type_id, user_id) FROM stdin;
    public       kevin    false    242    �      �
           0    0    generic_rating_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.generic_rating_id_seq', 1, false);
            public       kevin    false    241            <
          0    17062    generic_threadedcomment 
   TABLE DATA               �   COPY public.generic_threadedcomment (comment_ptr_id, rating_count, rating_sum, rating_average, by_author, replied_to_id) FROM stdin;
    public       kevin    false    243   �      *
          0    16908 
   pages_link 
   TABLE DATA               1   COPY public.pages_link (page_ptr_id) FROM stdin;
    public       kevin    false    225   :�      )
          0    16899 
   pages_page 
   TABLE DATA               
  COPY public.pages_page (id, keywords_string, title, slug, _meta_title, description, gen_description, created, updated, status, publish_date, expiry_date, short_url, in_sitemap, _order, in_menus, titles, content_model, login_required, parent_id, site_id) FROM stdin;
    public       kevin    false    224   W�      �
           0    0    pages_page_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.pages_page_id_seq', 1, false);
            public       kevin    false    223            +
          0    16913    pages_richtextpage 
   TABLE DATA               B   COPY public.pages_richtextpage (page_ptr_id, content) FROM stdin;
    public       kevin    false    226   t�      A
          0    17144    twitter_query 
   TABLE DATA               D   COPY public.twitter_query (id, type, value, interested) FROM stdin;
    public       kevin    false    248   ��      �
           0    0    twitter_query_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.twitter_query_id_seq', 1, false);
            public       kevin    false    247            C
          0    17152    twitter_tweet 
   TABLE DATA               �   COPY public.twitter_tweet (id, remote_id, created_at, text, profile_image_url, user_name, full_name, retweeter_profile_image_url, retweeter_user_name, retweeter_full_name, query_id) FROM stdin;
    public       kevin    false    250   ��      �
           0    0    twitter_tweet_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.twitter_tweet_id_seq', 1, false);
            public       kevin    false    249            �           2606    16571    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         kevin    false    192    192            �           2606    16626 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         kevin    false    194    194    194            �           2606    16579 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         kevin    false    194    194            �           2606    16569    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         kevin    false    192    192            �           2606    16612 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         kevin    false    190    190    190            �           2606    16561 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         kevin    false    190    190            �           2606    16597 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         kevin    false    198    198            �           2606    16641 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         kevin    false    198    198    198            �           2606    16587    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         kevin    false    196    196            �           2606    16605 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         kevin    false    200    200            �           2606    16655 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         kevin    false    200    200    200            �           2606    16684     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         kevin    false    196    196            �           2606    16707 (   blog_blogcategory blog_blogcategory_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.blog_blogcategory
    ADD CONSTRAINT blog_blogcategory_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.blog_blogcategory DROP CONSTRAINT blog_blogcategory_pkey;
       public         kevin    false    206    206            	           2606    16764 X   blog_blogpost_categories blog_blogpost_categories_blogpost_id_blogcategory_a64d32c5_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categories_blogpost_id_blogcategory_a64d32c5_uniq UNIQUE (blogpost_id, blogcategory_id);
 �   ALTER TABLE ONLY public.blog_blogpost_categories DROP CONSTRAINT blog_blogpost_categories_blogpost_id_blogcategory_a64d32c5_uniq;
       public         kevin    false    210    210    210            	           2606    16726 6   blog_blogpost_categories blog_blogpost_categories_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_categories_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.blog_blogpost_categories DROP CONSTRAINT blog_blogpost_categories_pkey;
       public         kevin    false    210    210            �           2606    16718     blog_blogpost blog_blogpost_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.blog_blogpost
    ADD CONSTRAINT blog_blogpost_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpost_pkey;
       public         kevin    false    208    208            
	           2606    16778 [   blog_blogpost_related_posts blog_blogpost_related_po_from_blogpost_id_to_blog_3bd0f49f_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_related_po_from_blogpost_id_to_blog_3bd0f49f_uniq UNIQUE (from_blogpost_id, to_blogpost_id);
 �   ALTER TABLE ONLY public.blog_blogpost_related_posts DROP CONSTRAINT blog_blogpost_related_po_from_blogpost_id_to_blog_3bd0f49f_uniq;
       public         kevin    false    212    212    212            	           2606    16734 <   blog_blogpost_related_posts blog_blogpost_related_posts_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_related_posts_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.blog_blogpost_related_posts DROP CONSTRAINT blog_blogpost_related_posts_pkey;
       public         kevin    false    212    212            	           2606    16794    conf_setting conf_setting_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.conf_setting
    ADD CONSTRAINT conf_setting_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.conf_setting DROP CONSTRAINT conf_setting_pkey;
       public         kevin    false    214    214            	           2606    16808 ,   core_sitepermission core_sitepermission_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.core_sitepermission
    ADD CONSTRAINT core_sitepermission_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.core_sitepermission DROP CONSTRAINT core_sitepermission_pkey;
       public         kevin    false    216    216            	           2606    16835 Y   core_sitepermission_sites core_sitepermission_site_sitepermission_id_site_i_e3e7353a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_site_sitepermission_id_site_i_e3e7353a_uniq UNIQUE (sitepermission_id, site_id);
 �   ALTER TABLE ONLY public.core_sitepermission_sites DROP CONSTRAINT core_sitepermission_site_sitepermission_id_site_i_e3e7353a_uniq;
       public         kevin    false    218    218    218            	           2606    16818 8   core_sitepermission_sites core_sitepermission_sites_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.core_sitepermission_sites DROP CONSTRAINT core_sitepermission_sites_pkey;
       public         kevin    false    218    218            	           2606    16810 3   core_sitepermission core_sitepermission_user_id_key 
   CONSTRAINT     q   ALTER TABLE ONLY public.core_sitepermission
    ADD CONSTRAINT core_sitepermission_user_id_key UNIQUE (user_id);
 ]   ALTER TABLE ONLY public.core_sitepermission DROP CONSTRAINT core_sitepermission_user_id_key;
       public         kevin    false    216    216            �           2606    16669 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         kevin    false    202    202            &	           2606    16861 .   django_comment_flags django_comment_flags_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public.django_comment_flags
    ADD CONSTRAINT django_comment_flags_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_pkey;
       public         kevin    false    222    222            (	           2606    16863 O   django_comment_flags django_comment_flags_user_id_comment_id_flag_537f77a7_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_comment_id_flag_537f77a7_uniq UNIQUE (user_id, comment_id, flag);
 y   ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_user_id_comment_id_flag_537f77a7_uniq;
       public         kevin    false    222    222    222    222            	           2606    16853 $   django_comments django_comments_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.django_comments
    ADD CONSTRAINT django_comments_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_pkey;
       public         kevin    false    220    220            �           2606    16553 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         kevin    false    188    188    188            �           2606    16551 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         kevin    false    188    188            �           2606    16543 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         kevin    false    186    186            T	           2606    17118 $   django_redirect django_redirect_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.django_redirect
    ADD CONSTRAINT django_redirect_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.django_redirect DROP CONSTRAINT django_redirect_pkey;
       public         kevin    false    245    245            W	           2606    17125 >   django_redirect django_redirect_site_id_old_path_ac5dd16b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_redirect
    ADD CONSTRAINT django_redirect_site_id_old_path_ac5dd16b_uniq UNIQUE (site_id, old_path);
 h   ALTER TABLE ONLY public.django_redirect DROP CONSTRAINT django_redirect_site_id_old_path_ac5dd16b_uniq;
       public         kevin    false    245    245    245            Z	           2606    17136 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         kevin    false    246    246            �           2606    17140 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public         kevin    false    204    204            �           2606    16696    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public         kevin    false    204    204            5	           2606    16953    forms_field forms_field_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.forms_field
    ADD CONSTRAINT forms_field_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.forms_field DROP CONSTRAINT forms_field_pkey;
       public         kevin    false    228    228            8	           2606    16964 &   forms_fieldentry forms_fieldentry_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.forms_fieldentry
    ADD CONSTRAINT forms_fieldentry_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.forms_fieldentry DROP CONSTRAINT forms_fieldentry_pkey;
       public         kevin    false    230    230            :	           2606    16972    forms_form forms_form_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.forms_form
    ADD CONSTRAINT forms_form_pkey PRIMARY KEY (page_ptr_id);
 D   ALTER TABLE ONLY public.forms_form DROP CONSTRAINT forms_form_pkey;
       public         kevin    false    231    231            =	           2606    16980 $   forms_formentry forms_formentry_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.forms_formentry
    ADD CONSTRAINT forms_formentry_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.forms_formentry DROP CONSTRAINT forms_formentry_pkey;
       public         kevin    false    233    233            ?	           2606    17012 (   galleries_gallery galleries_gallery_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY public.galleries_gallery
    ADD CONSTRAINT galleries_gallery_pkey PRIMARY KEY (page_ptr_id);
 R   ALTER TABLE ONLY public.galleries_gallery DROP CONSTRAINT galleries_gallery_pkey;
       public         kevin    false    234    234            B	           2606    17023 2   galleries_galleryimage galleries_galleryimage_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.galleries_galleryimage
    ADD CONSTRAINT galleries_galleryimage_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.galleries_galleryimage DROP CONSTRAINT galleries_galleryimage_pkey;
       public         kevin    false    236    236            F	           2606    17042 4   generic_assignedkeyword generic_assignedkeyword_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public.generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeyword_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.generic_assignedkeyword DROP CONSTRAINT generic_assignedkeyword_pkey;
       public         kevin    false    238    238            H	           2606    17053 $   generic_keyword generic_keyword_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.generic_keyword
    ADD CONSTRAINT generic_keyword_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.generic_keyword DROP CONSTRAINT generic_keyword_pkey;
       public         kevin    false    240    240            L	           2606    17061 "   generic_rating generic_rating_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.generic_rating
    ADD CONSTRAINT generic_rating_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.generic_rating DROP CONSTRAINT generic_rating_pkey;
       public         kevin    false    242    242            O	           2606    17066 4   generic_threadedcomment generic_threadedcomment_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.generic_threadedcomment
    ADD CONSTRAINT generic_threadedcomment_pkey PRIMARY KEY (comment_ptr_id);
 ^   ALTER TABLE ONLY public.generic_threadedcomment DROP CONSTRAINT generic_threadedcomment_pkey;
       public         kevin    false    243    243            0	           2606    16912    pages_link pages_link_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY public.pages_link
    ADD CONSTRAINT pages_link_pkey PRIMARY KEY (page_ptr_id);
 D   ALTER TABLE ONLY public.pages_link DROP CONSTRAINT pages_link_pkey;
       public         kevin    false    225    225            ,	           2606    16907    pages_page pages_page_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.pages_page
    ADD CONSTRAINT pages_page_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.pages_page DROP CONSTRAINT pages_page_pkey;
       public         kevin    false    224    224            2	           2606    16920 *   pages_richtextpage pages_richtextpage_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY public.pages_richtextpage
    ADD CONSTRAINT pages_richtextpage_pkey PRIMARY KEY (page_ptr_id);
 T   ALTER TABLE ONLY public.pages_richtextpage DROP CONSTRAINT pages_richtextpage_pkey;
       public         kevin    false    226    226            ]	           2606    17149     twitter_query twitter_query_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.twitter_query
    ADD CONSTRAINT twitter_query_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.twitter_query DROP CONSTRAINT twitter_query_pkey;
       public         kevin    false    248    248            _	           2606    17160     twitter_tweet twitter_tweet_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.twitter_tweet
    ADD CONSTRAINT twitter_tweet_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.twitter_tweet DROP CONSTRAINT twitter_tweet_pkey;
       public         kevin    false    250    250            �           1259    16614    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         kevin    false    192            �           1259    16627 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         kevin    false    194            �           1259    16628 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         kevin    false    194            �           1259    16613 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         kevin    false    190            �           1259    16643 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         kevin    false    198            �           1259    16642 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         kevin    false    198            �           1259    16657 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         kevin    false    200            �           1259    16656 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         kevin    false    200            �           1259    16685     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         kevin    false    196            �           1259    16740 "   blog_blogcategory_site_id_42b9c96d    INDEX     c   CREATE INDEX blog_blogcategory_site_id_42b9c96d ON public.blog_blogcategory USING btree (site_id);
 6   DROP INDEX public.blog_blogcategory_site_id_42b9c96d;
       public         kevin    false    206            	           1259    16766 1   blog_blogpost_categories_blogcategory_id_f6695246    INDEX     �   CREATE INDEX blog_blogpost_categories_blogcategory_id_f6695246 ON public.blog_blogpost_categories USING btree (blogcategory_id);
 E   DROP INDEX public.blog_blogpost_categories_blogcategory_id_f6695246;
       public         kevin    false    210            	           1259    16765 -   blog_blogpost_categories_blogpost_id_daeea608    INDEX     y   CREATE INDEX blog_blogpost_categories_blogpost_id_daeea608 ON public.blog_blogpost_categories USING btree (blogpost_id);
 A   DROP INDEX public.blog_blogpost_categories_blogpost_id_daeea608;
       public         kevin    false    210             	           1259    16781 #   blog_blogpost_publish_date_703abc16    INDEX     e   CREATE INDEX blog_blogpost_publish_date_703abc16 ON public.blog_blogpost USING btree (publish_date);
 7   DROP INDEX public.blog_blogpost_publish_date_703abc16;
       public         kevin    false    208            	           1259    16779 5   blog_blogpost_related_posts_from_blogpost_id_27ea4c18    INDEX     �   CREATE INDEX blog_blogpost_related_posts_from_blogpost_id_27ea4c18 ON public.blog_blogpost_related_posts USING btree (from_blogpost_id);
 I   DROP INDEX public.blog_blogpost_related_posts_from_blogpost_id_27ea4c18;
       public         kevin    false    212            	           1259    16780 3   blog_blogpost_related_posts_to_blogpost_id_35f7acdd    INDEX     �   CREATE INDEX blog_blogpost_related_posts_to_blogpost_id_35f7acdd ON public.blog_blogpost_related_posts USING btree (to_blogpost_id);
 G   DROP INDEX public.blog_blogpost_related_posts_to_blogpost_id_35f7acdd;
       public         kevin    false    212            	           1259    16751    blog_blogpost_site_id_7995688f    INDEX     [   CREATE INDEX blog_blogpost_site_id_7995688f ON public.blog_blogpost USING btree (site_id);
 2   DROP INDEX public.blog_blogpost_site_id_7995688f;
       public         kevin    false    208            	           1259    16752    blog_blogpost_user_id_12ed6b16    INDEX     [   CREATE INDEX blog_blogpost_user_id_12ed6b16 ON public.blog_blogpost USING btree (user_id);
 2   DROP INDEX public.blog_blogpost_user_id_12ed6b16;
       public         kevin    false    208            	           1259    16800    conf_setting_site_id_b235f7ed    INDEX     Y   CREATE INDEX conf_setting_site_id_b235f7ed ON public.conf_setting USING btree (site_id);
 1   DROP INDEX public.conf_setting_site_id_b235f7ed;
       public         kevin    false    214            	           1259    16837 *   core_sitepermission_sites_site_id_38038b76    INDEX     s   CREATE INDEX core_sitepermission_sites_site_id_38038b76 ON public.core_sitepermission_sites USING btree (site_id);
 >   DROP INDEX public.core_sitepermission_sites_site_id_38038b76;
       public         kevin    false    218            	           1259    16836 4   core_sitepermission_sites_sitepermission_id_d33bc79e    INDEX     �   CREATE INDEX core_sitepermission_sites_sitepermission_id_d33bc79e ON public.core_sitepermission_sites USING btree (sitepermission_id);
 H   DROP INDEX public.core_sitepermission_sites_sitepermission_id_d33bc79e;
       public         kevin    false    218            �           1259    16680 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         kevin    false    202            �           1259    16681 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         kevin    false    202            "	           1259    16894 (   django_comment_flags_comment_id_d8054933    INDEX     o   CREATE INDEX django_comment_flags_comment_id_d8054933 ON public.django_comment_flags USING btree (comment_id);
 <   DROP INDEX public.django_comment_flags_comment_id_d8054933;
       public         kevin    false    222            #	           1259    16892 "   django_comment_flags_flag_8b141fcb    INDEX     c   CREATE INDEX django_comment_flags_flag_8b141fcb ON public.django_comment_flags USING btree (flag);
 6   DROP INDEX public.django_comment_flags_flag_8b141fcb;
       public         kevin    false    222            $	           1259    16893 '   django_comment_flags_flag_8b141fcb_like    INDEX     |   CREATE INDEX django_comment_flags_flag_8b141fcb_like ON public.django_comment_flags USING btree (flag varchar_pattern_ops);
 ;   DROP INDEX public.django_comment_flags_flag_8b141fcb_like;
       public         kevin    false    222            )	           1259    16895 %   django_comment_flags_user_id_f3f81f0a    INDEX     i   CREATE INDEX django_comment_flags_user_id_f3f81f0a ON public.django_comment_flags USING btree (user_id);
 9   DROP INDEX public.django_comment_flags_user_id_f3f81f0a;
       public         kevin    false    222            	           1259    16879 (   django_comments_content_type_id_c4afe962    INDEX     o   CREATE INDEX django_comments_content_type_id_c4afe962 ON public.django_comments USING btree (content_type_id);
 <   DROP INDEX public.django_comments_content_type_id_c4afe962;
       public         kevin    false    220            	           1259    16880     django_comments_site_id_9dcf666e    INDEX     _   CREATE INDEX django_comments_site_id_9dcf666e ON public.django_comments USING btree (site_id);
 4   DROP INDEX public.django_comments_site_id_9dcf666e;
       public         kevin    false    220             	           1259    16896 $   django_comments_submit_date_514ed2d9    INDEX     g   CREATE INDEX django_comments_submit_date_514ed2d9 ON public.django_comments USING btree (submit_date);
 8   DROP INDEX public.django_comments_submit_date_514ed2d9;
       public         kevin    false    220            !	           1259    16881     django_comments_user_id_a0a440a1    INDEX     _   CREATE INDEX django_comments_user_id_a0a440a1 ON public.django_comments USING btree (user_id);
 4   DROP INDEX public.django_comments_user_id_a0a440a1;
       public         kevin    false    220            Q	           1259    17127 !   django_redirect_old_path_c6cc94d3    INDEX     a   CREATE INDEX django_redirect_old_path_c6cc94d3 ON public.django_redirect USING btree (old_path);
 5   DROP INDEX public.django_redirect_old_path_c6cc94d3;
       public         kevin    false    245            R	           1259    17128 &   django_redirect_old_path_c6cc94d3_like    INDEX     z   CREATE INDEX django_redirect_old_path_c6cc94d3_like ON public.django_redirect USING btree (old_path varchar_pattern_ops);
 :   DROP INDEX public.django_redirect_old_path_c6cc94d3_like;
       public         kevin    false    245            U	           1259    17126     django_redirect_site_id_c3e37341    INDEX     _   CREATE INDEX django_redirect_site_id_c3e37341 ON public.django_redirect USING btree (site_id);
 4   DROP INDEX public.django_redirect_site_id_c3e37341;
       public         kevin    false    245            X	           1259    17138 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         kevin    false    246            [	           1259    17137 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         kevin    false    246            �           1259    17141     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public         kevin    false    204            3	           1259    16998    forms_field_form_id_9ca5dc7e    INDEX     W   CREATE INDEX forms_field_form_id_9ca5dc7e ON public.forms_field USING btree (form_id);
 0   DROP INDEX public.forms_field_form_id_9ca5dc7e;
       public         kevin    false    228            6	           1259    16992 "   forms_fieldentry_entry_id_c4fdc570    INDEX     c   CREATE INDEX forms_fieldentry_entry_id_c4fdc570 ON public.forms_fieldentry USING btree (entry_id);
 6   DROP INDEX public.forms_fieldentry_entry_id_c4fdc570;
       public         kevin    false    230            ;	           1259    16991     forms_formentry_form_id_d0f23912    INDEX     _   CREATE INDEX forms_formentry_form_id_d0f23912 ON public.forms_formentry USING btree (form_id);
 4   DROP INDEX public.forms_formentry_form_id_d0f23912;
       public         kevin    false    233            @	           1259    17034 *   galleries_galleryimage_gallery_id_af12d3f5    INDEX     s   CREATE INDEX galleries_galleryimage_gallery_id_af12d3f5 ON public.galleries_galleryimage USING btree (gallery_id);
 >   DROP INDEX public.galleries_galleryimage_gallery_id_af12d3f5;
       public         kevin    false    236            C	           1259    17072 0   generic_assignedkeyword_content_type_id_3dd89a7f    INDEX        CREATE INDEX generic_assignedkeyword_content_type_id_3dd89a7f ON public.generic_assignedkeyword USING btree (content_type_id);
 D   DROP INDEX public.generic_assignedkeyword_content_type_id_3dd89a7f;
       public         kevin    false    238            D	           1259    17102 +   generic_assignedkeyword_keyword_id_44c17f9d    INDEX     u   CREATE INDEX generic_assignedkeyword_keyword_id_44c17f9d ON public.generic_assignedkeyword USING btree (keyword_id);
 ?   DROP INDEX public.generic_assignedkeyword_keyword_id_44c17f9d;
       public         kevin    false    238            I	           1259    17078     generic_keyword_site_id_c5be0acc    INDEX     _   CREATE INDEX generic_keyword_site_id_c5be0acc ON public.generic_keyword USING btree (site_id);
 4   DROP INDEX public.generic_keyword_site_id_c5be0acc;
       public         kevin    false    240            J	           1259    17089 '   generic_rating_content_type_id_eaf475fa    INDEX     m   CREATE INDEX generic_rating_content_type_id_eaf475fa ON public.generic_rating USING btree (content_type_id);
 ;   DROP INDEX public.generic_rating_content_type_id_eaf475fa;
       public         kevin    false    242            M	           1259    17090    generic_rating_user_id_60020469    INDEX     ]   CREATE INDEX generic_rating_user_id_60020469 ON public.generic_rating USING btree (user_id);
 3   DROP INDEX public.generic_rating_user_id_60020469;
       public         kevin    false    242            P	           1259    17101 .   generic_threadedcomment_replied_to_id_d0a08d73    INDEX     {   CREATE INDEX generic_threadedcomment_replied_to_id_d0a08d73 ON public.generic_threadedcomment USING btree (replied_to_id);
 B   DROP INDEX public.generic_threadedcomment_replied_to_id_d0a08d73;
       public         kevin    false    243            *	           1259    16931    pages_page_parent_id_133fa4d3    INDEX     Y   CREATE INDEX pages_page_parent_id_133fa4d3 ON public.pages_page USING btree (parent_id);
 1   DROP INDEX public.pages_page_parent_id_133fa4d3;
       public         kevin    false    224            -	           1259    17109     pages_page_publish_date_eb7c8d46    INDEX     _   CREATE INDEX pages_page_publish_date_eb7c8d46 ON public.pages_page USING btree (publish_date);
 4   DROP INDEX public.pages_page_publish_date_eb7c8d46;
       public         kevin    false    224            .	           1259    16937    pages_page_site_id_47a43e5b    INDEX     U   CREATE INDEX pages_page_site_id_47a43e5b ON public.pages_page USING btree (site_id);
 /   DROP INDEX public.pages_page_site_id_47a43e5b;
       public         kevin    false    224            `	           1259    17166    twitter_tweet_query_id_bd42b699    INDEX     ]   CREATE INDEX twitter_tweet_query_id_bd42b699 ON public.twitter_tweet USING btree (query_id);
 3   DROP INDEX public.twitter_tweet_query_id_bd42b699;
       public         kevin    false    250            c	           2606    16620 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       kevin    false    2261    190    194            b	           2606    16615 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       kevin    false    194    192    2266            a	           2606    16606 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       kevin    false    2256    188    190            e	           2606    16635 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       kevin    false    192    198    2266            d	           2606    16630 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       kevin    false    196    2274    198            g	           2606    16649 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       kevin    false    190    200    2261            f	           2606    16644 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       kevin    false    200    196    2274            j	           2606    16735 F   blog_blogcategory blog_blogcategory_site_id_42b9c96d_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_blogcategory
    ADD CONSTRAINT blog_blogcategory_site_id_42b9c96d_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.blog_blogcategory DROP CONSTRAINT blog_blogcategory_site_id_42b9c96d_fk_django_site_id;
       public       kevin    false    206    2298    204            n	           2606    16758 S   blog_blogpost_categories blog_blogpost_catego_blogcategory_id_f6695246_fk_blog_blog    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_catego_blogcategory_id_f6695246_fk_blog_blog FOREIGN KEY (blogcategory_id) REFERENCES public.blog_blogcategory(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.blog_blogpost_categories DROP CONSTRAINT blog_blogpost_catego_blogcategory_id_f6695246_fk_blog_blog;
       public       kevin    false    2300    206    210            m	           2606    16753 O   blog_blogpost_categories blog_blogpost_catego_blogpost_id_daeea608_fk_blog_blog    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_blogpost_categories
    ADD CONSTRAINT blog_blogpost_catego_blogpost_id_daeea608_fk_blog_blog FOREIGN KEY (blogpost_id) REFERENCES public.blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.blog_blogpost_categories DROP CONSTRAINT blog_blogpost_catego_blogpost_id_daeea608_fk_blog_blog;
       public       kevin    false    210    208    2303            o	           2606    16767 W   blog_blogpost_related_posts blog_blogpost_relate_from_blogpost_id_27ea4c18_fk_blog_blog    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_relate_from_blogpost_id_27ea4c18_fk_blog_blog FOREIGN KEY (from_blogpost_id) REFERENCES public.blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.blog_blogpost_related_posts DROP CONSTRAINT blog_blogpost_relate_from_blogpost_id_27ea4c18_fk_blog_blog;
       public       kevin    false    208    212    2303            p	           2606    16772 U   blog_blogpost_related_posts blog_blogpost_relate_to_blogpost_id_35f7acdd_fk_blog_blog    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_blogpost_related_posts
    ADD CONSTRAINT blog_blogpost_relate_to_blogpost_id_35f7acdd_fk_blog_blog FOREIGN KEY (to_blogpost_id) REFERENCES public.blog_blogpost(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.blog_blogpost_related_posts DROP CONSTRAINT blog_blogpost_relate_to_blogpost_id_35f7acdd_fk_blog_blog;
       public       kevin    false    212    208    2303            k	           2606    16741 >   blog_blogpost blog_blogpost_site_id_7995688f_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_blogpost
    ADD CONSTRAINT blog_blogpost_site_id_7995688f_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpost_site_id_7995688f_fk_django_site_id;
       public       kevin    false    204    208    2298            l	           2606    16746 <   blog_blogpost blog_blogpost_user_id_12ed6b16_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.blog_blogpost
    ADD CONSTRAINT blog_blogpost_user_id_12ed6b16_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.blog_blogpost DROP CONSTRAINT blog_blogpost_user_id_12ed6b16_fk_auth_user_id;
       public       kevin    false    196    208    2274            q	           2606    16795 <   conf_setting conf_setting_site_id_b235f7ed_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.conf_setting
    ADD CONSTRAINT conf_setting_site_id_b235f7ed_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.conf_setting DROP CONSTRAINT conf_setting_site_id_b235f7ed_fk_django_site_id;
       public       kevin    false    214    2298    204            s	           2606    16824 V   core_sitepermission_sites core_sitepermission__sitepermission_id_d33bc79e_fk_core_site    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission__sitepermission_id_d33bc79e_fk_core_site FOREIGN KEY (sitepermission_id) REFERENCES public.core_sitepermission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.core_sitepermission_sites DROP CONSTRAINT core_sitepermission__sitepermission_id_d33bc79e_fk_core_site;
       public       kevin    false    2323    218    216            t	           2606    16829 V   core_sitepermission_sites core_sitepermission_sites_site_id_38038b76_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_sitepermission_sites
    ADD CONSTRAINT core_sitepermission_sites_site_id_38038b76_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.core_sitepermission_sites DROP CONSTRAINT core_sitepermission_sites_site_id_38038b76_fk_django_site_id;
       public       kevin    false    218    204    2298            r	           2606    16838 H   core_sitepermission core_sitepermission_user_id_0a3cbb11_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.core_sitepermission
    ADD CONSTRAINT core_sitepermission_user_id_0a3cbb11_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.core_sitepermission DROP CONSTRAINT core_sitepermission_user_id_0a3cbb11_fk_auth_user_id;
       public       kevin    false    2274    196    216            h	           2606    16670 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       kevin    false    188    2256    202            i	           2606    16675 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       kevin    false    202    196    2274            x	           2606    16882 S   django_comment_flags django_comment_flags_comment_id_d8054933_fk_django_comments_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_comment_flags
    ADD CONSTRAINT django_comment_flags_comment_id_d8054933_fk_django_comments_id FOREIGN KEY (comment_id) REFERENCES public.django_comments(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_comment_id_d8054933_fk_django_comments_id;
       public       kevin    false    222    2334    220            y	           2606    16887 J   django_comment_flags django_comment_flags_user_id_f3f81f0a_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_comment_flags
    ADD CONSTRAINT django_comment_flags_user_id_f3f81f0a_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.django_comment_flags DROP CONSTRAINT django_comment_flags_user_id_f3f81f0a_fk_auth_user_id;
       public       kevin    false    2274    222    196            u	           2606    16864 E   django_comments django_comments_content_type_id_c4afe962_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_comments
    ADD CONSTRAINT django_comments_content_type_id_c4afe962_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_content_type_id_c4afe962_fk_django_co;
       public       kevin    false    2256    188    220            v	           2606    16869 B   django_comments django_comments_site_id_9dcf666e_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_comments
    ADD CONSTRAINT django_comments_site_id_9dcf666e_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_site_id_9dcf666e_fk_django_site_id;
       public       kevin    false    204    2298    220            w	           2606    16874 @   django_comments django_comments_user_id_a0a440a1_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_comments
    ADD CONSTRAINT django_comments_user_id_a0a440a1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.django_comments DROP CONSTRAINT django_comments_user_id_a0a440a1_fk_auth_user_id;
       public       kevin    false    196    2274    220            �	           2606    17119 B   django_redirect django_redirect_site_id_c3e37341_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_redirect
    ADD CONSTRAINT django_redirect_site_id_c3e37341_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_redirect DROP CONSTRAINT django_redirect_site_id_c3e37341_fk_django_site_id;
       public       kevin    false    245    204    2298            ~	           2606    16999 B   forms_field forms_field_form_id_9ca5dc7e_fk_forms_form_page_ptr_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.forms_field
    ADD CONSTRAINT forms_field_form_id_9ca5dc7e_fk_forms_form_page_ptr_id FOREIGN KEY (form_id) REFERENCES public.forms_form(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.forms_field DROP CONSTRAINT forms_field_form_id_9ca5dc7e_fk_forms_form_page_ptr_id;
       public       kevin    false    231    228    2362            	           2606    16993 I   forms_fieldentry forms_fieldentry_entry_id_c4fdc570_fk_forms_formentry_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.forms_fieldentry
    ADD CONSTRAINT forms_fieldentry_entry_id_c4fdc570_fk_forms_formentry_id FOREIGN KEY (entry_id) REFERENCES public.forms_formentry(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.forms_fieldentry DROP CONSTRAINT forms_fieldentry_entry_id_c4fdc570_fk_forms_formentry_id;
       public       kevin    false    2365    230    233            �	           2606    16981 ;   forms_form forms_form_page_ptr_id_d3bcbf3a_fk_pages_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.forms_form
    ADD CONSTRAINT forms_form_page_ptr_id_d3bcbf3a_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.pages_page(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.forms_form DROP CONSTRAINT forms_form_page_ptr_id_d3bcbf3a_fk_pages_page_id;
       public       kevin    false    231    2348    224            �	           2606    16986 J   forms_formentry forms_formentry_form_id_d0f23912_fk_forms_form_page_ptr_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.forms_formentry
    ADD CONSTRAINT forms_formentry_form_id_d0f23912_fk_forms_form_page_ptr_id FOREIGN KEY (form_id) REFERENCES public.forms_form(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.forms_formentry DROP CONSTRAINT forms_formentry_form_id_d0f23912_fk_forms_form_page_ptr_id;
       public       kevin    false    231    2362    233            �	           2606    17024 I   galleries_gallery galleries_gallery_page_ptr_id_8562ba87_fk_pages_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.galleries_gallery
    ADD CONSTRAINT galleries_gallery_page_ptr_id_8562ba87_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.pages_page(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.galleries_gallery DROP CONSTRAINT galleries_gallery_page_ptr_id_8562ba87_fk_pages_page_id;
       public       kevin    false    2348    234    224            �	           2606    17029 L   galleries_galleryimage galleries_galleryima_gallery_id_af12d3f5_fk_galleries    FK CONSTRAINT     �   ALTER TABLE ONLY public.galleries_galleryimage
    ADD CONSTRAINT galleries_galleryima_gallery_id_af12d3f5_fk_galleries FOREIGN KEY (gallery_id) REFERENCES public.galleries_gallery(page_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.galleries_galleryimage DROP CONSTRAINT galleries_galleryima_gallery_id_af12d3f5_fk_galleries;
       public       kevin    false    2367    234    236            �	           2606    17067 R   generic_assignedkeyword generic_assignedkeyw_content_type_id_3dd89a7f_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeyw_content_type_id_3dd89a7f_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.generic_assignedkeyword DROP CONSTRAINT generic_assignedkeyw_content_type_id_3dd89a7f_fk_django_co;
       public       kevin    false    238    2256    188            �	           2606    17103 M   generic_assignedkeyword generic_assignedkeyw_keyword_id_44c17f9d_fk_generic_k    FK CONSTRAINT     �   ALTER TABLE ONLY public.generic_assignedkeyword
    ADD CONSTRAINT generic_assignedkeyw_keyword_id_44c17f9d_fk_generic_k FOREIGN KEY (keyword_id) REFERENCES public.generic_keyword(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.generic_assignedkeyword DROP CONSTRAINT generic_assignedkeyw_keyword_id_44c17f9d_fk_generic_k;
       public       kevin    false    240    238    2376            �	           2606    17073 B   generic_keyword generic_keyword_site_id_c5be0acc_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.generic_keyword
    ADD CONSTRAINT generic_keyword_site_id_c5be0acc_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.generic_keyword DROP CONSTRAINT generic_keyword_site_id_c5be0acc_fk_django_site_id;
       public       kevin    false    204    2298    240            �	           2606    17079 C   generic_rating generic_rating_content_type_id_eaf475fa_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.generic_rating
    ADD CONSTRAINT generic_rating_content_type_id_eaf475fa_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.generic_rating DROP CONSTRAINT generic_rating_content_type_id_eaf475fa_fk_django_co;
       public       kevin    false    188    242    2256            �	           2606    17084 >   generic_rating generic_rating_user_id_60020469_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.generic_rating
    ADD CONSTRAINT generic_rating_user_id_60020469_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.generic_rating DROP CONSTRAINT generic_rating_user_id_60020469_fk_auth_user_id;
       public       kevin    false    196    2274    242            �	           2606    17091 Q   generic_threadedcomment generic_threadedcomm_comment_ptr_id_e208ed60_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.generic_threadedcomment
    ADD CONSTRAINT generic_threadedcomm_comment_ptr_id_e208ed60_fk_django_co FOREIGN KEY (comment_ptr_id) REFERENCES public.django_comments(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.generic_threadedcomment DROP CONSTRAINT generic_threadedcomm_comment_ptr_id_e208ed60_fk_django_co;
       public       kevin    false    220    2334    243            �	           2606    17096 P   generic_threadedcomment generic_threadedcomm_replied_to_id_d0a08d73_fk_generic_t    FK CONSTRAINT     �   ALTER TABLE ONLY public.generic_threadedcomment
    ADD CONSTRAINT generic_threadedcomm_replied_to_id_d0a08d73_fk_generic_t FOREIGN KEY (replied_to_id) REFERENCES public.generic_threadedcomment(comment_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.generic_threadedcomment DROP CONSTRAINT generic_threadedcomm_replied_to_id_d0a08d73_fk_generic_t;
       public       kevin    false    243    243    2383            |	           2606    16921 ;   pages_link pages_link_page_ptr_id_37d469f7_fk_pages_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pages_link
    ADD CONSTRAINT pages_link_page_ptr_id_37d469f7_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.pages_page(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.pages_link DROP CONSTRAINT pages_link_page_ptr_id_37d469f7_fk_pages_page_id;
       public       kevin    false    2348    224    225            z	           2606    16932 9   pages_page pages_page_parent_id_133fa4d3_fk_pages_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pages_page
    ADD CONSTRAINT pages_page_parent_id_133fa4d3_fk_pages_page_id FOREIGN KEY (parent_id) REFERENCES public.pages_page(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.pages_page DROP CONSTRAINT pages_page_parent_id_133fa4d3_fk_pages_page_id;
       public       kevin    false    2348    224    224            {	           2606    16938 8   pages_page pages_page_site_id_47a43e5b_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pages_page
    ADD CONSTRAINT pages_page_site_id_47a43e5b_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 b   ALTER TABLE ONLY public.pages_page DROP CONSTRAINT pages_page_site_id_47a43e5b_fk_django_site_id;
       public       kevin    false    204    2298    224            }	           2606    16926 K   pages_richtextpage pages_richtextpage_page_ptr_id_8ca99b83_fk_pages_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.pages_richtextpage
    ADD CONSTRAINT pages_richtextpage_page_ptr_id_8ca99b83_fk_pages_page_id FOREIGN KEY (page_ptr_id) REFERENCES public.pages_page(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.pages_richtextpage DROP CONSTRAINT pages_richtextpage_page_ptr_id_8ca99b83_fk_pages_page_id;
       public       kevin    false    2348    224    226            �	           2606    17161 A   twitter_tweet twitter_tweet_query_id_bd42b699_fk_twitter_query_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.twitter_tweet
    ADD CONSTRAINT twitter_tweet_query_id_bd42b699_fk_twitter_query_id FOREIGN KEY (query_id) REFERENCES public.twitter_query(id) DEFERRABLE INITIALLY DEFERRED;
 k   ALTER TABLE ONLY public.twitter_tweet DROP CONSTRAINT twitter_tweet_query_id_bd42b699_fk_twitter_query_id;
       public       kevin    false    2397    248    250            	
      x������ � �      
      x������ � �      
   �  x�m��n�@��w��'��r�m#��ڋ*�e���A���Di޾�;;��~��`�?���fH��M�i|���,�O��_;�4C�h9�"�y�u'73n��i������ۯ�P��q7����qk�^��7������� �LQ f	� ���M�(�8��d��8����V M��P��clxD�M2����q6��"�B����2[���`I�W>��g����d	�e c�G؁��ٙ*d-�`�TPX�)HUD �����O7��Й��߁�d3�,��2�1z�
���A;�c��fK��k�*�*5̮K| ����?�r��Qj��9#�*���L�C�TJY͒��M^���8�&�u,C��t��5*Q�j��v��o#ByL@8
q�g��d��k������M�6�L�i]{eȔ���;^�M�8���Yq?�Ι4���\C����R=�4�(RO����K2�sr� �k���@+���T=Jg��x U��{?��4x��\C���19�g���@��>��.����KB���{(���i�*�)c�:���]7N&�)��5(���cpK�E��q��e�0N��w�6YN��t�K��R�K�(����dk�a�{ǣ@�$H���R)�e��=d����J����&2f2�힖��p�0�R4��6u]yP�ۨ�!P�ʾ�ן�"���M�Z�RY�����P%0B���D+vחP76��P)�	H'C�<&8��׻s��Ab�z���ԁQ�"&�90�H���M��7?PД����iS��u��td�]�OVp�R��V�R\4%��]
��$�݅�O��錭������\[�޸E��ֶ�^�EC��؃����+�㡮nD��N�:|K�u���W�e3<���	 �eq��      
      x������ � �      
      x������ � �      
      x������ � �      
      x������ � �      
      x������ � �      
      x������ � �      
      x������ � �      
      x������ � �      !
      x������ � �      #
      x������ � �      
      x������ � �      '
      x������ � �      %
      x������ � �      
     x�uQ�n� }�?f*��/�&ʚ@ju��9�f����s%\/7���L�B��w�m,%��rJ"CGeK�L>2URV�'(4�,/�g(Q��8�2>Q�'S��R���,5;��c즜1��4�;���]�Uگ�ܘ�'_���hй�mƉ�0�ބ�eVO���tGs��&�it���_�rB!��
u�@��I5��jh͋�\v#��ڮi����۱�=�u�A�Q�XO"A{Z�G?%��|h�e���K!,d����^���� ��      
   �  x����n�0E��Wt_D�_�|KB����$���wD&����7Z�:���;CA�<K����J>q�MW� z x���Gt�ja:�]�	���<&,��z%dմ}�rZ�Z�#����>���-x^�M�5�R�Ҫ��)�>���?~h�P��T��jF�tK��%L}��8��}��0����:�d�ݤ��u�G���"cW�Tԭ��H�/�\�pH$W	�I�[������ȅ]��9ah1-�MŰ���8m�&���YYDjk\�M�~n��b�,�4���4����<7�P.4��r{B�h΁�NɔB�����`� &WAUO��1a���=��9�����u�&B��6-7�
���H�A�R��]���x���4$���"�GeLjpr[���%Q��!�,EQ����<r����ux����K"�h���+�6�K]��`Ț�:�bIT���ק>.>�ǡ�e-rʦVFY]R��R5�唡�^Ʃ��!nL�zg�SP��3t��0.�7;.�cɰ2f�ӹ:�c�6���j(���� �����;�#���S��ݎ���@�r��d��Dun�.L��x4O �	���;�f�Υ�I���c���uy�&w�����˒%i��V��y�k��\���|��'3nv\�7M�?��/펫�6o�KU�S5��o���cx�;�vW�!}܁)��"��v���hGn��_��z-}����P�@A���cǫKJ�Uԧ����<      >
      x������ � �      ?
      x������ � �      
      x�3�L�H�-�I�K��Efs��qqq �<	�      -
      x������ � �      /
      x������ � �      0
      x������ � �      2
      x������ � �      3
      x������ � �      5
      x������ � �      7
      x������ � �      9
      x������ � �      ;
      x������ � �      <
      x������ � �      *
      x������ � �      )
      x������ � �      +
      x������ � �      A
      x������ � �      C
      x������ � �     