PGDMP     0    5                v            tam_portfolio_db    9.6.9    9.6.9 K   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false            �           1262    47580    tam_portfolio_db    DATABASE     �   CREATE DATABASE tam_portfolio_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
     DROP DATABASE tam_portfolio_db;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    48234    aldryn_style_style    TABLE       CREATE TABLE public.aldryn_style_style (
    label character varying(128) NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    class_name character varying(50) NOT NULL,
    id_name character varying(50) NOT NULL,
    tag_type character varying(50) NOT NULL,
    padding_left smallint,
    padding_right smallint,
    padding_top smallint,
    padding_bottom smallint,
    margin_left smallint,
    margin_right smallint,
    margin_top smallint,
    margin_bottom smallint,
    additional_class_names text NOT NULL
);
 &   DROP TABLE public.aldryn_style_style;
       public         postgres    false    3            �            1259    47612 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    47610    auth_group_id_seq    SEQUENCE     z   CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    3    192            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    191            �            1259    47622    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    47620    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    194    3            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    193            �            1259    47604    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    47602    auth_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    190    3            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    189            �            1259    47630 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         postgres    false    3            �            1259    47640    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    47638    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    3    198            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    197            �            1259    47628    auth_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    3    196            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    195            �            1259    47648    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    47646 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    3    200            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    199            �            1259    47751    cms_aliaspluginmodel    TABLE     �   CREATE TABLE public.cms_aliaspluginmodel (
    cmsplugin_ptr_id integer NOT NULL,
    plugin_id integer,
    alias_placeholder_id integer
);
 (   DROP TABLE public.cms_aliaspluginmodel;
       public         postgres    false    3            �            1259    47740    cms_cmsplugin    TABLE     �  CREATE TABLE public.cms_cmsplugin (
    id integer NOT NULL,
    "position" smallint NOT NULL,
    language character varying(15) NOT NULL,
    plugin_type character varying(50) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    changed_date timestamp with time zone NOT NULL,
    parent_id integer,
    placeholder_id integer,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    path character varying(255) NOT NULL,
    CONSTRAINT cms_cmsplugin_depth_check CHECK ((depth >= 0)),
    CONSTRAINT cms_cmsplugin_numchild_check CHECK ((numchild >= 0)),
    CONSTRAINT cms_cmsplugin_position_check CHECK (("position" >= 0))
);
 !   DROP TABLE public.cms_cmsplugin;
       public         postgres    false    3            �            1259    47738    cms_cmsplugin_id_seq    SEQUENCE     }   CREATE SEQUENCE public.cms_cmsplugin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cms_cmsplugin_id_seq;
       public       postgres    false    206    3            �           0    0    cms_cmsplugin_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cms_cmsplugin_id_seq OWNED BY public.cms_cmsplugin.id;
            public       postgres    false    205            �            1259    47758    cms_globalpagepermission    TABLE     �  CREATE TABLE public.cms_globalpagepermission (
    id integer NOT NULL,
    can_change boolean NOT NULL,
    can_add boolean NOT NULL,
    can_delete boolean NOT NULL,
    can_change_advanced_settings boolean NOT NULL,
    can_publish boolean NOT NULL,
    can_change_permissions boolean NOT NULL,
    can_move_page boolean NOT NULL,
    can_view boolean NOT NULL,
    can_recover_page boolean NOT NULL,
    group_id integer,
    user_id integer
);
 ,   DROP TABLE public.cms_globalpagepermission;
       public         postgres    false    3            �            1259    47756    cms_globalpagepermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_globalpagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.cms_globalpagepermission_id_seq;
       public       postgres    false    209    3            �           0    0    cms_globalpagepermission_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.cms_globalpagepermission_id_seq OWNED BY public.cms_globalpagepermission.id;
            public       postgres    false    208            �            1259    47766    cms_globalpagepermission_sites    TABLE     �   CREATE TABLE public.cms_globalpagepermission_sites (
    id integer NOT NULL,
    globalpagepermission_id integer NOT NULL,
    site_id integer NOT NULL
);
 2   DROP TABLE public.cms_globalpagepermission_sites;
       public         postgres    false    3            �            1259    47764 %   cms_globalpagepermission_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_globalpagepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.cms_globalpagepermission_sites_id_seq;
       public       postgres    false    3    211            �           0    0 %   cms_globalpagepermission_sites_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.cms_globalpagepermission_sites_id_seq OWNED BY public.cms_globalpagepermission_sites.id;
            public       postgres    false    210            �            1259    47774    cms_page    TABLE     �  CREATE TABLE public.cms_page (
    id integer NOT NULL,
    created_by character varying(255) NOT NULL,
    changed_by character varying(255) NOT NULL,
    creation_date timestamp with time zone NOT NULL,
    changed_date timestamp with time zone NOT NULL,
    publication_date timestamp with time zone,
    publication_end_date timestamp with time zone,
    in_navigation boolean NOT NULL,
    soft_root boolean NOT NULL,
    reverse_id character varying(40),
    navigation_extenders character varying(80),
    template character varying(100) NOT NULL,
    login_required boolean NOT NULL,
    limit_visibility_in_menu smallint,
    is_home boolean NOT NULL,
    application_urls character varying(200),
    application_namespace character varying(200),
    publisher_is_draft boolean NOT NULL,
    languages character varying(255),
    xframe_options integer NOT NULL,
    publisher_public_id integer,
    is_page_type boolean NOT NULL,
    node_id integer NOT NULL
);
    DROP TABLE public.cms_page;
       public         postgres    false    3            �            1259    47772    cms_page_id_seq    SEQUENCE     x   CREATE SEQUENCE public.cms_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cms_page_id_seq;
       public       postgres    false    3    213            �           0    0    cms_page_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.cms_page_id_seq OWNED BY public.cms_page.id;
            public       postgres    false    212            �            1259    47922    cms_page_placeholders    TABLE     �   CREATE TABLE public.cms_page_placeholders (
    id integer NOT NULL,
    page_id integer NOT NULL,
    placeholder_id integer NOT NULL
);
 )   DROP TABLE public.cms_page_placeholders;
       public         postgres    false    3            �            1259    47920    cms_page_placeholders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_page_placeholders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cms_page_placeholders_id_seq;
       public       postgres    false    3    221            �           0    0    cms_page_placeholders_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.cms_page_placeholders_id_seq OWNED BY public.cms_page_placeholders.id;
            public       postgres    false    220            �            1259    47792    cms_pagepermission    TABLE     �  CREATE TABLE public.cms_pagepermission (
    id integer NOT NULL,
    can_change boolean NOT NULL,
    can_add boolean NOT NULL,
    can_delete boolean NOT NULL,
    can_change_advanced_settings boolean NOT NULL,
    can_publish boolean NOT NULL,
    can_change_permissions boolean NOT NULL,
    can_move_page boolean NOT NULL,
    can_view boolean NOT NULL,
    grant_on integer NOT NULL,
    group_id integer,
    page_id integer,
    user_id integer
);
 &   DROP TABLE public.cms_pagepermission;
       public         postgres    false    3            �            1259    47790    cms_pagepermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_pagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.cms_pagepermission_id_seq;
       public       postgres    false    3    215            �           0    0    cms_pagepermission_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.cms_pagepermission_id_seq OWNED BY public.cms_pagepermission.id;
            public       postgres    false    214            �            1259    47901    cms_pageuser    TABLE     k   CREATE TABLE public.cms_pageuser (
    user_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);
     DROP TABLE public.cms_pageuser;
       public         postgres    false    3            �            1259    47906    cms_pageusergroup    TABLE     q   CREATE TABLE public.cms_pageusergroup (
    group_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);
 %   DROP TABLE public.cms_pageusergroup;
       public         postgres    false    3            �            1259    47913    cms_placeholder    TABLE     �   CREATE TABLE public.cms_placeholder (
    id integer NOT NULL,
    slot character varying(255) NOT NULL,
    default_width smallint,
    CONSTRAINT cms_placeholder_default_width_check CHECK ((default_width >= 0))
);
 #   DROP TABLE public.cms_placeholder;
       public         postgres    false    3            �            1259    47911    cms_placeholder_id_seq    SEQUENCE        CREATE SEQUENCE public.cms_placeholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cms_placeholder_id_seq;
       public       postgres    false    3    219            �           0    0    cms_placeholder_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cms_placeholder_id_seq OWNED BY public.cms_placeholder.id;
            public       postgres    false    218            �            1259    47932    cms_placeholderreference    TABLE     �   CREATE TABLE public.cms_placeholderreference (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    placeholder_ref_id integer
);
 ,   DROP TABLE public.cms_placeholderreference;
       public         postgres    false    3            �            1259    47939    cms_staticplaceholder    TABLE     -  CREATE TABLE public.cms_staticplaceholder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    code character varying(255) NOT NULL,
    dirty boolean NOT NULL,
    creation_method character varying(20) NOT NULL,
    draft_id integer,
    public_id integer,
    site_id integer
);
 )   DROP TABLE public.cms_staticplaceholder;
       public         postgres    false    3            �            1259    47937    cms_staticplaceholder_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_staticplaceholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cms_staticplaceholder_id_seq;
       public       postgres    false    3    224            �           0    0    cms_staticplaceholder_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.cms_staticplaceholder_id_seq OWNED BY public.cms_staticplaceholder.id;
            public       postgres    false    223            �            1259    47952 	   cms_title    TABLE     �  CREATE TABLE public.cms_title (
    id integer NOT NULL,
    language character varying(15) NOT NULL,
    title character varying(255) NOT NULL,
    page_title character varying(255),
    menu_title character varying(255),
    meta_description text,
    slug character varying(255) NOT NULL,
    path character varying(255) NOT NULL,
    has_url_overwrite boolean NOT NULL,
    redirect character varying(2048),
    creation_date timestamp with time zone NOT NULL,
    published boolean NOT NULL,
    publisher_is_draft boolean NOT NULL,
    publisher_state smallint NOT NULL,
    page_id integer NOT NULL,
    publisher_public_id integer
);
    DROP TABLE public.cms_title;
       public         postgres    false    3            �            1259    47950    cms_title_id_seq    SEQUENCE     y   CREATE SEQUENCE public.cms_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cms_title_id_seq;
       public       postgres    false    226    3            �           0    0    cms_title_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cms_title_id_seq OWNED BY public.cms_title.id;
            public       postgres    false    225            �            1259    48354    cms_treenode    TABLE     Z  CREATE TABLE public.cms_treenode (
    id integer NOT NULL,
    path character varying(255) NOT NULL,
    depth integer NOT NULL,
    numchild integer NOT NULL,
    parent_id integer,
    site_id integer NOT NULL,
    CONSTRAINT cms_treenode_depth_check CHECK ((depth >= 0)),
    CONSTRAINT cms_treenode_numchild_check CHECK ((numchild >= 0))
);
     DROP TABLE public.cms_treenode;
       public         postgres    false    3            �            1259    48352    cms_treenode_id_seq    SEQUENCE     |   CREATE SEQUENCE public.cms_treenode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cms_treenode_id_seq;
       public       postgres    false    233    3            �           0    0    cms_treenode_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cms_treenode_id_seq OWNED BY public.cms_treenode.id;
            public       postgres    false    232            �            1259    48306    cms_urlconfrevision    TABLE     s   CREATE TABLE public.cms_urlconfrevision (
    id integer NOT NULL,
    revision character varying(255) NOT NULL
);
 '   DROP TABLE public.cms_urlconfrevision;
       public         postgres    false    3            �            1259    48304    cms_urlconfrevision_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_urlconfrevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.cms_urlconfrevision_id_seq;
       public       postgres    false    231    3            �           0    0    cms_urlconfrevision_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.cms_urlconfrevision_id_seq OWNED BY public.cms_urlconfrevision.id;
            public       postgres    false    230            �            1259    47967    cms_usersettings    TABLE     �   CREATE TABLE public.cms_usersettings (
    id integer NOT NULL,
    language character varying(10) NOT NULL,
    clipboard_id integer,
    user_id integer NOT NULL
);
 $   DROP TABLE public.cms_usersettings;
       public         postgres    false    3            �            1259    47965    cms_usersettings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_usersettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cms_usersettings_id_seq;
       public       postgres    false    3    228            �           0    0    cms_usersettings_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.cms_usersettings_id_seq OWNED BY public.cms_usersettings.id;
            public       postgres    false    227            �            1259    47708    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         postgres    false    3            �            1259    47706    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    3    202            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    201            �            1259    47594    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    47592    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    3    188            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    187            �            1259    47583    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    47581    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    186    3            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    185                       1259    49313    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    47732    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         postgres    false    3            �            1259    47730    django_site_id_seq    SEQUENCE     {   CREATE SEQUENCE public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public       postgres    false    204    3            �           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
            public       postgres    false    203            �            1259    48385    djangocms_column_column    TABLE     �   CREATE TABLE public.djangocms_column_column (
    cmsplugin_ptr_id integer NOT NULL,
    width character varying(50) NOT NULL
);
 +   DROP TABLE public.djangocms_column_column;
       public         postgres    false    3            �            1259    48390    djangocms_column_multicolumns    TABLE     ]   CREATE TABLE public.djangocms_column_multicolumns (
    cmsplugin_ptr_id integer NOT NULL
);
 1   DROP TABLE public.djangocms_column_multicolumns;
       public         postgres    false    3            �            1259    48581    djangocms_file_file    TABLE     m  CREATE TABLE public.djangocms_file_file (
    cmsplugin_ptr_id integer NOT NULL,
    file_name character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    link_title character varying(255) NOT NULL,
    file_src_id integer,
    attributes text NOT NULL,
    template character varying(255) NOT NULL,
    show_file_size boolean NOT NULL
);
 '   DROP TABLE public.djangocms_file_file;
       public         postgres    false    3            �            1259    48650    djangocms_file_folder    TABLE       CREATE TABLE public.djangocms_file_folder (
    template character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    show_file_size boolean NOT NULL,
    attributes text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    folder_src_id integer
);
 )   DROP TABLE public.djangocms_file_folder;
       public         postgres    false    3            �            1259    48670    djangocms_googlemap_googlemap    TABLE     i  CREATE TABLE public.djangocms_googlemap_googlemap (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    zoom smallint NOT NULL,
    lat double precision,
    lng double precision,
    width character varying(6) NOT NULL,
    height character varying(6) NOT NULL,
    scrollwheel boolean NOT NULL,
    double_click_zoom boolean NOT NULL,
    draggable boolean NOT NULL,
    keyboard_shortcuts boolean NOT NULL,
    pan_control boolean NOT NULL,
    zoom_control boolean NOT NULL,
    street_view_control boolean NOT NULL,
    style text NOT NULL,
    fullscreen_control boolean NOT NULL,
    map_type_control character varying(255) NOT NULL,
    rotate_control boolean NOT NULL,
    scale_control boolean NOT NULL,
    template character varying(255) NOT NULL,
    CONSTRAINT djangocms_googlemap_googlemap_zoom_check CHECK ((zoom >= 0))
);
 1   DROP TABLE public.djangocms_googlemap_googlemap;
       public         postgres    false    3            �            1259    48759 #   djangocms_googlemap_googlemapmarker    TABLE     A  CREATE TABLE public.djangocms_googlemap_googlemapmarker (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    lat numeric(10,6),
    lng numeric(10,6),
    show_content boolean NOT NULL,
    info_content text NOT NULL,
    icon_id integer
);
 7   DROP TABLE public.djangocms_googlemap_googlemapmarker;
       public         postgres    false    3            �            1259    48767 "   djangocms_googlemap_googlemaproute    TABLE       CREATE TABLE public.djangocms_googlemap_googlemaproute (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    origin character varying(255) NOT NULL,
    destination character varying(255) NOT NULL,
    travel_mode character varying(255) NOT NULL
);
 6   DROP TABLE public.djangocms_googlemap_googlemaproute;
       public         postgres    false    3            �            1259    48792    djangocms_link_link    TABLE     �  CREATE TABLE public.djangocms_link_link (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    external_link character varying(2040) NOT NULL,
    anchor character varying(255) NOT NULL,
    mailto character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    target character varying(255) NOT NULL,
    internal_link_id integer,
    attributes text NOT NULL,
    template character varying(255) NOT NULL
);
 '   DROP TABLE public.djangocms_link_link;
       public         postgres    false    3            �            1259    48869    djangocms_picture_picture    TABLE     e  CREATE TABLE public.djangocms_picture_picture (
    cmsplugin_ptr_id integer NOT NULL,
    link_url character varying(2040) NOT NULL,
    alignment character varying(255) NOT NULL,
    link_page_id integer,
    height integer,
    width integer,
    picture_id integer,
    attributes text NOT NULL,
    caption_text text NOT NULL,
    link_attributes text NOT NULL,
    link_target character varying(255) NOT NULL,
    use_automatic_scaling boolean NOT NULL,
    use_crop boolean NOT NULL,
    use_no_cropping boolean NOT NULL,
    use_upscale boolean NOT NULL,
    thumbnail_options_id integer,
    external_picture character varying(255) NOT NULL,
    template character varying(255) NOT NULL,
    CONSTRAINT djangocms_picture_picture_height_3db3e080_check CHECK ((height >= 0)),
    CONSTRAINT djangocms_picture_picture_width_5bba3699_check CHECK ((width >= 0))
);
 -   DROP TABLE public.djangocms_picture_picture;
       public         postgres    false    3                       1259    49031    djangocms_snippet_snippet    TABLE     �   CREATE TABLE public.djangocms_snippet_snippet (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    html text NOT NULL,
    template character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 -   DROP TABLE public.djangocms_snippet_snippet;
       public         postgres    false    3                        1259    49029     djangocms_snippet_snippet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.djangocms_snippet_snippet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.djangocms_snippet_snippet_id_seq;
       public       postgres    false    257    3            �           0    0     djangocms_snippet_snippet_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.djangocms_snippet_snippet_id_seq OWNED BY public.djangocms_snippet_snippet.id;
            public       postgres    false    256                       1259    49042    djangocms_snippet_snippetptr    TABLE     }   CREATE TABLE public.djangocms_snippet_snippetptr (
    cmsplugin_ptr_id integer NOT NULL,
    snippet_id integer NOT NULL
);
 0   DROP TABLE public.djangocms_snippet_snippetptr;
       public         postgres    false    3                       1259    49087    djangocms_text_ckeditor_text    TABLE     t   CREATE TABLE public.djangocms_text_ckeditor_text (
    cmsplugin_ptr_id integer NOT NULL,
    body text NOT NULL
);
 0   DROP TABLE public.djangocms_text_ckeditor_text;
       public         postgres    false    3                       1259    49110    djangocms_video_videoplayer    TABLE       CREATE TABLE public.djangocms_video_videoplayer (
    cmsplugin_ptr_id integer NOT NULL,
    embed_link character varying(255) NOT NULL,
    poster_id integer,
    attributes text NOT NULL,
    label character varying(255) NOT NULL,
    template character varying(255) NOT NULL
);
 /   DROP TABLE public.djangocms_video_videoplayer;
       public         postgres    false    3                       1259    49177    djangocms_video_videosource    TABLE     �   CREATE TABLE public.djangocms_video_videosource (
    cmsplugin_ptr_id integer NOT NULL,
    text_title character varying(255) NOT NULL,
    text_description text NOT NULL,
    attributes text NOT NULL,
    source_file_id integer
);
 /   DROP TABLE public.djangocms_video_videosource;
       public         postgres    false    3                       1259    49185    djangocms_video_videotrack    TABLE       CREATE TABLE public.djangocms_video_videotrack (
    cmsplugin_ptr_id integer NOT NULL,
    kind character varying(255) NOT NULL,
    srclang character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    attributes text NOT NULL,
    src_id integer
);
 .   DROP TABLE public.djangocms_video_videotrack;
       public         postgres    false    3                       1259    49218    easy_thumbnails_source    TABLE     �   CREATE TABLE public.easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);
 *   DROP TABLE public.easy_thumbnails_source;
       public         postgres    false    3                       1259    49216    easy_thumbnails_source_id_seq    SEQUENCE     �   CREATE SEQUENCE public.easy_thumbnails_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.easy_thumbnails_source_id_seq;
       public       postgres    false    264    3            �           0    0    easy_thumbnails_source_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.easy_thumbnails_source_id_seq OWNED BY public.easy_thumbnails_source.id;
            public       postgres    false    263            
           1259    49226    easy_thumbnails_thumbnail    TABLE     �   CREATE TABLE public.easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);
 -   DROP TABLE public.easy_thumbnails_thumbnail;
       public         postgres    false    3            	           1259    49224     easy_thumbnails_thumbnail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.easy_thumbnails_thumbnail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.easy_thumbnails_thumbnail_id_seq;
       public       postgres    false    3    266            �           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.easy_thumbnails_thumbnail_id_seq OWNED BY public.easy_thumbnails_thumbnail.id;
            public       postgres    false    265                       1259    49252 #   easy_thumbnails_thumbnaildimensions    TABLE     K  CREATE TABLE public.easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);
 7   DROP TABLE public.easy_thumbnails_thumbnaildimensions;
       public         postgres    false    3                       1259    49250 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq;
       public       postgres    false    268    3            �           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq OWNED BY public.easy_thumbnails_thumbnaildimensions.id;
            public       postgres    false    267            �            1259    48417    filer_clipboard    TABLE     _   CREATE TABLE public.filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.filer_clipboard;
       public         postgres    false    3            �            1259    48415    filer_clipboard_id_seq    SEQUENCE        CREATE SEQUENCE public.filer_clipboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.filer_clipboard_id_seq;
       public       postgres    false    3    237                        0    0    filer_clipboard_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.filer_clipboard_id_seq OWNED BY public.filer_clipboard.id;
            public       postgres    false    236            �            1259    48425    filer_clipboarditem    TABLE     �   CREATE TABLE public.filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);
 '   DROP TABLE public.filer_clipboarditem;
       public         postgres    false    3            �            1259    48423    filer_clipboarditem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filer_clipboarditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.filer_clipboarditem_id_seq;
       public       postgres    false    3    239                       0    0    filer_clipboarditem_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.filer_clipboarditem_id_seq OWNED BY public.filer_clipboarditem.id;
            public       postgres    false    238            �            1259    48433 
   filer_file    TABLE       CREATE TABLE public.filer_file (
    id integer NOT NULL,
    file character varying(255),
    _file_size integer,
    sha1 character varying(40) NOT NULL,
    has_all_mandatory_data boolean NOT NULL,
    original_filename character varying(255),
    name character varying(255) NOT NULL,
    description text,
    uploaded_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    is_public boolean NOT NULL,
    folder_id integer,
    owner_id integer,
    polymorphic_ctype_id integer
);
    DROP TABLE public.filer_file;
       public         postgres    false    3            �            1259    48431    filer_file_id_seq    SEQUENCE     z   CREATE SEQUENCE public.filer_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.filer_file_id_seq;
       public       postgres    false    3    241                       0    0    filer_file_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.filer_file_id_seq OWNED BY public.filer_file.id;
            public       postgres    false    240            �            1259    48444    filer_folder    TABLE     �  CREATE TABLE public.filer_folder (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    uploaded_at timestamp with time zone NOT NULL,
    created_at timestamp with time zone NOT NULL,
    modified_at timestamp with time zone NOT NULL,
    lft integer NOT NULL,
    rght integer NOT NULL,
    tree_id integer NOT NULL,
    level integer NOT NULL,
    owner_id integer,
    parent_id integer,
    CONSTRAINT filer_folder_level_check CHECK ((level >= 0)),
    CONSTRAINT filer_folder_lft_check CHECK ((lft >= 0)),
    CONSTRAINT filer_folder_rght_check CHECK ((rght >= 0)),
    CONSTRAINT filer_folder_tree_id_check CHECK ((tree_id >= 0))
);
     DROP TABLE public.filer_folder;
       public         postgres    false    3            �            1259    48442    filer_folder_id_seq    SEQUENCE     |   CREATE SEQUENCE public.filer_folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.filer_folder_id_seq;
       public       postgres    false    243    3                       0    0    filer_folder_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.filer_folder_id_seq OWNED BY public.filer_folder.id;
            public       postgres    false    242            �            1259    48456    filer_folderpermission    TABLE       CREATE TABLE public.filer_folderpermission (
    id integer NOT NULL,
    type smallint NOT NULL,
    everybody boolean NOT NULL,
    can_edit smallint,
    can_read smallint,
    can_add_children smallint,
    folder_id integer,
    group_id integer,
    user_id integer
);
 *   DROP TABLE public.filer_folderpermission;
       public         postgres    false    3            �            1259    48454    filer_folderpermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filer_folderpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.filer_folderpermission_id_seq;
       public       postgres    false    3    245                       0    0    filer_folderpermission_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.filer_folderpermission_id_seq OWNED BY public.filer_folderpermission.id;
            public       postgres    false    244            �            1259    48464    filer_image    TABLE     �  CREATE TABLE public.filer_image (
    file_ptr_id integer NOT NULL,
    _height integer,
    _width integer,
    date_taken timestamp with time zone,
    default_alt_text character varying(255),
    default_caption character varying(255),
    author character varying(255),
    must_always_publish_author_credit boolean NOT NULL,
    must_always_publish_copyright boolean NOT NULL,
    subject_location character varying(64) NOT NULL
);
    DROP TABLE public.filer_image;
       public         postgres    false    3            �            1259    48554    filer_thumbnailoption    TABLE     �   CREATE TABLE public.filer_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);
 )   DROP TABLE public.filer_thumbnailoption;
       public         postgres    false    3            �            1259    48552    filer_thumbnailoption_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filer_thumbnailoption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.filer_thumbnailoption_id_seq;
       public       postgres    false    3    248                       0    0    filer_thumbnailoption_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.filer_thumbnailoption_id_seq OWNED BY public.filer_thumbnailoption.id;
            public       postgres    false    247                        1259    56016    home_plugin_shortheader    TABLE     �   CREATE TABLE public.home_plugin_shortheader (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(250),
    description character varying(500),
    header_image character varying(500)
);
 +   DROP TABLE public.home_plugin_shortheader;
       public         postgres    false    3                       1259    49328    home_plugin_textcenter    TABLE     �   CREATE TABLE public.home_plugin_textcenter (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(250),
    description text
);
 *   DROP TABLE public.home_plugin_textcenter;
       public         postgres    false    3                       1259    49269    menus_cachekey    TABLE     �   CREATE TABLE public.menus_cachekey (
    id integer NOT NULL,
    language character varying(255) NOT NULL,
    site integer NOT NULL,
    key character varying(255) NOT NULL,
    CONSTRAINT menus_cachekey_site_check CHECK ((site >= 0))
);
 "   DROP TABLE public.menus_cachekey;
       public         postgres    false    3                       1259    49267    menus_cachekey_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.menus_cachekey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.menus_cachekey_id_seq;
       public       postgres    false    3    270                       0    0    menus_cachekey_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.menus_cachekey_id_seq OWNED BY public.menus_cachekey.id;
            public       postgres    false    269                       1259    55996    portfolio_app_latestworksection    TABLE     �   CREATE TABLE public.portfolio_app_latestworksection (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(500),
    message text
);
 3   DROP TABLE public.portfolio_app_latestworksection;
       public         postgres    false    3                       1259    55813    portfolio_app_mediaasset    TABLE     L  CREATE TABLE public.portfolio_app_mediaasset (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    type smallint NOT NULL,
    media_asset character varying(100),
    project_id_id integer NOT NULL,
    youtube_url character varying(255),
    CONSTRAINT portfolio_app_mediaasset_type_check CHECK ((type >= 0))
);
 ,   DROP TABLE public.portfolio_app_mediaasset;
       public         postgres    false    3                       1259    55811    portfolio_app_mediaasset_id_seq    SEQUENCE     �   CREATE SEQUENCE public.portfolio_app_mediaasset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.portfolio_app_mediaasset_id_seq;
       public       postgres    false    3    282                       0    0    portfolio_app_mediaasset_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.portfolio_app_mediaasset_id_seq OWNED BY public.portfolio_app_mediaasset.id;
            public       postgres    false    281                       1259    55834    portfolio_app_project    TABLE     T  CREATE TABLE public.portfolio_app_project (
    cmsplugin_ptr_id integer NOT NULL,
    slug character varying(255) NOT NULL,
    title character varying(250),
    sub_title character varying(250),
    description text NOT NULL,
    skills character varying(255),
    roles character varying(255),
    client character varying(255),
    length character varying(50),
    demo_url character varying(255),
    top_image character varying(500),
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    short_description text NOT NULL,
    youtube_embed_url character varying(255),
    is_homepage_display boolean NOT NULL,
    is_list_display boolean NOT NULL,
    is_published boolean NOT NULL,
    android_demo_url character varying(500),
    ios_demo_url character varying(500),
    use_case_id integer
);
 )   DROP TABLE public.portfolio_app_project;
       public         postgres    false    3                       1259    55849    portfolio_app_project_tags    TABLE     �   CREATE TABLE public.portfolio_app_project_tags (
    id integer NOT NULL,
    project_id integer NOT NULL,
    tag_id integer NOT NULL
);
 .   DROP TABLE public.portfolio_app_project_tags;
       public         postgres    false    3                       1259    55847 !   portfolio_app_project_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.portfolio_app_project_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.portfolio_app_project_tags_id_seq;
       public       postgres    false    286    3                       0    0 !   portfolio_app_project_tags_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.portfolio_app_project_tags_id_seq OWNED BY public.portfolio_app_project_tags.id;
            public       postgres    false    285                       1259    55842    portfolio_app_tag    TABLE     {   CREATE TABLE public.portfolio_app_tag (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL
);
 %   DROP TABLE public.portfolio_app_tag;
       public         postgres    false    3                       1259    49281    portfolio_models_basemodel    TABLE     �   CREATE TABLE public.portfolio_models_basemodel (
    id integer NOT NULL,
    is_enabled boolean NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 .   DROP TABLE public.portfolio_models_basemodel;
       public         postgres    false    3                       1259    49279 !   portfolio_models_basemodel_id_seq    SEQUENCE     �   CREATE SEQUENCE public.portfolio_models_basemodel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.portfolio_models_basemodel_id_seq;
       public       postgres    false    3    272            	           0    0 !   portfolio_models_basemodel_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.portfolio_models_basemodel_id_seq OWNED BY public.portfolio_models_basemodel.id;
            public       postgres    false    271                       1259    55788    portfolio_models_contact    TABLE     �   CREATE TABLE public.portfolio_models_contact (
    basemodel_ptr_id integer NOT NULL,
    phone character varying(100),
    place character varying(100),
    email character varying(250)
);
 ,   DROP TABLE public.portfolio_models_contact;
       public         postgres    false    3                       1259    49287    portfolio_models_header    TABLE       CREATE TABLE public.portfolio_models_header (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(150),
    title character varying(500),
    description text NOT NULL,
    top_image character varying(500),
    youtube_url character varying(250)
);
 +   DROP TABLE public.portfolio_models_header;
       public         postgres    false    3                       1259    55793    portfolio_models_message    TABLE       CREATE TABLE public.portfolio_models_message (
    basemodel_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL,
    email_address character varying(100) NOT NULL,
    phone character varying(50),
    subject character varying(250),
    message_text text
);
 ,   DROP TABLE public.portfolio_models_message;
       public         postgres    false    3                       1259    49295    portfolio_models_profile    TABLE       CREATE TABLE public.portfolio_models_profile (
    basemodel_ptr_id integer NOT NULL,
    name character varying(150),
    title character varying(500),
    description text NOT NULL,
    avatar character varying(500),
    introduction_youtube_url character varying(250)
);
 ,   DROP TABLE public.portfolio_models_profile;
       public         postgres    false    3                       1259    55775    portfolio_models_service    TABLE     �   CREATE TABLE public.portfolio_models_service (
    basemodel_ptr_id integer NOT NULL,
    title character varying(250) NOT NULL,
    description text,
    logo character varying(100),
    icon_class_name character varying(100)
);
 ,   DROP TABLE public.portfolio_models_service;
       public         postgres    false    3                       1259    55762    portfolio_models_skill    TABLE        CREATE TABLE public.portfolio_models_skill (
    basemodel_ptr_id integer NOT NULL,
    title character varying(250) NOT NULL,
    description text,
    percentage integer NOT NULL,
    logo character varying(100),
    class_name character varying(250)
);
 *   DROP TABLE public.portfolio_models_skill;
       public         postgres    false    3            F	           2604    47615    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    191    192    192            G	           2604    47625    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    193    194            E	           2604    47607    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189    190            H	           2604    47633    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    195    196    196            I	           2604    47643    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197    198            J	           2604    47651    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    199    200            N	           2604    47743    cms_cmsplugin id    DEFAULT     t   ALTER TABLE ONLY public.cms_cmsplugin ALTER COLUMN id SET DEFAULT nextval('public.cms_cmsplugin_id_seq'::regclass);
 ?   ALTER TABLE public.cms_cmsplugin ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    206    206            R	           2604    47761    cms_globalpagepermission id    DEFAULT     �   ALTER TABLE ONLY public.cms_globalpagepermission ALTER COLUMN id SET DEFAULT nextval('public.cms_globalpagepermission_id_seq'::regclass);
 J   ALTER TABLE public.cms_globalpagepermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            S	           2604    47769 !   cms_globalpagepermission_sites id    DEFAULT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites ALTER COLUMN id SET DEFAULT nextval('public.cms_globalpagepermission_sites_id_seq'::regclass);
 P   ALTER TABLE public.cms_globalpagepermission_sites ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            T	           2604    47777    cms_page id    DEFAULT     j   ALTER TABLE ONLY public.cms_page ALTER COLUMN id SET DEFAULT nextval('public.cms_page_id_seq'::regclass);
 :   ALTER TABLE public.cms_page ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            X	           2604    47925    cms_page_placeholders id    DEFAULT     �   ALTER TABLE ONLY public.cms_page_placeholders ALTER COLUMN id SET DEFAULT nextval('public.cms_page_placeholders_id_seq'::regclass);
 G   ALTER TABLE public.cms_page_placeholders ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            U	           2604    47795    cms_pagepermission id    DEFAULT     ~   ALTER TABLE ONLY public.cms_pagepermission ALTER COLUMN id SET DEFAULT nextval('public.cms_pagepermission_id_seq'::regclass);
 D   ALTER TABLE public.cms_pagepermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            V	           2604    47916    cms_placeholder id    DEFAULT     x   ALTER TABLE ONLY public.cms_placeholder ALTER COLUMN id SET DEFAULT nextval('public.cms_placeholder_id_seq'::regclass);
 A   ALTER TABLE public.cms_placeholder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    219    219            Y	           2604    47942    cms_staticplaceholder id    DEFAULT     �   ALTER TABLE ONLY public.cms_staticplaceholder ALTER COLUMN id SET DEFAULT nextval('public.cms_staticplaceholder_id_seq'::regclass);
 G   ALTER TABLE public.cms_staticplaceholder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    224    224            Z	           2604    47955    cms_title id    DEFAULT     l   ALTER TABLE ONLY public.cms_title ALTER COLUMN id SET DEFAULT nextval('public.cms_title_id_seq'::regclass);
 ;   ALTER TABLE public.cms_title ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    225    226    226            ]	           2604    48357    cms_treenode id    DEFAULT     r   ALTER TABLE ONLY public.cms_treenode ALTER COLUMN id SET DEFAULT nextval('public.cms_treenode_id_seq'::regclass);
 >   ALTER TABLE public.cms_treenode ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    232    233    233            \	           2604    48309    cms_urlconfrevision id    DEFAULT     �   ALTER TABLE ONLY public.cms_urlconfrevision ALTER COLUMN id SET DEFAULT nextval('public.cms_urlconfrevision_id_seq'::regclass);
 E   ALTER TABLE public.cms_urlconfrevision ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    231    231            [	           2604    47970    cms_usersettings id    DEFAULT     z   ALTER TABLE ONLY public.cms_usersettings ALTER COLUMN id SET DEFAULT nextval('public.cms_usersettings_id_seq'::regclass);
 B   ALTER TABLE public.cms_usersettings ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    227    228    228            K	           2604    47711    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201    202            D	           2604    47597    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187    188            C	           2604    47586    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    186    186            M	           2604    47735    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203    204            m	           2604    49034    djangocms_snippet_snippet id    DEFAULT     �   ALTER TABLE ONLY public.djangocms_snippet_snippet ALTER COLUMN id SET DEFAULT nextval('public.djangocms_snippet_snippet_id_seq'::regclass);
 K   ALTER TABLE public.djangocms_snippet_snippet ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    256    257    257            n	           2604    49221    easy_thumbnails_source id    DEFAULT     �   ALTER TABLE ONLY public.easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_source_id_seq'::regclass);
 H   ALTER TABLE public.easy_thumbnails_source ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    264    263    264            o	           2604    49229    easy_thumbnails_thumbnail id    DEFAULT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnail_id_seq'::regclass);
 K   ALTER TABLE public.easy_thumbnails_thumbnail ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    266    265    266            p	           2604    49255 &   easy_thumbnails_thumbnaildimensions id    DEFAULT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnaildimensions_id_seq'::regclass);
 U   ALTER TABLE public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    268    267    268            `	           2604    48420    filer_clipboard id    DEFAULT     x   ALTER TABLE ONLY public.filer_clipboard ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboard_id_seq'::regclass);
 A   ALTER TABLE public.filer_clipboard ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    236    237            a	           2604    48428    filer_clipboarditem id    DEFAULT     �   ALTER TABLE ONLY public.filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboarditem_id_seq'::regclass);
 E   ALTER TABLE public.filer_clipboarditem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    238    239            b	           2604    48436    filer_file id    DEFAULT     n   ALTER TABLE ONLY public.filer_file ALTER COLUMN id SET DEFAULT nextval('public.filer_file_id_seq'::regclass);
 <   ALTER TABLE public.filer_file ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    241    241            c	           2604    48447    filer_folder id    DEFAULT     r   ALTER TABLE ONLY public.filer_folder ALTER COLUMN id SET DEFAULT nextval('public.filer_folder_id_seq'::regclass);
 >   ALTER TABLE public.filer_folder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    243    243            h	           2604    48459    filer_folderpermission id    DEFAULT     �   ALTER TABLE ONLY public.filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('public.filer_folderpermission_id_seq'::regclass);
 H   ALTER TABLE public.filer_folderpermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245            i	           2604    48557    filer_thumbnailoption id    DEFAULT     �   ALTER TABLE ONLY public.filer_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('public.filer_thumbnailoption_id_seq'::regclass);
 G   ALTER TABLE public.filer_thumbnailoption ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    248    247    248            s	           2604    49272    menus_cachekey id    DEFAULT     v   ALTER TABLE ONLY public.menus_cachekey ALTER COLUMN id SET DEFAULT nextval('public.menus_cachekey_id_seq'::regclass);
 @   ALTER TABLE public.menus_cachekey ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    269    270    270            v	           2604    55816    portfolio_app_mediaasset id    DEFAULT     �   ALTER TABLE ONLY public.portfolio_app_mediaasset ALTER COLUMN id SET DEFAULT nextval('public.portfolio_app_mediaasset_id_seq'::regclass);
 J   ALTER TABLE public.portfolio_app_mediaasset ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    282    281    282            x	           2604    55852    portfolio_app_project_tags id    DEFAULT     �   ALTER TABLE ONLY public.portfolio_app_project_tags ALTER COLUMN id SET DEFAULT nextval('public.portfolio_app_project_tags_id_seq'::regclass);
 L   ALTER TABLE public.portfolio_app_project_tags ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    285    286    286            u	           2604    49284    portfolio_models_basemodel id    DEFAULT     �   ALTER TABLE ONLY public.portfolio_models_basemodel ALTER COLUMN id SET DEFAULT nextval('public.portfolio_models_basemodel_id_seq'::regclass);
 L   ALTER TABLE public.portfolio_models_basemodel ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    271    272    272            �          0    48234    aldryn_style_style 
   TABLE DATA               �   COPY public.aldryn_style_style (label, cmsplugin_ptr_id, class_name, id_name, tag_type, padding_left, padding_right, padding_top, padding_bottom, margin_left, margin_right, margin_top, margin_bottom, additional_class_names) FROM stdin;
    public       postgres    false    229   za      }          0    47612 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    192   �a      
           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    191                      0    47622    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    194   �a                 0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    193            {          0    47604    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    190   �a                 0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 185, true);
            public       postgres    false    189            �          0    47630 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    196   �i      �          0    47640    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    198   �j                 0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    197                       0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
            public       postgres    false    195            �          0    47648    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    200   �j                 0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    199            �          0    47751    cms_aliaspluginmodel 
   TABLE DATA               a   COPY public.cms_aliaspluginmodel (cmsplugin_ptr_id, plugin_id, alias_placeholder_id) FROM stdin;
    public       postgres    false    207   �j      �          0    47740    cms_cmsplugin 
   TABLE DATA               �   COPY public.cms_cmsplugin (id, "position", language, plugin_type, creation_date, changed_date, parent_id, placeholder_id, depth, numchild, path) FROM stdin;
    public       postgres    false    206   �j                 0    0    cms_cmsplugin_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cms_cmsplugin_id_seq', 30, true);
            public       postgres    false    205            �          0    47758    cms_globalpagepermission 
   TABLE DATA               �   COPY public.cms_globalpagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, can_recover_page, group_id, user_id) FROM stdin;
    public       postgres    false    209   gm                 0    0    cms_globalpagepermission_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.cms_globalpagepermission_id_seq', 1, false);
            public       postgres    false    208            �          0    47766    cms_globalpagepermission_sites 
   TABLE DATA               ^   COPY public.cms_globalpagepermission_sites (id, globalpagepermission_id, site_id) FROM stdin;
    public       postgres    false    211   �m                 0    0 %   cms_globalpagepermission_sites_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.cms_globalpagepermission_sites_id_seq', 1, false);
            public       postgres    false    210            �          0    47774    cms_page 
   TABLE DATA               �  COPY public.cms_page (id, created_by, changed_by, creation_date, changed_date, publication_date, publication_end_date, in_navigation, soft_root, reverse_id, navigation_extenders, template, login_required, limit_visibility_in_menu, is_home, application_urls, application_namespace, publisher_is_draft, languages, xframe_options, publisher_public_id, is_page_type, node_id) FROM stdin;
    public       postgres    false    213   �m                 0    0    cms_page_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cms_page_id_seq', 8, true);
            public       postgres    false    212            �          0    47922    cms_page_placeholders 
   TABLE DATA               L   COPY public.cms_page_placeholders (id, page_id, placeholder_id) FROM stdin;
    public       postgres    false    221   �n                 0    0    cms_page_placeholders_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.cms_page_placeholders_id_seq', 25, true);
            public       postgres    false    220            �          0    47792    cms_pagepermission 
   TABLE DATA               �   COPY public.cms_pagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, grant_on, group_id, page_id, user_id) FROM stdin;
    public       postgres    false    215   ao                 0    0    cms_pagepermission_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.cms_pagepermission_id_seq', 1, false);
            public       postgres    false    214            �          0    47901    cms_pageuser 
   TABLE DATA               B   COPY public.cms_pageuser (user_ptr_id, created_by_id) FROM stdin;
    public       postgres    false    216   ~o      �          0    47906    cms_pageusergroup 
   TABLE DATA               H   COPY public.cms_pageusergroup (group_ptr_id, created_by_id) FROM stdin;
    public       postgres    false    217   �o      �          0    47913    cms_placeholder 
   TABLE DATA               B   COPY public.cms_placeholder (id, slot, default_width) FROM stdin;
    public       postgres    false    219   �o                 0    0    cms_placeholder_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cms_placeholder_id_seq', 27, true);
            public       postgres    false    218            �          0    47932    cms_placeholderreference 
   TABLE DATA               ^   COPY public.cms_placeholderreference (cmsplugin_ptr_id, name, placeholder_ref_id) FROM stdin;
    public       postgres    false    222   �p      �          0    47939    cms_staticplaceholder 
   TABLE DATA               u   COPY public.cms_staticplaceholder (id, name, code, dirty, creation_method, draft_id, public_id, site_id) FROM stdin;
    public       postgres    false    224   �p                 0    0    cms_staticplaceholder_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.cms_staticplaceholder_id_seq', 1, false);
            public       postgres    false    223            �          0    47952 	   cms_title 
   TABLE DATA               �   COPY public.cms_title (id, language, title, page_title, menu_title, meta_description, slug, path, has_url_overwrite, redirect, creation_date, published, publisher_is_draft, publisher_state, page_id, publisher_public_id) FROM stdin;
    public       postgres    false    226   �p                 0    0    cms_title_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cms_title_id_seq', 8, true);
            public       postgres    false    225            �          0    48354    cms_treenode 
   TABLE DATA               U   COPY public.cms_treenode (id, path, depth, numchild, parent_id, site_id) FROM stdin;
    public       postgres    false    233   �q                 0    0    cms_treenode_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cms_treenode_id_seq', 6, true);
            public       postgres    false    232            �          0    48306    cms_urlconfrevision 
   TABLE DATA               ;   COPY public.cms_urlconfrevision (id, revision) FROM stdin;
    public       postgres    false    231   r                 0    0    cms_urlconfrevision_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.cms_urlconfrevision_id_seq', 1, false);
            public       postgres    false    230            �          0    47967    cms_usersettings 
   TABLE DATA               O   COPY public.cms_usersettings (id, language, clipboard_id, user_id) FROM stdin;
    public       postgres    false    228   ^r                 0    0    cms_usersettings_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cms_usersettings_id_seq', 1, true);
            public       postgres    false    227            �          0    47708    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    202   �r                 0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 29, true);
            public       postgres    false    201            y          0    47594    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    188   gu                 0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 62, true);
            public       postgres    false    187            w          0    47583    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    186   �w                 0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 128, true);
            public       postgres    false    185            �          0    49313    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    275   ǀ      �          0    47732    django_site 
   TABLE DATA               7   COPY public.django_site (id, domain, name) FROM stdin;
    public       postgres    false    204   ]�                 0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
            public       postgres    false    203            �          0    48385    djangocms_column_column 
   TABLE DATA               J   COPY public.djangocms_column_column (cmsplugin_ptr_id, width) FROM stdin;
    public       postgres    false    234   ��      �          0    48390    djangocms_column_multicolumns 
   TABLE DATA               I   COPY public.djangocms_column_multicolumns (cmsplugin_ptr_id) FROM stdin;
    public       postgres    false    235   ��      �          0    48581    djangocms_file_file 
   TABLE DATA               �   COPY public.djangocms_file_file (cmsplugin_ptr_id, file_name, link_target, link_title, file_src_id, attributes, template, show_file_size) FROM stdin;
    public       postgres    false    249   ă      �          0    48650    djangocms_file_folder 
   TABLE DATA               �   COPY public.djangocms_file_folder (template, link_target, show_file_size, attributes, cmsplugin_ptr_id, folder_src_id) FROM stdin;
    public       postgres    false    250   �      �          0    48670    djangocms_googlemap_googlemap 
   TABLE DATA               4  COPY public.djangocms_googlemap_googlemap (cmsplugin_ptr_id, title, zoom, lat, lng, width, height, scrollwheel, double_click_zoom, draggable, keyboard_shortcuts, pan_control, zoom_control, street_view_control, style, fullscreen_control, map_type_control, rotate_control, scale_control, template) FROM stdin;
    public       postgres    false    251   ��      �          0    48759 #   djangocms_googlemap_googlemapmarker 
   TABLE DATA               �   COPY public.djangocms_googlemap_googlemapmarker (cmsplugin_ptr_id, title, address, lat, lng, show_content, info_content, icon_id) FROM stdin;
    public       postgres    false    252   �      �          0    48767 "   djangocms_googlemap_googlemaproute 
   TABLE DATA               w   COPY public.djangocms_googlemap_googlemaproute (cmsplugin_ptr_id, title, origin, destination, travel_mode) FROM stdin;
    public       postgres    false    253   8�      �          0    48792    djangocms_link_link 
   TABLE DATA               �   COPY public.djangocms_link_link (cmsplugin_ptr_id, name, external_link, anchor, mailto, phone, target, internal_link_id, attributes, template) FROM stdin;
    public       postgres    false    254   U�      �          0    48869    djangocms_picture_picture 
   TABLE DATA               ,  COPY public.djangocms_picture_picture (cmsplugin_ptr_id, link_url, alignment, link_page_id, height, width, picture_id, attributes, caption_text, link_attributes, link_target, use_automatic_scaling, use_crop, use_no_cropping, use_upscale, thumbnail_options_id, external_picture, template) FROM stdin;
    public       postgres    false    255   r�      �          0    49031    djangocms_snippet_snippet 
   TABLE DATA               S   COPY public.djangocms_snippet_snippet (id, name, html, template, slug) FROM stdin;
    public       postgres    false    257   ��                  0    0     djangocms_snippet_snippet_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.djangocms_snippet_snippet_id_seq', 1, false);
            public       postgres    false    256            �          0    49042    djangocms_snippet_snippetptr 
   TABLE DATA               T   COPY public.djangocms_snippet_snippetptr (cmsplugin_ptr_id, snippet_id) FROM stdin;
    public       postgres    false    258   ��      �          0    49087    djangocms_text_ckeditor_text 
   TABLE DATA               N   COPY public.djangocms_text_ckeditor_text (cmsplugin_ptr_id, body) FROM stdin;
    public       postgres    false    259   Ʉ      �          0    49110    djangocms_video_videoplayer 
   TABLE DATA               {   COPY public.djangocms_video_videoplayer (cmsplugin_ptr_id, embed_link, poster_id, attributes, label, template) FROM stdin;
    public       postgres    false    260   �      �          0    49177    djangocms_video_videosource 
   TABLE DATA               �   COPY public.djangocms_video_videosource (cmsplugin_ptr_id, text_title, text_description, attributes, source_file_id) FROM stdin;
    public       postgres    false    261   �      �          0    49185    djangocms_video_videotrack 
   TABLE DATA               p   COPY public.djangocms_video_videotrack (cmsplugin_ptr_id, kind, srclang, label, attributes, src_id) FROM stdin;
    public       postgres    false    262    �      �          0    49218    easy_thumbnails_source 
   TABLE DATA               R   COPY public.easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
    public       postgres    false    264   =�      !           0    0    easy_thumbnails_source_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.easy_thumbnails_source_id_seq', 1, false);
            public       postgres    false    263            �          0    49226    easy_thumbnails_thumbnail 
   TABLE DATA               `   COPY public.easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
    public       postgres    false    266   Z�      "           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.easy_thumbnails_thumbnail_id_seq', 1, false);
            public       postgres    false    265            �          0    49252 #   easy_thumbnails_thumbnaildimensions 
   TABLE DATA               ^   COPY public.easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
    public       postgres    false    268   w�      #           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.easy_thumbnails_thumbnaildimensions_id_seq', 1, false);
            public       postgres    false    267            �          0    48417    filer_clipboard 
   TABLE DATA               6   COPY public.filer_clipboard (id, user_id) FROM stdin;
    public       postgres    false    237   ��      $           0    0    filer_clipboard_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.filer_clipboard_id_seq', 1, false);
            public       postgres    false    236            �          0    48425    filer_clipboarditem 
   TABLE DATA               H   COPY public.filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
    public       postgres    false    239   ��      %           0    0    filer_clipboarditem_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.filer_clipboarditem_id_seq', 1, false);
            public       postgres    false    238            �          0    48433 
   filer_file 
   TABLE DATA               �   COPY public.filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
    public       postgres    false    241   ΅      &           0    0    filer_file_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.filer_file_id_seq', 1, false);
            public       postgres    false    240            �          0    48444    filer_folder 
   TABLE DATA               �   COPY public.filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
    public       postgres    false    243   �      '           0    0    filer_folder_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.filer_folder_id_seq', 1, false);
            public       postgres    false    242            �          0    48456    filer_folderpermission 
   TABLE DATA               �   COPY public.filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
    public       postgres    false    245   �      (           0    0    filer_folderpermission_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.filer_folderpermission_id_seq', 1, false);
            public       postgres    false    244            �          0    48464    filer_image 
   TABLE DATA               �   COPY public.filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
    public       postgres    false    246   %�      �          0    48554    filer_thumbnailoption 
   TABLE DATA               W   COPY public.filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
    public       postgres    false    248   B�      )           0    0    filer_thumbnailoption_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.filer_thumbnailoption_id_seq', 1, false);
            public       postgres    false    247            �          0    56016    home_plugin_shortheader 
   TABLE DATA               e   COPY public.home_plugin_shortheader (cmsplugin_ptr_id, title, description, header_image) FROM stdin;
    public       postgres    false    288   _�      �          0    49328    home_plugin_textcenter 
   TABLE DATA               V   COPY public.home_plugin_textcenter (cmsplugin_ptr_id, title, description) FROM stdin;
    public       postgres    false    276   *�      �          0    49269    menus_cachekey 
   TABLE DATA               A   COPY public.menus_cachekey (id, language, site, key) FROM stdin;
    public       postgres    false    270   (�      *           0    0    menus_cachekey_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.menus_cachekey_id_seq', 15, true);
            public       postgres    false    269            �          0    55996    portfolio_app_latestworksection 
   TABLE DATA               [   COPY public.portfolio_app_latestworksection (cmsplugin_ptr_id, title, message) FROM stdin;
    public       postgres    false    287   r�      �          0    55813    portfolio_app_mediaasset 
   TABLE DATA               k   COPY public.portfolio_app_mediaasset (id, name, type, media_asset, project_id_id, youtube_url) FROM stdin;
    public       postgres    false    282   ��      +           0    0    portfolio_app_mediaasset_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.portfolio_app_mediaasset_id_seq', 4, true);
            public       postgres    false    281            �          0    55834    portfolio_app_project 
   TABLE DATA               9  COPY public.portfolio_app_project (cmsplugin_ptr_id, slug, title, sub_title, description, skills, roles, client, length, demo_url, top_image, created_at, updated_at, short_description, youtube_embed_url, is_homepage_display, is_list_display, is_published, android_demo_url, ios_demo_url, use_case_id) FROM stdin;
    public       postgres    false    283   �      �          0    55849    portfolio_app_project_tags 
   TABLE DATA               L   COPY public.portfolio_app_project_tags (id, project_id, tag_id) FROM stdin;
    public       postgres    false    286   ��      ,           0    0 !   portfolio_app_project_tags_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.portfolio_app_project_tags_id_seq', 1, true);
            public       postgres    false    285            �          0    55842    portfolio_app_tag 
   TABLE DATA               C   COPY public.portfolio_app_tag (cmsplugin_ptr_id, name) FROM stdin;
    public       postgres    false    284   ��      �          0    49281    portfolio_models_basemodel 
   TABLE DATA               \   COPY public.portfolio_models_basemodel (id, is_enabled, created_at, updated_at) FROM stdin;
    public       postgres    false    272   �      -           0    0 !   portfolio_models_basemodel_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.portfolio_models_basemodel_id_seq', 13, true);
            public       postgres    false    271            �          0    55788    portfolio_models_contact 
   TABLE DATA               Y   COPY public.portfolio_models_contact (basemodel_ptr_id, phone, place, email) FROM stdin;
    public       postgres    false    279   ċ      �          0    49287    portfolio_models_header 
   TABLE DATA               u   COPY public.portfolio_models_header (cmsplugin_ptr_id, name, title, description, top_image, youtube_url) FROM stdin;
    public       postgres    false    273   �      �          0    55793    portfolio_models_message 
   TABLE DATA               w   COPY public.portfolio_models_message (basemodel_ptr_id, name, email_address, phone, subject, message_text) FROM stdin;
    public       postgres    false    280   5�      �          0    49295    portfolio_models_profile 
   TABLE DATA               �   COPY public.portfolio_models_profile (basemodel_ptr_id, name, title, description, avatar, introduction_youtube_url) FROM stdin;
    public       postgres    false    274   ��      �          0    55775    portfolio_models_service 
   TABLE DATA               o   COPY public.portfolio_models_service (basemodel_ptr_id, title, description, logo, icon_class_name) FROM stdin;
    public       postgres    false    278   ͌      �          0    55762    portfolio_models_skill 
   TABLE DATA               t   COPY public.portfolio_models_skill (basemodel_ptr_id, title, description, percentage, logo, class_name) FROM stdin;
    public       postgres    false    277   4�      
           2606    48241 *   aldryn_style_style aldryn_style_style_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.aldryn_style_style
    ADD CONSTRAINT aldryn_style_style_pkey PRIMARY KEY (cmsplugin_ptr_id);
 T   ALTER TABLE ONLY public.aldryn_style_style DROP CONSTRAINT aldryn_style_style_pkey;
       public         postgres    false    229    229            �	           2606    47619    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    192    192            �	           2606    47674 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    194    194    194            �	           2606    47627 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    194    194            �	           2606    47617    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    192    192            �	           2606    47660 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    190    190    190            �	           2606    47609 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    190    190            �	           2606    47645 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    198    198            �	           2606    47689 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    198    198    198            �	           2606    47635    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    196    196            �	           2606    47653 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    200    200            �	           2606    47703 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    200    200    200            �	           2606    48249     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    196    196            �	           2606    47755 .   cms_aliaspluginmodel cms_aliaspluginmodel_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_pkey PRIMARY KEY (cmsplugin_ptr_id);
 X   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_pkey;
       public         postgres    false    207    207            �	           2606    48227 .   cms_cmsplugin cms_cmsplugin_path_4917bb44_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_path_4917bb44_uniq UNIQUE (path);
 X   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_path_4917bb44_uniq;
       public         postgres    false    206    206            �	           2606    47750     cms_cmsplugin cms_cmsplugin_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_pkey;
       public         postgres    false    206    206            �	           2606    47846 ^   cms_globalpagepermission_sites cms_globalpagepermission_globalpagepermission_id__db684f41_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq UNIQUE (globalpagepermission_id, site_id);
 �   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq;
       public         postgres    false    211    211    211            �	           2606    47763 6   cms_globalpagepermission cms_globalpagepermission_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_pkey;
       public         postgres    false    209    209            �	           2606    47771 B   cms_globalpagepermission_sites cms_globalpagepermission_sites_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_sites_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermission_sites_pkey;
       public         postgres    false    211    211            �	           2606    48365 :   cms_page cms_page_node_id_publisher_is_draft_c1293d6a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq UNIQUE (node_id, publisher_is_draft);
 d   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq;
       public         postgres    false    213    213    213            �	           2606    47787    cms_page cms_page_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_pkey;
       public         postgres    false    213    213            �	           2606    48010 P   cms_page_placeholders cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq UNIQUE (page_id, placeholder_id);
 z   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq;
       public         postgres    false    221    221    221            �	           2606    47927 0   cms_page_placeholders cms_page_placeholders_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_pkey;
       public         postgres    false    221    221            �	           2606    47789 )   cms_page cms_page_publisher_public_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_key UNIQUE (publisher_public_id);
 S   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_publisher_public_id_key;
       public         postgres    false    213    213            �	           2606    47797 *   cms_pagepermission cms_pagepermission_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_pkey;
       public         postgres    false    215    215            �	           2606    47905    cms_pageuser cms_pageuser_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_pkey PRIMARY KEY (user_ptr_id);
 H   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_pkey;
       public         postgres    false    216    216            �	           2606    47910 (   cms_pageusergroup cms_pageusergroup_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_pkey PRIMARY KEY (group_ptr_id);
 R   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_pkey;
       public         postgres    false    217    217            �	           2606    47919 $   cms_placeholder cms_placeholder_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.cms_placeholder
    ADD CONSTRAINT cms_placeholder_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.cms_placeholder DROP CONSTRAINT cms_placeholder_pkey;
       public         postgres    false    219    219            �	           2606    47936 6   cms_placeholderreference cms_placeholderreference_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderreference_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderreference_pkey;
       public         postgres    false    222    222            �	           2606    47949 F   cms_staticplaceholder cms_staticplaceholder_code_site_id_21ba079c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq UNIQUE (code, site_id);
 p   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq;
       public         postgres    false    224    224    224            �	           2606    47947 0   cms_staticplaceholder cms_staticplaceholder_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_pkey;
       public         postgres    false    224    224            �	           2606    47964 2   cms_title cms_title_language_page_id_61aaf084_uniq 
   CONSTRAINT     z   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_language_page_id_61aaf084_uniq UNIQUE (language, page_id);
 \   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_language_page_id_61aaf084_uniq;
       public         postgres    false    226    226    226            �	           2606    47960    cms_title cms_title_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_pkey;
       public         postgres    false    226    226            
           2606    47962 +   cms_title cms_title_publisher_public_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_key UNIQUE (publisher_public_id);
 U   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_publisher_public_id_key;
       public         postgres    false    226    226            
           2606    48363 "   cms_treenode cms_treenode_path_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_path_key UNIQUE (path);
 L   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_path_key;
       public         postgres    false    233    233            
           2606    48361    cms_treenode cms_treenode_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_pkey;
       public         postgres    false    233    233            
           2606    48311 ,   cms_urlconfrevision cms_urlconfrevision_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.cms_urlconfrevision
    ADD CONSTRAINT cms_urlconfrevision_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.cms_urlconfrevision DROP CONSTRAINT cms_urlconfrevision_pkey;
       public         postgres    false    231    231            
           2606    47972 &   cms_usersettings cms_usersettings_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_pkey;
       public         postgres    false    228    228            	
           2606    47974 -   cms_usersettings cms_usersettings_user_id_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_key UNIQUE (user_id);
 W   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_user_id_key;
       public         postgres    false    228    228            �	           2606    47717 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    202    202            |	           2606    47601 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    188    188    188            ~	           2606    47599 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    188    188            z	           2606    47591 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    186    186            �
           2606    49320 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    275    275            �	           2606    49324 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public         postgres    false    204    204            �	           2606    47737    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public         postgres    false    204    204            
           2606    48389 4   djangocms_column_column djangocms_column_column_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_column
    ADD CONSTRAINT djangocms_column_column_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ^   ALTER TABLE ONLY public.djangocms_column_column DROP CONSTRAINT djangocms_column_column_pkey;
       public         postgres    false    234    234            
           2606    48394 @   djangocms_column_multicolumns djangocms_column_multicolumns_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_multicolumns_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.djangocms_column_multicolumns DROP CONSTRAINT djangocms_column_multicolumns_pkey;
       public         postgres    false    235    235            :
           2606    48585 ,   djangocms_file_file djangocms_file_file_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_pkey PRIMARY KEY (cmsplugin_ptr_id);
 V   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_pkey;
       public         postgres    false    249    249            =
           2606    48657 0   djangocms_file_folder djangocms_file_folder_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folder_pkey;
       public         postgres    false    250    250            ?
           2606    48678 @   djangocms_googlemap_googlemap djangocms_googlemap_googlemap_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap_googlemap_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.djangocms_googlemap_googlemap DROP CONSTRAINT djangocms_googlemap_googlemap_pkey;
       public         postgres    false    251    251            B
           2606    48766 L   djangocms_googlemap_googlemapmarker djangocms_googlemap_googlemapmarker_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap_googlemapmarker_pkey PRIMARY KEY (cmsplugin_ptr_id);
 v   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap_googlemapmarker_pkey;
       public         postgres    false    252    252            D
           2606    48774 J   djangocms_googlemap_googlemaproute djangocms_googlemap_googlemaproute_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap_googlemaproute_pkey PRIMARY KEY (cmsplugin_ptr_id);
 t   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute DROP CONSTRAINT djangocms_googlemap_googlemaproute_pkey;
       public         postgres    false    253    253            G
           2606    48799 ,   djangocms_link_link djangocms_link_link_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_pkey PRIMARY KEY (cmsplugin_ptr_id);
 V   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_pkey;
       public         postgres    false    254    254            K
           2606    48876 8   djangocms_picture_picture djangocms_picture_picture_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_pkey PRIMARY KEY (cmsplugin_ptr_id);
 b   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_picture_pkey;
       public         postgres    false    255    255            O
           2606    49041 <   djangocms_snippet_snippet djangocms_snippet_snippet_name_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_name_key UNIQUE (name);
 f   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_name_key;
       public         postgres    false    257    257            Q
           2606    49039 8   djangocms_snippet_snippet djangocms_snippet_snippet_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_pkey;
       public         postgres    false    257    257            T
           2606    49080 F   djangocms_snippet_snippet djangocms_snippet_snippet_slug_bd43cd96_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq UNIQUE (slug);
 p   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq;
       public         postgres    false    257    257            V
           2606    49046 >   djangocms_snippet_snippetptr djangocms_snippet_snippetptr_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_snippetptr_pkey;
       public         postgres    false    258    258            Y
           2606    49094 >   djangocms_text_ckeditor_text djangocms_text_ckeditor_text_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckeditor_text_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.djangocms_text_ckeditor_text DROP CONSTRAINT djangocms_text_ckeditor_text_pkey;
       public         postgres    false    259    259            [
           2606    49119 6   djangocms_video_videoplayer djangocms_video_video_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_video_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_video_pkey;
       public         postgres    false    260    260            ^
           2606    49184 <   djangocms_video_videosource djangocms_video_videosource_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_videosource_pkey PRIMARY KEY (cmsplugin_ptr_id);
 f   ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_videosource_pkey;
       public         postgres    false    261    261            a
           2606    49192 :   djangocms_video_videotrack djangocms_video_videotrack_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_pkey PRIMARY KEY (cmsplugin_ptr_id);
 d   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_videotrack_pkey;
       public         postgres    false    262    262            f
           2606    49223 2   easy_thumbnails_source easy_thumbnails_source_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_pkey;
       public         postgres    false    264    264            j
           2606    49235 M   easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);
 w   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq;
       public         postgres    false    264    264    264            l
           2606    49233 Y   easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq;
       public         postgres    false    266    266    266    266            p
           2606    49231 8   easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnail_pkey;
       public         postgres    false    266    266            u
           2606    49259 L   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey;
       public         postgres    false    268    268            w
           2606    49261 X   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key;
       public         postgres    false    268    268            
           2606    48422 $   filer_clipboard filer_clipboard_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_pkey;
       public         postgres    false    237    237            
           2606    48430 ,   filer_clipboarditem filer_clipboarditem_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_pkey;
       public         postgres    false    239    239            #
           2606    48441    filer_file filer_file_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_pkey;
       public         postgres    false    241    241            *
           2606    48463 6   filer_folder filer_folder_parent_id_name_bc773258_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_name_bc773258_uniq UNIQUE (parent_id, name);
 `   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_name_bc773258_uniq;
       public         postgres    false    243    243    243            ,
           2606    48453    filer_folder filer_folder_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_pkey;
       public         postgres    false    243    243            2
           2606    48461 2   filer_folderpermission filer_folderpermission_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_pkey;
       public         postgres    false    245    245            5
           2606    48471    filer_image filer_image_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);
 F   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_pkey;
       public         postgres    false    246    246            7
           2606    48559 0   filer_thumbnailoption filer_thumbnailoption_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.filer_thumbnailoption
    ADD CONSTRAINT filer_thumbnailoption_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.filer_thumbnailoption DROP CONSTRAINT filer_thumbnailoption_pkey;
       public         postgres    false    248    248            �
           2606    56023 4   home_plugin_shortheader home_plugin_shortheader_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.home_plugin_shortheader
    ADD CONSTRAINT home_plugin_shortheader_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ^   ALTER TABLE ONLY public.home_plugin_shortheader DROP CONSTRAINT home_plugin_shortheader_pkey;
       public         postgres    false    288    288            �
           2606    49335 2   home_plugin_textcenter home_plugin_textcenter_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.home_plugin_textcenter
    ADD CONSTRAINT home_plugin_textcenter_pkey PRIMARY KEY (cmsplugin_ptr_id);
 \   ALTER TABLE ONLY public.home_plugin_textcenter DROP CONSTRAINT home_plugin_textcenter_pkey;
       public         postgres    false    276    276            y
           2606    49278 "   menus_cachekey menus_cachekey_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.menus_cachekey
    ADD CONSTRAINT menus_cachekey_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.menus_cachekey DROP CONSTRAINT menus_cachekey_pkey;
       public         postgres    false    270    270            �
           2606    56003 D   portfolio_app_latestworksection portfolio_app_latestworksection_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_latestworksection
    ADD CONSTRAINT portfolio_app_latestworksection_pkey PRIMARY KEY (cmsplugin_ptr_id);
 n   ALTER TABLE ONLY public.portfolio_app_latestworksection DROP CONSTRAINT portfolio_app_latestworksection_pkey;
       public         postgres    false    287    287            �
           2606    55819 6   portfolio_app_mediaasset portfolio_app_mediaasset_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.portfolio_app_mediaasset
    ADD CONSTRAINT portfolio_app_mediaasset_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.portfolio_app_mediaasset DROP CONSTRAINT portfolio_app_mediaasset_pkey;
       public         postgres    false    282    282            �
           2606    55841 0   portfolio_app_project portfolio_app_project_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.portfolio_app_project
    ADD CONSTRAINT portfolio_app_project_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_project_pkey;
       public         postgres    false    283    283            �
           2606    55854 :   portfolio_app_project_tags portfolio_app_project_tags_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_project_tags_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_project_tags_pkey;
       public         postgres    false    286    286            �
           2606    55887 U   portfolio_app_project_tags portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq UNIQUE (project_id, tag_id);
    ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq;
       public         postgres    false    286    286    286            �
           2606    55846 (   portfolio_app_tag portfolio_app_tag_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.portfolio_app_tag
    ADD CONSTRAINT portfolio_app_tag_pkey PRIMARY KEY (cmsplugin_ptr_id);
 R   ALTER TABLE ONLY public.portfolio_app_tag DROP CONSTRAINT portfolio_app_tag_pkey;
       public         postgres    false    284    284            {
           2606    49286 :   portfolio_models_basemodel portfolio_models_basemodel_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.portfolio_models_basemodel
    ADD CONSTRAINT portfolio_models_basemodel_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.portfolio_models_basemodel DROP CONSTRAINT portfolio_models_basemodel_pkey;
       public         postgres    false    272    272            �
           2606    55792 6   portfolio_models_contact portfolio_models_contact_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_models_contact
    ADD CONSTRAINT portfolio_models_contact_pkey PRIMARY KEY (basemodel_ptr_id);
 `   ALTER TABLE ONLY public.portfolio_models_contact DROP CONSTRAINT portfolio_models_contact_pkey;
       public         postgres    false    279    279            }
           2606    49294 4   portfolio_models_header portfolio_models_header_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_models_header
    ADD CONSTRAINT portfolio_models_header_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ^   ALTER TABLE ONLY public.portfolio_models_header DROP CONSTRAINT portfolio_models_header_pkey;
       public         postgres    false    273    273            �
           2606    55800 6   portfolio_models_message portfolio_models_message_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_models_message
    ADD CONSTRAINT portfolio_models_message_pkey PRIMARY KEY (basemodel_ptr_id);
 `   ALTER TABLE ONLY public.portfolio_models_message DROP CONSTRAINT portfolio_models_message_pkey;
       public         postgres    false    280    280            
           2606    49302 6   portfolio_models_profile portfolio_models_profile_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_models_profile
    ADD CONSTRAINT portfolio_models_profile_pkey PRIMARY KEY (basemodel_ptr_id);
 `   ALTER TABLE ONLY public.portfolio_models_profile DROP CONSTRAINT portfolio_models_profile_pkey;
       public         postgres    false    274    274            �
           2606    55782 6   portfolio_models_service portfolio_models_service_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_models_service
    ADD CONSTRAINT portfolio_models_service_pkey PRIMARY KEY (basemodel_ptr_id);
 `   ALTER TABLE ONLY public.portfolio_models_service DROP CONSTRAINT portfolio_models_service_pkey;
       public         postgres    false    278    278            �
           2606    55769 2   portfolio_models_skill portfolio_models_skill_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.portfolio_models_skill
    ADD CONSTRAINT portfolio_models_skill_pkey PRIMARY KEY (basemodel_ptr_id);
 \   ALTER TABLE ONLY public.portfolio_models_skill DROP CONSTRAINT portfolio_models_skill_pkey;
       public         postgres    false    277    277            �	           1259    47662    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    192            �	           1259    47675 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    194            �	           1259    47676 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    194            	           1259    47661 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    190            �	           1259    47691 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    198            �	           1259    47690 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    198            �	           1259    47705 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    200            �	           1259    47704 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    200            �	           1259    48250     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    196            �	           1259    48019 2   cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a    INDEX     �   CREATE INDEX cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a ON public.cms_aliaspluginmodel USING btree (alias_placeholder_id);
 F   DROP INDEX public.cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a;
       public         postgres    false    207            �	           1259    47816 '   cms_aliaspluginmodel_plugin_id_9867676e    INDEX     m   CREATE INDEX cms_aliaspluginmodel_plugin_id_9867676e ON public.cms_aliaspluginmodel USING btree (plugin_id);
 ;   DROP INDEX public.cms_aliaspluginmodel_plugin_id_9867676e;
       public         postgres    false    207            �	           1259    47798    cms_cmsplugin_language_bbea8a48    INDEX     ]   CREATE INDEX cms_cmsplugin_language_bbea8a48 ON public.cms_cmsplugin USING btree (language);
 3   DROP INDEX public.cms_cmsplugin_language_bbea8a48;
       public         postgres    false    206            �	           1259    47799 $   cms_cmsplugin_language_bbea8a48_like    INDEX     v   CREATE INDEX cms_cmsplugin_language_bbea8a48_like ON public.cms_cmsplugin USING btree (language varchar_pattern_ops);
 8   DROP INDEX public.cms_cmsplugin_language_bbea8a48_like;
       public         postgres    false    206            �	           1259    47817     cms_cmsplugin_parent_id_fd3bd9dd    INDEX     _   CREATE INDEX cms_cmsplugin_parent_id_fd3bd9dd ON public.cms_cmsplugin USING btree (parent_id);
 4   DROP INDEX public.cms_cmsplugin_parent_id_fd3bd9dd;
       public         postgres    false    206            �	           1259    48228     cms_cmsplugin_path_4917bb44_like    INDEX     n   CREATE INDEX cms_cmsplugin_path_4917bb44_like ON public.cms_cmsplugin USING btree (path varchar_pattern_ops);
 4   DROP INDEX public.cms_cmsplugin_path_4917bb44_like;
       public         postgres    false    206            �	           1259    48013 %   cms_cmsplugin_placeholder_id_0bfa3b26    INDEX     i   CREATE INDEX cms_cmsplugin_placeholder_id_0bfa3b26 ON public.cms_cmsplugin USING btree (placeholder_id);
 9   DROP INDEX public.cms_cmsplugin_placeholder_id_0bfa3b26;
       public         postgres    false    206            �	           1259    47800 "   cms_cmsplugin_plugin_type_94e96ebf    INDEX     c   CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf ON public.cms_cmsplugin USING btree (plugin_type);
 6   DROP INDEX public.cms_cmsplugin_plugin_type_94e96ebf;
       public         postgres    false    206            �	           1259    47801 '   cms_cmsplugin_plugin_type_94e96ebf_like    INDEX     |   CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf_like ON public.cms_cmsplugin USING btree (plugin_type varchar_pattern_ops);
 ;   DROP INDEX public.cms_cmsplugin_plugin_type_94e96ebf_like;
       public         postgres    false    206            �	           1259    47833 *   cms_globalpagepermission_group_id_991b4733    INDEX     s   CREATE INDEX cms_globalpagepermission_group_id_991b4733 ON public.cms_globalpagepermission USING btree (group_id);
 >   DROP INDEX public.cms_globalpagepermission_group_id_991b4733;
       public         postgres    false    209            �	           1259    47847 ?   cms_globalpagepermission_sites_globalpagepermission_id_46bd2681    INDEX     �   CREATE INDEX cms_globalpagepermission_sites_globalpagepermission_id_46bd2681 ON public.cms_globalpagepermission_sites USING btree (globalpagepermission_id);
 S   DROP INDEX public.cms_globalpagepermission_sites_globalpagepermission_id_46bd2681;
       public         postgres    false    211            �	           1259    47848 /   cms_globalpagepermission_sites_site_id_00460b53    INDEX     }   CREATE INDEX cms_globalpagepermission_sites_site_id_00460b53 ON public.cms_globalpagepermission_sites USING btree (site_id);
 C   DROP INDEX public.cms_globalpagepermission_sites_site_id_00460b53;
       public         postgres    false    211            �	           1259    47834 )   cms_globalpagepermission_user_id_a227cee1    INDEX     q   CREATE INDEX cms_globalpagepermission_user_id_a227cee1 ON public.cms_globalpagepermission USING btree (user_id);
 =   DROP INDEX public.cms_globalpagepermission_user_id_a227cee1;
       public         postgres    false    209            �	           1259    47874 "   cms_page_application_urls_9ef47497    INDEX     c   CREATE INDEX cms_page_application_urls_9ef47497 ON public.cms_page USING btree (application_urls);
 6   DROP INDEX public.cms_page_application_urls_9ef47497;
       public         postgres    false    213            �	           1259    47875 '   cms_page_application_urls_9ef47497_like    INDEX     |   CREATE INDEX cms_page_application_urls_9ef47497_like ON public.cms_page USING btree (application_urls varchar_pattern_ops);
 ;   DROP INDEX public.cms_page_application_urls_9ef47497_like;
       public         postgres    false    213            �	           1259    47866    cms_page_in_navigation_01c24279    INDEX     ]   CREATE INDEX cms_page_in_navigation_01c24279 ON public.cms_page USING btree (in_navigation);
 3   DROP INDEX public.cms_page_in_navigation_01c24279;
       public         postgres    false    213            �	           1259    47873    cms_page_is_home_edadca07    INDEX     Q   CREATE INDEX cms_page_is_home_edadca07 ON public.cms_page USING btree (is_home);
 -   DROP INDEX public.cms_page_is_home_edadca07;
       public         postgres    false    213            �	           1259    47872 *   cms_page_limit_visibility_in_menu_30db6aa6    INDEX     s   CREATE INDEX cms_page_limit_visibility_in_menu_30db6aa6 ON public.cms_page USING btree (limit_visibility_in_menu);
 >   DROP INDEX public.cms_page_limit_visibility_in_menu_30db6aa6;
       public         postgres    false    213            �	           1259    47870 &   cms_page_navigation_extenders_c24af8dd    INDEX     k   CREATE INDEX cms_page_navigation_extenders_c24af8dd ON public.cms_page USING btree (navigation_extenders);
 :   DROP INDEX public.cms_page_navigation_extenders_c24af8dd;
       public         postgres    false    213            �	           1259    47871 +   cms_page_navigation_extenders_c24af8dd_like    INDEX     �   CREATE INDEX cms_page_navigation_extenders_c24af8dd_like ON public.cms_page USING btree (navigation_extenders varchar_pattern_ops);
 ?   DROP INDEX public.cms_page_navigation_extenders_c24af8dd_like;
       public         postgres    false    213            �	           1259    48379    cms_page_node_id_c87b85a9    INDEX     Q   CREATE INDEX cms_page_node_id_c87b85a9 ON public.cms_page USING btree (node_id);
 -   DROP INDEX public.cms_page_node_id_c87b85a9;
       public         postgres    false    213            �	           1259    48011 &   cms_page_placeholders_page_id_f2ce8dec    INDEX     k   CREATE INDEX cms_page_placeholders_page_id_f2ce8dec ON public.cms_page_placeholders USING btree (page_id);
 :   DROP INDEX public.cms_page_placeholders_page_id_f2ce8dec;
       public         postgres    false    221            �	           1259    48012 -   cms_page_placeholders_placeholder_id_6b120886    INDEX     y   CREATE INDEX cms_page_placeholders_placeholder_id_6b120886 ON public.cms_page_placeholders USING btree (placeholder_id);
 A   DROP INDEX public.cms_page_placeholders_placeholder_id_6b120886;
       public         postgres    false    221            �	           1259    47864 "   cms_page_publication_date_684fabf7    INDEX     c   CREATE INDEX cms_page_publication_date_684fabf7 ON public.cms_page USING btree (publication_date);
 6   DROP INDEX public.cms_page_publication_date_684fabf7;
       public         postgres    false    213            �	           1259    47865 &   cms_page_publication_end_date_12a0c46a    INDEX     k   CREATE INDEX cms_page_publication_end_date_12a0c46a ON public.cms_page USING btree (publication_end_date);
 :   DROP INDEX public.cms_page_publication_end_date_12a0c46a;
       public         postgres    false    213            �	           1259    47880 $   cms_page_publisher_is_draft_141cba60    INDEX     g   CREATE INDEX cms_page_publisher_is_draft_141cba60 ON public.cms_page USING btree (publisher_is_draft);
 8   DROP INDEX public.cms_page_publisher_is_draft_141cba60;
       public         postgres    false    213            �	           1259    47868    cms_page_reverse_id_ffc9ede2    INDEX     W   CREATE INDEX cms_page_reverse_id_ffc9ede2 ON public.cms_page USING btree (reverse_id);
 0   DROP INDEX public.cms_page_reverse_id_ffc9ede2;
       public         postgres    false    213            �	           1259    47869 !   cms_page_reverse_id_ffc9ede2_like    INDEX     p   CREATE INDEX cms_page_reverse_id_ffc9ede2_like ON public.cms_page USING btree (reverse_id varchar_pattern_ops);
 5   DROP INDEX public.cms_page_reverse_id_ffc9ede2_like;
       public         postgres    false    213            �	           1259    47867    cms_page_soft_root_51efccbe    INDEX     U   CREATE INDEX cms_page_soft_root_51efccbe ON public.cms_page USING btree (soft_root);
 /   DROP INDEX public.cms_page_soft_root_51efccbe;
       public         postgres    false    213            �	           1259    47898 $   cms_pagepermission_group_id_af5af193    INDEX     g   CREATE INDEX cms_pagepermission_group_id_af5af193 ON public.cms_pagepermission USING btree (group_id);
 8   DROP INDEX public.cms_pagepermission_group_id_af5af193;
       public         postgres    false    215            �	           1259    47899 #   cms_pagepermission_page_id_0ae9a163    INDEX     e   CREATE INDEX cms_pagepermission_page_id_0ae9a163 ON public.cms_pagepermission USING btree (page_id);
 7   DROP INDEX public.cms_pagepermission_page_id_0ae9a163;
       public         postgres    false    215            �	           1259    47900 #   cms_pagepermission_user_id_0c7d2b3c    INDEX     e   CREATE INDEX cms_pagepermission_user_id_0c7d2b3c ON public.cms_pagepermission USING btree (user_id);
 7   DROP INDEX public.cms_pagepermission_user_id_0c7d2b3c;
       public         postgres    false    215            �	           1259    47985 #   cms_pageuser_created_by_id_8e9fbf83    INDEX     e   CREATE INDEX cms_pageuser_created_by_id_8e9fbf83 ON public.cms_pageuser USING btree (created_by_id);
 7   DROP INDEX public.cms_pageuser_created_by_id_8e9fbf83;
       public         postgres    false    216            �	           1259    47996 (   cms_pageusergroup_created_by_id_7d57fa39    INDEX     o   CREATE INDEX cms_pageusergroup_created_by_id_7d57fa39 ON public.cms_pageusergroup USING btree (created_by_id);
 <   DROP INDEX public.cms_pageusergroup_created_by_id_7d57fa39;
       public         postgres    false    217            �	           1259    48086    cms_placeholder_slot_0bc04d21    INDEX     Y   CREATE INDEX cms_placeholder_slot_0bc04d21 ON public.cms_placeholder USING btree (slot);
 1   DROP INDEX public.cms_placeholder_slot_0bc04d21;
       public         postgres    false    219            �	           1259    48085 "   cms_placeholder_slot_0bc04d21_like    INDEX     r   CREATE INDEX cms_placeholder_slot_0bc04d21_like ON public.cms_placeholder USING btree (slot varchar_pattern_ops);
 6   DROP INDEX public.cms_placeholder_slot_0bc04d21_like;
       public         postgres    false    219            �	           1259    48035 4   cms_placeholderreference_placeholder_ref_id_244759b1    INDEX     �   CREATE INDEX cms_placeholderreference_placeholder_ref_id_244759b1 ON public.cms_placeholderreference USING btree (placeholder_ref_id);
 H   DROP INDEX public.cms_placeholderreference_placeholder_ref_id_244759b1;
       public         postgres    false    222            �	           1259    48051 '   cms_staticplaceholder_draft_id_5aee407b    INDEX     m   CREATE INDEX cms_staticplaceholder_draft_id_5aee407b ON public.cms_staticplaceholder USING btree (draft_id);
 ;   DROP INDEX public.cms_staticplaceholder_draft_id_5aee407b;
       public         postgres    false    224            �	           1259    48052 (   cms_staticplaceholder_public_id_876aaa66    INDEX     o   CREATE INDEX cms_staticplaceholder_public_id_876aaa66 ON public.cms_staticplaceholder USING btree (public_id);
 <   DROP INDEX public.cms_staticplaceholder_public_id_876aaa66;
       public         postgres    false    224            �	           1259    48053 &   cms_staticplaceholder_site_id_dc6a85b6    INDEX     k   CREATE INDEX cms_staticplaceholder_site_id_dc6a85b6 ON public.cms_staticplaceholder USING btree (site_id);
 :   DROP INDEX public.cms_staticplaceholder_site_id_dc6a85b6;
       public         postgres    false    224            �	           1259    48070 $   cms_title_has_url_overwrite_ecf27bb9    INDEX     g   CREATE INDEX cms_title_has_url_overwrite_ecf27bb9 ON public.cms_title USING btree (has_url_overwrite);
 8   DROP INDEX public.cms_title_has_url_overwrite_ecf27bb9;
       public         postgres    false    226            �	           1259    48064    cms_title_language_50a0dfa1    INDEX     U   CREATE INDEX cms_title_language_50a0dfa1 ON public.cms_title USING btree (language);
 /   DROP INDEX public.cms_title_language_50a0dfa1;
       public         postgres    false    226            �	           1259    48065     cms_title_language_50a0dfa1_like    INDEX     n   CREATE INDEX cms_title_language_50a0dfa1_like ON public.cms_title USING btree (language varchar_pattern_ops);
 4   DROP INDEX public.cms_title_language_50a0dfa1_like;
       public         postgres    false    226            �	           1259    48073    cms_title_page_id_5fade2a3    INDEX     S   CREATE INDEX cms_title_page_id_5fade2a3 ON public.cms_title USING btree (page_id);
 .   DROP INDEX public.cms_title_page_id_5fade2a3;
       public         postgres    false    226            �	           1259    48068    cms_title_path_c484314c    INDEX     M   CREATE INDEX cms_title_path_c484314c ON public.cms_title USING btree (path);
 +   DROP INDEX public.cms_title_path_c484314c;
       public         postgres    false    226            �	           1259    48069    cms_title_path_c484314c_like    INDEX     f   CREATE INDEX cms_title_path_c484314c_like ON public.cms_title USING btree (path varchar_pattern_ops);
 0   DROP INDEX public.cms_title_path_c484314c_like;
       public         postgres    false    226            �	           1259    48071 %   cms_title_publisher_is_draft_95874c88    INDEX     i   CREATE INDEX cms_title_publisher_is_draft_95874c88 ON public.cms_title USING btree (publisher_is_draft);
 9   DROP INDEX public.cms_title_publisher_is_draft_95874c88;
       public         postgres    false    226            
           1259    48072 "   cms_title_publisher_state_9a952b0f    INDEX     c   CREATE INDEX cms_title_publisher_state_9a952b0f ON public.cms_title USING btree (publisher_state);
 6   DROP INDEX public.cms_title_publisher_state_9a952b0f;
       public         postgres    false    226            
           1259    48066    cms_title_slug_4947d146    INDEX     M   CREATE INDEX cms_title_slug_4947d146 ON public.cms_title USING btree (slug);
 +   DROP INDEX public.cms_title_slug_4947d146;
       public         postgres    false    226            
           1259    48067    cms_title_slug_4947d146_like    INDEX     f   CREATE INDEX cms_title_slug_4947d146_like ON public.cms_title USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.cms_title_slug_4947d146_like;
       public         postgres    false    226            
           1259    48377    cms_treenode_parent_id_59bb02c4    INDEX     ]   CREATE INDEX cms_treenode_parent_id_59bb02c4 ON public.cms_treenode USING btree (parent_id);
 3   DROP INDEX public.cms_treenode_parent_id_59bb02c4;
       public         postgres    false    233            
           1259    48376    cms_treenode_path_6eb22885_like    INDEX     l   CREATE INDEX cms_treenode_path_6eb22885_like ON public.cms_treenode USING btree (path varchar_pattern_ops);
 3   DROP INDEX public.cms_treenode_path_6eb22885_like;
       public         postgres    false    233            
           1259    48378    cms_treenode_site_id_d3f46985    INDEX     Y   CREATE INDEX cms_treenode_site_id_d3f46985 ON public.cms_treenode USING btree (site_id);
 1   DROP INDEX public.cms_treenode_site_id_d3f46985;
       public         postgres    false    233            
           1259    48084 &   cms_usersettings_clipboard_id_3ae17c19    INDEX     k   CREATE INDEX cms_usersettings_clipboard_id_3ae17c19 ON public.cms_usersettings USING btree (clipboard_id);
 :   DROP INDEX public.cms_usersettings_clipboard_id_3ae17c19;
       public         postgres    false    228            �	           1259    47728 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    202            �	           1259    47729 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    202            �
           1259    49322 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    275            �
           1259    49321 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    275            �	           1259    49325     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public         postgres    false    204            8
           1259    48612 (   djangocms_file_file_file_src_id_74ac14a5    INDEX     o   CREATE INDEX djangocms_file_file_file_src_id_74ac14a5 ON public.djangocms_file_file USING btree (file_src_id);
 <   DROP INDEX public.djangocms_file_file_file_src_id_74ac14a5;
       public         postgres    false    249            ;
           1259    48668 ,   djangocms_file_folder_folder_src_id_9558406a    INDEX     w   CREATE INDEX djangocms_file_folder_folder_src_id_9558406a ON public.djangocms_file_folder USING btree (folder_src_id);
 @   DROP INDEX public.djangocms_file_folder_folder_src_id_9558406a;
       public         postgres    false    250            @
           1259    48786 4   djangocms_googlemap_googlemapmarker_icon_id_3b103213    INDEX     �   CREATE INDEX djangocms_googlemap_googlemapmarker_icon_id_3b103213 ON public.djangocms_googlemap_googlemapmarker USING btree (icon_id);
 H   DROP INDEX public.djangocms_googlemap_googlemapmarker_icon_id_3b103213;
       public         postgres    false    252            E
           1259    48810 )   djangocms_link_link_page_link_id_adba1bc7    INDEX     u   CREATE INDEX djangocms_link_link_page_link_id_adba1bc7 ON public.djangocms_link_link USING btree (internal_link_id);
 =   DROP INDEX public.djangocms_link_link_page_link_id_adba1bc7;
       public         postgres    false    254            H
           1259    48887 /   djangocms_picture_picture_page_link_id_d5c782e0    INDEX     }   CREATE INDEX djangocms_picture_picture_page_link_id_d5c782e0 ON public.djangocms_picture_picture USING btree (link_page_id);
 C   DROP INDEX public.djangocms_picture_picture_page_link_id_d5c782e0;
       public         postgres    false    255            I
           1259    48893 -   djangocms_picture_picture_picture_id_f7d6711b    INDEX     y   CREATE INDEX djangocms_picture_picture_picture_id_f7d6711b ON public.djangocms_picture_picture USING btree (picture_id);
 A   DROP INDEX public.djangocms_picture_picture_picture_id_f7d6711b;
       public         postgres    false    255            L
           1259    49021 7   djangocms_picture_picture_thumbnail_options_id_59cf80d1    INDEX     �   CREATE INDEX djangocms_picture_picture_thumbnail_options_id_59cf80d1 ON public.djangocms_picture_picture USING btree (thumbnail_options_id);
 K   DROP INDEX public.djangocms_picture_picture_thumbnail_options_id_59cf80d1;
       public         postgres    false    255            M
           1259    49047 ,   djangocms_snippet_snippet_name_260f397b_like    INDEX     �   CREATE INDEX djangocms_snippet_snippet_name_260f397b_like ON public.djangocms_snippet_snippet USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.djangocms_snippet_snippet_name_260f397b_like;
       public         postgres    false    257            R
           1259    49081 ,   djangocms_snippet_snippet_slug_bd43cd96_like    INDEX     �   CREATE INDEX djangocms_snippet_snippet_slug_bd43cd96_like ON public.djangocms_snippet_snippet USING btree (slug varchar_pattern_ops);
 @   DROP INDEX public.djangocms_snippet_snippet_slug_bd43cd96_like;
       public         postgres    false    257            W
           1259    49058 0   djangocms_snippet_snippetptr_snippet_id_56b99614    INDEX        CREATE INDEX djangocms_snippet_snippetptr_snippet_id_56b99614 ON public.djangocms_snippet_snippetptr USING btree (snippet_id);
 D   DROP INDEX public.djangocms_snippet_snippetptr_snippet_id_56b99614;
       public         postgres    false    258            \
           1259    49153 .   djangocms_video_videoplayer_poster_id_07790e24    INDEX     {   CREATE INDEX djangocms_video_videoplayer_poster_id_07790e24 ON public.djangocms_video_videoplayer USING btree (poster_id);
 B   DROP INDEX public.djangocms_video_videoplayer_poster_id_07790e24;
       public         postgres    false    260            _
           1259    49203 3   djangocms_video_videosource_source_file_id_16f11167    INDEX     �   CREATE INDEX djangocms_video_videosource_source_file_id_16f11167 ON public.djangocms_video_videosource USING btree (source_file_id);
 G   DROP INDEX public.djangocms_video_videosource_source_file_id_16f11167;
       public         postgres    false    261            b
           1259    49214 *   djangocms_video_videotrack_src_id_e5a015d8    INDEX     s   CREATE INDEX djangocms_video_videotrack_src_id_e5a015d8 ON public.djangocms_video_videotrack USING btree (src_id);
 >   DROP INDEX public.djangocms_video_videotrack_src_id_e5a015d8;
       public         postgres    false    262            c
           1259    49238 $   easy_thumbnails_source_name_5fe0edc6    INDEX     g   CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON public.easy_thumbnails_source USING btree (name);
 8   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6;
       public         postgres    false    264            d
           1259    49239 )   easy_thumbnails_source_name_5fe0edc6_like    INDEX     �   CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON public.easy_thumbnails_source USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6_like;
       public         postgres    false    264            g
           1259    49236 ,   easy_thumbnails_source_storage_hash_946cbcc9    INDEX     w   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON public.easy_thumbnails_source USING btree (storage_hash);
 @   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9;
       public         postgres    false    264            h
           1259    49237 1   easy_thumbnails_source_storage_hash_946cbcc9_like    INDEX     �   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON public.easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);
 E   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9_like;
       public         postgres    false    264            m
           1259    49247 '   easy_thumbnails_thumbnail_name_b5882c31    INDEX     m   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON public.easy_thumbnails_thumbnail USING btree (name);
 ;   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31;
       public         postgres    false    266            n
           1259    49248 ,   easy_thumbnails_thumbnail_name_b5882c31_like    INDEX     �   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON public.easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31_like;
       public         postgres    false    266            q
           1259    49249 ,   easy_thumbnails_thumbnail_source_id_5b57bc77    INDEX     w   CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON public.easy_thumbnails_thumbnail USING btree (source_id);
 @   DROP INDEX public.easy_thumbnails_thumbnail_source_id_5b57bc77;
       public         postgres    false    266            r
           1259    49245 /   easy_thumbnails_thumbnail_storage_hash_f1435f49    INDEX     }   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON public.easy_thumbnails_thumbnail USING btree (storage_hash);
 C   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49;
       public         postgres    false    266            s
           1259    49246 4   easy_thumbnails_thumbnail_storage_hash_f1435f49_like    INDEX     �   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON public.easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);
 H   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49_like;
       public         postgres    false    266            
           1259    48536     filer_clipboard_user_id_b52ff0bc    INDEX     _   CREATE INDEX filer_clipboard_user_id_b52ff0bc ON public.filer_clipboard USING btree (user_id);
 4   DROP INDEX public.filer_clipboard_user_id_b52ff0bc;
       public         postgres    false    237            
           1259    48477 )   filer_clipboarditem_clipboard_id_7a76518b    INDEX     q   CREATE INDEX filer_clipboarditem_clipboard_id_7a76518b ON public.filer_clipboarditem USING btree (clipboard_id);
 =   DROP INDEX public.filer_clipboarditem_clipboard_id_7a76518b;
       public         postgres    false    239            
           1259    48530 $   filer_clipboarditem_file_id_06196f80    INDEX     g   CREATE INDEX filer_clipboarditem_file_id_06196f80 ON public.filer_clipboarditem USING btree (file_id);
 8   DROP INDEX public.filer_clipboarditem_file_id_06196f80;
       public         postgres    false    239             
           1259    48512    filer_file_folder_id_af803bbb    INDEX     Y   CREATE INDEX filer_file_folder_id_af803bbb ON public.filer_file USING btree (folder_id);
 1   DROP INDEX public.filer_file_folder_id_af803bbb;
       public         postgres    false    241            !
           1259    48518    filer_file_owner_id_b9e32671    INDEX     W   CREATE INDEX filer_file_owner_id_b9e32671 ON public.filer_file USING btree (owner_id);
 0   DROP INDEX public.filer_file_owner_id_b9e32671;
       public         postgres    false    241            $
           1259    48524 (   filer_file_polymorphic_ctype_id_f44903c1    INDEX     o   CREATE INDEX filer_file_polymorphic_ctype_id_f44903c1 ON public.filer_file USING btree (polymorphic_ctype_id);
 <   DROP INDEX public.filer_file_polymorphic_ctype_id_f44903c1;
       public         postgres    false    241            %
           1259    48491    filer_folder_level_b631d28a    INDEX     U   CREATE INDEX filer_folder_level_b631d28a ON public.filer_folder USING btree (level);
 /   DROP INDEX public.filer_folder_level_b631d28a;
       public         postgres    false    243            &
           1259    48488    filer_folder_lft_2c2b69f1    INDEX     Q   CREATE INDEX filer_folder_lft_2c2b69f1 ON public.filer_folder USING btree (lft);
 -   DROP INDEX public.filer_folder_lft_2c2b69f1;
       public         postgres    false    243            '
           1259    48492    filer_folder_owner_id_be530fb4    INDEX     [   CREATE INDEX filer_folder_owner_id_be530fb4 ON public.filer_folder USING btree (owner_id);
 2   DROP INDEX public.filer_folder_owner_id_be530fb4;
       public         postgres    false    243            (
           1259    48493    filer_folder_parent_id_308aecda    INDEX     ]   CREATE INDEX filer_folder_parent_id_308aecda ON public.filer_folder USING btree (parent_id);
 3   DROP INDEX public.filer_folder_parent_id_308aecda;
       public         postgres    false    243            -
           1259    48489    filer_folder_rght_34946267    INDEX     S   CREATE INDEX filer_folder_rght_34946267 ON public.filer_folder USING btree (rght);
 .   DROP INDEX public.filer_folder_rght_34946267;
       public         postgres    false    243            .
           1259    48490    filer_folder_tree_id_b016223c    INDEX     Y   CREATE INDEX filer_folder_tree_id_b016223c ON public.filer_folder USING btree (tree_id);
 1   DROP INDEX public.filer_folder_tree_id_b016223c;
       public         postgres    false    243            /
           1259    48509 )   filer_folderpermission_folder_id_5d02f1da    INDEX     q   CREATE INDEX filer_folderpermission_folder_id_5d02f1da ON public.filer_folderpermission USING btree (folder_id);
 =   DROP INDEX public.filer_folderpermission_folder_id_5d02f1da;
       public         postgres    false    245            0
           1259    48510 (   filer_folderpermission_group_id_8901bafa    INDEX     o   CREATE INDEX filer_folderpermission_group_id_8901bafa ON public.filer_folderpermission USING btree (group_id);
 <   DROP INDEX public.filer_folderpermission_group_id_8901bafa;
       public         postgres    false    245            3
           1259    48511 '   filer_folderpermission_user_id_7673d4b6    INDEX     m   CREATE INDEX filer_folderpermission_user_id_7673d4b6 ON public.filer_folderpermission USING btree (user_id);
 ;   DROP INDEX public.filer_folderpermission_user_id_7673d4b6;
       public         postgres    false    245            �
           1259    55890 /   portfolio_app_mediaasset_project_id_id_2bd68af0    INDEX     }   CREATE INDEX portfolio_app_mediaasset_project_id_id_2bd68af0 ON public.portfolio_app_mediaasset USING btree (project_id_id);
 C   DROP INDEX public.portfolio_app_mediaasset_project_id_id_2bd68af0;
       public         postgres    false    282            �
           1259    55868 #   portfolio_app_project_slug_c7455a3e    INDEX     e   CREATE INDEX portfolio_app_project_slug_c7455a3e ON public.portfolio_app_project USING btree (slug);
 7   DROP INDEX public.portfolio_app_project_slug_c7455a3e;
       public         postgres    false    283            �
           1259    55869 (   portfolio_app_project_slug_c7455a3e_like    INDEX     ~   CREATE INDEX portfolio_app_project_slug_c7455a3e_like ON public.portfolio_app_project USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.portfolio_app_project_slug_c7455a3e_like;
       public         postgres    false    283            �
           1259    55888 .   portfolio_app_project_tags_project_id_74c3a22f    INDEX     {   CREATE INDEX portfolio_app_project_tags_project_id_74c3a22f ON public.portfolio_app_project_tags USING btree (project_id);
 B   DROP INDEX public.portfolio_app_project_tags_project_id_74c3a22f;
       public         postgres    false    286            �
           1259    55889 *   portfolio_app_project_tags_tag_id_023e820f    INDEX     s   CREATE INDEX portfolio_app_project_tags_tag_id_023e820f ON public.portfolio_app_project_tags USING btree (tag_id);
 >   DROP INDEX public.portfolio_app_project_tags_tag_id_023e820f;
       public         postgres    false    286            �
           1259    56009 *   portfolio_app_project_use_case_id_1f4e58c6    INDEX     s   CREATE INDEX portfolio_app_project_use_case_id_1f4e58c6 ON public.portfolio_app_project USING btree (use_case_id);
 >   DROP INDEX public.portfolio_app_project_use_case_id_1f4e58c6;
       public         postgres    false    283            �
           2606    48242 L   aldryn_style_style aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.aldryn_style_style
    ADD CONSTRAINT aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.aldryn_style_style DROP CONSTRAINT aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl;
       public       postgres    false    206    2480    229            �
           2606    47668 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    2435    194    190            �
           2606    47663 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    2440    194    192            �
           2606    47654 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    188    190    2430            �
           2606    47683 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    198    2440    192            �
           2606    47678 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    198    2448    196            �
           2606    47697 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    190    200    2435            �
           2606    47692 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    196    2448    200            �
           2606    48020 T   cms_aliaspluginmodel cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place FOREIGN KEY (alias_placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place;
       public       postgres    false    2530    207    219            �
           2606    48314 P   cms_aliaspluginmodel cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl;
       public       postgres    false    2480    207    206            �
           2606    49135 P   cms_aliaspluginmodel cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id FOREIGN KEY (plugin_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id;
       public       postgres    false    206    2480    207            �
           2606    49130 B   cms_cmsplugin cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id FOREIGN KEY (parent_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id;
       public       postgres    false    2480    206    206            �
           2606    48014 I   cms_cmsplugin cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id FOREIGN KEY (placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id;
       public       postgres    false    2530    219    206            �
           2606    48294 ^   cms_globalpagepermission_sites cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa FOREIGN KEY (globalpagepermission_id) REFERENCES public.cms_globalpagepermission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa;
       public       postgres    false    2490    209    211            �
           2606    48289 Q   cms_globalpagepermission_sites cms_globalpagepermis_site_id_00460b53_fk_django_si    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si;
       public       postgres    false    204    211    2472            �
           2606    47823 T   cms_globalpagepermission cms_globalpagepermission_group_id_991b4733_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id;
       public       postgres    false    209    2440    192            �
           2606    48279 E   cms_globalpagepermission cms_globalpagepermission_user_id_a227cee1_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk;
       public       postgres    false    196    209    2448            �
           2606    48380 5   cms_page cms_page_node_id_c87b85a9_fk_cms_treenode_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id FOREIGN KEY (node_id) REFERENCES public.cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id;
       public       postgres    false    233    2579    213            �
           2606    48004 O   cms_page_placeholders cms_page_placeholder_placeholder_id_6b120886_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place FOREIGN KEY (placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place;
       public       postgres    false    2530    221    219            �
           2606    47999 K   cms_page_placeholders cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id;
       public       postgres    false    213    221    2509            �
           2606    47854 =   cms_page cms_page_publisher_public_id_d619fca0_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id FOREIGN KEY (publisher_public_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id;
       public       postgres    false    213    213    2509            �
           2606    47883 H   cms_pagepermission cms_pagepermission_group_id_af5af193_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id;
       public       postgres    false    2440    192    215            �
           2606    47888 E   cms_pagepermission cms_pagepermission_page_id_0ae9a163_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id;
       public       postgres    false    213    215    2509            �
           2606    48259 9   cms_pagepermission cms_pagepermission_user_id_0c7d2b3c_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk;
       public       postgres    false    196    2448    215            �
           2606    48274 3   cms_pageuser cms_pageuser_created_by_id_8e9fbf83_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk;
       public       postgres    false    216    2448    196            �
           2606    48269 1   cms_pageuser cms_pageuser_user_ptr_id_b3d65592_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk FOREIGN KEY (user_ptr_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk;
       public       postgres    false    196    2448    216            �
           2606    48284 =   cms_pageusergroup cms_pageusergroup_created_by_id_7d57fa39_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk;
       public       postgres    false    217    196    2448            �
           2606    47986 J   cms_pageusergroup cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id FOREIGN KEY (group_ptr_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id;
       public       postgres    false    192    217    2440            �
           2606    48319 T   cms_placeholderreference cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl;
       public       postgres    false    206    2480    222            �
           2606    48030 V   cms_placeholderreference cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place FOREIGN KEY (placeholder_ref_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place;
       public       postgres    false    2530    222    219            �
           2606    48036 S   cms_staticplaceholder cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id FOREIGN KEY (draft_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id;
       public       postgres    false    219    224    2530            �
           2606    48041 T   cms_staticplaceholder cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id FOREIGN KEY (public_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id;
       public       postgres    false    219    224    2530            �
           2606    48046 N   cms_staticplaceholder cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id;
       public       postgres    false    224    2472    204            �
           2606    48054 3   cms_title cms_title_page_id_5fade2a3_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id;
       public       postgres    false    226    213    2509            �
           2606    48059 @   cms_title cms_title_publisher_public_id_003a2702_fk_cms_title_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id FOREIGN KEY (publisher_public_id) REFERENCES public.cms_title(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id;
       public       postgres    false    2558    226    226            �
           2606    48366 ?   cms_treenode cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id FOREIGN KEY (parent_id) REFERENCES public.cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id;
       public       postgres    false    233    2579    233            �
           2606    48371 <   cms_treenode cms_treenode_site_id_d3f46985_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id;
       public       postgres    false    233    204    2472            �
           2606    48074 M   cms_usersettings cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id FOREIGN KEY (clipboard_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id;
       public       postgres    false    219    228    2530            �
           2606    48299 B   cms_usersettings cms_usersettings_user_id_09633b2d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id;
       public       postgres    false    2448    196    228            �
           2606    47718 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    188    202    2430            �
           2606    48254 5   django_admin_log django_admin_log_user_id_c564eba6_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk;
       public       postgres    false    2448    202    196            �
           2606    48405 S   djangocms_column_column djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_column
    ADD CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.djangocms_column_column DROP CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl;
       public       postgres    false    206    2480    234            �
           2606    48410 Y   djangocms_column_multicolumns djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_column_multicolumns DROP CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl;
       public       postgres    false    206    235    2480            �
           2606    48607 N   djangocms_file_file djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl;
       public       postgres    false    2480    249    206            �
           2606    48645 M   djangocms_file_file djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id FOREIGN KEY (file_src_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id;
       public       postgres    false    241    2595    249            �
           2606    48658 Q   djangocms_file_folder djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl;
       public       postgres    false    250    206    2480            �
           2606    48663 U   djangocms_file_folder djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id FOREIGN KEY (folder_src_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id;
       public       postgres    false    250    243    2604            �
           2606    48775 _   djangocms_googlemap_googlemapmarker djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl;
       public       postgres    false    2480    206    252            �
           2606    48737 Y   djangocms_googlemap_googlemap djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl;
       public       postgres    false    2480    206    251            �
           2606    48780 ^   djangocms_googlemap_googlemaproute djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl;
       public       postgres    false    2480    253    206            �
           2606    48787 V   djangocms_googlemap_googlemapmarker djangocms_googlemap__icon_id_3b103213_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima FOREIGN KEY (icon_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima;
       public       postgres    false    246    2613    252            �
           2606    48816 N   djangocms_link_link djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl;
       public       postgres    false    206    254    2480            �
           2606    48844 P   djangocms_link_link djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id FOREIGN KEY (internal_link_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id;
       public       postgres    false    254    2509    213            �
           2606    49016 U   djangocms_picture_picture djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl;
       public       postgres    false    2480    255    206            �
           2606    49011 O   djangocms_picture_picture djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima FOREIGN KEY (picture_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima;
       public       postgres    false    246    255    2613            �
           2606    49022 Y   djangocms_picture_picture djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu FOREIGN KEY (thumbnail_options_id) REFERENCES public.filer_thumbnailoption(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu;
       public       postgres    false    255    248    2615            �
           2606    49006 X   djangocms_picture_picture djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id FOREIGN KEY (link_page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id;
       public       postgres    false    2509    213    255            �
           2606    49074 X   djangocms_snippet_snippetptr djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl;
       public       postgres    false    206    2480    258            �
           2606    49082 P   djangocms_snippet_snippetptr djangocms_snippet_snippetptr_snippet_id_56b99614_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_snippet_id_56b99614_fk FOREIGN KEY (snippet_id) REFERENCES public.djangocms_snippet_snippet(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_snippetptr_snippet_id_56b99614_fk;
       public       postgres    false    257    2641    258            �
           2606    49105 X   djangocms_text_ckeditor_text djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text DROP CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl;
       public       postgres    false    259    206    2480            �
           2606    49140 W   djangocms_video_videoplayer djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl;
       public       postgres    false    206    260    2480            �
           2606    49193 W   djangocms_video_videosource djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl;
       public       postgres    false    206    261    2480            �
           2606    49204 V   djangocms_video_videotrack djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl;
       public       postgres    false    2480    262    206            �
           2606    49154 P   djangocms_video_videoplayer djangocms_video_vide_poster_id_07790e24_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima FOREIGN KEY (poster_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima;
       public       postgres    false    246    260    2613            �
           2606    49198 U   djangocms_video_videosource djangocms_video_vide_source_file_id_16f11167_fk_filer_fil    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil FOREIGN KEY (source_file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil;
       public       postgres    false    261    2595    241            �
           2606    49209 V   djangocms_video_videotrack djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id FOREIGN KEY (src_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id;
       public       postgres    false    2595    262    241            �
           2606    49240 N   easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum    FK CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES public.easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum;
       public       postgres    false    264    266    2662            �
           2606    49262 [   easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum    FK CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES public.easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum;
       public       postgres    false    268    266    2672            �
           2606    48537 @   filer_clipboard filer_clipboard_user_id_b52ff0bc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id;
       public       postgres    false    237    2448    196            �
           2606    48472 S   filer_clipboarditem filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES public.filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id;
       public       postgres    false    237    2586    239            �
           2606    48531 I   filer_clipboarditem filer_clipboarditem_file_id_06196f80_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id;
       public       postgres    false    239    241    2595            �
           2606    48513 ;   filer_file filer_file_folder_id_af803bbb_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id;
       public       postgres    false    241    243    2604            �
           2606    48561 7   filer_file filer_file_owner_id_b9e32671_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id;
       public       postgres    false    2448    196    241            �
           2606    48547 @   filer_file filer_file_polymorphic_ctype_id_f44903c1_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co FOREIGN KEY (polymorphic_ctype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co;
       public       postgres    false    241    2430    188            �
           2606    48566 ;   filer_folder filer_folder_owner_id_be530fb4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id;
       public       postgres    false    2448    243    196            �
           2606    48483 ?   filer_folder filer_folder_parent_id_308aecda_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id;
       public       postgres    false    243    243    2604            �
           2606    48494 S   filer_folderpermission filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id;
       public       postgres    false    243    2604    245            �
           2606    48499 P   filer_folderpermission filer_folderpermission_group_id_8901bafa_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id;
       public       postgres    false    245    2440    192            �
           2606    48571 N   filer_folderpermission filer_folderpermission_user_id_7673d4b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id;
       public       postgres    false    196    2448    245            �
           2606    48576 =   filer_image filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id;
       public       postgres    false    2595    246    241                        2606    56024 S   home_plugin_shortheader home_plugin_shorthea_cmsplugin_ptr_id_02129fdf_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_plugin_shortheader
    ADD CONSTRAINT home_plugin_shorthea_cmsplugin_ptr_id_02129fdf_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.home_plugin_shortheader DROP CONSTRAINT home_plugin_shorthea_cmsplugin_ptr_id_02129fdf_fk_cms_cmspl;
       public       postgres    false    2480    206    288            �
           2606    49336 R   home_plugin_textcenter home_plugin_textcent_cmsplugin_ptr_id_1f227552_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.home_plugin_textcenter
    ADD CONSTRAINT home_plugin_textcent_cmsplugin_ptr_id_1f227552_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.home_plugin_textcenter DROP CONSTRAINT home_plugin_textcent_cmsplugin_ptr_id_1f227552_fk_cms_cmspl;
       public       postgres    false    2480    206    276            �
           2606    56004 [   portfolio_app_latestworksection portfolio_app_latest_cmsplugin_ptr_id_50eeea7a_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_latestworksection
    ADD CONSTRAINT portfolio_app_latest_cmsplugin_ptr_id_50eeea7a_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.portfolio_app_latestworksection DROP CONSTRAINT portfolio_app_latest_cmsplugin_ptr_id_50eeea7a_fk_cms_cmspl;
       public       postgres    false    206    287    2480            �
           2606    55891 Q   portfolio_app_mediaasset portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_mediaasset
    ADD CONSTRAINT portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio FOREIGN KEY (project_id_id) REFERENCES public.portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_mediaasset DROP CONSTRAINT portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio;
       public       postgres    false    283    282    2706            �
           2606    55858 Q   portfolio_app_project portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project
    ADD CONSTRAINT portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl;
       public       postgres    false    206    2480    283            �
           2606    55876 P   portfolio_app_project_tags portfolio_app_projec_project_id_74c3a22f_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_projec_project_id_74c3a22f_fk_portfolio FOREIGN KEY (project_id) REFERENCES public.portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_projec_project_id_74c3a22f_fk_portfolio;
       public       postgres    false    283    2706    286            �
           2606    55881 L   portfolio_app_project_tags portfolio_app_projec_tag_id_023e820f_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_projec_tag_id_023e820f_fk_portfolio FOREIGN KEY (tag_id) REFERENCES public.portfolio_app_tag(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_projec_tag_id_023e820f_fk_portfolio;
       public       postgres    false    2711    284    286            �
           2606    56010 L   portfolio_app_project portfolio_app_projec_use_case_id_1f4e58c6_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project
    ADD CONSTRAINT portfolio_app_projec_use_case_id_1f4e58c6_fk_cms_place FOREIGN KEY (use_case_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_projec_use_case_id_1f4e58c6_fk_cms_place;
       public       postgres    false    219    2530    283            �
           2606    55871 Q   portfolio_app_tag portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_tag
    ADD CONSTRAINT portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_tag DROP CONSTRAINT portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id;
       public       postgres    false    284    206    2480            �
           2606    55801 T   portfolio_models_contact portfolio_models_con_basemodel_ptr_id_3449ea0d_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_models_contact
    ADD CONSTRAINT portfolio_models_con_basemodel_ptr_id_3449ea0d_fk_portfolio FOREIGN KEY (basemodel_ptr_id) REFERENCES public.portfolio_models_basemodel(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.portfolio_models_contact DROP CONSTRAINT portfolio_models_con_basemodel_ptr_id_3449ea0d_fk_portfolio;
       public       postgres    false    2683    272    279            �
           2606    49303 S   portfolio_models_header portfolio_models_hea_cmsplugin_ptr_id_a298e850_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_models_header
    ADD CONSTRAINT portfolio_models_hea_cmsplugin_ptr_id_a298e850_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.portfolio_models_header DROP CONSTRAINT portfolio_models_hea_cmsplugin_ptr_id_a298e850_fk_cms_cmspl;
       public       postgres    false    273    2480    206            �
           2606    55806 T   portfolio_models_message portfolio_models_mes_basemodel_ptr_id_6867faa6_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_models_message
    ADD CONSTRAINT portfolio_models_mes_basemodel_ptr_id_6867faa6_fk_portfolio FOREIGN KEY (basemodel_ptr_id) REFERENCES public.portfolio_models_basemodel(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.portfolio_models_message DROP CONSTRAINT portfolio_models_mes_basemodel_ptr_id_6867faa6_fk_portfolio;
       public       postgres    false    2683    272    280            �
           2606    49308 T   portfolio_models_profile portfolio_models_pro_basemodel_ptr_id_05edc554_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_models_profile
    ADD CONSTRAINT portfolio_models_pro_basemodel_ptr_id_05edc554_fk_portfolio FOREIGN KEY (basemodel_ptr_id) REFERENCES public.portfolio_models_basemodel(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.portfolio_models_profile DROP CONSTRAINT portfolio_models_pro_basemodel_ptr_id_05edc554_fk_portfolio;
       public       postgres    false    274    2683    272            �
           2606    55783 T   portfolio_models_service portfolio_models_ser_basemodel_ptr_id_cca8501e_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_models_service
    ADD CONSTRAINT portfolio_models_ser_basemodel_ptr_id_cca8501e_fk_portfolio FOREIGN KEY (basemodel_ptr_id) REFERENCES public.portfolio_models_basemodel(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.portfolio_models_service DROP CONSTRAINT portfolio_models_ser_basemodel_ptr_id_cca8501e_fk_portfolio;
       public       postgres    false    272    2683    278            �
           2606    55770 R   portfolio_models_skill portfolio_models_ski_basemodel_ptr_id_82c7aa6c_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_models_skill
    ADD CONSTRAINT portfolio_models_ski_basemodel_ptr_id_82c7aa6c_fk_portfolio FOREIGN KEY (basemodel_ptr_id) REFERENCES public.portfolio_models_basemodel(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.portfolio_models_skill DROP CONSTRAINT portfolio_models_ski_basemodel_ptr_id_82c7aa6c_fk_portfolio;
       public       postgres    false    272    2683    277            �      x������ � �      }      x������ � �            x������ � �      {   �  x�u�M��&���)|l/U�[�s��+=��ʛ�d�u��v��o_`f`;�H~���b�~���s�ŏu~���l��t��(���P�.x���W[<��U��ԛO�*���K��mX�a��J�����kQ���6���Ѯy�mc��yz>T����I��'��]��=�Y5�z�W��K�v ���2V~��������`��Ѧ�me0�)��7��(A�MT�Xx�� Sڴ\@b��y�	�&#v�͍ӵp*�ou
�tHj��9�mF�<�F9��&Ҥn�U���եxͱ�z�Jt �W �4���x���pW�-	�y[ C��JA�H&��(`���~zbì�{��P!_�'�g?umc;.o?enb�CT�g���8��#��nz��
�հi_��u4�w�(���u������1�^�E1��, �&|�_*���F��|���1����k���:������c/v^�ޠ���$�=�o{���m��a7���	�0�8xX��9�,~��*SGi�>k1e3�	XL�f2 ����D�2`�����<(S�q�FV��ø4���*��|�k1�%K�8.f��IÛÞ�b�?�l�g��hsE�L7�4�Uɪ(_ȕUl��*��N"ep%��bC�I��6X�p��ii��-�:��� ��!��� JAFl{"�-"#7>n-_��~U��; �Zt��	q�m�R�fk�#�)E���s����!I	k,�S�nŦi/���¹�Ia��Q���a�O��JpԐ�Һ[)���Q��(��M����VU�Y����M��Jx�(��z!�<�<����/�+��(,Y�Է�
G,u.�����m�n�l����ͮ��k��vWO�EAP�ៃ�F%������z��B�-�P N�`� k(a��38	M�����DQKHU�Hxf{^���pۍ0-}����ɷX���������|�1�l�?�Aڍ��b�vCE�xh���7U�GH���dĠE�Kö~<o��~�鱆S,,�1�u'Fr/�&l(w/��q�V��9�����+�t'���в��\�"E�R������OBw��g����;�v۳yu���e�ٻ'U�RH*r�������\������!-j����F�7����ˮ�7��e���I'�6db���z�	@	Y�X�61�'�9I���՚C���Jz�1���V�l�1���J��1�ֳ<#�֘j�O�~kL��q��
���w�����> 6H]z ��	C��S5&"O���w�� ���&�L���><vU5��I��c�K��1��%�նђ7�X��[��n��l��t�5,������^���j08�q��w���
F��IAӭ���7������֦:�bq��j�ձ�\d-������^�F*�.�z!4F�:)�~!3�*)0���p��?�}�~��<�r�0�Ge2BX`��d�)Ӄ�m}Lzp�5��&ǹ��w5y�#L�g���OIN�qd�Ua.��j�%�\
��H���{�7�>ኅ�F"�f�x(��{�X��l�Q}�my�"Ql���X%��3�ݹ|�ޯ,�+� �51�pĄ�&[��ᜧ�l6x�	I�ȏ;��$���Ni� �.��gq��ի��r)��fG���m��ف7��T��atcF�ȫ�HЫ��0�ѫ�P����_��wM��`B�!���(,���;�l�g��e��A�!r{�(��EP��H��&�ߠ��c�����(��+��₁�#����2�E�,n5oN�[�rY�8v����c�_�	���z;�P>�&�PD�	�`�M(ӄB0��_U����"�UXJ3' ���vI1��]���i�t��9�@[�'(�%X��S���-�N�p���	g�ߏi^�[�6�<r��<g8�?!��YMD��oZ���i�      �   �   x�u�Ok�0���S��M&���τR׆ْL����:۠i���_v�m{�����45}ۑ��&��	�p�_�r-�޶�z�t�����<�N�S���0�r�����j'ugo���ͨnG���K �;���҄���B04�?��U#:S�l
3+7U�����6y�Z��7C��R�:�Y��郕��i8I1M�I�)�Lx���Zwv�n@c��}��v�� ���Kp      �      x������ � �      �      x������ � �      �      x������ � �      �   ~  x���KO�P�׾��}իy���}�"��b��F1rCK�}��Ac;ɋ(G>ߝ;g�X@Qn��ryS��u���S-�ۻjSn��נO8B��3��@.���GL.�F��RH�� h�Ŝ����n�'��M�c��,�FO�4�j@�0�ǐq�S1��_�궬/���z�3p&��/˘s�+��qǊ=KB[�e��]�yY��#�Rd7jU�������P2��6G��?�Sc�
'��tb�������zQm���� ������s.�a��yÎ�/�UֿW���,d�<��T�2����������ޞ�j?M7�Pfh��S�iю�UĎ�؃��0;�h�zx�ށ���*����i����;"و�I�ulTB'a����q�6� ,��&�;���!�wt�FIp��E�.���{C�6���m����uP�`�!��j��d�%a?�8d�ԐkQ'�C���c.M�u�jq�1fP=�v_)F��a>��P����պ|E�E,%�a�AeD�y��h(���8��;�M�թ!��J�ӡ>���g�R3a��R�E5j@�~Oh�:�gC�3��u �|�N��i
kUA�g����rfv`���C����t�W��4�&�P��b��1�"ܩK      �      x������ � �      �      x������ � �      �   ;  x���=k�0�Y��K��t��-C�YB)��`7��6�������
��b�p�Q��r_��	5�{�� F&E��N��ԑv<�~~�Y�$�vj�j���z�ԩ��EV
-�Y����L0n�d5*����k_�z���}:��t�a��	�B��Ѫ`�Ac��N�-O�)�ա��u�U,ڪ�%5#iV!rP�	�8�mB����[��Nc��Q{�>x�+O�D
��Z�g@�OU^��n>��n���1�hlԤ���̵�K�r�����V��K?�`�D
4[�~Emj�_�[C�2mw��ʍ�R�;��^      �   e   x�λ�DQQ�f�I�����
�*�q�#�d���nvz8�妏��C_+����@���Ъ\�hWn\tڇnt�_�������ny��.<ۍW{���8��      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�]P[��0�6�Y5�@�{�JQnkmH�<���7U@�<��`,���8����`���2�v��@=aT:�f��'M�U���q�r�S1��S��� _Y���������kV*!���C��$���8A�d��9�-��T�d"��`	闬]�v���n�[�4@I��Nk�� ��ZG}\*����ō�E)�s����}�b�&�^.χ�n���b���=��z��:�fe���4�?�p      �      x������ � �      �      x������ � �      �   �   x���?k1�g�Sd/1�-���%S)t�R�;z���b��c��I�� �H?���������m�/�`iƭi6賳�IYҋ	Pے��Pާ2��v
p����`H���l��	#����C�mQ�}�����g��}O@��φ�w�b\�A��'��A���&�T�r���mX��g�eL��nF1��1��#�F$`��Z������f��_rc�D���knQr�k���l�E      �   3   x�3�4000�4�4����4�2�|��7�M|3������� '��      �   4   x�3�L1NJ4J5J�5�02�5I1�е4NK�MI1K1O4L62J2������ �S
�      �      x�3�L��4�4����� U4      �   �  x��U�n�0<+_!�ڔ����詗�@��"ѱ�2$�h�߻�b7��0H�<3\�Β��3�iR��W��v��'nHn�M�X�[z�{��e��׷���	\����i	Z鉂L�QL� g87�A�
��8�Z�&�N	�4�X5Ǣ`��}$����X�Q2��q2b�=�̱�3� �Ʊ��x
҃��\�!��,������b�o�>'��nN�E,Z�����s������i#`�:�y����;/��2B�n���KZ���&�1a*�c�B1l��.�SK5#{T��� ٲ
벥ǻ�m�T�������9��\[*�� ���ɗ���:o�ǹ8��*,����]��e5RV���"z���'S�y��_��\x�c ��ӻl���{*�����ɢn�e���#��\���-W�L%hݞ�p�o0���e�H�B0m�L�_Y�w�uU�1���ͺ�.�ѷm�	�./B��������/R;T���Dc��J�#�1�X�-��(1L<�G��c鄜�A0+P�@�s��UyR�Hh�@�K���'�jNW�*��2�Y��+y�~x�b��!ۄ��ӼmCS^?<����"��,�8�&ϣa�w��9�#P;R�-��Xc�Cg���jN�|ԡt�J�9�K4����:4��"���DA)��@Dw��z��EwJ�C��x�R���@�{�,��_�U}�Ҏg�vqq�� �      y   Y  x�}T��� �Mf�"��]v�C5Un������۵����@�Ilr �XkF�8x�a� �G����F�S�ށX�>�1�\�1QT�Z�2����ik��%,��� '�:�3�'�8��%�)n^�:����kUU e�Z!�;4P-���_��3�dZ��:��x�%�J��K]U�.J�Ft-�v,\�*�v+[u*D�ِ׹�'�]��/U�ѐ8��]2�Km9":*
���z�f�Hr�v�;N��>��=�]2�͗����>��.�M��5:\����"�-��
�+�ӧ�>��Q�>����T����^��Ƈ\�8C���'��Iƺ�1�#��{�ӤFyLPˍ�7�ul٠n��]Y9S�q�0'�HP�v�E}�F�;��t�ǈl�AT29f�� ��d�D��{�{�V�<�?;X�?�у��[��C��J|�?r��^/S���sT-it�����.)O�hYAX�1���_J7'vU	�Ɩ՞P�7!���*��ɚ��e��Z�/s��G��6�W��CSa��s�F����q��SO��ié(��J%� �o%���ވ�zh�7�(�����DAs�5���4�����_ �/��      w   �  x����n���g]��t�gl��^˖��-�$d�Y��3�!!eh�J�Ҫ��`Ϸ잻�X���T;��ͱ��ݡ�_�?�7ГVO ������r�pW�Ƿ�
T�BR�]�?4�$��`��\%X��+/��,���}�%��+��^fX�"��f|do�%�{>< �ޘ���̫⧍�@%��e E���z�H%j�d�ti�a֚�)Ai��@��5��ZD�c�f� �b�*Kb��Lb���*��k�7~�M�=��El9�|�`6Ā��O`$1 �l����&G��š<��k��<)���a�<4�}5��y��a������;:��X��@`�(�� $G]����#�����Ų.�ɳa����	����CH�G��\��+�)S��L!����Uy�9��?��/�:H��G���k����cݗ��?4��t�(՟��������8q�X����ۗ��jڻth���\0f����u�q�\y�2l/�d��0Ɗ���έ�s.�ƦZ�t���s�_,�L_F�m@�T�] nZ�G�6�j��!�������굖w�אp���u��)�m4�I��d^%�M�A�br���$��ܷl����hb��JK�=�\#�Z�I�5%Ug{�:�9=�H�Kq�TJ*��0
u�_z��@1�X`��Ť��mz�����)�_���nZ�\�'ɱ�KSp�;��H��?��c!GZ{>�XN.���\:$9.��r܃%C�"���w/M[���n-��TK�=^4�!�]�k�,��d.��r]�o���G.��rP��c�Aڸ��vV:vOþ��ɐ�xU/�P���0��}��VF_��UN(�ˉ��|n��it��[�ɣ���W�8?���&���sS�떻�>���U�ԩ=�*z{����Xc��6�P�?�:�s�2^�.�q&��&��{A��e4aZv�by��M~�J�p��W��×�n�Ri�z>3@`��"^�v����OI`Q��ߟhcnw�-C{����k�j9�Bގ���u�%�������`������~��ז�ӽ�`��:�Ė�x��G{)Ala5�iލۂ�̣-��433�K��+�[0s?d�G.�<|۰��s_� >�C����M� �-����u��1?%��1'�~
#�����,o�=n���AI��}(���-\=T�;�Tͳ�xg�t
Z�9��P��l%+�����%�))U�S�x�{"����@�@�'P��l�K59�cg%��d7y��hJqu|h�XO�i�8A�Џ���T���g]�
�0�Ё���e5�}��y܈x��MҾ
��(3�O#�6�8;���5�+�&���;!���h*�$1�v֤uB���@p��Q�nNr>|�Bʷn7κL�����}j�eÝte}�@�#9/��V��!�3�+@�<�HA&�G�[,�~�%S2hj#�.���\�;<��P�fy���<ʤK��C��򢴌r��|�~=�.Sx�pyA�����T��\��3e���8�R\d���#ד�*�����v��ô�g,�d�T��@��c��YJ	�Y����{gV	82:���	�k>�;q\��h�	)(喛��).�|�[.o��pڻ|E�Q�/���}3vwϼL	��ud��(��^���7�A��SW����)2��^`n��Z�g�W!�la�6;���4p�6�tHR����`�q�jJpX�*�+fӉ3r(xz2�$/AL����.
g����>����W�$��*6:OD�^]��q�1Bd�"2>�Pb�G�	�����(���ߡ4m&3�]]�׋�{��X����#��*������~4lZZ�q�uhǏ�y�'��}���N]?�tm�q���G�o���������2���a���p�B��'�V�� �*��j���q�N���n����-M�@�2��f1.���ɸ'e�U$�QT�r�4����<�N_x�R�^�z�> T��|a��
�0<Y]x��H�9f��N7Q�+�O���Ԝ�v-��#R�X�cB��К��rx*9�ئ�fܚc֜ s8��b~ͱ_9�(s��pC�r��2E9�5ǭ8�D�S�2�_��#fx㿕�zx��[���.> qM7�2%�Q@��4s����[� N��c)�j́5G^O�v�V��\qP	]p�i[��a���]�>��e#�o��Me�1���i��j�b����V9��~����-����)Ґ�禿�_�~���?�      �   �  x�mSMo�0='������:RIX�`e����08!������MR��O�޼�y��{��:��Jg,��fOf�D7�͙��IHl��B-�Q�dj=c����Ƚ陎��$�V����@ۚ'O��4�US�qu�1���~�Ԝ�@;���;} �:�ǶT��^�}��LE�Ϭ��y�U��JH�r�j������U��(� �8�m��v�>h����8���gCـ�z
e|�
Pe=��f�%Ґ��@4��}	�N����W[<���-��`�ʒ��d�o�y}�"����fB�#��O�]�T��0�oρM�{f�<�i�{d�kS��?l�o��%��m}��a�<��j���]2����'퉫ᄞ�E_�� ����&W3r3jS�uy�g������S�7�b<6����)[9�gL׽�EY͘+��:t[����,�����[��:�c@���KE�U�
�_���+���=*���^��7���|��]{�T���;���h���?9��Hԭ�By;��N ��F�9�9�Wo�D��d�~���'�v�{�O�}O�=�c�2ʤGy�a*f��gi01���4*��WB�I�u��_�~xB?��,����Q JN�|�8??�	e-12      �      x�3�L�H�-�I�K��Efs��qqq �<	�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�M��j1D�ޯ�{��D��؋#k����Hv ��8�B�����%��m��>�8����`�ʭ(7\ι��1�r+�ݪ�<#�E��;�o'E��}>�F߱����.�7!��f�rĨ(���ȕ�	d-�:���C����H����ٛDH���B2�V�N��b�Ռ�#��b�|�˲< �SY�      �   �   x�%O1R1��^��&sCzz��hh{s� �[��o�=^�.i��Vڕ��ó*�	d�h�k���@>Np�n����
:t�(y!�oh(	���Xn3�f晼`

�;
������XTʎf��E'n���&K�96_��"N��i�z���%�mx)�dm=Q,�.M�8�6���re��+�b�˅SodH��]��l��;'Z�^$sݑD:(�i���c�R'z�>��d�(��1���8��n�t�      �   :   x�34�L��4�L�-�7�3�3��M�+���OI-�O͋7����"���Ĵ�=... ��      �      x������ � �      �   r   x�3�,�LV0�4�,�/*I�������M��N���5����tL����*H�42���2k0®�(�#<����I�1X�1v��>�I��yHL�L�k0��,NIuwA�����  �<
      �   h  x��RMO1=�_1ك�/а p�ĘH8���Y��V�m����ˬ(��x3��3�y��M��Ml����B��&�`6f3��P(��p��\I��x8v��@ᒠ܂"�!U�M�@�[X��RH���5���}�p0�K�u ��k�tp7di��v��R5�j��iM�::���F�ֆ�x���0��i�nB� ���.pAeQ�F�ĀP��gA�2���'��J��wy2H͈}I|�Px=�W�D2�[vG,��;�456J4�G�p��uT��e�P<��̃���>�8�o_��X�'���v�qV��9d�~��_I��u�{�Y��۟#��q}��ݿZ����~�C�y�5KZ��;���      �      x�3�42�42������ G�      �   &   x�32�OM�22�t�K)��L�22�������� q��      �   �   x�}�In1E��)j���Yr��_]�Q��H����PA���rC�b��և������P0$���?S�؋S�\���R?��>B�kUk'J��I5͕�G	�
 ��!�Ŷ�߈+[z��}hqz������������X�M�������{>p�W��0as	�S���`6��z8p�P��"6�������q�`F鋉�	�C      �   D   x�34�40426153�����Wp��T����PH�,��,�H���Js--��s3s���s�b���� A�      �      x������ � �      �   D   x�34����P�K/�L���S%E��@AC��������\NC3s#3KK#�������� �      �   4   x�3�I�U�H��t+���.IL�VOMRpI-K��/H-�������� 2��      �   W  x�M�Mo�0������v�v�v+�����`;�R�F�q�?~݁�Ǌ�>���רu�	B`�;h����&d��t�LR�0 L�v��j%EPd ���(����:�����tQt�_`!�����N�P�{t���Ρ'�eJ�wIʚZ,�ʴtʟ��S�&�����$	�'��N|@tpR���h�Lk��AId�@��`J��D��.p�av��eL��iX�����\�<K���c�p�����[��1X@ɐ-z����*�\�@�4�/.�;��\�d1_W����B�(v=�sΣ9(㧩ú�IC��m^��^uэ�X
��N��ޢn�F�����wy���.��      �   �   x�Ŏ;n1Dk�)x Cp`��2@Jc�ʕFb�$jMQ��Q��q3��x��n,�~�;�<ז!�T*`&[A(R)YS��3��2%6g^0�
Fy��I�D��z�5�0������#|%���nS����z��:w�����%ԗ����#��mޟ6ow�۵���>�P S�Ʒ�@#���SB��������a~d��G     