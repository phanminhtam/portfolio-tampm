PGDMP     (    ;    
            v            tam_portfolio_db    9.6.9    9.6.9 m              0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                       false                        1262    25676    tam_portfolio_db    DATABASE     �   CREATE DATABASE tam_portfolio_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
     DROP DATABASE tam_portfolio_db;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            !           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            "           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            $           1259    27731    about_me_plugin_aboutme    TABLE       CREATE TABLE public.about_me_plugin_aboutme (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(250) NOT NULL,
    description text NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 +   DROP TABLE public.about_me_plugin_aboutme;
       public         postgres    false    3            "           1259    27697    about_me_plugin_skillcontainer    TABLE     �   CREATE TABLE public.about_me_plugin_skillcontainer (
    cmsplugin_ptr_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 2   DROP TABLE public.about_me_plugin_skillcontainer;
       public         postgres    false    3            #           1259    27702    about_me_plugin_skillcontent    TABLE     �  CREATE TABLE public.about_me_plugin_skillcontent (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL,
    skill_percentage integer NOT NULL,
    skill_type smallint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    CONSTRAINT about_me_plugin_skillcontent_skill_type_check CHECK ((skill_type >= 0))
);
 0   DROP TABLE public.about_me_plugin_skillcontent;
       public         postgres    false    3            %           1259    27744    about_me_plugin_statistic    TABLE     �  CREATE TABLE public.about_me_plugin_statistic (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(100) NOT NULL,
    statistic integer NOT NULL,
    statistic_unit smallint NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    font_icon character varying(100),
    CONSTRAINT about_me_plugin_statistic_statistic_unit_check CHECK ((statistic_unit >= 0))
);
 -   DROP TABLE public.about_me_plugin_statistic;
       public         postgres    false    3            �            1259    26330    aldryn_style_style    TABLE       CREATE TABLE public.aldryn_style_style (
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
       public         postgres    false    3            �            1259    25708 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    25706    auth_group_id_seq    SEQUENCE     z   CREATE SEQUENCE public.auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    192    3            #           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
            public       postgres    false    191            �            1259    25718    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    25716    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    3    194            $           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
            public       postgres    false    193            �            1259    25700    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    25698    auth_permission_id_seq    SEQUENCE        CREATE SEQUENCE public.auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    190    3            %           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
            public       postgres    false    189            �            1259    25726 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
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
       public         postgres    false    3            �            1259    25736    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    25734    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    198    3            &           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
            public       postgres    false    197            �            1259    25724    auth_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    196    3            '           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
            public       postgres    false    195            �            1259    25744    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    25742 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    3    200            (           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
            public       postgres    false    199            �            1259    25847    cms_aliaspluginmodel    TABLE     �   CREATE TABLE public.cms_aliaspluginmodel (
    cmsplugin_ptr_id integer NOT NULL,
    plugin_id integer,
    alias_placeholder_id integer
);
 (   DROP TABLE public.cms_aliaspluginmodel;
       public         postgres    false    3            �            1259    25836    cms_cmsplugin    TABLE     �  CREATE TABLE public.cms_cmsplugin (
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
       public         postgres    false    3            �            1259    25834    cms_cmsplugin_id_seq    SEQUENCE     }   CREATE SEQUENCE public.cms_cmsplugin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cms_cmsplugin_id_seq;
       public       postgres    false    206    3            )           0    0    cms_cmsplugin_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.cms_cmsplugin_id_seq OWNED BY public.cms_cmsplugin.id;
            public       postgres    false    205            �            1259    25854    cms_globalpagepermission    TABLE     �  CREATE TABLE public.cms_globalpagepermission (
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
       public         postgres    false    3            �            1259    25852    cms_globalpagepermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_globalpagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.cms_globalpagepermission_id_seq;
       public       postgres    false    3    209            *           0    0    cms_globalpagepermission_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.cms_globalpagepermission_id_seq OWNED BY public.cms_globalpagepermission.id;
            public       postgres    false    208            �            1259    25862    cms_globalpagepermission_sites    TABLE     �   CREATE TABLE public.cms_globalpagepermission_sites (
    id integer NOT NULL,
    globalpagepermission_id integer NOT NULL,
    site_id integer NOT NULL
);
 2   DROP TABLE public.cms_globalpagepermission_sites;
       public         postgres    false    3            �            1259    25860 %   cms_globalpagepermission_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_globalpagepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.cms_globalpagepermission_sites_id_seq;
       public       postgres    false    3    211            +           0    0 %   cms_globalpagepermission_sites_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.cms_globalpagepermission_sites_id_seq OWNED BY public.cms_globalpagepermission_sites.id;
            public       postgres    false    210            �            1259    25870    cms_page    TABLE     �  CREATE TABLE public.cms_page (
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
       public         postgres    false    3            �            1259    25868    cms_page_id_seq    SEQUENCE     x   CREATE SEQUENCE public.cms_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cms_page_id_seq;
       public       postgres    false    213    3            ,           0    0    cms_page_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.cms_page_id_seq OWNED BY public.cms_page.id;
            public       postgres    false    212            �            1259    26018    cms_page_placeholders    TABLE     �   CREATE TABLE public.cms_page_placeholders (
    id integer NOT NULL,
    page_id integer NOT NULL,
    placeholder_id integer NOT NULL
);
 )   DROP TABLE public.cms_page_placeholders;
       public         postgres    false    3            �            1259    26016    cms_page_placeholders_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_page_placeholders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cms_page_placeholders_id_seq;
       public       postgres    false    221    3            -           0    0    cms_page_placeholders_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.cms_page_placeholders_id_seq OWNED BY public.cms_page_placeholders.id;
            public       postgres    false    220            �            1259    25888    cms_pagepermission    TABLE     �  CREATE TABLE public.cms_pagepermission (
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
       public         postgres    false    3            �            1259    25886    cms_pagepermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_pagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.cms_pagepermission_id_seq;
       public       postgres    false    215    3            .           0    0    cms_pagepermission_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE public.cms_pagepermission_id_seq OWNED BY public.cms_pagepermission.id;
            public       postgres    false    214            �            1259    25997    cms_pageuser    TABLE     k   CREATE TABLE public.cms_pageuser (
    user_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);
     DROP TABLE public.cms_pageuser;
       public         postgres    false    3            �            1259    26002    cms_pageusergroup    TABLE     q   CREATE TABLE public.cms_pageusergroup (
    group_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);
 %   DROP TABLE public.cms_pageusergroup;
       public         postgres    false    3            �            1259    26009    cms_placeholder    TABLE     �   CREATE TABLE public.cms_placeholder (
    id integer NOT NULL,
    slot character varying(255) NOT NULL,
    default_width smallint,
    CONSTRAINT cms_placeholder_default_width_check CHECK ((default_width >= 0))
);
 #   DROP TABLE public.cms_placeholder;
       public         postgres    false    3            �            1259    26007    cms_placeholder_id_seq    SEQUENCE        CREATE SEQUENCE public.cms_placeholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cms_placeholder_id_seq;
       public       postgres    false    3    219            /           0    0    cms_placeholder_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.cms_placeholder_id_seq OWNED BY public.cms_placeholder.id;
            public       postgres    false    218            �            1259    26028    cms_placeholderreference    TABLE     �   CREATE TABLE public.cms_placeholderreference (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    placeholder_ref_id integer
);
 ,   DROP TABLE public.cms_placeholderreference;
       public         postgres    false    3            �            1259    26035    cms_staticplaceholder    TABLE     -  CREATE TABLE public.cms_staticplaceholder (
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
       public         postgres    false    3            �            1259    26033    cms_staticplaceholder_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_staticplaceholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cms_staticplaceholder_id_seq;
       public       postgres    false    3    224            0           0    0    cms_staticplaceholder_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.cms_staticplaceholder_id_seq OWNED BY public.cms_staticplaceholder.id;
            public       postgres    false    223            �            1259    26048 	   cms_title    TABLE     �  CREATE TABLE public.cms_title (
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
       public         postgres    false    3            �            1259    26046    cms_title_id_seq    SEQUENCE     y   CREATE SEQUENCE public.cms_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cms_title_id_seq;
       public       postgres    false    3    226            1           0    0    cms_title_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.cms_title_id_seq OWNED BY public.cms_title.id;
            public       postgres    false    225            �            1259    26449    cms_treenode    TABLE     Z  CREATE TABLE public.cms_treenode (
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
       public         postgres    false    3            �            1259    26447    cms_treenode_id_seq    SEQUENCE     |   CREATE SEQUENCE public.cms_treenode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cms_treenode_id_seq;
       public       postgres    false    233    3            2           0    0    cms_treenode_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.cms_treenode_id_seq OWNED BY public.cms_treenode.id;
            public       postgres    false    232            �            1259    26402    cms_urlconfrevision    TABLE     s   CREATE TABLE public.cms_urlconfrevision (
    id integer NOT NULL,
    revision character varying(255) NOT NULL
);
 '   DROP TABLE public.cms_urlconfrevision;
       public         postgres    false    3            �            1259    26400    cms_urlconfrevision_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_urlconfrevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.cms_urlconfrevision_id_seq;
       public       postgres    false    231    3            3           0    0    cms_urlconfrevision_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.cms_urlconfrevision_id_seq OWNED BY public.cms_urlconfrevision.id;
            public       postgres    false    230            �            1259    26063    cms_usersettings    TABLE     �   CREATE TABLE public.cms_usersettings (
    id integer NOT NULL,
    language character varying(10) NOT NULL,
    clipboard_id integer,
    user_id integer NOT NULL
);
 $   DROP TABLE public.cms_usersettings;
       public         postgres    false    3            �            1259    26061    cms_usersettings_id_seq    SEQUENCE     �   CREATE SEQUENCE public.cms_usersettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cms_usersettings_id_seq;
       public       postgres    false    228    3            4           0    0    cms_usersettings_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.cms_usersettings_id_seq OWNED BY public.cms_usersettings.id;
            public       postgres    false    227            �            1259    26480    contact_me_plugin_message    TABLE     q  CREATE TABLE public.contact_me_plugin_message (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL,
    email_address character varying(100) NOT NULL,
    message text,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL,
    phone character varying(50),
    subject character varying(250)
);
 -   DROP TABLE public.contact_me_plugin_message;
       public         postgres    false    3            �            1259    26488    contact_me_plugin_shortcontact    TABLE     �   CREATE TABLE public.contact_me_plugin_shortcontact (
    cmsplugin_ptr_id integer NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(100),
    working_location character varying(100)
);
 2   DROP TABLE public.contact_me_plugin_shortcontact;
       public         postgres    false    3            �            1259    25804    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
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
       public         postgres    false    3            �            1259    25802    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    202    3            5           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
            public       postgres    false    201            �            1259    25690    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    25688    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    188    3            6           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
            public       postgres    false    187            �            1259    25679    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    25677    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    186    3            7           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
            public       postgres    false    185                       1259    27634    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    25828    django_site    TABLE     �   CREATE TABLE public.django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         postgres    false    3            �            1259    25826    django_site_id_seq    SEQUENCE     {   CREATE SEQUENCE public.django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public       postgres    false    204    3            8           0    0    django_site_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.django_site_id_seq OWNED BY public.django_site.id;
            public       postgres    false    203            �            1259    26524    djangocms_column_column    TABLE     �   CREATE TABLE public.djangocms_column_column (
    cmsplugin_ptr_id integer NOT NULL,
    width character varying(50) NOT NULL
);
 +   DROP TABLE public.djangocms_column_column;
       public         postgres    false    3            �            1259    26529    djangocms_column_multicolumns    TABLE     ]   CREATE TABLE public.djangocms_column_multicolumns (
    cmsplugin_ptr_id integer NOT NULL
);
 1   DROP TABLE public.djangocms_column_multicolumns;
       public         postgres    false    3            �            1259    26720    djangocms_file_file    TABLE     m  CREATE TABLE public.djangocms_file_file (
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
       public         postgres    false    3            �            1259    26789    djangocms_file_folder    TABLE       CREATE TABLE public.djangocms_file_folder (
    template character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    show_file_size boolean NOT NULL,
    attributes text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    folder_src_id integer
);
 )   DROP TABLE public.djangocms_file_folder;
       public         postgres    false    3            �            1259    26809    djangocms_googlemap_googlemap    TABLE     i  CREATE TABLE public.djangocms_googlemap_googlemap (
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
       public         postgres    false    3            �            1259    26899 #   djangocms_googlemap_googlemapmarker    TABLE     A  CREATE TABLE public.djangocms_googlemap_googlemapmarker (
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
       public         postgres    false    3            �            1259    26907 "   djangocms_googlemap_googlemaproute    TABLE       CREATE TABLE public.djangocms_googlemap_googlemaproute (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    origin character varying(255) NOT NULL,
    destination character varying(255) NOT NULL,
    travel_mode character varying(255) NOT NULL
);
 6   DROP TABLE public.djangocms_googlemap_googlemaproute;
       public         postgres    false    3                        1259    26932    djangocms_link_link    TABLE     �  CREATE TABLE public.djangocms_link_link (
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
       public         postgres    false    3                       1259    27009    djangocms_picture_picture    TABLE     e  CREATE TABLE public.djangocms_picture_picture (
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
       public         postgres    false    3                       1259    27171    djangocms_snippet_snippet    TABLE     �   CREATE TABLE public.djangocms_snippet_snippet (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    html text NOT NULL,
    template character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 -   DROP TABLE public.djangocms_snippet_snippet;
       public         postgres    false    3                       1259    27169     djangocms_snippet_snippet_id_seq    SEQUENCE     �   CREATE SEQUENCE public.djangocms_snippet_snippet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.djangocms_snippet_snippet_id_seq;
       public       postgres    false    3    259            9           0    0     djangocms_snippet_snippet_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.djangocms_snippet_snippet_id_seq OWNED BY public.djangocms_snippet_snippet.id;
            public       postgres    false    258                       1259    27182    djangocms_snippet_snippetptr    TABLE     }   CREATE TABLE public.djangocms_snippet_snippetptr (
    cmsplugin_ptr_id integer NOT NULL,
    snippet_id integer NOT NULL
);
 0   DROP TABLE public.djangocms_snippet_snippetptr;
       public         postgres    false    3                       1259    27227    djangocms_text_ckeditor_text    TABLE     t   CREATE TABLE public.djangocms_text_ckeditor_text (
    cmsplugin_ptr_id integer NOT NULL,
    body text NOT NULL
);
 0   DROP TABLE public.djangocms_text_ckeditor_text;
       public         postgres    false    3                       1259    27250    djangocms_video_videoplayer    TABLE       CREATE TABLE public.djangocms_video_videoplayer (
    cmsplugin_ptr_id integer NOT NULL,
    embed_link character varying(255) NOT NULL,
    poster_id integer,
    attributes text NOT NULL,
    label character varying(255) NOT NULL,
    template character varying(255) NOT NULL
);
 /   DROP TABLE public.djangocms_video_videoplayer;
       public         postgres    false    3                       1259    27317    djangocms_video_videosource    TABLE     �   CREATE TABLE public.djangocms_video_videosource (
    cmsplugin_ptr_id integer NOT NULL,
    text_title character varying(255) NOT NULL,
    text_description text NOT NULL,
    attributes text NOT NULL,
    source_file_id integer
);
 /   DROP TABLE public.djangocms_video_videosource;
       public         postgres    false    3                       1259    27325    djangocms_video_videotrack    TABLE       CREATE TABLE public.djangocms_video_videotrack (
    cmsplugin_ptr_id integer NOT NULL,
    kind character varying(255) NOT NULL,
    srclang character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    attributes text NOT NULL,
    src_id integer
);
 .   DROP TABLE public.djangocms_video_videotrack;
       public         postgres    false    3            
           1259    27358    easy_thumbnails_source    TABLE     �   CREATE TABLE public.easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);
 *   DROP TABLE public.easy_thumbnails_source;
       public         postgres    false    3            	           1259    27356    easy_thumbnails_source_id_seq    SEQUENCE     �   CREATE SEQUENCE public.easy_thumbnails_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.easy_thumbnails_source_id_seq;
       public       postgres    false    3    266            :           0    0    easy_thumbnails_source_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.easy_thumbnails_source_id_seq OWNED BY public.easy_thumbnails_source.id;
            public       postgres    false    265                       1259    27366    easy_thumbnails_thumbnail    TABLE     �   CREATE TABLE public.easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);
 -   DROP TABLE public.easy_thumbnails_thumbnail;
       public         postgres    false    3                       1259    27364     easy_thumbnails_thumbnail_id_seq    SEQUENCE     �   CREATE SEQUENCE public.easy_thumbnails_thumbnail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.easy_thumbnails_thumbnail_id_seq;
       public       postgres    false    3    268            ;           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE OWNED BY     e   ALTER SEQUENCE public.easy_thumbnails_thumbnail_id_seq OWNED BY public.easy_thumbnails_thumbnail.id;
            public       postgres    false    267                       1259    27392 #   easy_thumbnails_thumbnaildimensions    TABLE     K  CREATE TABLE public.easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);
 7   DROP TABLE public.easy_thumbnails_thumbnaildimensions;
       public         postgres    false    3                       1259    27390 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq;
       public       postgres    false    3    270            <           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE OWNED BY     y   ALTER SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq OWNED BY public.easy_thumbnails_thumbnaildimensions.id;
            public       postgres    false    269            �            1259    26556    filer_clipboard    TABLE     _   CREATE TABLE public.filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.filer_clipboard;
       public         postgres    false    3            �            1259    26554    filer_clipboard_id_seq    SEQUENCE        CREATE SEQUENCE public.filer_clipboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.filer_clipboard_id_seq;
       public       postgres    false    239    3            =           0    0    filer_clipboard_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.filer_clipboard_id_seq OWNED BY public.filer_clipboard.id;
            public       postgres    false    238            �            1259    26564    filer_clipboarditem    TABLE     �   CREATE TABLE public.filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);
 '   DROP TABLE public.filer_clipboarditem;
       public         postgres    false    3            �            1259    26562    filer_clipboarditem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filer_clipboarditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.filer_clipboarditem_id_seq;
       public       postgres    false    3    241            >           0    0    filer_clipboarditem_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.filer_clipboarditem_id_seq OWNED BY public.filer_clipboarditem.id;
            public       postgres    false    240            �            1259    26572 
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
       public         postgres    false    3            �            1259    26570    filer_file_id_seq    SEQUENCE     z   CREATE SEQUENCE public.filer_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.filer_file_id_seq;
       public       postgres    false    3    243            ?           0    0    filer_file_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.filer_file_id_seq OWNED BY public.filer_file.id;
            public       postgres    false    242            �            1259    26583    filer_folder    TABLE     �  CREATE TABLE public.filer_folder (
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
       public         postgres    false    3            �            1259    26581    filer_folder_id_seq    SEQUENCE     |   CREATE SEQUENCE public.filer_folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.filer_folder_id_seq;
       public       postgres    false    245    3            @           0    0    filer_folder_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE public.filer_folder_id_seq OWNED BY public.filer_folder.id;
            public       postgres    false    244            �            1259    26595    filer_folderpermission    TABLE       CREATE TABLE public.filer_folderpermission (
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
       public         postgres    false    3            �            1259    26593    filer_folderpermission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filer_folderpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.filer_folderpermission_id_seq;
       public       postgres    false    3    247            A           0    0    filer_folderpermission_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.filer_folderpermission_id_seq OWNED BY public.filer_folderpermission.id;
            public       postgres    false    246            �            1259    26603    filer_image    TABLE     �  CREATE TABLE public.filer_image (
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
       public         postgres    false    3            �            1259    26693    filer_thumbnailoption    TABLE     �   CREATE TABLE public.filer_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);
 )   DROP TABLE public.filer_thumbnailoption;
       public         postgres    false    3            �            1259    26691    filer_thumbnailoption_id_seq    SEQUENCE     �   CREATE SEQUENCE public.filer_thumbnailoption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.filer_thumbnailoption_id_seq;
       public       postgres    false    3    250            B           0    0    filer_thumbnailoption_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE public.filer_thumbnailoption_id_seq OWNED BY public.filer_thumbnailoption.id;
            public       postgres    false    249                       1259    27407    hero_area_plugin_heroarea    TABLE     +  CREATE TABLE public.hero_area_plugin_heroarea (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL,
    message character varying(100),
    image_file character varying(100),
    youtube_introduction character varying(255),
    name_image_file character varying(100)
);
 -   DROP TABLE public.hero_area_plugin_heroarea;
       public         postgres    false    3                       1259    27423    menus_cachekey    TABLE     �   CREATE TABLE public.menus_cachekey (
    id integer NOT NULL,
    language character varying(255) NOT NULL,
    site integer NOT NULL,
    key character varying(255) NOT NULL,
    CONSTRAINT menus_cachekey_site_check CHECK ((site >= 0))
);
 "   DROP TABLE public.menus_cachekey;
       public         postgres    false    3                       1259    27421    menus_cachekey_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.menus_cachekey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.menus_cachekey_id_seq;
       public       postgres    false    273    3            C           0    0    menus_cachekey_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.menus_cachekey_id_seq OWNED BY public.menus_cachekey.id;
            public       postgres    false    272                       1259    27433    overview_plugin_overview    TABLE     X   CREATE TABLE public.overview_plugin_overview (
    cmsplugin_ptr_id integer NOT NULL
);
 ,   DROP TABLE public.overview_plugin_overview;
       public         postgres    false    3                       1259    27440    overview_plugin_overviewitem    TABLE     �   CREATE TABLE public.overview_plugin_overviewitem (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    description text,
    image character varying(100) NOT NULL,
    overview_id_id integer NOT NULL
);
 0   DROP TABLE public.overview_plugin_overviewitem;
       public         postgres    false    3                       1259    27438 #   overview_plugin_overviewitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.overview_plugin_overviewitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.overview_plugin_overviewitem_id_seq;
       public       postgres    false    276    3            D           0    0 #   overview_plugin_overviewitem_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.overview_plugin_overviewitem_id_seq OWNED BY public.overview_plugin_overviewitem.id;
            public       postgres    false    275            (           1259    28208    portfolio_app_latestworksection    TABLE     �   CREATE TABLE public.portfolio_app_latestworksection (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(500),
    message text
);
 3   DROP TABLE public.portfolio_app_latestworksection;
       public         postgres    false    3                       1259    27462    portfolio_app_mediaasset    TABLE     L  CREATE TABLE public.portfolio_app_mediaasset (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    type smallint NOT NULL,
    media_asset character varying(100),
    project_id_id integer NOT NULL,
    youtube_url character varying(255),
    CONSTRAINT portfolio_app_mediaasset_type_check CHECK ((type >= 0))
);
 ,   DROP TABLE public.portfolio_app_mediaasset;
       public         postgres    false    3                       1259    27460    portfolio_app_mediaasset_id_seq    SEQUENCE     �   CREATE SEQUENCE public.portfolio_app_mediaasset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.portfolio_app_mediaasset_id_seq;
       public       postgres    false    278    3            E           0    0    portfolio_app_mediaasset_id_seq    SEQUENCE OWNED BY     c   ALTER SEQUENCE public.portfolio_app_mediaasset_id_seq OWNED BY public.portfolio_app_mediaasset.id;
            public       postgres    false    277                       1259    27483    portfolio_app_project    TABLE     ;  CREATE TABLE public.portfolio_app_project (
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
    ios_demo_url character varying(500)
);
 )   DROP TABLE public.portfolio_app_project;
       public         postgres    false    3                       1259    27498    portfolio_app_project_tags    TABLE     �   CREATE TABLE public.portfolio_app_project_tags (
    id integer NOT NULL,
    project_id integer NOT NULL,
    tag_id integer NOT NULL
);
 .   DROP TABLE public.portfolio_app_project_tags;
       public         postgres    false    3                       1259    27496 !   portfolio_app_project_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE public.portfolio_app_project_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.portfolio_app_project_tags_id_seq;
       public       postgres    false    3    282            F           0    0 !   portfolio_app_project_tags_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.portfolio_app_project_tags_id_seq OWNED BY public.portfolio_app_project_tags.id;
            public       postgres    false    281                       1259    27491    portfolio_app_tag    TABLE     {   CREATE TABLE public.portfolio_app_tag (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL
);
 %   DROP TABLE public.portfolio_app_tag;
       public         postgres    false    3                       1259    27597    profile_plugin_milestoneitem    TABLE     �   CREATE TABLE public.profile_plugin_milestoneitem (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    date date NOT NULL,
    description text NOT NULL,
    profile_id_id integer NOT NULL,
    media_asset character varying(100)
);
 0   DROP TABLE public.profile_plugin_milestoneitem;
       public         postgres    false    3                       1259    27595 #   profile_plugin_milestoneitem_id_seq    SEQUENCE     �   CREATE SEQUENCE public.profile_plugin_milestoneitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.profile_plugin_milestoneitem_id_seq;
       public       postgres    false    3    284            G           0    0 #   profile_plugin_milestoneitem_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE public.profile_plugin_milestoneitem_id_seq OWNED BY public.profile_plugin_milestoneitem.id;
            public       postgres    false    283                       1259    27606    profile_plugin_profile    TABLE     S  CREATE TABLE public.profile_plugin_profile (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL,
    avatar character varying(250) NOT NULL,
    working_position character varying(250),
    location character varying(100) NOT NULL,
    date_of_birth character varying(100) NOT NULL,
    email character varying(100) NOT NULL,
    self_introduction text NOT NULL,
    programing_language character varying(250),
    database character varying(250),
    ide_and_tool character varying(250),
    vcs_dvcs character varying(250),
    framework character varying(250)
);
 *   DROP TABLE public.profile_plugin_profile;
       public         postgres    false    3            &           1259    28134    service_plugin_servicecontainer    TABLE     �   CREATE TABLE public.service_plugin_servicecontainer (
    cmsplugin_ptr_id integer NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 3   DROP TABLE public.service_plugin_servicecontainer;
       public         postgres    false    3            '           1259    28139    service_plugin_servicecontent    TABLE     N  CREATE TABLE public.service_plugin_servicecontent (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(100) NOT NULL,
    content character varying(500) NOT NULL,
    icon_class_name character varying(250) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 1   DROP TABLE public.service_plugin_servicecontent;
       public         postgres    false    3                        1259    27649    testimonial_plugin_testimonial    TABLE     �   CREATE TABLE public.testimonial_plugin_testimonial (
    id integer NOT NULL,
    customer_name character varying(100) NOT NULL,
    content text,
    customer_position character varying(100),
    testimonial_plugin_id_id integer NOT NULL
);
 2   DROP TABLE public.testimonial_plugin_testimonial;
       public         postgres    false    3                       1259    27647 %   testimonial_plugin_testimonial_id_seq    SEQUENCE     �   CREATE SEQUENCE public.testimonial_plugin_testimonial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.testimonial_plugin_testimonial_id_seq;
       public       postgres    false    288    3            H           0    0 %   testimonial_plugin_testimonial_id_seq    SEQUENCE OWNED BY     o   ALTER SEQUENCE public.testimonial_plugin_testimonial_id_seq OWNED BY public.testimonial_plugin_testimonial.id;
            public       postgres    false    287            !           1259    27658 $   testimonial_plugin_testimonialplugin    TABLE     d   CREATE TABLE public.testimonial_plugin_testimonialplugin (
    cmsplugin_ptr_id integer NOT NULL
);
 8   DROP TABLE public.testimonial_plugin_testimonialplugin;
       public         postgres    false    3            c	           2604    25711    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    192    191    192            d	           2604    25721    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    193    194            b	           2604    25703    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    189    190    190            e	           2604    25729    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    195    196            f	           2604    25739    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197    198            g	           2604    25747    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    200    199    200            k	           2604    25839    cms_cmsplugin id    DEFAULT     t   ALTER TABLE ONLY public.cms_cmsplugin ALTER COLUMN id SET DEFAULT nextval('public.cms_cmsplugin_id_seq'::regclass);
 ?   ALTER TABLE public.cms_cmsplugin ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    206    206            o	           2604    25857    cms_globalpagepermission id    DEFAULT     �   ALTER TABLE ONLY public.cms_globalpagepermission ALTER COLUMN id SET DEFAULT nextval('public.cms_globalpagepermission_id_seq'::regclass);
 J   ALTER TABLE public.cms_globalpagepermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    209    208    209            p	           2604    25865 !   cms_globalpagepermission_sites id    DEFAULT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites ALTER COLUMN id SET DEFAULT nextval('public.cms_globalpagepermission_sites_id_seq'::regclass);
 P   ALTER TABLE public.cms_globalpagepermission_sites ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    210    211    211            q	           2604    25873    cms_page id    DEFAULT     j   ALTER TABLE ONLY public.cms_page ALTER COLUMN id SET DEFAULT nextval('public.cms_page_id_seq'::regclass);
 :   ALTER TABLE public.cms_page ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            u	           2604    26021    cms_page_placeholders id    DEFAULT     �   ALTER TABLE ONLY public.cms_page_placeholders ALTER COLUMN id SET DEFAULT nextval('public.cms_page_placeholders_id_seq'::regclass);
 G   ALTER TABLE public.cms_page_placeholders ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    221    220    221            r	           2604    25891    cms_pagepermission id    DEFAULT     ~   ALTER TABLE ONLY public.cms_pagepermission ALTER COLUMN id SET DEFAULT nextval('public.cms_pagepermission_id_seq'::regclass);
 D   ALTER TABLE public.cms_pagepermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            s	           2604    26012    cms_placeholder id    DEFAULT     x   ALTER TABLE ONLY public.cms_placeholder ALTER COLUMN id SET DEFAULT nextval('public.cms_placeholder_id_seq'::regclass);
 A   ALTER TABLE public.cms_placeholder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    218    219    219            v	           2604    26038    cms_staticplaceholder id    DEFAULT     �   ALTER TABLE ONLY public.cms_staticplaceholder ALTER COLUMN id SET DEFAULT nextval('public.cms_staticplaceholder_id_seq'::regclass);
 G   ALTER TABLE public.cms_staticplaceholder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    224    223    224            w	           2604    26051    cms_title id    DEFAULT     l   ALTER TABLE ONLY public.cms_title ALTER COLUMN id SET DEFAULT nextval('public.cms_title_id_seq'::regclass);
 ;   ALTER TABLE public.cms_title ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225    226            z	           2604    26452    cms_treenode id    DEFAULT     r   ALTER TABLE ONLY public.cms_treenode ALTER COLUMN id SET DEFAULT nextval('public.cms_treenode_id_seq'::regclass);
 >   ALTER TABLE public.cms_treenode ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    232    233    233            y	           2604    26405    cms_urlconfrevision id    DEFAULT     �   ALTER TABLE ONLY public.cms_urlconfrevision ALTER COLUMN id SET DEFAULT nextval('public.cms_urlconfrevision_id_seq'::regclass);
 E   ALTER TABLE public.cms_urlconfrevision ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    231    231            x	           2604    26066    cms_usersettings id    DEFAULT     z   ALTER TABLE ONLY public.cms_usersettings ALTER COLUMN id SET DEFAULT nextval('public.cms_usersettings_id_seq'::regclass);
 B   ALTER TABLE public.cms_usersettings ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    227    228            h	           2604    25807    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201    202            a	           2604    25693    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    187    188    188            `	           2604    25682    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    186    186            j	           2604    25831    django_site id    DEFAULT     p   ALTER TABLE ONLY public.django_site ALTER COLUMN id SET DEFAULT nextval('public.django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    204    204            �	           2604    27174    djangocms_snippet_snippet id    DEFAULT     �   ALTER TABLE ONLY public.djangocms_snippet_snippet ALTER COLUMN id SET DEFAULT nextval('public.djangocms_snippet_snippet_id_seq'::regclass);
 K   ALTER TABLE public.djangocms_snippet_snippet ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    258    259    259            �	           2604    27361    easy_thumbnails_source id    DEFAULT     �   ALTER TABLE ONLY public.easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_source_id_seq'::regclass);
 H   ALTER TABLE public.easy_thumbnails_source ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    265    266    266            �	           2604    27369    easy_thumbnails_thumbnail id    DEFAULT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnail_id_seq'::regclass);
 K   ALTER TABLE public.easy_thumbnails_thumbnail ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    268    267    268            �	           2604    27395 &   easy_thumbnails_thumbnaildimensions id    DEFAULT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('public.easy_thumbnails_thumbnaildimensions_id_seq'::regclass);
 U   ALTER TABLE public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    270    269    270            }	           2604    26559    filer_clipboard id    DEFAULT     x   ALTER TABLE ONLY public.filer_clipboard ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboard_id_seq'::regclass);
 A   ALTER TABLE public.filer_clipboard ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    239    238    239            ~	           2604    26567    filer_clipboarditem id    DEFAULT     �   ALTER TABLE ONLY public.filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('public.filer_clipboarditem_id_seq'::regclass);
 E   ALTER TABLE public.filer_clipboarditem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    241    241            	           2604    26575    filer_file id    DEFAULT     n   ALTER TABLE ONLY public.filer_file ALTER COLUMN id SET DEFAULT nextval('public.filer_file_id_seq'::regclass);
 <   ALTER TABLE public.filer_file ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    242    243    243            �	           2604    26586    filer_folder id    DEFAULT     r   ALTER TABLE ONLY public.filer_folder ALTER COLUMN id SET DEFAULT nextval('public.filer_folder_id_seq'::regclass);
 >   ALTER TABLE public.filer_folder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    245    245            �	           2604    26598    filer_folderpermission id    DEFAULT     �   ALTER TABLE ONLY public.filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('public.filer_folderpermission_id_seq'::regclass);
 H   ALTER TABLE public.filer_folderpermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    246    247    247            �	           2604    26696    filer_thumbnailoption id    DEFAULT     �   ALTER TABLE ONLY public.filer_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('public.filer_thumbnailoption_id_seq'::regclass);
 G   ALTER TABLE public.filer_thumbnailoption ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    249    250    250            �	           2604    27426    menus_cachekey id    DEFAULT     v   ALTER TABLE ONLY public.menus_cachekey ALTER COLUMN id SET DEFAULT nextval('public.menus_cachekey_id_seq'::regclass);
 @   ALTER TABLE public.menus_cachekey ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    273    272    273            �	           2604    27443    overview_plugin_overviewitem id    DEFAULT     �   ALTER TABLE ONLY public.overview_plugin_overviewitem ALTER COLUMN id SET DEFAULT nextval('public.overview_plugin_overviewitem_id_seq'::regclass);
 N   ALTER TABLE public.overview_plugin_overviewitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    276    275    276            �	           2604    27465    portfolio_app_mediaasset id    DEFAULT     �   ALTER TABLE ONLY public.portfolio_app_mediaasset ALTER COLUMN id SET DEFAULT nextval('public.portfolio_app_mediaasset_id_seq'::regclass);
 J   ALTER TABLE public.portfolio_app_mediaasset ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    277    278    278            �	           2604    27501    portfolio_app_project_tags id    DEFAULT     �   ALTER TABLE ONLY public.portfolio_app_project_tags ALTER COLUMN id SET DEFAULT nextval('public.portfolio_app_project_tags_id_seq'::regclass);
 L   ALTER TABLE public.portfolio_app_project_tags ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    281    282    282            �	           2604    27600    profile_plugin_milestoneitem id    DEFAULT     �   ALTER TABLE ONLY public.profile_plugin_milestoneitem ALTER COLUMN id SET DEFAULT nextval('public.profile_plugin_milestoneitem_id_seq'::regclass);
 N   ALTER TABLE public.profile_plugin_milestoneitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    284    283    284            �	           2604    27652 !   testimonial_plugin_testimonial id    DEFAULT     �   ALTER TABLE ONLY public.testimonial_plugin_testimonial ALTER COLUMN id SET DEFAULT nextval('public.testimonial_plugin_testimonial_id_seq'::regclass);
 P   ALTER TABLE public.testimonial_plugin_testimonial ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    287    288    288                      0    27731    about_me_plugin_aboutme 
   TABLE DATA               o   COPY public.about_me_plugin_aboutme (cmsplugin_ptr_id, title, description, created_at, updated_at) FROM stdin;
    public       postgres    false    292   ֜                0    27697    about_me_plugin_skillcontainer 
   TABLE DATA               b   COPY public.about_me_plugin_skillcontainer (cmsplugin_ptr_id, created_at, updated_at) FROM stdin;
    public       postgres    false    290   /�                0    27702    about_me_plugin_skillcontent 
   TABLE DATA               �   COPY public.about_me_plugin_skillcontent (cmsplugin_ptr_id, name, skill_percentage, skill_type, created_at, updated_at) FROM stdin;
    public       postgres    false    291   ��                0    27744    about_me_plugin_statistic 
   TABLE DATA               �   COPY public.about_me_plugin_statistic (cmsplugin_ptr_id, title, statistic, statistic_unit, created_at, updated_at, font_icon) FROM stdin;
    public       postgres    false    293   9�      �          0    26330    aldryn_style_style 
   TABLE DATA               �   COPY public.aldryn_style_style (label, cmsplugin_ptr_id, class_name, id_name, tag_type, padding_left, padding_right, padding_top, padding_bottom, margin_left, margin_right, margin_top, margin_bottom, additional_class_names) FROM stdin;
    public       postgres    false    229   D�      �          0    25708 
   auth_group 
   TABLE DATA               .   COPY public.auth_group (id, name) FROM stdin;
    public       postgres    false    192   a�      I           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
            public       postgres    false    191            �          0    25718    auth_group_permissions 
   TABLE DATA               M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    194   ~�      J           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
            public       postgres    false    193            �          0    25700    auth_permission 
   TABLE DATA               N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    190   ��      K           0    0    auth_permission_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_permission_id_seq', 203, true);
            public       postgres    false    189            �          0    25726 	   auth_user 
   TABLE DATA               �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    196    �      �          0    25736    auth_user_groups 
   TABLE DATA               A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    198   �      L           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
            public       postgres    false    197            M           0    0    auth_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.auth_user_id_seq', 2, true);
            public       postgres    false    195            �          0    25744    auth_user_user_permissions 
   TABLE DATA               P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    200   <�      N           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    199            �          0    25847    cms_aliaspluginmodel 
   TABLE DATA               a   COPY public.cms_aliaspluginmodel (cmsplugin_ptr_id, plugin_id, alias_placeholder_id) FROM stdin;
    public       postgres    false    207   Y�      �          0    25836    cms_cmsplugin 
   TABLE DATA               �   COPY public.cms_cmsplugin (id, "position", language, plugin_type, creation_date, changed_date, parent_id, placeholder_id, depth, numchild, path) FROM stdin;
    public       postgres    false    206   v�      O           0    0    cms_cmsplugin_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.cms_cmsplugin_id_seq', 57, true);
            public       postgres    false    205            �          0    25854    cms_globalpagepermission 
   TABLE DATA               �   COPY public.cms_globalpagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, can_recover_page, group_id, user_id) FROM stdin;
    public       postgres    false    209   k�      P           0    0    cms_globalpagepermission_id_seq    SEQUENCE SET     N   SELECT pg_catalog.setval('public.cms_globalpagepermission_id_seq', 1, false);
            public       postgres    false    208            �          0    25862    cms_globalpagepermission_sites 
   TABLE DATA               ^   COPY public.cms_globalpagepermission_sites (id, globalpagepermission_id, site_id) FROM stdin;
    public       postgres    false    211   ��      Q           0    0 %   cms_globalpagepermission_sites_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.cms_globalpagepermission_sites_id_seq', 1, false);
            public       postgres    false    210            �          0    25870    cms_page 
   TABLE DATA               �  COPY public.cms_page (id, created_by, changed_by, creation_date, changed_date, publication_date, publication_end_date, in_navigation, soft_root, reverse_id, navigation_extenders, template, login_required, limit_visibility_in_menu, is_home, application_urls, application_namespace, publisher_is_draft, languages, xframe_options, publisher_public_id, is_page_type, node_id) FROM stdin;
    public       postgres    false    213   ��      R           0    0    cms_page_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.cms_page_id_seq', 8, true);
            public       postgres    false    212            �          0    26018    cms_page_placeholders 
   TABLE DATA               L   COPY public.cms_page_placeholders (id, page_id, placeholder_id) FROM stdin;
    public       postgres    false    221   �      S           0    0    cms_page_placeholders_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.cms_page_placeholders_id_seq', 29, true);
            public       postgres    false    220            �          0    25888    cms_pagepermission 
   TABLE DATA               �   COPY public.cms_pagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, grant_on, group_id, page_id, user_id) FROM stdin;
    public       postgres    false    215   ��      T           0    0    cms_pagepermission_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.cms_pagepermission_id_seq', 1, false);
            public       postgres    false    214            �          0    25997    cms_pageuser 
   TABLE DATA               B   COPY public.cms_pageuser (user_ptr_id, created_by_id) FROM stdin;
    public       postgres    false    216   ��      �          0    26002    cms_pageusergroup 
   TABLE DATA               H   COPY public.cms_pageusergroup (group_ptr_id, created_by_id) FROM stdin;
    public       postgres    false    217   ұ      �          0    26009    cms_placeholder 
   TABLE DATA               B   COPY public.cms_placeholder (id, slot, default_width) FROM stdin;
    public       postgres    false    219   �      U           0    0    cms_placeholder_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cms_placeholder_id_seq', 31, true);
            public       postgres    false    218            �          0    26028    cms_placeholderreference 
   TABLE DATA               ^   COPY public.cms_placeholderreference (cmsplugin_ptr_id, name, placeholder_ref_id) FROM stdin;
    public       postgres    false    222   ��      �          0    26035    cms_staticplaceholder 
   TABLE DATA               u   COPY public.cms_staticplaceholder (id, name, code, dirty, creation_method, draft_id, public_id, site_id) FROM stdin;
    public       postgres    false    224   Ӳ      V           0    0    cms_staticplaceholder_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.cms_staticplaceholder_id_seq', 1, false);
            public       postgres    false    223            �          0    26048 	   cms_title 
   TABLE DATA               �   COPY public.cms_title (id, language, title, page_title, menu_title, meta_description, slug, path, has_url_overwrite, redirect, creation_date, published, publisher_is_draft, publisher_state, page_id, publisher_public_id) FROM stdin;
    public       postgres    false    226   �      W           0    0    cms_title_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.cms_title_id_seq', 8, true);
            public       postgres    false    225            �          0    26449    cms_treenode 
   TABLE DATA               U   COPY public.cms_treenode (id, path, depth, numchild, parent_id, site_id) FROM stdin;
    public       postgres    false    233   ҳ      X           0    0    cms_treenode_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.cms_treenode_id_seq', 4, true);
            public       postgres    false    232            �          0    26402    cms_urlconfrevision 
   TABLE DATA               ;   COPY public.cms_urlconfrevision (id, revision) FROM stdin;
    public       postgres    false    231   �      Y           0    0    cms_urlconfrevision_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.cms_urlconfrevision_id_seq', 1, false);
            public       postgres    false    230            �          0    26063    cms_usersettings 
   TABLE DATA               O   COPY public.cms_usersettings (id, language, clipboard_id, user_id) FROM stdin;
    public       postgres    false    228   S�      Z           0    0    cms_usersettings_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.cms_usersettings_id_seq', 2, true);
            public       postgres    false    227            �          0    26480    contact_me_plugin_message 
   TABLE DATA               �   COPY public.contact_me_plugin_message (cmsplugin_ptr_id, name, email_address, message, created_at, updated_at, phone, subject) FROM stdin;
    public       postgres    false    234   �      �          0    26488    contact_me_plugin_shortcontact 
   TABLE DATA               j   COPY public.contact_me_plugin_shortcontact (cmsplugin_ptr_id, email, phone, working_location) FROM stdin;
    public       postgres    false    235   ��      �          0    25804    django_admin_log 
   TABLE DATA               �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    202    �      [           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 19, true);
            public       postgres    false    201            �          0    25690    django_content_type 
   TABLE DATA               C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    188   \�      \           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 68, true);
            public       postgres    false    187            �          0    25679    django_migrations 
   TABLE DATA               C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    186   �      ]           0    0    django_migrations_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_migrations_id_seq', 140, true);
            public       postgres    false    185                      0    27634    django_session 
   TABLE DATA               P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    286   ��      �          0    25828    django_site 
   TABLE DATA               7   COPY public.django_site (id, domain, name) FROM stdin;
    public       postgres    false    204   ��      ^           0    0    django_site_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.django_site_id_seq', 1, true);
            public       postgres    false    203            �          0    26524    djangocms_column_column 
   TABLE DATA               J   COPY public.djangocms_column_column (cmsplugin_ptr_id, width) FROM stdin;
    public       postgres    false    236   ��      �          0    26529    djangocms_column_multicolumns 
   TABLE DATA               I   COPY public.djangocms_column_multicolumns (cmsplugin_ptr_id) FROM stdin;
    public       postgres    false    237   �      �          0    26720    djangocms_file_file 
   TABLE DATA               �   COPY public.djangocms_file_file (cmsplugin_ptr_id, file_name, link_target, link_title, file_src_id, attributes, template, show_file_size) FROM stdin;
    public       postgres    false    251   $�      �          0    26789    djangocms_file_folder 
   TABLE DATA               �   COPY public.djangocms_file_folder (template, link_target, show_file_size, attributes, cmsplugin_ptr_id, folder_src_id) FROM stdin;
    public       postgres    false    252   A�      �          0    26809    djangocms_googlemap_googlemap 
   TABLE DATA               4  COPY public.djangocms_googlemap_googlemap (cmsplugin_ptr_id, title, zoom, lat, lng, width, height, scrollwheel, double_click_zoom, draggable, keyboard_shortcuts, pan_control, zoom_control, street_view_control, style, fullscreen_control, map_type_control, rotate_control, scale_control, template) FROM stdin;
    public       postgres    false    253   ^�      �          0    26899 #   djangocms_googlemap_googlemapmarker 
   TABLE DATA               �   COPY public.djangocms_googlemap_googlemapmarker (cmsplugin_ptr_id, title, address, lat, lng, show_content, info_content, icon_id) FROM stdin;
    public       postgres    false    254   {�      �          0    26907 "   djangocms_googlemap_googlemaproute 
   TABLE DATA               w   COPY public.djangocms_googlemap_googlemaproute (cmsplugin_ptr_id, title, origin, destination, travel_mode) FROM stdin;
    public       postgres    false    255   ��      �          0    26932    djangocms_link_link 
   TABLE DATA               �   COPY public.djangocms_link_link (cmsplugin_ptr_id, name, external_link, anchor, mailto, phone, target, internal_link_id, attributes, template) FROM stdin;
    public       postgres    false    256   ��      �          0    27009    djangocms_picture_picture 
   TABLE DATA               ,  COPY public.djangocms_picture_picture (cmsplugin_ptr_id, link_url, alignment, link_page_id, height, width, picture_id, attributes, caption_text, link_attributes, link_target, use_automatic_scaling, use_crop, use_no_cropping, use_upscale, thumbnail_options_id, external_picture, template) FROM stdin;
    public       postgres    false    257   ��      �          0    27171    djangocms_snippet_snippet 
   TABLE DATA               S   COPY public.djangocms_snippet_snippet (id, name, html, template, slug) FROM stdin;
    public       postgres    false    259   ��      _           0    0     djangocms_snippet_snippet_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.djangocms_snippet_snippet_id_seq', 1, false);
            public       postgres    false    258            �          0    27182    djangocms_snippet_snippetptr 
   TABLE DATA               T   COPY public.djangocms_snippet_snippetptr (cmsplugin_ptr_id, snippet_id) FROM stdin;
    public       postgres    false    260   �      �          0    27227    djangocms_text_ckeditor_text 
   TABLE DATA               N   COPY public.djangocms_text_ckeditor_text (cmsplugin_ptr_id, body) FROM stdin;
    public       postgres    false    261   )�      �          0    27250    djangocms_video_videoplayer 
   TABLE DATA               {   COPY public.djangocms_video_videoplayer (cmsplugin_ptr_id, embed_link, poster_id, attributes, label, template) FROM stdin;
    public       postgres    false    262   F�      �          0    27317    djangocms_video_videosource 
   TABLE DATA               �   COPY public.djangocms_video_videosource (cmsplugin_ptr_id, text_title, text_description, attributes, source_file_id) FROM stdin;
    public       postgres    false    263   c�      �          0    27325    djangocms_video_videotrack 
   TABLE DATA               p   COPY public.djangocms_video_videotrack (cmsplugin_ptr_id, kind, srclang, label, attributes, src_id) FROM stdin;
    public       postgres    false    264   ��      �          0    27358    easy_thumbnails_source 
   TABLE DATA               R   COPY public.easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
    public       postgres    false    266   ��      `           0    0    easy_thumbnails_source_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.easy_thumbnails_source_id_seq', 1, false);
            public       postgres    false    265            �          0    27366    easy_thumbnails_thumbnail 
   TABLE DATA               `   COPY public.easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
    public       postgres    false    268   ��      a           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.easy_thumbnails_thumbnail_id_seq', 1, false);
            public       postgres    false    267                       0    27392 #   easy_thumbnails_thumbnaildimensions 
   TABLE DATA               ^   COPY public.easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
    public       postgres    false    270   ��      b           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE SET     Y   SELECT pg_catalog.setval('public.easy_thumbnails_thumbnaildimensions_id_seq', 1, false);
            public       postgres    false    269            �          0    26556    filer_clipboard 
   TABLE DATA               6   COPY public.filer_clipboard (id, user_id) FROM stdin;
    public       postgres    false    239   ��      c           0    0    filer_clipboard_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.filer_clipboard_id_seq', 1, false);
            public       postgres    false    238            �          0    26564    filer_clipboarditem 
   TABLE DATA               H   COPY public.filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
    public       postgres    false    241   �      d           0    0    filer_clipboarditem_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.filer_clipboarditem_id_seq', 1, false);
            public       postgres    false    240            �          0    26572 
   filer_file 
   TABLE DATA               �   COPY public.filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
    public       postgres    false    243   .�      e           0    0    filer_file_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.filer_file_id_seq', 1, false);
            public       postgres    false    242            �          0    26583    filer_folder 
   TABLE DATA               �   COPY public.filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
    public       postgres    false    245   K�      f           0    0    filer_folder_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('public.filer_folder_id_seq', 1, false);
            public       postgres    false    244            �          0    26595    filer_folderpermission 
   TABLE DATA               �   COPY public.filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
    public       postgres    false    247   h�      g           0    0    filer_folderpermission_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.filer_folderpermission_id_seq', 1, false);
            public       postgres    false    246            �          0    26603    filer_image 
   TABLE DATA               �   COPY public.filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
    public       postgres    false    248   ��      �          0    26693    filer_thumbnailoption 
   TABLE DATA               W   COPY public.filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
    public       postgres    false    250   ��      h           0    0    filer_thumbnailoption_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('public.filer_thumbnailoption_id_seq', 1, false);
            public       postgres    false    249                      0    27407    hero_area_plugin_heroarea 
   TABLE DATA               �   COPY public.hero_area_plugin_heroarea (cmsplugin_ptr_id, name, message, image_file, youtube_introduction, name_image_file) FROM stdin;
    public       postgres    false    271   ��                0    27423    menus_cachekey 
   TABLE DATA               A   COPY public.menus_cachekey (id, language, site, key) FROM stdin;
    public       postgres    false    273   x�      i           0    0    menus_cachekey_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.menus_cachekey_id_seq', 21, true);
            public       postgres    false    272                      0    27433    overview_plugin_overview 
   TABLE DATA               D   COPY public.overview_plugin_overview (cmsplugin_ptr_id) FROM stdin;
    public       postgres    false    274   ��                0    27440    overview_plugin_overviewitem 
   TABLE DATA               e   COPY public.overview_plugin_overviewitem (id, title, description, image, overview_id_id) FROM stdin;
    public       postgres    false    276   ��      j           0    0 #   overview_plugin_overviewitem_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.overview_plugin_overviewitem_id_seq', 1, false);
            public       postgres    false    275                      0    28208    portfolio_app_latestworksection 
   TABLE DATA               [   COPY public.portfolio_app_latestworksection (cmsplugin_ptr_id, title, message) FROM stdin;
    public       postgres    false    296   �                0    27462    portfolio_app_mediaasset 
   TABLE DATA               k   COPY public.portfolio_app_mediaasset (id, name, type, media_asset, project_id_id, youtube_url) FROM stdin;
    public       postgres    false    278   5�      k           0    0    portfolio_app_mediaasset_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.portfolio_app_mediaasset_id_seq', 7, true);
            public       postgres    false    277            	          0    27483    portfolio_app_project 
   TABLE DATA               ,  COPY public.portfolio_app_project (cmsplugin_ptr_id, slug, title, sub_title, description, skills, roles, client, length, demo_url, top_image, created_at, updated_at, short_description, youtube_embed_url, is_homepage_display, is_list_display, is_published, android_demo_url, ios_demo_url) FROM stdin;
    public       postgres    false    279   ��                0    27498    portfolio_app_project_tags 
   TABLE DATA               L   COPY public.portfolio_app_project_tags (id, project_id, tag_id) FROM stdin;
    public       postgres    false    282   e�      l           0    0 !   portfolio_app_project_tags_id_seq    SEQUENCE SET     O   SELECT pg_catalog.setval('public.portfolio_app_project_tags_id_seq', 5, true);
            public       postgres    false    281            
          0    27491    portfolio_app_tag 
   TABLE DATA               C   COPY public.portfolio_app_tag (cmsplugin_ptr_id, name) FROM stdin;
    public       postgres    false    280   ��                0    27597    profile_plugin_milestoneitem 
   TABLE DATA               p   COPY public.profile_plugin_milestoneitem (id, title, date, description, profile_id_id, media_asset) FROM stdin;
    public       postgres    false    284   ��      m           0    0 #   profile_plugin_milestoneitem_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('public.profile_plugin_milestoneitem_id_seq', 1, false);
            public       postgres    false    283                      0    27606    profile_plugin_profile 
   TABLE DATA               �   COPY public.profile_plugin_profile (cmsplugin_ptr_id, name, avatar, working_position, location, date_of_birth, email, self_introduction, programing_language, database, ide_and_tool, vcs_dvcs, framework) FROM stdin;
    public       postgres    false    285   �                0    28134    service_plugin_servicecontainer 
   TABLE DATA               c   COPY public.service_plugin_servicecontainer (cmsplugin_ptr_id, created_at, updated_at) FROM stdin;
    public       postgres    false    294   �                0    28139    service_plugin_servicecontent 
   TABLE DATA               �   COPY public.service_plugin_servicecontent (cmsplugin_ptr_id, title, content, icon_class_name, created_at, updated_at) FROM stdin;
    public       postgres    false    295   ��                0    27649    testimonial_plugin_testimonial 
   TABLE DATA               �   COPY public.testimonial_plugin_testimonial (id, customer_name, content, customer_position, testimonial_plugin_id_id) FROM stdin;
    public       postgres    false    288   ��      n           0    0 %   testimonial_plugin_testimonial_id_seq    SEQUENCE SET     T   SELECT pg_catalog.setval('public.testimonial_plugin_testimonial_id_seq', 1, false);
            public       postgres    false    287                      0    27658 $   testimonial_plugin_testimonialplugin 
   TABLE DATA               P   COPY public.testimonial_plugin_testimonialplugin (cmsplugin_ptr_id) FROM stdin;
    public       postgres    false    289   �      �
           2606    27738 4   about_me_plugin_aboutme about_me_plugin_aboutme_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_me_plugin_aboutme
    ADD CONSTRAINT about_me_plugin_aboutme_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ^   ALTER TABLE ONLY public.about_me_plugin_aboutme DROP CONSTRAINT about_me_plugin_aboutme_pkey;
       public         postgres    false    292    292            �
           2606    27701 B   about_me_plugin_skillcontainer about_me_plugin_skillcontainer_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_me_plugin_skillcontainer
    ADD CONSTRAINT about_me_plugin_skillcontainer_pkey PRIMARY KEY (cmsplugin_ptr_id);
 l   ALTER TABLE ONLY public.about_me_plugin_skillcontainer DROP CONSTRAINT about_me_plugin_skillcontainer_pkey;
       public         postgres    false    290    290            �
           2606    27707 >   about_me_plugin_skillcontent about_me_plugin_skillcontent_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_me_plugin_skillcontent
    ADD CONSTRAINT about_me_plugin_skillcontent_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.about_me_plugin_skillcontent DROP CONSTRAINT about_me_plugin_skillcontent_pkey;
       public         postgres    false    291    291            �
           2606    27749 8   about_me_plugin_statistic about_me_plugin_statistic_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.about_me_plugin_statistic
    ADD CONSTRAINT about_me_plugin_statistic_pkey PRIMARY KEY (cmsplugin_ptr_id);
 b   ALTER TABLE ONLY public.about_me_plugin_statistic DROP CONSTRAINT about_me_plugin_statistic_pkey;
       public         postgres    false    293    293            ,
           2606    26337 *   aldryn_style_style aldryn_style_style_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.aldryn_style_style
    ADD CONSTRAINT aldryn_style_style_pkey PRIMARY KEY (cmsplugin_ptr_id);
 T   ALTER TABLE ONLY public.aldryn_style_style DROP CONSTRAINT aldryn_style_style_pkey;
       public         postgres    false    229    229            �	           2606    25715    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    192    192            �	           2606    25770 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    194    194    194            �	           2606    25723 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    194    194            �	           2606    25713    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    192    192            �	           2606    25756 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    190    190    190            �	           2606    25705 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    190    190            �	           2606    25741 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    198    198            �	           2606    25785 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    198    198    198            �	           2606    25731    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    196    196            �	           2606    25749 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    200    200            �	           2606    25799 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    200    200    200            �	           2606    26345     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    196    196            �	           2606    25851 .   cms_aliaspluginmodel cms_aliaspluginmodel_pkey 
   CONSTRAINT     z   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_pkey PRIMARY KEY (cmsplugin_ptr_id);
 X   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_pkey;
       public         postgres    false    207    207            �	           2606    26323 .   cms_cmsplugin cms_cmsplugin_path_4917bb44_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_path_4917bb44_uniq UNIQUE (path);
 X   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_path_4917bb44_uniq;
       public         postgres    false    206    206            �	           2606    25846     cms_cmsplugin cms_cmsplugin_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_pkey;
       public         postgres    false    206    206            �	           2606    25942 ^   cms_globalpagepermission_sites cms_globalpagepermission_globalpagepermission_id__db684f41_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq UNIQUE (globalpagepermission_id, site_id);
 �   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq;
       public         postgres    false    211    211    211            �	           2606    25859 6   cms_globalpagepermission cms_globalpagepermission_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_pkey;
       public         postgres    false    209    209            �	           2606    25867 B   cms_globalpagepermission_sites cms_globalpagepermission_sites_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_sites_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermission_sites_pkey;
       public         postgres    false    211    211            �	           2606    26460 :   cms_page cms_page_node_id_publisher_is_draft_c1293d6a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq UNIQUE (node_id, publisher_is_draft);
 d   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq;
       public         postgres    false    213    213    213            �	           2606    25883    cms_page cms_page_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_pkey;
       public         postgres    false    213    213            
           2606    26106 P   cms_page_placeholders cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq UNIQUE (page_id, placeholder_id);
 z   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq;
       public         postgres    false    221    221    221            

           2606    26023 0   cms_page_placeholders cms_page_placeholders_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_pkey;
       public         postgres    false    221    221            �	           2606    25885 )   cms_page cms_page_publisher_public_id_key 
   CONSTRAINT     s   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_key UNIQUE (publisher_public_id);
 S   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_publisher_public_id_key;
       public         postgres    false    213    213            �	           2606    25893 *   cms_pagepermission cms_pagepermission_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_pkey;
       public         postgres    false    215    215            �	           2606    26001    cms_pageuser cms_pageuser_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_pkey PRIMARY KEY (user_ptr_id);
 H   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_pkey;
       public         postgres    false    216    216            
           2606    26006 (   cms_pageusergroup cms_pageusergroup_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_pkey PRIMARY KEY (group_ptr_id);
 R   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_pkey;
       public         postgres    false    217    217            
           2606    26015 $   cms_placeholder cms_placeholder_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.cms_placeholder
    ADD CONSTRAINT cms_placeholder_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.cms_placeholder DROP CONSTRAINT cms_placeholder_pkey;
       public         postgres    false    219    219            
           2606    26032 6   cms_placeholderreference cms_placeholderreference_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderreference_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderreference_pkey;
       public         postgres    false    222    222            
           2606    26045 F   cms_staticplaceholder cms_staticplaceholder_code_site_id_21ba079c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq UNIQUE (code, site_id);
 p   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq;
       public         postgres    false    224    224    224            
           2606    26043 0   cms_staticplaceholder cms_staticplaceholder_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_pkey;
       public         postgres    false    224    224            
           2606    26060 2   cms_title cms_title_language_page_id_61aaf084_uniq 
   CONSTRAINT     z   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_language_page_id_61aaf084_uniq UNIQUE (language, page_id);
 \   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_language_page_id_61aaf084_uniq;
       public         postgres    false    226    226    226            
           2606    26056    cms_title cms_title_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_pkey;
       public         postgres    false    226    226            "
           2606    26058 +   cms_title cms_title_publisher_public_id_key 
   CONSTRAINT     u   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_key UNIQUE (publisher_public_id);
 U   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_publisher_public_id_key;
       public         postgres    false    226    226            2
           2606    26458 "   cms_treenode cms_treenode_path_key 
   CONSTRAINT     ]   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_path_key UNIQUE (path);
 L   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_path_key;
       public         postgres    false    233    233            4
           2606    26456    cms_treenode cms_treenode_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_pkey;
       public         postgres    false    233    233            .
           2606    26407 ,   cms_urlconfrevision cms_urlconfrevision_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.cms_urlconfrevision
    ADD CONSTRAINT cms_urlconfrevision_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.cms_urlconfrevision DROP CONSTRAINT cms_urlconfrevision_pkey;
       public         postgres    false    231    231            (
           2606    26068 &   cms_usersettings cms_usersettings_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_pkey;
       public         postgres    false    228    228            *
           2606    26070 -   cms_usersettings cms_usersettings_user_id_key 
   CONSTRAINT     k   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_key UNIQUE (user_id);
 W   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_user_id_key;
       public         postgres    false    228    228            7
           2606    26487 8   contact_me_plugin_message contact_me_plugin_message_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.contact_me_plugin_message
    ADD CONSTRAINT contact_me_plugin_message_pkey PRIMARY KEY (cmsplugin_ptr_id);
 b   ALTER TABLE ONLY public.contact_me_plugin_message DROP CONSTRAINT contact_me_plugin_message_pkey;
       public         postgres    false    234    234            9
           2606    26492 B   contact_me_plugin_shortcontact contact_me_plugin_shortcontact_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.contact_me_plugin_shortcontact
    ADD CONSTRAINT contact_me_plugin_shortcontact_pkey PRIMARY KEY (cmsplugin_ptr_id);
 l   ALTER TABLE ONLY public.contact_me_plugin_shortcontact DROP CONSTRAINT contact_me_plugin_shortcontact_pkey;
       public         postgres    false    235    235            �	           2606    25813 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    202    202            �	           2606    25697 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    188    188    188            �	           2606    25695 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    188    188            �	           2606    25687 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    186    186            �
           2606    27641 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    286    286            �	           2606    27645 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public         postgres    false    204    204            �	           2606    25833    django_site django_site_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public.django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public         postgres    false    204    204            ;
           2606    26528 4   djangocms_column_column djangocms_column_column_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_column
    ADD CONSTRAINT djangocms_column_column_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ^   ALTER TABLE ONLY public.djangocms_column_column DROP CONSTRAINT djangocms_column_column_pkey;
       public         postgres    false    236    236            =
           2606    26533 @   djangocms_column_multicolumns djangocms_column_multicolumns_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_multicolumns_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.djangocms_column_multicolumns DROP CONSTRAINT djangocms_column_multicolumns_pkey;
       public         postgres    false    237    237            _
           2606    26724 ,   djangocms_file_file djangocms_file_file_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_pkey PRIMARY KEY (cmsplugin_ptr_id);
 V   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_pkey;
       public         postgres    false    251    251            b
           2606    26796 0   djangocms_file_folder djangocms_file_folder_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folder_pkey;
       public         postgres    false    252    252            d
           2606    26817 @   djangocms_googlemap_googlemap djangocms_googlemap_googlemap_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap_googlemap_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.djangocms_googlemap_googlemap DROP CONSTRAINT djangocms_googlemap_googlemap_pkey;
       public         postgres    false    253    253            g
           2606    26906 L   djangocms_googlemap_googlemapmarker djangocms_googlemap_googlemapmarker_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap_googlemapmarker_pkey PRIMARY KEY (cmsplugin_ptr_id);
 v   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap_googlemapmarker_pkey;
       public         postgres    false    254    254            i
           2606    26914 J   djangocms_googlemap_googlemaproute djangocms_googlemap_googlemaproute_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap_googlemaproute_pkey PRIMARY KEY (cmsplugin_ptr_id);
 t   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute DROP CONSTRAINT djangocms_googlemap_googlemaproute_pkey;
       public         postgres    false    255    255            l
           2606    26939 ,   djangocms_link_link djangocms_link_link_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_pkey PRIMARY KEY (cmsplugin_ptr_id);
 V   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_pkey;
       public         postgres    false    256    256            p
           2606    27016 8   djangocms_picture_picture djangocms_picture_picture_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_pkey PRIMARY KEY (cmsplugin_ptr_id);
 b   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_picture_pkey;
       public         postgres    false    257    257            t
           2606    27181 <   djangocms_snippet_snippet djangocms_snippet_snippet_name_key 
   CONSTRAINT     w   ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_name_key UNIQUE (name);
 f   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_name_key;
       public         postgres    false    259    259            v
           2606    27179 8   djangocms_snippet_snippet djangocms_snippet_snippet_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_pkey;
       public         postgres    false    259    259            y
           2606    27220 F   djangocms_snippet_snippet djangocms_snippet_snippet_slug_bd43cd96_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq UNIQUE (slug);
 p   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq;
       public         postgres    false    259    259            {
           2606    27186 >   djangocms_snippet_snippetptr djangocms_snippet_snippetptr_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_snippetptr_pkey;
       public         postgres    false    260    260            ~
           2606    27234 >   djangocms_text_ckeditor_text djangocms_text_ckeditor_text_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckeditor_text_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.djangocms_text_ckeditor_text DROP CONSTRAINT djangocms_text_ckeditor_text_pkey;
       public         postgres    false    261    261            �
           2606    27259 6   djangocms_video_videoplayer djangocms_video_video_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_video_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_video_pkey;
       public         postgres    false    262    262            �
           2606    27324 <   djangocms_video_videosource djangocms_video_videosource_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_videosource_pkey PRIMARY KEY (cmsplugin_ptr_id);
 f   ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_videosource_pkey;
       public         postgres    false    263    263            �
           2606    27332 :   djangocms_video_videotrack djangocms_video_videotrack_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_pkey PRIMARY KEY (cmsplugin_ptr_id);
 d   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_videotrack_pkey;
       public         postgres    false    264    264            �
           2606    27363 2   easy_thumbnails_source easy_thumbnails_source_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_pkey;
       public         postgres    false    266    266            �
           2606    27375 M   easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);
 w   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq;
       public         postgres    false    266    266    266            �
           2606    27373 Y   easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq;
       public         postgres    false    268    268    268    268            �
           2606    27371 8   easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey 
   CONSTRAINT     v   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnail_pkey;
       public         postgres    false    268    268            �
           2606    27399 L   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey;
       public         postgres    false    270    270            �
           2606    27401 X   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key;
       public         postgres    false    270    270            ?
           2606    26561 $   filer_clipboard filer_clipboard_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_pkey;
       public         postgres    false    239    239            D
           2606    26569 ,   filer_clipboarditem filer_clipboarditem_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_pkey;
       public         postgres    false    241    241            H
           2606    26580    filer_file filer_file_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_pkey;
       public         postgres    false    243    243            O
           2606    26602 6   filer_folder filer_folder_parent_id_name_bc773258_uniq 
   CONSTRAINT     |   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_name_bc773258_uniq UNIQUE (parent_id, name);
 `   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_name_bc773258_uniq;
       public         postgres    false    245    245    245            Q
           2606    26592    filer_folder filer_folder_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_pkey;
       public         postgres    false    245    245            W
           2606    26600 2   filer_folderpermission filer_folderpermission_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_pkey;
       public         postgres    false    247    247            Z
           2606    26610    filer_image filer_image_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);
 F   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_pkey;
       public         postgres    false    248    248            \
           2606    26698 0   filer_thumbnailoption filer_thumbnailoption_pkey 
   CONSTRAINT     n   ALTER TABLE ONLY public.filer_thumbnailoption
    ADD CONSTRAINT filer_thumbnailoption_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.filer_thumbnailoption DROP CONSTRAINT filer_thumbnailoption_pkey;
       public         postgres    false    250    250            �
           2606    27411 8   hero_area_plugin_heroarea hero_area_plugin_heroarea_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.hero_area_plugin_heroarea
    ADD CONSTRAINT hero_area_plugin_heroarea_pkey PRIMARY KEY (cmsplugin_ptr_id);
 b   ALTER TABLE ONLY public.hero_area_plugin_heroarea DROP CONSTRAINT hero_area_plugin_heroarea_pkey;
       public         postgres    false    271    271            �
           2606    27432 "   menus_cachekey menus_cachekey_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.menus_cachekey
    ADD CONSTRAINT menus_cachekey_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.menus_cachekey DROP CONSTRAINT menus_cachekey_pkey;
       public         postgres    false    273    273            �
           2606    27437 6   overview_plugin_overview overview_plugin_overview_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.overview_plugin_overview
    ADD CONSTRAINT overview_plugin_overview_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.overview_plugin_overview DROP CONSTRAINT overview_plugin_overview_pkey;
       public         postgres    false    274    274            �
           2606    27448 >   overview_plugin_overviewitem overview_plugin_overviewitem_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.overview_plugin_overviewitem
    ADD CONSTRAINT overview_plugin_overviewitem_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.overview_plugin_overviewitem DROP CONSTRAINT overview_plugin_overviewitem_pkey;
       public         postgres    false    276    276            �
           2606    28215 D   portfolio_app_latestworksection portfolio_app_latestworksection_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_latestworksection
    ADD CONSTRAINT portfolio_app_latestworksection_pkey PRIMARY KEY (cmsplugin_ptr_id);
 n   ALTER TABLE ONLY public.portfolio_app_latestworksection DROP CONSTRAINT portfolio_app_latestworksection_pkey;
       public         postgres    false    296    296            �
           2606    27468 6   portfolio_app_mediaasset portfolio_app_mediaasset_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.portfolio_app_mediaasset
    ADD CONSTRAINT portfolio_app_mediaasset_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.portfolio_app_mediaasset DROP CONSTRAINT portfolio_app_mediaasset_pkey;
       public         postgres    false    278    278            �
           2606    27490 0   portfolio_app_project portfolio_app_project_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.portfolio_app_project
    ADD CONSTRAINT portfolio_app_project_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_project_pkey;
       public         postgres    false    279    279            �
           2606    27503 :   portfolio_app_project_tags portfolio_app_project_tags_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_project_tags_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_project_tags_pkey;
       public         postgres    false    282    282            �
           2606    27536 U   portfolio_app_project_tags portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq UNIQUE (project_id, tag_id);
    ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq;
       public         postgres    false    282    282    282            �
           2606    27495 (   portfolio_app_tag portfolio_app_tag_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public.portfolio_app_tag
    ADD CONSTRAINT portfolio_app_tag_pkey PRIMARY KEY (cmsplugin_ptr_id);
 R   ALTER TABLE ONLY public.portfolio_app_tag DROP CONSTRAINT portfolio_app_tag_pkey;
       public         postgres    false    280    280            �
           2606    27605 >   profile_plugin_milestoneitem profile_plugin_milestoneitem_pkey 
   CONSTRAINT     |   ALTER TABLE ONLY public.profile_plugin_milestoneitem
    ADD CONSTRAINT profile_plugin_milestoneitem_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.profile_plugin_milestoneitem DROP CONSTRAINT profile_plugin_milestoneitem_pkey;
       public         postgres    false    284    284            �
           2606    27613 2   profile_plugin_profile profile_plugin_profile_pkey 
   CONSTRAINT     ~   ALTER TABLE ONLY public.profile_plugin_profile
    ADD CONSTRAINT profile_plugin_profile_pkey PRIMARY KEY (cmsplugin_ptr_id);
 \   ALTER TABLE ONLY public.profile_plugin_profile DROP CONSTRAINT profile_plugin_profile_pkey;
       public         postgres    false    285    285            �
           2606    28138 D   service_plugin_servicecontainer service_plugin_servicecontainer_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.service_plugin_servicecontainer
    ADD CONSTRAINT service_plugin_servicecontainer_pkey PRIMARY KEY (cmsplugin_ptr_id);
 n   ALTER TABLE ONLY public.service_plugin_servicecontainer DROP CONSTRAINT service_plugin_servicecontainer_pkey;
       public         postgres    false    294    294            �
           2606    28146 @   service_plugin_servicecontent service_plugin_servicecontent_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.service_plugin_servicecontent
    ADD CONSTRAINT service_plugin_servicecontent_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.service_plugin_servicecontent DROP CONSTRAINT service_plugin_servicecontent_pkey;
       public         postgres    false    295    295            �
           2606    27657 B   testimonial_plugin_testimonial testimonial_plugin_testimonial_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.testimonial_plugin_testimonial
    ADD CONSTRAINT testimonial_plugin_testimonial_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.testimonial_plugin_testimonial DROP CONSTRAINT testimonial_plugin_testimonial_pkey;
       public         postgres    false    288    288            �
           2606    27662 N   testimonial_plugin_testimonialplugin testimonial_plugin_testimonialplugin_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public.testimonial_plugin_testimonialplugin
    ADD CONSTRAINT testimonial_plugin_testimonialplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);
 x   ALTER TABLE ONLY public.testimonial_plugin_testimonialplugin DROP CONSTRAINT testimonial_plugin_testimonialplugin_pkey;
       public         postgres    false    289    289            �	           1259    25758    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    192            �	           1259    25771 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    194            �	           1259    25772 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    194            �	           1259    25757 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    190            �	           1259    25787 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    198            �	           1259    25786 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    198            �	           1259    25801 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    200            �	           1259    25800 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    200            �	           1259    26346     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    196            �	           1259    26115 2   cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a    INDEX     �   CREATE INDEX cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a ON public.cms_aliaspluginmodel USING btree (alias_placeholder_id);
 F   DROP INDEX public.cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a;
       public         postgres    false    207            �	           1259    25912 '   cms_aliaspluginmodel_plugin_id_9867676e    INDEX     m   CREATE INDEX cms_aliaspluginmodel_plugin_id_9867676e ON public.cms_aliaspluginmodel USING btree (plugin_id);
 ;   DROP INDEX public.cms_aliaspluginmodel_plugin_id_9867676e;
       public         postgres    false    207            �	           1259    25894    cms_cmsplugin_language_bbea8a48    INDEX     ]   CREATE INDEX cms_cmsplugin_language_bbea8a48 ON public.cms_cmsplugin USING btree (language);
 3   DROP INDEX public.cms_cmsplugin_language_bbea8a48;
       public         postgres    false    206            �	           1259    25895 $   cms_cmsplugin_language_bbea8a48_like    INDEX     v   CREATE INDEX cms_cmsplugin_language_bbea8a48_like ON public.cms_cmsplugin USING btree (language varchar_pattern_ops);
 8   DROP INDEX public.cms_cmsplugin_language_bbea8a48_like;
       public         postgres    false    206            �	           1259    25913     cms_cmsplugin_parent_id_fd3bd9dd    INDEX     _   CREATE INDEX cms_cmsplugin_parent_id_fd3bd9dd ON public.cms_cmsplugin USING btree (parent_id);
 4   DROP INDEX public.cms_cmsplugin_parent_id_fd3bd9dd;
       public         postgres    false    206            �	           1259    26324     cms_cmsplugin_path_4917bb44_like    INDEX     n   CREATE INDEX cms_cmsplugin_path_4917bb44_like ON public.cms_cmsplugin USING btree (path varchar_pattern_ops);
 4   DROP INDEX public.cms_cmsplugin_path_4917bb44_like;
       public         postgres    false    206            �	           1259    26109 %   cms_cmsplugin_placeholder_id_0bfa3b26    INDEX     i   CREATE INDEX cms_cmsplugin_placeholder_id_0bfa3b26 ON public.cms_cmsplugin USING btree (placeholder_id);
 9   DROP INDEX public.cms_cmsplugin_placeholder_id_0bfa3b26;
       public         postgres    false    206            �	           1259    25896 "   cms_cmsplugin_plugin_type_94e96ebf    INDEX     c   CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf ON public.cms_cmsplugin USING btree (plugin_type);
 6   DROP INDEX public.cms_cmsplugin_plugin_type_94e96ebf;
       public         postgres    false    206            �	           1259    25897 '   cms_cmsplugin_plugin_type_94e96ebf_like    INDEX     |   CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf_like ON public.cms_cmsplugin USING btree (plugin_type varchar_pattern_ops);
 ;   DROP INDEX public.cms_cmsplugin_plugin_type_94e96ebf_like;
       public         postgres    false    206            �	           1259    25929 *   cms_globalpagepermission_group_id_991b4733    INDEX     s   CREATE INDEX cms_globalpagepermission_group_id_991b4733 ON public.cms_globalpagepermission USING btree (group_id);
 >   DROP INDEX public.cms_globalpagepermission_group_id_991b4733;
       public         postgres    false    209            �	           1259    25943 ?   cms_globalpagepermission_sites_globalpagepermission_id_46bd2681    INDEX     �   CREATE INDEX cms_globalpagepermission_sites_globalpagepermission_id_46bd2681 ON public.cms_globalpagepermission_sites USING btree (globalpagepermission_id);
 S   DROP INDEX public.cms_globalpagepermission_sites_globalpagepermission_id_46bd2681;
       public         postgres    false    211            �	           1259    25944 /   cms_globalpagepermission_sites_site_id_00460b53    INDEX     }   CREATE INDEX cms_globalpagepermission_sites_site_id_00460b53 ON public.cms_globalpagepermission_sites USING btree (site_id);
 C   DROP INDEX public.cms_globalpagepermission_sites_site_id_00460b53;
       public         postgres    false    211            �	           1259    25930 )   cms_globalpagepermission_user_id_a227cee1    INDEX     q   CREATE INDEX cms_globalpagepermission_user_id_a227cee1 ON public.cms_globalpagepermission USING btree (user_id);
 =   DROP INDEX public.cms_globalpagepermission_user_id_a227cee1;
       public         postgres    false    209            �	           1259    25970 "   cms_page_application_urls_9ef47497    INDEX     c   CREATE INDEX cms_page_application_urls_9ef47497 ON public.cms_page USING btree (application_urls);
 6   DROP INDEX public.cms_page_application_urls_9ef47497;
       public         postgres    false    213            �	           1259    25971 '   cms_page_application_urls_9ef47497_like    INDEX     |   CREATE INDEX cms_page_application_urls_9ef47497_like ON public.cms_page USING btree (application_urls varchar_pattern_ops);
 ;   DROP INDEX public.cms_page_application_urls_9ef47497_like;
       public         postgres    false    213            �	           1259    25962    cms_page_in_navigation_01c24279    INDEX     ]   CREATE INDEX cms_page_in_navigation_01c24279 ON public.cms_page USING btree (in_navigation);
 3   DROP INDEX public.cms_page_in_navigation_01c24279;
       public         postgres    false    213            �	           1259    25969    cms_page_is_home_edadca07    INDEX     Q   CREATE INDEX cms_page_is_home_edadca07 ON public.cms_page USING btree (is_home);
 -   DROP INDEX public.cms_page_is_home_edadca07;
       public         postgres    false    213            �	           1259    25968 *   cms_page_limit_visibility_in_menu_30db6aa6    INDEX     s   CREATE INDEX cms_page_limit_visibility_in_menu_30db6aa6 ON public.cms_page USING btree (limit_visibility_in_menu);
 >   DROP INDEX public.cms_page_limit_visibility_in_menu_30db6aa6;
       public         postgres    false    213            �	           1259    25966 &   cms_page_navigation_extenders_c24af8dd    INDEX     k   CREATE INDEX cms_page_navigation_extenders_c24af8dd ON public.cms_page USING btree (navigation_extenders);
 :   DROP INDEX public.cms_page_navigation_extenders_c24af8dd;
       public         postgres    false    213            �	           1259    25967 +   cms_page_navigation_extenders_c24af8dd_like    INDEX     �   CREATE INDEX cms_page_navigation_extenders_c24af8dd_like ON public.cms_page USING btree (navigation_extenders varchar_pattern_ops);
 ?   DROP INDEX public.cms_page_navigation_extenders_c24af8dd_like;
       public         postgres    false    213            �	           1259    26474    cms_page_node_id_c87b85a9    INDEX     Q   CREATE INDEX cms_page_node_id_c87b85a9 ON public.cms_page USING btree (node_id);
 -   DROP INDEX public.cms_page_node_id_c87b85a9;
       public         postgres    false    213            
           1259    26107 &   cms_page_placeholders_page_id_f2ce8dec    INDEX     k   CREATE INDEX cms_page_placeholders_page_id_f2ce8dec ON public.cms_page_placeholders USING btree (page_id);
 :   DROP INDEX public.cms_page_placeholders_page_id_f2ce8dec;
       public         postgres    false    221            
           1259    26108 -   cms_page_placeholders_placeholder_id_6b120886    INDEX     y   CREATE INDEX cms_page_placeholders_placeholder_id_6b120886 ON public.cms_page_placeholders USING btree (placeholder_id);
 A   DROP INDEX public.cms_page_placeholders_placeholder_id_6b120886;
       public         postgres    false    221            �	           1259    25960 "   cms_page_publication_date_684fabf7    INDEX     c   CREATE INDEX cms_page_publication_date_684fabf7 ON public.cms_page USING btree (publication_date);
 6   DROP INDEX public.cms_page_publication_date_684fabf7;
       public         postgres    false    213            �	           1259    25961 &   cms_page_publication_end_date_12a0c46a    INDEX     k   CREATE INDEX cms_page_publication_end_date_12a0c46a ON public.cms_page USING btree (publication_end_date);
 :   DROP INDEX public.cms_page_publication_end_date_12a0c46a;
       public         postgres    false    213            �	           1259    25976 $   cms_page_publisher_is_draft_141cba60    INDEX     g   CREATE INDEX cms_page_publisher_is_draft_141cba60 ON public.cms_page USING btree (publisher_is_draft);
 8   DROP INDEX public.cms_page_publisher_is_draft_141cba60;
       public         postgres    false    213            �	           1259    25964    cms_page_reverse_id_ffc9ede2    INDEX     W   CREATE INDEX cms_page_reverse_id_ffc9ede2 ON public.cms_page USING btree (reverse_id);
 0   DROP INDEX public.cms_page_reverse_id_ffc9ede2;
       public         postgres    false    213            �	           1259    25965 !   cms_page_reverse_id_ffc9ede2_like    INDEX     p   CREATE INDEX cms_page_reverse_id_ffc9ede2_like ON public.cms_page USING btree (reverse_id varchar_pattern_ops);
 5   DROP INDEX public.cms_page_reverse_id_ffc9ede2_like;
       public         postgres    false    213            �	           1259    25963    cms_page_soft_root_51efccbe    INDEX     U   CREATE INDEX cms_page_soft_root_51efccbe ON public.cms_page USING btree (soft_root);
 /   DROP INDEX public.cms_page_soft_root_51efccbe;
       public         postgres    false    213            �	           1259    25994 $   cms_pagepermission_group_id_af5af193    INDEX     g   CREATE INDEX cms_pagepermission_group_id_af5af193 ON public.cms_pagepermission USING btree (group_id);
 8   DROP INDEX public.cms_pagepermission_group_id_af5af193;
       public         postgres    false    215            �	           1259    25995 #   cms_pagepermission_page_id_0ae9a163    INDEX     e   CREATE INDEX cms_pagepermission_page_id_0ae9a163 ON public.cms_pagepermission USING btree (page_id);
 7   DROP INDEX public.cms_pagepermission_page_id_0ae9a163;
       public         postgres    false    215            �	           1259    25996 #   cms_pagepermission_user_id_0c7d2b3c    INDEX     e   CREATE INDEX cms_pagepermission_user_id_0c7d2b3c ON public.cms_pagepermission USING btree (user_id);
 7   DROP INDEX public.cms_pagepermission_user_id_0c7d2b3c;
       public         postgres    false    215            �	           1259    26081 #   cms_pageuser_created_by_id_8e9fbf83    INDEX     e   CREATE INDEX cms_pageuser_created_by_id_8e9fbf83 ON public.cms_pageuser USING btree (created_by_id);
 7   DROP INDEX public.cms_pageuser_created_by_id_8e9fbf83;
       public         postgres    false    216            �	           1259    26092 (   cms_pageusergroup_created_by_id_7d57fa39    INDEX     o   CREATE INDEX cms_pageusergroup_created_by_id_7d57fa39 ON public.cms_pageusergroup USING btree (created_by_id);
 <   DROP INDEX public.cms_pageusergroup_created_by_id_7d57fa39;
       public         postgres    false    217            
           1259    26182    cms_placeholder_slot_0bc04d21    INDEX     Y   CREATE INDEX cms_placeholder_slot_0bc04d21 ON public.cms_placeholder USING btree (slot);
 1   DROP INDEX public.cms_placeholder_slot_0bc04d21;
       public         postgres    false    219            
           1259    26181 "   cms_placeholder_slot_0bc04d21_like    INDEX     r   CREATE INDEX cms_placeholder_slot_0bc04d21_like ON public.cms_placeholder USING btree (slot varchar_pattern_ops);
 6   DROP INDEX public.cms_placeholder_slot_0bc04d21_like;
       public         postgres    false    219            
           1259    26131 4   cms_placeholderreference_placeholder_ref_id_244759b1    INDEX     �   CREATE INDEX cms_placeholderreference_placeholder_ref_id_244759b1 ON public.cms_placeholderreference USING btree (placeholder_ref_id);
 H   DROP INDEX public.cms_placeholderreference_placeholder_ref_id_244759b1;
       public         postgres    false    222            
           1259    26147 '   cms_staticplaceholder_draft_id_5aee407b    INDEX     m   CREATE INDEX cms_staticplaceholder_draft_id_5aee407b ON public.cms_staticplaceholder USING btree (draft_id);
 ;   DROP INDEX public.cms_staticplaceholder_draft_id_5aee407b;
       public         postgres    false    224            
           1259    26148 (   cms_staticplaceholder_public_id_876aaa66    INDEX     o   CREATE INDEX cms_staticplaceholder_public_id_876aaa66 ON public.cms_staticplaceholder USING btree (public_id);
 <   DROP INDEX public.cms_staticplaceholder_public_id_876aaa66;
       public         postgres    false    224            
           1259    26149 &   cms_staticplaceholder_site_id_dc6a85b6    INDEX     k   CREATE INDEX cms_staticplaceholder_site_id_dc6a85b6 ON public.cms_staticplaceholder USING btree (site_id);
 :   DROP INDEX public.cms_staticplaceholder_site_id_dc6a85b6;
       public         postgres    false    224            
           1259    26166 $   cms_title_has_url_overwrite_ecf27bb9    INDEX     g   CREATE INDEX cms_title_has_url_overwrite_ecf27bb9 ON public.cms_title USING btree (has_url_overwrite);
 8   DROP INDEX public.cms_title_has_url_overwrite_ecf27bb9;
       public         postgres    false    226            
           1259    26160    cms_title_language_50a0dfa1    INDEX     U   CREATE INDEX cms_title_language_50a0dfa1 ON public.cms_title USING btree (language);
 /   DROP INDEX public.cms_title_language_50a0dfa1;
       public         postgres    false    226            
           1259    26161     cms_title_language_50a0dfa1_like    INDEX     n   CREATE INDEX cms_title_language_50a0dfa1_like ON public.cms_title USING btree (language varchar_pattern_ops);
 4   DROP INDEX public.cms_title_language_50a0dfa1_like;
       public         postgres    false    226            
           1259    26169    cms_title_page_id_5fade2a3    INDEX     S   CREATE INDEX cms_title_page_id_5fade2a3 ON public.cms_title USING btree (page_id);
 .   DROP INDEX public.cms_title_page_id_5fade2a3;
       public         postgres    false    226            
           1259    26164    cms_title_path_c484314c    INDEX     M   CREATE INDEX cms_title_path_c484314c ON public.cms_title USING btree (path);
 +   DROP INDEX public.cms_title_path_c484314c;
       public         postgres    false    226            
           1259    26165    cms_title_path_c484314c_like    INDEX     f   CREATE INDEX cms_title_path_c484314c_like ON public.cms_title USING btree (path varchar_pattern_ops);
 0   DROP INDEX public.cms_title_path_c484314c_like;
       public         postgres    false    226             
           1259    26167 %   cms_title_publisher_is_draft_95874c88    INDEX     i   CREATE INDEX cms_title_publisher_is_draft_95874c88 ON public.cms_title USING btree (publisher_is_draft);
 9   DROP INDEX public.cms_title_publisher_is_draft_95874c88;
       public         postgres    false    226            #
           1259    26168 "   cms_title_publisher_state_9a952b0f    INDEX     c   CREATE INDEX cms_title_publisher_state_9a952b0f ON public.cms_title USING btree (publisher_state);
 6   DROP INDEX public.cms_title_publisher_state_9a952b0f;
       public         postgres    false    226            $
           1259    26162    cms_title_slug_4947d146    INDEX     M   CREATE INDEX cms_title_slug_4947d146 ON public.cms_title USING btree (slug);
 +   DROP INDEX public.cms_title_slug_4947d146;
       public         postgres    false    226            %
           1259    26163    cms_title_slug_4947d146_like    INDEX     f   CREATE INDEX cms_title_slug_4947d146_like ON public.cms_title USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.cms_title_slug_4947d146_like;
       public         postgres    false    226            /
           1259    26472    cms_treenode_parent_id_59bb02c4    INDEX     ]   CREATE INDEX cms_treenode_parent_id_59bb02c4 ON public.cms_treenode USING btree (parent_id);
 3   DROP INDEX public.cms_treenode_parent_id_59bb02c4;
       public         postgres    false    233            0
           1259    26471    cms_treenode_path_6eb22885_like    INDEX     l   CREATE INDEX cms_treenode_path_6eb22885_like ON public.cms_treenode USING btree (path varchar_pattern_ops);
 3   DROP INDEX public.cms_treenode_path_6eb22885_like;
       public         postgres    false    233            5
           1259    26473    cms_treenode_site_id_d3f46985    INDEX     Y   CREATE INDEX cms_treenode_site_id_d3f46985 ON public.cms_treenode USING btree (site_id);
 1   DROP INDEX public.cms_treenode_site_id_d3f46985;
       public         postgres    false    233            &
           1259    26180 &   cms_usersettings_clipboard_id_3ae17c19    INDEX     k   CREATE INDEX cms_usersettings_clipboard_id_3ae17c19 ON public.cms_usersettings USING btree (clipboard_id);
 :   DROP INDEX public.cms_usersettings_clipboard_id_3ae17c19;
       public         postgres    false    228            �	           1259    25824 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    202            �	           1259    25825 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    202            �
           1259    27643 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    286            �
           1259    27642 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    286            �	           1259    27646     django_site_domain_a2e37b91_like    INDEX     n   CREATE INDEX django_site_domain_a2e37b91_like ON public.django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public         postgres    false    204            ]
           1259    26751 (   djangocms_file_file_file_src_id_74ac14a5    INDEX     o   CREATE INDEX djangocms_file_file_file_src_id_74ac14a5 ON public.djangocms_file_file USING btree (file_src_id);
 <   DROP INDEX public.djangocms_file_file_file_src_id_74ac14a5;
       public         postgres    false    251            `
           1259    26807 ,   djangocms_file_folder_folder_src_id_9558406a    INDEX     w   CREATE INDEX djangocms_file_folder_folder_src_id_9558406a ON public.djangocms_file_folder USING btree (folder_src_id);
 @   DROP INDEX public.djangocms_file_folder_folder_src_id_9558406a;
       public         postgres    false    252            e
           1259    26926 4   djangocms_googlemap_googlemapmarker_icon_id_3b103213    INDEX     �   CREATE INDEX djangocms_googlemap_googlemapmarker_icon_id_3b103213 ON public.djangocms_googlemap_googlemapmarker USING btree (icon_id);
 H   DROP INDEX public.djangocms_googlemap_googlemapmarker_icon_id_3b103213;
       public         postgres    false    254            j
           1259    26950 )   djangocms_link_link_page_link_id_adba1bc7    INDEX     u   CREATE INDEX djangocms_link_link_page_link_id_adba1bc7 ON public.djangocms_link_link USING btree (internal_link_id);
 =   DROP INDEX public.djangocms_link_link_page_link_id_adba1bc7;
       public         postgres    false    256            m
           1259    27027 /   djangocms_picture_picture_page_link_id_d5c782e0    INDEX     }   CREATE INDEX djangocms_picture_picture_page_link_id_d5c782e0 ON public.djangocms_picture_picture USING btree (link_page_id);
 C   DROP INDEX public.djangocms_picture_picture_page_link_id_d5c782e0;
       public         postgres    false    257            n
           1259    27033 -   djangocms_picture_picture_picture_id_f7d6711b    INDEX     y   CREATE INDEX djangocms_picture_picture_picture_id_f7d6711b ON public.djangocms_picture_picture USING btree (picture_id);
 A   DROP INDEX public.djangocms_picture_picture_picture_id_f7d6711b;
       public         postgres    false    257            q
           1259    27161 7   djangocms_picture_picture_thumbnail_options_id_59cf80d1    INDEX     �   CREATE INDEX djangocms_picture_picture_thumbnail_options_id_59cf80d1 ON public.djangocms_picture_picture USING btree (thumbnail_options_id);
 K   DROP INDEX public.djangocms_picture_picture_thumbnail_options_id_59cf80d1;
       public         postgres    false    257            r
           1259    27187 ,   djangocms_snippet_snippet_name_260f397b_like    INDEX     �   CREATE INDEX djangocms_snippet_snippet_name_260f397b_like ON public.djangocms_snippet_snippet USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.djangocms_snippet_snippet_name_260f397b_like;
       public         postgres    false    259            w
           1259    27221 ,   djangocms_snippet_snippet_slug_bd43cd96_like    INDEX     �   CREATE INDEX djangocms_snippet_snippet_slug_bd43cd96_like ON public.djangocms_snippet_snippet USING btree (slug varchar_pattern_ops);
 @   DROP INDEX public.djangocms_snippet_snippet_slug_bd43cd96_like;
       public         postgres    false    259            |
           1259    27198 0   djangocms_snippet_snippetptr_snippet_id_56b99614    INDEX        CREATE INDEX djangocms_snippet_snippetptr_snippet_id_56b99614 ON public.djangocms_snippet_snippetptr USING btree (snippet_id);
 D   DROP INDEX public.djangocms_snippet_snippetptr_snippet_id_56b99614;
       public         postgres    false    260            �
           1259    27293 .   djangocms_video_videoplayer_poster_id_07790e24    INDEX     {   CREATE INDEX djangocms_video_videoplayer_poster_id_07790e24 ON public.djangocms_video_videoplayer USING btree (poster_id);
 B   DROP INDEX public.djangocms_video_videoplayer_poster_id_07790e24;
       public         postgres    false    262            �
           1259    27343 3   djangocms_video_videosource_source_file_id_16f11167    INDEX     �   CREATE INDEX djangocms_video_videosource_source_file_id_16f11167 ON public.djangocms_video_videosource USING btree (source_file_id);
 G   DROP INDEX public.djangocms_video_videosource_source_file_id_16f11167;
       public         postgres    false    263            �
           1259    27354 *   djangocms_video_videotrack_src_id_e5a015d8    INDEX     s   CREATE INDEX djangocms_video_videotrack_src_id_e5a015d8 ON public.djangocms_video_videotrack USING btree (src_id);
 >   DROP INDEX public.djangocms_video_videotrack_src_id_e5a015d8;
       public         postgres    false    264            �
           1259    27378 $   easy_thumbnails_source_name_5fe0edc6    INDEX     g   CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON public.easy_thumbnails_source USING btree (name);
 8   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6;
       public         postgres    false    266            �
           1259    27379 )   easy_thumbnails_source_name_5fe0edc6_like    INDEX     �   CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON public.easy_thumbnails_source USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6_like;
       public         postgres    false    266            �
           1259    27376 ,   easy_thumbnails_source_storage_hash_946cbcc9    INDEX     w   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON public.easy_thumbnails_source USING btree (storage_hash);
 @   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9;
       public         postgres    false    266            �
           1259    27377 1   easy_thumbnails_source_storage_hash_946cbcc9_like    INDEX     �   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON public.easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);
 E   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9_like;
       public         postgres    false    266            �
           1259    27387 '   easy_thumbnails_thumbnail_name_b5882c31    INDEX     m   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON public.easy_thumbnails_thumbnail USING btree (name);
 ;   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31;
       public         postgres    false    268            �
           1259    27388 ,   easy_thumbnails_thumbnail_name_b5882c31_like    INDEX     �   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON public.easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31_like;
       public         postgres    false    268            �
           1259    27389 ,   easy_thumbnails_thumbnail_source_id_5b57bc77    INDEX     w   CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON public.easy_thumbnails_thumbnail USING btree (source_id);
 @   DROP INDEX public.easy_thumbnails_thumbnail_source_id_5b57bc77;
       public         postgres    false    268            �
           1259    27385 /   easy_thumbnails_thumbnail_storage_hash_f1435f49    INDEX     }   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON public.easy_thumbnails_thumbnail USING btree (storage_hash);
 C   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49;
       public         postgres    false    268            �
           1259    27386 4   easy_thumbnails_thumbnail_storage_hash_f1435f49_like    INDEX     �   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON public.easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);
 H   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49_like;
       public         postgres    false    268            @
           1259    26675     filer_clipboard_user_id_b52ff0bc    INDEX     _   CREATE INDEX filer_clipboard_user_id_b52ff0bc ON public.filer_clipboard USING btree (user_id);
 4   DROP INDEX public.filer_clipboard_user_id_b52ff0bc;
       public         postgres    false    239            A
           1259    26616 )   filer_clipboarditem_clipboard_id_7a76518b    INDEX     q   CREATE INDEX filer_clipboarditem_clipboard_id_7a76518b ON public.filer_clipboarditem USING btree (clipboard_id);
 =   DROP INDEX public.filer_clipboarditem_clipboard_id_7a76518b;
       public         postgres    false    241            B
           1259    26669 $   filer_clipboarditem_file_id_06196f80    INDEX     g   CREATE INDEX filer_clipboarditem_file_id_06196f80 ON public.filer_clipboarditem USING btree (file_id);
 8   DROP INDEX public.filer_clipboarditem_file_id_06196f80;
       public         postgres    false    241            E
           1259    26651    filer_file_folder_id_af803bbb    INDEX     Y   CREATE INDEX filer_file_folder_id_af803bbb ON public.filer_file USING btree (folder_id);
 1   DROP INDEX public.filer_file_folder_id_af803bbb;
       public         postgres    false    243            F
           1259    26657    filer_file_owner_id_b9e32671    INDEX     W   CREATE INDEX filer_file_owner_id_b9e32671 ON public.filer_file USING btree (owner_id);
 0   DROP INDEX public.filer_file_owner_id_b9e32671;
       public         postgres    false    243            I
           1259    26663 (   filer_file_polymorphic_ctype_id_f44903c1    INDEX     o   CREATE INDEX filer_file_polymorphic_ctype_id_f44903c1 ON public.filer_file USING btree (polymorphic_ctype_id);
 <   DROP INDEX public.filer_file_polymorphic_ctype_id_f44903c1;
       public         postgres    false    243            J
           1259    26630    filer_folder_level_b631d28a    INDEX     U   CREATE INDEX filer_folder_level_b631d28a ON public.filer_folder USING btree (level);
 /   DROP INDEX public.filer_folder_level_b631d28a;
       public         postgres    false    245            K
           1259    26627    filer_folder_lft_2c2b69f1    INDEX     Q   CREATE INDEX filer_folder_lft_2c2b69f1 ON public.filer_folder USING btree (lft);
 -   DROP INDEX public.filer_folder_lft_2c2b69f1;
       public         postgres    false    245            L
           1259    26631    filer_folder_owner_id_be530fb4    INDEX     [   CREATE INDEX filer_folder_owner_id_be530fb4 ON public.filer_folder USING btree (owner_id);
 2   DROP INDEX public.filer_folder_owner_id_be530fb4;
       public         postgres    false    245            M
           1259    26632    filer_folder_parent_id_308aecda    INDEX     ]   CREATE INDEX filer_folder_parent_id_308aecda ON public.filer_folder USING btree (parent_id);
 3   DROP INDEX public.filer_folder_parent_id_308aecda;
       public         postgres    false    245            R
           1259    26628    filer_folder_rght_34946267    INDEX     S   CREATE INDEX filer_folder_rght_34946267 ON public.filer_folder USING btree (rght);
 .   DROP INDEX public.filer_folder_rght_34946267;
       public         postgres    false    245            S
           1259    26629    filer_folder_tree_id_b016223c    INDEX     Y   CREATE INDEX filer_folder_tree_id_b016223c ON public.filer_folder USING btree (tree_id);
 1   DROP INDEX public.filer_folder_tree_id_b016223c;
       public         postgres    false    245            T
           1259    26648 )   filer_folderpermission_folder_id_5d02f1da    INDEX     q   CREATE INDEX filer_folderpermission_folder_id_5d02f1da ON public.filer_folderpermission USING btree (folder_id);
 =   DROP INDEX public.filer_folderpermission_folder_id_5d02f1da;
       public         postgres    false    247            U
           1259    26649 (   filer_folderpermission_group_id_8901bafa    INDEX     o   CREATE INDEX filer_folderpermission_group_id_8901bafa ON public.filer_folderpermission USING btree (group_id);
 <   DROP INDEX public.filer_folderpermission_group_id_8901bafa;
       public         postgres    false    247            X
           1259    26650 '   filer_folderpermission_user_id_7673d4b6    INDEX     m   CREATE INDEX filer_folderpermission_user_id_7673d4b6 ON public.filer_folderpermission USING btree (user_id);
 ;   DROP INDEX public.filer_folderpermission_user_id_7673d4b6;
       public         postgres    false    247            �
           1259    27459 4   overview_plugin_overviewitem_overview_id_id_928fc1c7    INDEX     �   CREATE INDEX overview_plugin_overviewitem_overview_id_id_928fc1c7 ON public.overview_plugin_overviewitem USING btree (overview_id_id);
 H   DROP INDEX public.overview_plugin_overviewitem_overview_id_id_928fc1c7;
       public         postgres    false    276            �
           1259    27539 /   portfolio_app_mediaasset_project_id_id_2bd68af0    INDEX     }   CREATE INDEX portfolio_app_mediaasset_project_id_id_2bd68af0 ON public.portfolio_app_mediaasset USING btree (project_id_id);
 C   DROP INDEX public.portfolio_app_mediaasset_project_id_id_2bd68af0;
       public         postgres    false    278            �
           1259    27517 #   portfolio_app_project_slug_c7455a3e    INDEX     e   CREATE INDEX portfolio_app_project_slug_c7455a3e ON public.portfolio_app_project USING btree (slug);
 7   DROP INDEX public.portfolio_app_project_slug_c7455a3e;
       public         postgres    false    279            �
           1259    27518 (   portfolio_app_project_slug_c7455a3e_like    INDEX     ~   CREATE INDEX portfolio_app_project_slug_c7455a3e_like ON public.portfolio_app_project USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.portfolio_app_project_slug_c7455a3e_like;
       public         postgres    false    279            �
           1259    27537 .   portfolio_app_project_tags_project_id_74c3a22f    INDEX     {   CREATE INDEX portfolio_app_project_tags_project_id_74c3a22f ON public.portfolio_app_project_tags USING btree (project_id);
 B   DROP INDEX public.portfolio_app_project_tags_project_id_74c3a22f;
       public         postgres    false    282            �
           1259    27538 *   portfolio_app_project_tags_tag_id_023e820f    INDEX     s   CREATE INDEX portfolio_app_project_tags_tag_id_023e820f ON public.portfolio_app_project_tags USING btree (tag_id);
 >   DROP INDEX public.portfolio_app_project_tags_tag_id_023e820f;
       public         postgres    false    282            �
           1259    27619 3   profile_plugin_milestoneitem_profile_id_id_31cc7d00    INDEX     �   CREATE INDEX profile_plugin_milestoneitem_profile_id_id_31cc7d00 ON public.profile_plugin_milestoneitem USING btree (profile_id_id);
 G   DROP INDEX public.profile_plugin_milestoneitem_profile_id_id_31cc7d00;
       public         postgres    false    284            �
           1259    27668 <   testimonial_plugin_testimo_testimonial_plugin_id_id_4364514e    INDEX     �   CREATE INDEX testimonial_plugin_testimo_testimonial_plugin_id_id_4364514e ON public.testimonial_plugin_testimonial USING btree (testimonial_plugin_id_id);
 P   DROP INDEX public.testimonial_plugin_testimo_testimonial_plugin_id_id_4364514e;
       public         postgres    false    288            1           2606    27739 S   about_me_plugin_aboutme about_me_plugin_abou_cmsplugin_ptr_id_1ee99f09_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_me_plugin_aboutme
    ADD CONSTRAINT about_me_plugin_abou_cmsplugin_ptr_id_1ee99f09_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.about_me_plugin_aboutme DROP CONSTRAINT about_me_plugin_abou_cmsplugin_ptr_id_1ee99f09_fk_cms_cmspl;
       public       postgres    false    206    292    2513            /           2606    27708 Z   about_me_plugin_skillcontainer about_me_plugin_skil_cmsplugin_ptr_id_0f40d99e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_me_plugin_skillcontainer
    ADD CONSTRAINT about_me_plugin_skil_cmsplugin_ptr_id_0f40d99e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.about_me_plugin_skillcontainer DROP CONSTRAINT about_me_plugin_skil_cmsplugin_ptr_id_0f40d99e_fk_cms_cmspl;
       public       postgres    false    206    2513    290            0           2606    27713 X   about_me_plugin_skillcontent about_me_plugin_skil_cmsplugin_ptr_id_16cc6440_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_me_plugin_skillcontent
    ADD CONSTRAINT about_me_plugin_skil_cmsplugin_ptr_id_16cc6440_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.about_me_plugin_skillcontent DROP CONSTRAINT about_me_plugin_skil_cmsplugin_ptr_id_16cc6440_fk_cms_cmspl;
       public       postgres    false    291    206    2513            2           2606    27760 U   about_me_plugin_statistic about_me_plugin_stat_cmsplugin_ptr_id_96dc9f33_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.about_me_plugin_statistic
    ADD CONSTRAINT about_me_plugin_stat_cmsplugin_ptr_id_96dc9f33_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.about_me_plugin_statistic DROP CONSTRAINT about_me_plugin_stat_cmsplugin_ptr_id_96dc9f33_fk_cms_cmspl;
       public       postgres    false    2513    293    206            �
           2606    26338 L   aldryn_style_style aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.aldryn_style_style
    ADD CONSTRAINT aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.aldryn_style_style DROP CONSTRAINT aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl;
       public       postgres    false    2513    229    206            �
           2606    25764 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    190    2468    194            �
           2606    25759 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    2473    192    194            �
           2606    25750 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    188    2463    190            �
           2606    25779 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    198    192    2473            �
           2606    25774 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    196    2481    198            �
           2606    25793 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    200    2468    190            �
           2606    25788 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    2481    200    196            �
           2606    26116 T   cms_aliaspluginmodel cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place FOREIGN KEY (alias_placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place;
       public       postgres    false    2563    207    219            �
           2606    26409 P   cms_aliaspluginmodel cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl;
       public       postgres    false    206    207    2513            �
           2606    27275 P   cms_aliaspluginmodel cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id FOREIGN KEY (plugin_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id;
       public       postgres    false    2513    207    206            �
           2606    27270 B   cms_cmsplugin cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id FOREIGN KEY (parent_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id;
       public       postgres    false    206    206    2513            �
           2606    26110 I   cms_cmsplugin cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id FOREIGN KEY (placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id;
       public       postgres    false    206    2563    219            �
           2606    26390 ^   cms_globalpagepermission_sites cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa FOREIGN KEY (globalpagepermission_id) REFERENCES public.cms_globalpagepermission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa;
       public       postgres    false    211    2523    209            �
           2606    26385 Q   cms_globalpagepermission_sites cms_globalpagepermis_site_id_00460b53_fk_django_si    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si;
       public       postgres    false    211    2505    204            �
           2606    25919 T   cms_globalpagepermission cms_globalpagepermission_group_id_991b4733_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id;
       public       postgres    false    2473    192    209            �
           2606    26365 E   cms_globalpagepermission cms_globalpagepermission_user_id_a227cee1_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk;
       public       postgres    false    209    196    2481            �
           2606    26475 5   cms_page cms_page_node_id_c87b85a9_fk_cms_treenode_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id FOREIGN KEY (node_id) REFERENCES public.cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id;
       public       postgres    false    213    2612    233            �
           2606    26100 O   cms_page_placeholders cms_page_placeholder_placeholder_id_6b120886_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place FOREIGN KEY (placeholder_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place;
       public       postgres    false    221    219    2563            �
           2606    26095 K   cms_page_placeholders cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id;
       public       postgres    false    2542    221    213            �
           2606    25950 =   cms_page cms_page_publisher_public_id_d619fca0_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id FOREIGN KEY (publisher_public_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id;
       public       postgres    false    213    2542    213            �
           2606    25979 H   cms_pagepermission cms_pagepermission_group_id_af5af193_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id;
       public       postgres    false    2473    215    192            �
           2606    25984 E   cms_pagepermission cms_pagepermission_page_id_0ae9a163_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id;
       public       postgres    false    213    2542    215            �
           2606    26355 9   cms_pagepermission cms_pagepermission_user_id_0c7d2b3c_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 c   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk;
       public       postgres    false    215    196    2481            �
           2606    26380 3   cms_pageuser cms_pageuser_created_by_id_8e9fbf83_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk;
       public       postgres    false    196    2481    216            �
           2606    26375 1   cms_pageuser cms_pageuser_user_ptr_id_b3d65592_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageuser
    ADD CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk FOREIGN KEY (user_ptr_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 [   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk;
       public       postgres    false    216    196    2481            �
           2606    26360 =   cms_pageusergroup cms_pageusergroup_created_by_id_7d57fa39_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk FOREIGN KEY (created_by_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk;
       public       postgres    false    2481    196    217            �
           2606    26082 J   cms_pageusergroup cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id FOREIGN KEY (group_ptr_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id;
       public       postgres    false    217    2473    192            �
           2606    26414 T   cms_placeholderreference cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl;
       public       postgres    false    2513    206    222            �
           2606    26126 V   cms_placeholderreference cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place FOREIGN KEY (placeholder_ref_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place;
       public       postgres    false    2563    219    222            �
           2606    26132 S   cms_staticplaceholder cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id FOREIGN KEY (draft_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id;
       public       postgres    false    219    224    2563            �
           2606    26137 T   cms_staticplaceholder cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id FOREIGN KEY (public_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id;
       public       postgres    false    224    219    2563            �
           2606    26142 N   cms_staticplaceholder cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id;
       public       postgres    false    2505    204    224            �
           2606    26150 3   cms_title cms_title_page_id_5fade2a3_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id;
       public       postgres    false    226    213    2542            �
           2606    26155 @   cms_title cms_title_publisher_public_id_003a2702_fk_cms_title_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id FOREIGN KEY (publisher_public_id) REFERENCES public.cms_title(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id;
       public       postgres    false    226    226    2591            �
           2606    26461 ?   cms_treenode cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id FOREIGN KEY (parent_id) REFERENCES public.cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id;
       public       postgres    false    233    2612    233            �
           2606    26466 <   cms_treenode cms_treenode_site_id_d3f46985_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_treenode
    ADD CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id FOREIGN KEY (site_id) REFERENCES public.django_site(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id;
       public       postgres    false    2505    204    233            �
           2606    26170 M   cms_usersettings cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id FOREIGN KEY (clipboard_id) REFERENCES public.cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id;
       public       postgres    false    219    2563    228            �
           2606    26395 B   cms_usersettings cms_usersettings_user_id_09633b2d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id;
       public       postgres    false    196    2481    228            �
           2606    26493 U   contact_me_plugin_message contact_me_plugin_me_cmsplugin_ptr_id_8157c61f_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_me_plugin_message
    ADD CONSTRAINT contact_me_plugin_me_cmsplugin_ptr_id_8157c61f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.contact_me_plugin_message DROP CONSTRAINT contact_me_plugin_me_cmsplugin_ptr_id_8157c61f_fk_cms_cmspl;
       public       postgres    false    206    234    2513            �
           2606    26498 Z   contact_me_plugin_shortcontact contact_me_plugin_sh_cmsplugin_ptr_id_29d7cb6d_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.contact_me_plugin_shortcontact
    ADD CONSTRAINT contact_me_plugin_sh_cmsplugin_ptr_id_29d7cb6d_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.contact_me_plugin_shortcontact DROP CONSTRAINT contact_me_plugin_sh_cmsplugin_ptr_id_29d7cb6d_fk_cms_cmspl;
       public       postgres    false    206    2513    235            �
           2606    25814 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    202    188    2463            �
           2606    26350 5   django_admin_log django_admin_log_user_id_c564eba6_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk;
       public       postgres    false    202    2481    196            �
           2606    26544 S   djangocms_column_column djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_column
    ADD CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.djangocms_column_column DROP CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl;
       public       postgres    false    2513    236    206            �
           2606    26549 Y   djangocms_column_multicolumns djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_column_multicolumns DROP CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl;
       public       postgres    false    237    206    2513                       2606    26746 N   djangocms_file_file djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl;
       public       postgres    false    2513    206    251            
           2606    26784 M   djangocms_file_file djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id FOREIGN KEY (file_src_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id;
       public       postgres    false    2632    243    251                       2606    26797 Q   djangocms_file_folder djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl;
       public       postgres    false    252    2513    206                       2606    26802 U   djangocms_file_folder djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id FOREIGN KEY (folder_src_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id;
       public       postgres    false    245    252    2641                       2606    26915 _   djangocms_googlemap_googlemapmarker djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl;
       public       postgres    false    2513    254    206                       2606    26876 Y   djangocms_googlemap_googlemap djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl;
       public       postgres    false    206    2513    253                       2606    26920 ^   djangocms_googlemap_googlemaproute djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl;
       public       postgres    false    206    2513    255                       2606    26927 V   djangocms_googlemap_googlemapmarker djangocms_googlemap__icon_id_3b103213_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima FOREIGN KEY (icon_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima;
       public       postgres    false    248    2650    254                       2606    26956 N   djangocms_link_link djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl;
       public       postgres    false    206    2513    256                       2606    26984 P   djangocms_link_link djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id FOREIGN KEY (internal_link_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id;
       public       postgres    false    256    2542    213                       2606    27156 U   djangocms_picture_picture djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl;
       public       postgres    false    2513    206    257                       2606    27151 O   djangocms_picture_picture djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima FOREIGN KEY (picture_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima;
       public       postgres    false    257    2650    248                       2606    27162 Y   djangocms_picture_picture djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu FOREIGN KEY (thumbnail_options_id) REFERENCES public.filer_thumbnailoption(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu;
       public       postgres    false    2652    250    257                       2606    27146 X   djangocms_picture_picture djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id FOREIGN KEY (link_page_id) REFERENCES public.cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id;
       public       postgres    false    257    2542    213                       2606    27214 X   djangocms_snippet_snippetptr djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl;
       public       postgres    false    2513    206    260                       2606    27222 P   djangocms_snippet_snippetptr djangocms_snippet_snippetptr_snippet_id_56b99614_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_snippet_id_56b99614_fk FOREIGN KEY (snippet_id) REFERENCES public.djangocms_snippet_snippet(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_snippetptr_snippet_id_56b99614_fk;
       public       postgres    false    259    260    2678                       2606    27245 X   djangocms_text_ckeditor_text djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text DROP CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl;
       public       postgres    false    206    261    2513                       2606    27280 W   djangocms_video_videoplayer djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl;
       public       postgres    false    262    2513    206                       2606    27333 W   djangocms_video_videosource djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl;
       public       postgres    false    206    263    2513                        2606    27344 V   djangocms_video_videotrack djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl;
       public       postgres    false    206    264    2513                       2606    27294 P   djangocms_video_videoplayer djangocms_video_vide_poster_id_07790e24_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima FOREIGN KEY (poster_id) REFERENCES public.filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima;
       public       postgres    false    248    2650    262                       2606    27338 U   djangocms_video_videosource djangocms_video_vide_source_file_id_16f11167_fk_filer_fil    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil FOREIGN KEY (source_file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil;
       public       postgres    false    2632    263    243                       2606    27349 V   djangocms_video_videotrack djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id FOREIGN KEY (src_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id;
       public       postgres    false    264    243    2632            !           2606    27380 N   easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum    FK CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES public.easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum;
       public       postgres    false    266    2699    268            "           2606    27402 [   easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum    FK CONSTRAINT     �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES public.easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum;
       public       postgres    false    2709    270    268            �
           2606    26676 @   filer_clipboard filer_clipboard_user_id_b52ff0bc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id;
       public       postgres    false    239    196    2481                        2606    26611 S   filer_clipboarditem filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES public.filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id;
       public       postgres    false    241    2623    239            �
           2606    26670 I   filer_clipboarditem filer_clipboarditem_file_id_06196f80_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id;
       public       postgres    false    241    2632    243                       2606    26652 ;   filer_file filer_file_folder_id_af803bbb_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id;
       public       postgres    false    2641    243    245                       2606    26700 7   filer_file filer_file_owner_id_b9e32671_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id;
       public       postgres    false    196    243    2481                       2606    26686 @   filer_file filer_file_polymorphic_ctype_id_f44903c1_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_file
    ADD CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co FOREIGN KEY (polymorphic_ctype_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co;
       public       postgres    false    188    2463    243                       2606    26705 ;   filer_folder filer_folder_owner_id_be530fb4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id;
       public       postgres    false    245    2481    196                       2606    26622 ?   filer_folder filer_folder_parent_id_308aecda_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id;
       public       postgres    false    2641    245    245                       2606    26633 S   filer_folderpermission filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES public.filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id;
       public       postgres    false    245    247    2641                       2606    26638 P   filer_folderpermission filer_folderpermission_group_id_8901bafa_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id;
       public       postgres    false    2473    192    247                       2606    26710 N   filer_folderpermission filer_folderpermission_user_id_7673d4b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id;
       public       postgres    false    247    2481    196            	           2606    26715 =   filer_image filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES public.filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id;
       public       postgres    false    243    248    2632            #           2606    27412 U   hero_area_plugin_heroarea hero_area_plugin_her_cmsplugin_ptr_id_79452eaa_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.hero_area_plugin_heroarea
    ADD CONSTRAINT hero_area_plugin_her_cmsplugin_ptr_id_79452eaa_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.hero_area_plugin_heroarea DROP CONSTRAINT hero_area_plugin_her_cmsplugin_ptr_id_79452eaa_fk_cms_cmspl;
       public       postgres    false    206    271    2513            $           2606    27449 T   overview_plugin_overview overview_plugin_over_cmsplugin_ptr_id_e64d3f35_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.overview_plugin_overview
    ADD CONSTRAINT overview_plugin_over_cmsplugin_ptr_id_e64d3f35_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.overview_plugin_overview DROP CONSTRAINT overview_plugin_over_cmsplugin_ptr_id_e64d3f35_fk_cms_cmspl;
       public       postgres    false    2513    274    206            %           2606    27454 V   overview_plugin_overviewitem overview_plugin_over_overview_id_id_928fc1c7_fk_overview_    FK CONSTRAINT     �   ALTER TABLE ONLY public.overview_plugin_overviewitem
    ADD CONSTRAINT overview_plugin_over_overview_id_id_928fc1c7_fk_overview_ FOREIGN KEY (overview_id_id) REFERENCES public.overview_plugin_overview(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.overview_plugin_overviewitem DROP CONSTRAINT overview_plugin_over_overview_id_id_928fc1c7_fk_overview_;
       public       postgres    false    274    276    2722            5           2606    28216 [   portfolio_app_latestworksection portfolio_app_latest_cmsplugin_ptr_id_50eeea7a_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_latestworksection
    ADD CONSTRAINT portfolio_app_latest_cmsplugin_ptr_id_50eeea7a_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.portfolio_app_latestworksection DROP CONSTRAINT portfolio_app_latest_cmsplugin_ptr_id_50eeea7a_fk_cms_cmspl;
       public       postgres    false    296    2513    206            &           2606    27540 Q   portfolio_app_mediaasset portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_mediaasset
    ADD CONSTRAINT portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio FOREIGN KEY (project_id_id) REFERENCES public.portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_mediaasset DROP CONSTRAINT portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio;
       public       postgres    false    279    278    2730            '           2606    27507 Q   portfolio_app_project portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project
    ADD CONSTRAINT portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl;
       public       postgres    false    279    2513    206            *           2606    27525 P   portfolio_app_project_tags portfolio_app_projec_project_id_74c3a22f_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_projec_project_id_74c3a22f_fk_portfolio FOREIGN KEY (project_id) REFERENCES public.portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_projec_project_id_74c3a22f_fk_portfolio;
       public       postgres    false    2730    282    279            )           2606    27530 L   portfolio_app_project_tags portfolio_app_projec_tag_id_023e820f_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_projec_tag_id_023e820f_fk_portfolio FOREIGN KEY (tag_id) REFERENCES public.portfolio_app_tag(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_projec_tag_id_023e820f_fk_portfolio;
       public       postgres    false    2734    280    282            (           2606    27520 Q   portfolio_app_tag portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.portfolio_app_tag
    ADD CONSTRAINT portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_tag DROP CONSTRAINT portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id;
       public       postgres    false    2513    280    206            +           2606    27620 U   profile_plugin_milestoneitem profile_plugin_miles_profile_id_id_31cc7d00_fk_profile_p    FK CONSTRAINT     �   ALTER TABLE ONLY public.profile_plugin_milestoneitem
    ADD CONSTRAINT profile_plugin_miles_profile_id_id_31cc7d00_fk_profile_p FOREIGN KEY (profile_id_id) REFERENCES public.profile_plugin_profile(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.profile_plugin_milestoneitem DROP CONSTRAINT profile_plugin_miles_profile_id_id_31cc7d00_fk_profile_p;
       public       postgres    false    284    285    2745            ,           2606    27614 R   profile_plugin_profile profile_plugin_profi_cmsplugin_ptr_id_86d3a84c_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.profile_plugin_profile
    ADD CONSTRAINT profile_plugin_profi_cmsplugin_ptr_id_86d3a84c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.profile_plugin_profile DROP CONSTRAINT profile_plugin_profi_cmsplugin_ptr_id_86d3a84c_fk_cms_cmspl;
       public       postgres    false    2513    206    285            3           2606    28147 [   service_plugin_servicecontainer service_plugin_servi_cmsplugin_ptr_id_3709d569_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.service_plugin_servicecontainer
    ADD CONSTRAINT service_plugin_servi_cmsplugin_ptr_id_3709d569_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.service_plugin_servicecontainer DROP CONSTRAINT service_plugin_servi_cmsplugin_ptr_id_3709d569_fk_cms_cmspl;
       public       postgres    false    206    2513    294            4           2606    28152 Y   service_plugin_servicecontent service_plugin_servi_cmsplugin_ptr_id_8c1597d7_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.service_plugin_servicecontent
    ADD CONSTRAINT service_plugin_servi_cmsplugin_ptr_id_8c1597d7_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.service_plugin_servicecontent DROP CONSTRAINT service_plugin_servi_cmsplugin_ptr_id_8c1597d7_fk_cms_cmspl;
       public       postgres    false    295    2513    206            .           2606    27663 `   testimonial_plugin_testimonialplugin testimonial_plugin_t_cmsplugin_ptr_id_fdd8d434_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY public.testimonial_plugin_testimonialplugin
    ADD CONSTRAINT testimonial_plugin_t_cmsplugin_ptr_id_fdd8d434_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES public.cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.testimonial_plugin_testimonialplugin DROP CONSTRAINT testimonial_plugin_t_cmsplugin_ptr_id_fdd8d434_fk_cms_cmspl;
       public       postgres    false    2513    206    289            -           2606    27669 ^   testimonial_plugin_testimonial testimonial_plugin_t_testimonial_plugin_i_4364514e_fk_testimoni    FK CONSTRAINT       ALTER TABLE ONLY public.testimonial_plugin_testimonial
    ADD CONSTRAINT testimonial_plugin_t_testimonial_plugin_i_4364514e_fk_testimoni FOREIGN KEY (testimonial_plugin_id_id) REFERENCES public.testimonial_plugin_testimonialplugin(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.testimonial_plugin_testimonial DROP CONSTRAINT testimonial_plugin_t_testimonial_plugin_i_4364514e_fk_testimoni;
       public       postgres    false    289    2754    288               I  x��Q�N�0���8uE	q�&mU*!�t`b`a�:Gc�ؖ��t�7�=��s�R����w�{�|BL�w���&k�G��[�@iC^:e�2z��~}|��d^�	��7��Th�����n��A7�\(���٩� ��Bˢ�9�&j�P�1��ib�>�[��a���Ej�b��'���I���8��pds�o�<6�?���'(��0�'y�9��(͓d�T���$[=*�\v��D��{��@?��[�E|g�[���X�y�9�٪\��:�W�(�7y}��#*�,�k�`R��7��-��|oT�RT��F���K�$�7u�         F   x�3�420��50�52P04�20�26ֳ42217�60�/�el�P`�`V``�gjaljn���,W� COD         �   x���?�@G��St���Mnspq�$N.��"
J��-(�r7d{?�E0�� J�`����[�8f'�ٰSU�P*SU;QL�}����B`�T���"�$R��ٔ\��S)�t�3�L�
~%*Q�\�\k�䪮Eo���H��+Q��\j5���/œA�I�u         �   x����N�0��S�b�����sGp�b�#@m��T��ǪDRܴW�o�$��,���[�-A�>��@ʳ�`����7ȑBdP@>Љ�����-Q��c��iꏻ�$� ��k�&���/�5-��Y���#w�$�w:2+o-oX+Z�/�{�4e�,�>s��򻰗n5+� n��w�vyxM�4���7�t�,:�u%ݠKcc�m�Ή��til����N#!]�.�Oc�o5>[[�7ܿ���R� �塐      �      x������ � �      �      x������ � �      �      x������ � �      �   u  x�u�Ko�8��ԯвg30���`�4z�@�ؼ�:�eHrz��dU�U���@D~G<�Ç�V���s3������Ք��j�V��m�¢���s���1~U)�zsWE����|��6m۴�U�l�[,(qҽ"�z�jf�',�q�����߰��8�6����-�� 1��۷������Y��=�����������/�}7���Fu�,r%��y[	�m
��M'<Z|�l^�ٛ��Bw�@d�퀝y��&և��壴.������,��[������$6Isڍ��E%~�XKO�Z< �\hbo޶�1??����ߙ�
��])H��w�L��s00��H�ճ��Fg��@�//���9��\;p{�Z��i�Sp����缼�3�vx���+\԰a_k���h�ޣ��_߃���,� }��\ck)�< �����C��o���<��i��z�D��\����q�.����W�nwUoP�ƪ����?o��?搽n�a�S�����.���O���o��_J7����Fلd� �7���i�O�o��&�6�G��2[�.1��8�Y�*㼫1�%K�8.F�����ӑ�r5��j����RG��h�kR��d��^ؕ�ȝ�[��"�q�5��ł�XI�G.+�c1M-�8.y�i�����/�V,z�V�˞�`��ȅ����}�(=�mE���8ΖDQ�-������"����l�.�lO>H*�c����N,��Td-��>��T�Q���i�/�*HT_`��N,�G�@�rJ�4�4F�n���
���]t"���~�8��&�~���|����2�WUA���,"Y��l��,Xz��6y�]t�T�I��8��6�"����O��@s��d�Qy��.�"z��B�-ؐ'����h�`���0�E�F�ZAJ�d��%��%�N�����S�����ݍɷP���E��ŧ�j`��,ߋN:ԉ��R�U�R�h\;l��EU��/�^tY �2���3�n�?����8�����.&�P�� z�HE6��=�8N�l�[���*kX��U1�). 4�!%�@���T��U��M���80}�b�۱���p���f��7����Fb��城�E�S{�����R����`~�l�b��+$�Ą�Ēc� bq�=�}B�ڄ���Xfi1�e��h�Ėi�O��e��,j�iȲ��Y��)�Z���:�1U��պ�3�12n���|r��[�cl���KՐ��o[)������С l�0��<�@��E�!R����D���V1���O���U����ED�1��%�"�H��:o��>vw���[%��6]%M��!��c�?��8(���g���
F��IAө�����e}M#�@q��ӱ!�K}�>vǤ�� ���ڝ�nP�t�K��~a4�R�$l^���%	c~OW��ڏ{.HA_E�!���L*D�
�$}�'����t��M�s?��g5���	
������>��%��r7�f��s/��V��A��?6�<�u�ZDi �� �
�p�b�~�u)�Ռ��@u��R"Q�m2V��`��ȲӖ�۬�P��tm!���ö*����4C�i���h�o��<��ԴGf�&q���4v+r[��8�ו�Ȣri)�������3���طM�	O��<=9���Z���Թ۠�9|3��2-�/^ZD�.�ha@����\ �Ǧ�e�������b��嗧T@�Xj�g�TCcZjz�*��X��f�������K�8����Õ�/��1W�T��q�!S��"�l�h�@���5[ c���j!@ퟶJ�'��/�":��bl��B{ۗ����Av�R���$��KNT"Js�j�b',�e�mA��mö@�0*�m��m�6�l��5�3}�UD�/�2Kˍx*�! 5r[�jhHMw�j��vI�Uҗ/��� J���?vt�?�Ō��*͎&�A���}���S��g�@���$}�d�I o����6~pY)H�- a���g���v��؛��P:sH��g���>�%��3]�����C�أ��#v�0�r��O�V��+�A�{%m��ytc�ϲ~ٛ\��Y���W���B��/��K?��<~!�|&���EQ��[      �   �   x�u�AO�@�3���5ŷoa�%�X���TˊԘ��P�
����__&Fg�s����K��G�[��� �a�ö51V�ʹ�Hr'?d����P�$�L�4V�þ\��!ڬ39W��B | l@��!!�����C`k�Wemu1]�y��0ʻ�M���Y;���2U��ɮ.�ajɼ�t���_8���8Mx�T�=&M9oދg�CC�#)��4`�4]ֻ��kC�ǂ����m��PP      �      x������ � �      �      x������ � �      �      x������ � �      �   �  x��X]��4}�E�Q#�O�y+�R�'�^��F-3h;���Mg�qv�ЬV#���ܓc�{|j|�;4�w7�'7����9>=����;��~����Р����c�|��w�[���aU��=���F0
�=9�\���?|xz<����a7��ktHQKD�`��1f�h�����'#ݳO����t����/��z&��aF�Cx(��m?�`�~�6�;H�����
|�Hk��1lCgʠ����J"�ԣ����b����Et��G]:䌑DY�FNB޷�W����/Ǜ�F�nw}�wn`z���>� ^Io1�B� ����?���%��bm`\�9'T�5��d�
W����f��� �P7È��GiF�|f����N"s�t�-�0ҒhBU��7�X�P�6���(ٱ�'ɡ�k��� u�;�MVb\�@� ��=1���/U���1mす�
�V��m���E�A������NW������N�؁v��.��T��l�0��;��Ɇr4�Y
U:�QS%�\������d̳={������F�HEUքeTY<�*#2�s��i����eT���YJ�gʓߎ���N�2�
�.3BzԚ�,�B�E�`L�w����׻�.���m;�V yZ��@Q����Ņa�X7���#H�q�#� �d�iD[;��e�Z�*J�R��h�h�i��!{XY�e�)��K���!���>��-˄��PD�T\�O�4�:�+��f	�B�#gTJ���!�Q�1�X����\Lq��u�x
6��Tф�*��!�hm_�A34P}�}�P�ќ�����K�4J@����	oN�Jq���`��ʜ��P�c�� �	�P~�0]�'}��Q�� 
��}FS�������@	���@I��:䆋��i�m$��P�8NzK��l>�8Q���<k5�]���S�ŵ�.�'�}��\�O��&]S�Q��JǢ/���>�{mT;�9hq������C�7s�������Y�<�7n2X��K�����\y�f�bh*�6�4��B����ꗎ�a�d�(?Q%�B��IF�@�E-Ri���V/��w���B9������9��T��ԇ?8�ۼ��u��_X���y��;�m*6��6N��2-l<��i�����Lg�By1*^r\�_6��V�&�2F"��x�.?C�7�^�A���N�m����x����=gF��I�-�7N��W�!�o
�����9�/0X;'      �      x������ � �      �      x������ � �      �   X  x���Mk�@����K�����[��J�1��j��d����1��ĦTv�a�a�]�y������������� ��;0�ꮖQ��f������y�rܧ�S�iU���n���5�4J�"Y��Z��W( �V��s{�P{H��&9�,l�����x�.d�Fy�<*��¥��'�V5�.u����k 
�L/���"s��-���(>�א�|#�whn�+hT3�^:�ZXͬ����#�{#���p`Ϊm�[�%?ȡ8��x��=04:0�Z9��<;r��o^� �N���n���ʰބ����f\G��`��ϥ�*hG�f2]7;��V"��/�1?      �   {   x���D!C�s^1+l @/��:6�x"�LP(&�bּY�ɮ<d�����Vj�����h���B]��VԔhG�Q����[z����ڨ����z~��&�����ŧ}��s�������      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�u�[� E��Ř��&\ABq�-���5���sù\@��{���+!9*��'�)C}�n�6�L��Jqu�e� ђ��3Ӓ�~w�Mz��g�c�|ğ�E*0cx~������,����;F=�b��>Ez��y�{�GK��R��͒+i���x�dKe�TU�q�0���z��$�xl�*      �      x������ � �      �      x������ � �      �   �   x���=k1�Y��C�%[>��.�B�k�r��@�����"��c�6X2��U����T��~(���yT�w��t�ӆuE���HN��׾�ڶ� �b����ė�t9����\ߋ�7��$�D{�-�@´�g��y��1ڧ�y��B���C�cr*�1�
ag�S9�סZ�᫜�?�8���ܫ�c�u	̒)tH���6�M�{��W���      �   -   x�3�4000�4�4����4�2�|c��7�M�=... k�
I      �   4   x�3�L2O�L1O1�MI2N�511N�M�H5�MKN47362MKM3����� �(      �      x�3�L��4�4�21�8��b���� 1��      �      x������ � �      �   t   x�34�,�H�����(I�5��4rH�M���K���Զ0Q043W015Q0347�N�TH���Q�L-Q�K��2��L��	!�F�F
F�
���
��
�@�3�@F�QlD� g`L      �   ,  x���Ko�0��ʧ0|]+�e=nC.vX�ء+
�v7w���(��G9m�8���l���C$A�w��Kp�`LPZ*�H���ĻnU�`���Qe�mxYX*���Oq�-��Vh!�bD�E؀l�@��K�����w˦c��1�UUWy���nF�t(`��H0U��P���[���������<��˦���ko��!�����qU�X����}ϟ��:�͋3f��ti�ʙCgF��C| #�=��J|��o<����gA�4��m�wMuJ�M|P$�44*�x����i 	�ю/�Z��n��2r�������B�у��A�C��lޔ��@�"����c�&_�U�8�&=[w�P��t�=���A~.�g�:�v)h�UH=�$���	�����	I���V�6]�ɇ����М�%���s�L�v2�����4�k�o�c�U��l�z81W�&
<�X����3<.�c�M���:�0H�{W����·���4*��<.�w8\a��/Ғ�n����rs* 7�)�t_pD�/w�ۧ�<ϝ���wy~�����0��      �   �  x��T�r� }F���$��3b�����;��4�c���H��u&2�e��{P�9 4L���<�bT��-Cp�1�1RT�:gڔ&�q`�"��x�����(˴�+LpdQ%��+T��}^���PU� ���ɸ5Ts��vg�sƛL�f�ck嫵�]�ox��jE	��mG���L���V
�T��u, 1%e��\�4���JF�\[
�����K��^�0�v$9dw�+NPsֿK;8�;%�L�J.����Mi��ʟ�=����t6P�s^�>����ox�b�[eJ�TL�ќ�T��T�j�2N��N¹1��M�Ĭ[h�k�W�Fi&h�F����X6��i�)3j�������!'?K��̳�qChe�,/�w�W]���ڐ�*�1���~M��7~pn�h�g�8����p�Ĺ�ݍ�^��uS=:VVj�)���^.�~�S�it��ۇɞb�HѲ�رw��i~�Ő1�����;w� �\�i��+�Ig��w��	���2u�(cLv�d��fh���d���3�=�����=��J�H�ၣ{x�t| ���e>���crK�m��/ښ�3��6ǫҺ�l���k���'�`C����<I�ږ�=�J���p=x��ÒۣJZ�[�p�I�<a����1ko      �   �	  x����r۸E������Q�Ѹ�[���X�É$jH*���� H�����/���^�P�y�Ncs�?�f�(��jO��և�V�R�/�_�w�w&lu0A��)�Eo�����x�]H
���c{z,���$1W���+�������j*<����^f(/�n�v|fo�)k��m^�O|>2阗�g�.�§�
�*�m�r�1��Y�mԮ�l��5�p��8k͍�T�Xx�U[�V'-�Yl��Q�"e1�b�^L Kb�֗8 =��ULJ�
����&�}C<�Û�*��4����ؚ�$&M��"F�b0;�cul��f���JP�F��c���cS]�����2^zYo��\l<G�b��"��,�hlYl�ԇ}����94�9I�&fi��������D���A�Q���� ���)tW���������Te{���f�k��~c�W�?���v������М^�)�-�Yf��'\�Wͱn�0�+.��c���O^Pw��l�R���.�zS�l���Av�3��Bqo�{i�7g�W�l+�9��c�i%��C��ǮR�����z$�0ԯ��Ƭ#�q��.��y`fOd�D�\'�&��J����3S��u������{��jS��ʨ(��Hҵ<;��-(�<#	���H�]�s�Rr��]	O��$��ةTa���H�h�I�:�M������Y�Kc�+#�,9u{Y�>�+�rb�/#¡:.��M�m��׋�-�DQ�x�s]@�Q\?�~���_��lO�H��z���C6j����O�,�D:\�O��ay{F�j��fD``Ɛ� �2�����{{h�G�[�N���Us�1�J`Y\�$��b�����"*�l4�%�Mn��\�˜�4D�(G��k�U���r1�VZD�|�r�^�T( 7A�z�i��zlrtA[��	�xa{lR��dNHFʜ(pxn�}s��/��;J1>U�:������9��Ц��3\|��鞻t��Ǯx�L�V�6yV�+A��!��,P����9m�{��R��[oXs�bkF��{wد�1��<뭠����db��Xa
�w��(ZB�	�%���׼�N�b�G&Y�0Y��k׽0%�'G$���ڸF�7i���E��&����`��m+w�3`d�.0Z���1�v���N��l��7)�O͐p%�Vx�c�=���\>X���)љ5�'�~�#�yq�ˠ��@pv���J�Ʋb1�F���u�#c�"�F��-���އ���Q��AT��%b}s2F	�JJpPcCt/Ϲ�`��686pI}��Yp|��NNt���<	��Jiu�Wփ���x-pܧ����r�Y@��u%p#\Q�t���U=�}��2�o0p09{� qQf�Z8��+�t����`b6Tf+/8Ѳ��&��Zv\n~��o�W$�:�2{!�q��B��0���A0V��8,��ܖ˔���'��H�/�t��(}@ŨK�-�����lcD g˜�����n#������O�j�&�6�$X����Qpv��t2�g�ׇ��tlN�AR�<��N��܌�<�0�Y����A�h�X��B�!S���c�\}Xg���̈Qɬ�H��ĩ.��ߋ��YmC�H2�~��+�y�2zyB
LFiZr[é�f�(�����i�Տ���[�>�������g�o�����</7��#��t�r(�:�
�G��Ϻ
��+��?z���;�Y��w[���ڸL�_�����yt��*b��������uys�$0�"Y
fۉ#���!�7	�$����S<~����=�Cy���D��� �n���px�0�}yX�s	eRF�x�!�"M��w+<�P<�����$P��?B9f������?׻�G�� �8�ZW�A�����iX�t��O�M��M�H�e��Ą�K�`p�����i��vZKA����($��b���:"��.���ô��������iKh�)�U��~��Z����z `���Ob{/��!�)[���Ɨ<����9VKW�a�MS����{�T}�qd�d�pϱ�9h�2�{=s�=�=�	��Y�����;��^�m�A�����s��Ӽ��ֽ�7�K߮]����LY������� ��n�p��"��!�'#8�w �<@Pk���mwjZ6������S�u�xv34C)C�A<������k�}w��XW'I�-�Y�o �cw�Ӟ��v�Ɏa�pW׼x�[F<��b��&ֵe:9�*�����
;cw��<�r��U�m�e�F�c�ڔ�{�O5�L�Ĵ��u��o��&�)��	��TmXKr�(��2��ygx��y���Y��;���i�dq6���������_)I$��#�	�*���D�!d���Q�4�^�%8v��7[|�%�q����ۆ��g��^#��t]��O:ܓ�����C���p_��xÄ���c���4��}�%}���G�d^�-�{2����J��0�ד��^����P;��w�����~������3�         �  x��SMs�0<'�"�N}�C��@B fj1v��4�`�l�L1���H۴�{�I#;�ݷ�j T�.x�Z��и�*���KHU�6-����b�e��tM���Ҏ���r��b��Ĵ?�բZ�&�?mO�s
)Hm����M�f*�G�W4Z��A~�@p�(*7<P�:�x����R�M�w<����#p!z@pИ��m�O�����Z��ꬲ����ԗ�A�.ɭC��w,���g�}��e�&��XΆIϴ,�!�~�A��R�d����h����qdx,v���U��S��h�y��8�Ҋ*���-�����]�hvI��M�}<�g���KPX%/�\�s��@}y^��p3
S���y��o
����/�/=+�^��
q]����3m�����^�ϷY�𒠫F��W����i�2O^Ye�-�v2��ٳ��|�	?���F���>��	~�`�蘐q��X7O��r����:���MS�;�r�r�����EىX`��J1�S��M�羙���B��5��G��~x�/Oox��:�e��Mߒ#֛���;�x5�OL��y���?3 �z��?o�j%�͎���_m_�^D�<�o�v�_9�}�xL�زF�`ط�'�d��Ҵ �Vp�:��l�~{�O����s7y���c�G��b׽y�mt�L���      �      x�3�L�H�-�I�K��Efs��qqq �<	�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �             x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �         �   x���M�@����W\hQ���XkZDJT�F�Q/~;2�����ֵl�p�W��)�-쇺F���Řҝjёĕ��1)�JG�͆�Kck�I��K�f�d�<)2���D���M���.�0 ����x����M���v��sl�D;����_*�	Y}:痆LӴ'D�e+         F   x�32�L��4�L�-�7�3�3��M�+���OI-�O͋7����"��Ҥ��d.#C"է%��p��qqq C�            x������ � �            x������ � �            x�35��I,I-.Q(�/������� D�         �   x�}�K
�0��q�
7�֛�ֱ#���B(��46Qu�FB!���9�@F=uhW@�x�|�΢+�>��~�uV��ᒴ'�g�	O���X$"!2��,�Է����GQ�EE�*�>盰�%�(rQAu�����ND���<ۂR��Kj�      	   y  x��SMo�@=;�bN\hֱ��NT�R
�B�P���{���jw��R����ٴ(pB�,Y������s~��ʍJ����<If�+��Kx����b�ї�e��l�W�sYޢ��	.p��:����,�NjB�笧��ʦ��S��F���4�����s��X�����|��������|:�b<������_��%̪��9o��� 2U /�z���N��"�pk�#��JÔ8�|8��� Ϡ胀sT��U�4�5\���R� a��m�.t�E�G�G�G�1�_x�9�F�|P��Ӏw��BSF|`B�=,����w��������!(�(-ퟆȅi��2Q[[k�m���ƔaCZ!I��KU�����[U�R3�_Qg0nxЅؽ_T��,;.F��0��[f'M�T������>fV��l�$��v͜U���!-C��O�	�])�Q"�JI�U^��V�{��bp�������#�X����ꆷHj瞦�,���$�����Ꞹ����d3?Zy�|)�2�^9�e6�k��}��[ef�lX�:G<��T� (ypzT�E�벗�%�J��}�M��l݉Ȋ|Pd�z�`��L�BLFY~r��I�5gޕ�5�_��O�]�^��BH�         (   x�3�42�42�2��\ƜF� �	�6�2�F\1z\\\ ��%      
   8   x�32�OM�22�t�K)��L�22����22�t.�/.V�I,I�/������ 2��            x������ � �            x������ � �         ^   x�}��� @k3���?$���j'�Y���H���;y&iV
:��S�����5u���,DUt�|��1�(���K���Y��&0c         T  x�ݓKS�0��֯�K��[�lŻ���k
�vэbG�,y$�3�x��(����Ȳ�d���㬈��G'_av~v���jzv͌v��#��VRװ2k����Z�Lk�,���Z^yY	7
{�
�֚��+Ჲ]�����a�Yx���a�ڌ.����3Fg�_�؇�cn�Y�xill�<�����p��8�c� +ʌ�4O(IYZ|I��U��h.nM����kMm ��
����ZòS
Z�
%� ��p�<ZZ�������~N��C�������̎º�7R���b�9��Mu�v�߷�ug��p�5�E#���.����Y�łi9���i6~O���l}�).=�n�X�B���4:褺�
���5X��BCy�*Y=��\��[i:�7������������6���lC��F�`�B.����ĸ2M�ya���%�	���B{�"<xlqZҢ$,3c��ؾWI۞%��,ac��d�[�l(���O�1IŘ�B{�"2�b;)i��y��N�W""t��}D)!�C�g�|X�ݘg�~��g�t��ʔ�i��4��&~�"�5�/,9&�Ǥ�*�x0��g>g��=��o�z ��Z)            x������ � �            x������ � �     