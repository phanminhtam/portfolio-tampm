PGDMP         8    	            v            tam_portfolio_db    9.6.4    9.6.4 T   �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            �           1262    88038    tam_portfolio_db    DATABASE     �   CREATE DATABASE tam_portfolio_db WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
     DROP DATABASE tam_portfolio_db;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            �           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    3                        3079    12387    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            �           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1                       1259    89771    aldryn_style_style    TABLE        CREATE TABLE aldryn_style_style (
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
       public         postgres    false    3            �            1259    88070 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    3            �            1259    88068    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    3    192            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    191            �            1259    88080    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    3            �            1259    88078    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    194    3            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    193            �            1259    88062    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    3            �            1259    88060    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    3    190            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    189            �            1259    88088 	   auth_user    TABLE     �  CREATE TABLE auth_user (
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
       public         postgres    false    3            �            1259    88098    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    3            �            1259    88096    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    3    198            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    197            �            1259    88086    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    196    3            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    195            �            1259    88106    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    3            �            1259    88104 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    3    200            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    199            �            1259    88220    cms_aliaspluginmodel    TABLE     �   CREATE TABLE cms_aliaspluginmodel (
    cmsplugin_ptr_id integer NOT NULL,
    plugin_id integer,
    alias_placeholder_id integer
);
 (   DROP TABLE public.cms_aliaspluginmodel;
       public         postgres    false    3            �            1259    88209    cms_cmsplugin    TABLE     �  CREATE TABLE cms_cmsplugin (
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
       public         postgres    false    3            �            1259    88207    cms_cmsplugin_id_seq    SEQUENCE     v   CREATE SEQUENCE cms_cmsplugin_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.cms_cmsplugin_id_seq;
       public       postgres    false    206    3            �           0    0    cms_cmsplugin_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE cms_cmsplugin_id_seq OWNED BY cms_cmsplugin.id;
            public       postgres    false    205            �            1259    88227    cms_globalpagepermission    TABLE     �  CREATE TABLE cms_globalpagepermission (
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
       public         postgres    false    3            �            1259    88225    cms_globalpagepermission_id_seq    SEQUENCE     �   CREATE SEQUENCE cms_globalpagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.cms_globalpagepermission_id_seq;
       public       postgres    false    3    209            �           0    0    cms_globalpagepermission_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE cms_globalpagepermission_id_seq OWNED BY cms_globalpagepermission.id;
            public       postgres    false    208            �            1259    88235    cms_globalpagepermission_sites    TABLE     �   CREATE TABLE cms_globalpagepermission_sites (
    id integer NOT NULL,
    globalpagepermission_id integer NOT NULL,
    site_id integer NOT NULL
);
 2   DROP TABLE public.cms_globalpagepermission_sites;
       public         postgres    false    3            �            1259    88233 %   cms_globalpagepermission_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE cms_globalpagepermission_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.cms_globalpagepermission_sites_id_seq;
       public       postgres    false    3    211            �           0    0 %   cms_globalpagepermission_sites_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE cms_globalpagepermission_sites_id_seq OWNED BY cms_globalpagepermission_sites.id;
            public       postgres    false    210            �            1259    88243    cms_page    TABLE     �  CREATE TABLE cms_page (
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
       public         postgres    false    3            �            1259    88241    cms_page_id_seq    SEQUENCE     q   CREATE SEQUENCE cms_page_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.cms_page_id_seq;
       public       postgres    false    213    3            �           0    0    cms_page_id_seq    SEQUENCE OWNED BY     5   ALTER SEQUENCE cms_page_id_seq OWNED BY cms_page.id;
            public       postgres    false    212            �            1259    88391    cms_page_placeholders    TABLE     �   CREATE TABLE cms_page_placeholders (
    id integer NOT NULL,
    page_id integer NOT NULL,
    placeholder_id integer NOT NULL
);
 )   DROP TABLE public.cms_page_placeholders;
       public         postgres    false    3            �            1259    88389    cms_page_placeholders_id_seq    SEQUENCE     ~   CREATE SEQUENCE cms_page_placeholders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cms_page_placeholders_id_seq;
       public       postgres    false    221    3                        0    0    cms_page_placeholders_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE cms_page_placeholders_id_seq OWNED BY cms_page_placeholders.id;
            public       postgres    false    220            �            1259    88261    cms_pagepermission    TABLE     �  CREATE TABLE cms_pagepermission (
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
       public         postgres    false    3            �            1259    88259    cms_pagepermission_id_seq    SEQUENCE     {   CREATE SEQUENCE cms_pagepermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 0   DROP SEQUENCE public.cms_pagepermission_id_seq;
       public       postgres    false    3    215                       0    0    cms_pagepermission_id_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE cms_pagepermission_id_seq OWNED BY cms_pagepermission.id;
            public       postgres    false    214            �            1259    88370    cms_pageuser    TABLE     d   CREATE TABLE cms_pageuser (
    user_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);
     DROP TABLE public.cms_pageuser;
       public         postgres    false    3            �            1259    88375    cms_pageusergroup    TABLE     j   CREATE TABLE cms_pageusergroup (
    group_ptr_id integer NOT NULL,
    created_by_id integer NOT NULL
);
 %   DROP TABLE public.cms_pageusergroup;
       public         postgres    false    3            �            1259    88382    cms_placeholder    TABLE     �   CREATE TABLE cms_placeholder (
    id integer NOT NULL,
    slot character varying(255) NOT NULL,
    default_width smallint,
    CONSTRAINT cms_placeholder_default_width_check CHECK ((default_width >= 0))
);
 #   DROP TABLE public.cms_placeholder;
       public         postgres    false    3            �            1259    88380    cms_placeholder_id_seq    SEQUENCE     x   CREATE SEQUENCE cms_placeholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.cms_placeholder_id_seq;
       public       postgres    false    3    219                       0    0    cms_placeholder_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE cms_placeholder_id_seq OWNED BY cms_placeholder.id;
            public       postgres    false    218            �            1259    88401    cms_placeholderreference    TABLE     �   CREATE TABLE cms_placeholderreference (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(255) NOT NULL,
    placeholder_ref_id integer
);
 ,   DROP TABLE public.cms_placeholderreference;
       public         postgres    false    3            �            1259    88408    cms_staticplaceholder    TABLE     &  CREATE TABLE cms_staticplaceholder (
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
       public         postgres    false    3            �            1259    88406    cms_staticplaceholder_id_seq    SEQUENCE     ~   CREATE SEQUENCE cms_staticplaceholder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.cms_staticplaceholder_id_seq;
       public       postgres    false    3    224                       0    0    cms_staticplaceholder_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE cms_staticplaceholder_id_seq OWNED BY cms_staticplaceholder.id;
            public       postgres    false    223            �            1259    88421 	   cms_title    TABLE     {  CREATE TABLE cms_title (
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
       public         postgres    false    3            �            1259    88419    cms_title_id_seq    SEQUENCE     r   CREATE SEQUENCE cms_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.cms_title_id_seq;
       public       postgres    false    226    3                       0    0    cms_title_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE cms_title_id_seq OWNED BY cms_title.id;
            public       postgres    false    225            �            1259    88767    cms_treenode    TABLE     S  CREATE TABLE cms_treenode (
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
       public         postgres    false    3            �            1259    88765    cms_treenode_id_seq    SEQUENCE     u   CREATE SEQUENCE cms_treenode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.cms_treenode_id_seq;
       public       postgres    false    232    3                       0    0    cms_treenode_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE cms_treenode_id_seq OWNED BY cms_treenode.id;
            public       postgres    false    231            �            1259    88720    cms_urlconfrevision    TABLE     l   CREATE TABLE cms_urlconfrevision (
    id integer NOT NULL,
    revision character varying(255) NOT NULL
);
 '   DROP TABLE public.cms_urlconfrevision;
       public         postgres    false    3            �            1259    88718    cms_urlconfrevision_id_seq    SEQUENCE     |   CREATE SEQUENCE cms_urlconfrevision_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.cms_urlconfrevision_id_seq;
       public       postgres    false    3    230                       0    0    cms_urlconfrevision_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE cms_urlconfrevision_id_seq OWNED BY cms_urlconfrevision.id;
            public       postgres    false    229            �            1259    88436    cms_usersettings    TABLE     �   CREATE TABLE cms_usersettings (
    id integer NOT NULL,
    language character varying(10) NOT NULL,
    clipboard_id integer,
    user_id integer NOT NULL
);
 $   DROP TABLE public.cms_usersettings;
       public         postgres    false    3            �            1259    88434    cms_usersettings_id_seq    SEQUENCE     y   CREATE SEQUENCE cms_usersettings_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.cms_usersettings_id_seq;
       public       postgres    false    3    228                       0    0    cms_usersettings_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE cms_usersettings_id_seq OWNED BY cms_usersettings.id;
            public       postgres    false    227                       1259    89885    contact_me_plugin_message    TABLE     %  CREATE TABLE contact_me_plugin_message (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL,
    email_address character varying(100) NOT NULL,
    message text,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 -   DROP TABLE public.contact_me_plugin_message;
       public         postgres    false    3                       1259    89893    contact_me_plugin_shortcontact    TABLE     �   CREATE TABLE contact_me_plugin_shortcontact (
    cmsplugin_ptr_id integer NOT NULL,
    email character varying(100) NOT NULL,
    phone character varying(100)
);
 2   DROP TABLE public.contact_me_plugin_shortcontact;
       public         postgres    false    3            �            1259    88166    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
       public         postgres    false    3            �            1259    88164    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    3    202                       0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    201            �            1259    88052    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    3            �            1259    88050    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    3    188            	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    187            �            1259    88041    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    3            �            1259    88039    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    186    3            
           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       postgres    false    185                       1259    89750    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    3            �            1259    88201    django_site    TABLE     �   CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         postgres    false    3            �            1259    88199    django_site_id_seq    SEQUENCE     t   CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public       postgres    false    204    3                       0    0    django_site_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;
            public       postgres    false    203            �            1259    88798    djangocms_column_column    TABLE     z   CREATE TABLE djangocms_column_column (
    cmsplugin_ptr_id integer NOT NULL,
    width character varying(50) NOT NULL
);
 +   DROP TABLE public.djangocms_column_column;
       public         postgres    false    3            �            1259    88803    djangocms_column_multicolumns    TABLE     V   CREATE TABLE djangocms_column_multicolumns (
    cmsplugin_ptr_id integer NOT NULL
);
 1   DROP TABLE public.djangocms_column_multicolumns;
       public         postgres    false    3            �            1259    88994    djangocms_file_file    TABLE     f  CREATE TABLE djangocms_file_file (
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
       public         postgres    false    3            �            1259    89063    djangocms_file_folder    TABLE       CREATE TABLE djangocms_file_folder (
    template character varying(255) NOT NULL,
    link_target character varying(255) NOT NULL,
    show_file_size boolean NOT NULL,
    attributes text NOT NULL,
    cmsplugin_ptr_id integer NOT NULL,
    folder_src_id integer
);
 )   DROP TABLE public.djangocms_file_folder;
       public         postgres    false    3            �            1259    89083    djangocms_googlemap_googlemap    TABLE     b  CREATE TABLE djangocms_googlemap_googlemap (
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
       public         postgres    false    3            �            1259    89172 #   djangocms_googlemap_googlemapmarker    TABLE     :  CREATE TABLE djangocms_googlemap_googlemapmarker (
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
       public         postgres    false    3            �            1259    89180 "   djangocms_googlemap_googlemaproute    TABLE       CREATE TABLE djangocms_googlemap_googlemaproute (
    cmsplugin_ptr_id integer NOT NULL,
    title character varying(255) NOT NULL,
    origin character varying(255) NOT NULL,
    destination character varying(255) NOT NULL,
    travel_mode character varying(255) NOT NULL
);
 6   DROP TABLE public.djangocms_googlemap_googlemaproute;
       public         postgres    false    3            �            1259    89205    djangocms_link_link    TABLE     �  CREATE TABLE djangocms_link_link (
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
       public         postgres    false    3            �            1259    89282    djangocms_picture_picture    TABLE     ^  CREATE TABLE djangocms_picture_picture (
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
       public         postgres    false    3                        1259    89444    djangocms_snippet_snippet    TABLE     �   CREATE TABLE djangocms_snippet_snippet (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    html text NOT NULL,
    template character varying(255) NOT NULL,
    slug character varying(255) NOT NULL
);
 -   DROP TABLE public.djangocms_snippet_snippet;
       public         postgres    false    3            �            1259    89442     djangocms_snippet_snippet_id_seq    SEQUENCE     �   CREATE SEQUENCE djangocms_snippet_snippet_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.djangocms_snippet_snippet_id_seq;
       public       postgres    false    3    256                       0    0     djangocms_snippet_snippet_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE djangocms_snippet_snippet_id_seq OWNED BY djangocms_snippet_snippet.id;
            public       postgres    false    255                       1259    89455    djangocms_snippet_snippetptr    TABLE     v   CREATE TABLE djangocms_snippet_snippetptr (
    cmsplugin_ptr_id integer NOT NULL,
    snippet_id integer NOT NULL
);
 0   DROP TABLE public.djangocms_snippet_snippetptr;
       public         postgres    false    3                       1259    89500    djangocms_style_style    TABLE       CREATE TABLE djangocms_style_style (
    cmsplugin_ptr_id integer NOT NULL,
    class_name character varying(50),
    tag_type character varying(255) NOT NULL,
    padding_left smallint,
    padding_right smallint,
    padding_top smallint,
    padding_bottom smallint,
    margin_left smallint,
    margin_right smallint,
    margin_top smallint,
    margin_bottom smallint,
    additional_classes character varying(255) NOT NULL,
    attributes text NOT NULL,
    id_name character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    CONSTRAINT djangocms_style_style_margin_bottom_08e7c851_check CHECK ((margin_bottom >= 0)),
    CONSTRAINT djangocms_style_style_margin_left_e51dea0a_check CHECK ((margin_left >= 0)),
    CONSTRAINT djangocms_style_style_margin_right_40a4928b_check CHECK ((margin_right >= 0)),
    CONSTRAINT djangocms_style_style_margin_top_929f0506_check CHECK ((margin_top >= 0)),
    CONSTRAINT djangocms_style_style_padding_bottom_566948a6_check CHECK ((padding_bottom >= 0)),
    CONSTRAINT djangocms_style_style_padding_left_2426413b_check CHECK ((padding_left >= 0)),
    CONSTRAINT djangocms_style_style_padding_right_90146b20_check CHECK ((padding_right >= 0)),
    CONSTRAINT djangocms_style_style_padding_top_fbca5ac1_check CHECK ((padding_top >= 0))
);
 )   DROP TABLE public.djangocms_style_style;
       public         postgres    false    3                       1259    89558    djangocms_text_ckeditor_text    TABLE     m   CREATE TABLE djangocms_text_ckeditor_text (
    cmsplugin_ptr_id integer NOT NULL,
    body text NOT NULL
);
 0   DROP TABLE public.djangocms_text_ckeditor_text;
       public         postgres    false    3                       1259    89581    djangocms_video_videoplayer    TABLE       CREATE TABLE djangocms_video_videoplayer (
    cmsplugin_ptr_id integer NOT NULL,
    embed_link character varying(255) NOT NULL,
    poster_id integer,
    attributes text NOT NULL,
    label character varying(255) NOT NULL,
    template character varying(255) NOT NULL
);
 /   DROP TABLE public.djangocms_video_videoplayer;
       public         postgres    false    3                       1259    89648    djangocms_video_videosource    TABLE     �   CREATE TABLE djangocms_video_videosource (
    cmsplugin_ptr_id integer NOT NULL,
    text_title character varying(255) NOT NULL,
    text_description text NOT NULL,
    attributes text NOT NULL,
    source_file_id integer
);
 /   DROP TABLE public.djangocms_video_videosource;
       public         postgres    false    3                       1259    89656    djangocms_video_videotrack    TABLE       CREATE TABLE djangocms_video_videotrack (
    cmsplugin_ptr_id integer NOT NULL,
    kind character varying(255) NOT NULL,
    srclang character varying(255) NOT NULL,
    label character varying(255) NOT NULL,
    attributes text NOT NULL,
    src_id integer
);
 .   DROP TABLE public.djangocms_video_videotrack;
       public         postgres    false    3                       1259    89689    easy_thumbnails_source    TABLE     �   CREATE TABLE easy_thumbnails_source (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL
);
 *   DROP TABLE public.easy_thumbnails_source;
       public         postgres    false    3                       1259    89687    easy_thumbnails_source_id_seq    SEQUENCE        CREATE SEQUENCE easy_thumbnails_source_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.easy_thumbnails_source_id_seq;
       public       postgres    false    264    3                       0    0    easy_thumbnails_source_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE easy_thumbnails_source_id_seq OWNED BY easy_thumbnails_source.id;
            public       postgres    false    263            
           1259    89697    easy_thumbnails_thumbnail    TABLE     �   CREATE TABLE easy_thumbnails_thumbnail (
    id integer NOT NULL,
    storage_hash character varying(40) NOT NULL,
    name character varying(255) NOT NULL,
    modified timestamp with time zone NOT NULL,
    source_id integer NOT NULL
);
 -   DROP TABLE public.easy_thumbnails_thumbnail;
       public         postgres    false    3            	           1259    89695     easy_thumbnails_thumbnail_id_seq    SEQUENCE     �   CREATE SEQUENCE easy_thumbnails_thumbnail_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.easy_thumbnails_thumbnail_id_seq;
       public       postgres    false    266    3                       0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE easy_thumbnails_thumbnail_id_seq OWNED BY easy_thumbnails_thumbnail.id;
            public       postgres    false    265                       1259    89723 #   easy_thumbnails_thumbnaildimensions    TABLE     D  CREATE TABLE easy_thumbnails_thumbnaildimensions (
    id integer NOT NULL,
    thumbnail_id integer NOT NULL,
    width integer,
    height integer,
    CONSTRAINT easy_thumbnails_thumbnaildimensions_height_check CHECK ((height >= 0)),
    CONSTRAINT easy_thumbnails_thumbnaildimensions_width_check CHECK ((width >= 0))
);
 7   DROP TABLE public.easy_thumbnails_thumbnaildimensions;
       public         postgres    false    3                       1259    89721 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE     �   CREATE SEQUENCE easy_thumbnails_thumbnaildimensions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 A   DROP SEQUENCE public.easy_thumbnails_thumbnaildimensions_id_seq;
       public       postgres    false    268    3                       0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE OWNED BY     k   ALTER SEQUENCE easy_thumbnails_thumbnaildimensions_id_seq OWNED BY easy_thumbnails_thumbnaildimensions.id;
            public       postgres    false    267            �            1259    88830    filer_clipboard    TABLE     X   CREATE TABLE filer_clipboard (
    id integer NOT NULL,
    user_id integer NOT NULL
);
 #   DROP TABLE public.filer_clipboard;
       public         postgres    false    3            �            1259    88828    filer_clipboard_id_seq    SEQUENCE     x   CREATE SEQUENCE filer_clipboard_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.filer_clipboard_id_seq;
       public       postgres    false    3    236                       0    0    filer_clipboard_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE filer_clipboard_id_seq OWNED BY filer_clipboard.id;
            public       postgres    false    235            �            1259    88838    filer_clipboarditem    TABLE        CREATE TABLE filer_clipboarditem (
    id integer NOT NULL,
    clipboard_id integer NOT NULL,
    file_id integer NOT NULL
);
 '   DROP TABLE public.filer_clipboarditem;
       public         postgres    false    3            �            1259    88836    filer_clipboarditem_id_seq    SEQUENCE     |   CREATE SEQUENCE filer_clipboarditem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.filer_clipboarditem_id_seq;
       public       postgres    false    3    238                       0    0    filer_clipboarditem_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE filer_clipboarditem_id_seq OWNED BY filer_clipboarditem.id;
            public       postgres    false    237            �            1259    88846 
   filer_file    TABLE       CREATE TABLE filer_file (
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
       public         postgres    false    3            �            1259    88844    filer_file_id_seq    SEQUENCE     s   CREATE SEQUENCE filer_file_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.filer_file_id_seq;
       public       postgres    false    240    3                       0    0    filer_file_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE filer_file_id_seq OWNED BY filer_file.id;
            public       postgres    false    239            �            1259    88857    filer_folder    TABLE     �  CREATE TABLE filer_folder (
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
       public         postgres    false    3            �            1259    88855    filer_folder_id_seq    SEQUENCE     u   CREATE SEQUENCE filer_folder_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 *   DROP SEQUENCE public.filer_folder_id_seq;
       public       postgres    false    3    242                       0    0    filer_folder_id_seq    SEQUENCE OWNED BY     =   ALTER SEQUENCE filer_folder_id_seq OWNED BY filer_folder.id;
            public       postgres    false    241            �            1259    88869    filer_folderpermission    TABLE       CREATE TABLE filer_folderpermission (
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
       public         postgres    false    3            �            1259    88867    filer_folderpermission_id_seq    SEQUENCE        CREATE SEQUENCE filer_folderpermission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.filer_folderpermission_id_seq;
       public       postgres    false    244    3                       0    0    filer_folderpermission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE filer_folderpermission_id_seq OWNED BY filer_folderpermission.id;
            public       postgres    false    243            �            1259    88877    filer_image    TABLE     �  CREATE TABLE filer_image (
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
       public         postgres    false    3            �            1259    88967    filer_thumbnailoption    TABLE     �   CREATE TABLE filer_thumbnailoption (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    width integer NOT NULL,
    height integer NOT NULL,
    crop boolean NOT NULL,
    upscale boolean NOT NULL
);
 )   DROP TABLE public.filer_thumbnailoption;
       public         postgres    false    3            �            1259    88965    filer_thumbnailoption_id_seq    SEQUENCE     ~   CREATE SEQUENCE filer_thumbnailoption_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 3   DROP SEQUENCE public.filer_thumbnailoption_id_seq;
       public       postgres    false    247    3                       0    0    filer_thumbnailoption_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE filer_thumbnailoption_id_seq OWNED BY filer_thumbnailoption.id;
            public       postgres    false    246                       1259    89809    hero_area_plugin_heroarea    TABLE       CREATE TABLE hero_area_plugin_heroarea (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL,
    message character varying(100),
    image_file character varying(100) NOT NULL,
    youtube_introduction character varying(255)
);
 -   DROP TABLE public.hero_area_plugin_heroarea;
       public         postgres    false    3                       1259    89740    menus_cachekey    TABLE     �   CREATE TABLE menus_cachekey (
    id integer NOT NULL,
    language character varying(255) NOT NULL,
    site integer NOT NULL,
    key character varying(255) NOT NULL,
    CONSTRAINT menus_cachekey_site_check CHECK ((site >= 0))
);
 "   DROP TABLE public.menus_cachekey;
       public         postgres    false    3                       1259    89738    menus_cachekey_id_seq    SEQUENCE     w   CREATE SEQUENCE menus_cachekey_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.menus_cachekey_id_seq;
       public       postgres    false    270    3                       0    0    menus_cachekey_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE menus_cachekey_id_seq OWNED BY menus_cachekey.id;
            public       postgres    false    269                       1259    89823    overview_plugin_overview    TABLE     Q   CREATE TABLE overview_plugin_overview (
    cmsplugin_ptr_id integer NOT NULL
);
 ,   DROP TABLE public.overview_plugin_overview;
       public         postgres    false    3                       1259    89830    overview_plugin_overviewitem    TABLE     �   CREATE TABLE overview_plugin_overviewitem (
    id integer NOT NULL,
    title character varying(100) NOT NULL,
    description text,
    image character varying(100) NOT NULL,
    overview_id_id integer NOT NULL
);
 0   DROP TABLE public.overview_plugin_overviewitem;
       public         postgres    false    3                       1259    89828 #   overview_plugin_overviewitem_id_seq    SEQUENCE     �   CREATE SEQUENCE overview_plugin_overviewitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.overview_plugin_overviewitem_id_seq;
       public       postgres    false    3    276                       0    0 #   overview_plugin_overviewitem_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE overview_plugin_overviewitem_id_seq OWNED BY overview_plugin_overviewitem.id;
            public       postgres    false    275                       1259    89999    portfolio_app_mediaasset    TABLE     E  CREATE TABLE portfolio_app_mediaasset (
    id integer NOT NULL,
    name character varying(100) NOT NULL,
    type smallint NOT NULL,
    media_asset character varying(100),
    project_id_id integer NOT NULL,
    youtube_url character varying(255),
    CONSTRAINT portfolio_app_mediaasset_type_check CHECK ((type >= 0))
);
 ,   DROP TABLE public.portfolio_app_mediaasset;
       public         postgres    false    3                       1259    89997    portfolio_app_mediaasset_id_seq    SEQUENCE     �   CREATE SEQUENCE portfolio_app_mediaasset_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 6   DROP SEQUENCE public.portfolio_app_mediaasset_id_seq;
       public       postgres    false    3    283                       0    0    portfolio_app_mediaasset_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE portfolio_app_mediaasset_id_seq OWNED BY portfolio_app_mediaasset.id;
            public       postgres    false    282                       1259    90020    portfolio_app_project    TABLE     !  CREATE TABLE portfolio_app_project (
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
    top_image character varying(500) NOT NULL,
    created_at timestamp with time zone NOT NULL,
    updated_at timestamp with time zone NOT NULL
);
 )   DROP TABLE public.portfolio_app_project;
       public         postgres    false    3                       1259    90035    portfolio_app_project_tags    TABLE     �   CREATE TABLE portfolio_app_project_tags (
    id integer NOT NULL,
    project_id integer NOT NULL,
    tag_id integer NOT NULL
);
 .   DROP TABLE public.portfolio_app_project_tags;
       public         postgres    false    3                       1259    90033 !   portfolio_app_project_tags_id_seq    SEQUENCE     �   CREATE SEQUENCE portfolio_app_project_tags_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.portfolio_app_project_tags_id_seq;
       public       postgres    false    3    287                       0    0 !   portfolio_app_project_tags_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE portfolio_app_project_tags_id_seq OWNED BY portfolio_app_project_tags.id;
            public       postgres    false    286                       1259    90028    portfolio_app_tag    TABLE     t   CREATE TABLE portfolio_app_tag (
    cmsplugin_ptr_id integer NOT NULL,
    name character varying(100) NOT NULL
);
 %   DROP TABLE public.portfolio_app_tag;
       public         postgres    false    3            !           1259    90116    profile_plugin_milestoneitem    TABLE     �   CREATE TABLE profile_plugin_milestoneitem (
    id integer NOT NULL,
    title character varying(250) NOT NULL,
    date date NOT NULL,
    description text NOT NULL,
    profile_id_id integer NOT NULL,
    media_asset character varying(100)
);
 0   DROP TABLE public.profile_plugin_milestoneitem;
       public         postgres    false    3                        1259    90114 #   profile_plugin_milestoneitem_id_seq    SEQUENCE     �   CREATE SEQUENCE profile_plugin_milestoneitem_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 :   DROP SEQUENCE public.profile_plugin_milestoneitem_id_seq;
       public       postgres    false    289    3                       0    0 #   profile_plugin_milestoneitem_id_seq    SEQUENCE OWNED BY     ]   ALTER SEQUENCE profile_plugin_milestoneitem_id_seq OWNED BY profile_plugin_milestoneitem.id;
            public       postgres    false    288            "           1259    90125    profile_plugin_profile    TABLE     L  CREATE TABLE profile_plugin_profile (
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
       public         postgres    false    3                       1259    89852    testimonial_plugin_testimonial    TABLE     �   CREATE TABLE testimonial_plugin_testimonial (
    id integer NOT NULL,
    customer_name character varying(100) NOT NULL,
    content text,
    customer_position character varying(100),
    testimonial_plugin_id_id integer NOT NULL
);
 2   DROP TABLE public.testimonial_plugin_testimonial;
       public         postgres    false    3                       1259    89850 %   testimonial_plugin_testimonial_id_seq    SEQUENCE     �   CREATE SEQUENCE testimonial_plugin_testimonial_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 <   DROP SEQUENCE public.testimonial_plugin_testimonial_id_seq;
       public       postgres    false    3    278                       0    0 %   testimonial_plugin_testimonial_id_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE testimonial_plugin_testimonial_id_seq OWNED BY testimonial_plugin_testimonial.id;
            public       postgres    false    277                       1259    89861 $   testimonial_plugin_testimonialplugin    TABLE     ]   CREATE TABLE testimonial_plugin_testimonialplugin (
    cmsplugin_ptr_id integer NOT NULL
);
 8   DROP TABLE public.testimonial_plugin_testimonialplugin;
       public         postgres    false    3            I	           2604    88073    auth_group id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    192    191    192            J	           2604    88083    auth_group_permissions id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    193    194            H	           2604    88065    auth_permission id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189    190            K	           2604    88091    auth_user id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    196    195    196            L	           2604    88101    auth_user_groups id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    197    198    198            M	           2604    88109    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    200    200            Q	           2604    88212    cms_cmsplugin id    DEFAULT     f   ALTER TABLE ONLY cms_cmsplugin ALTER COLUMN id SET DEFAULT nextval('cms_cmsplugin_id_seq'::regclass);
 ?   ALTER TABLE public.cms_cmsplugin ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    206    206            U	           2604    88230    cms_globalpagepermission id    DEFAULT     |   ALTER TABLE ONLY cms_globalpagepermission ALTER COLUMN id SET DEFAULT nextval('cms_globalpagepermission_id_seq'::regclass);
 J   ALTER TABLE public.cms_globalpagepermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            V	           2604    88238 !   cms_globalpagepermission_sites id    DEFAULT     �   ALTER TABLE ONLY cms_globalpagepermission_sites ALTER COLUMN id SET DEFAULT nextval('cms_globalpagepermission_sites_id_seq'::regclass);
 P   ALTER TABLE public.cms_globalpagepermission_sites ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            W	           2604    88246    cms_page id    DEFAULT     \   ALTER TABLE ONLY cms_page ALTER COLUMN id SET DEFAULT nextval('cms_page_id_seq'::regclass);
 :   ALTER TABLE public.cms_page ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    212    213    213            [	           2604    88394    cms_page_placeholders id    DEFAULT     v   ALTER TABLE ONLY cms_page_placeholders ALTER COLUMN id SET DEFAULT nextval('cms_page_placeholders_id_seq'::regclass);
 G   ALTER TABLE public.cms_page_placeholders ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    220    221    221            X	           2604    88264    cms_pagepermission id    DEFAULT     p   ALTER TABLE ONLY cms_pagepermission ALTER COLUMN id SET DEFAULT nextval('cms_pagepermission_id_seq'::regclass);
 D   ALTER TABLE public.cms_pagepermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            Y	           2604    88385    cms_placeholder id    DEFAULT     j   ALTER TABLE ONLY cms_placeholder ALTER COLUMN id SET DEFAULT nextval('cms_placeholder_id_seq'::regclass);
 A   ALTER TABLE public.cms_placeholder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    219    218    219            \	           2604    88411    cms_staticplaceholder id    DEFAULT     v   ALTER TABLE ONLY cms_staticplaceholder ALTER COLUMN id SET DEFAULT nextval('cms_staticplaceholder_id_seq'::regclass);
 G   ALTER TABLE public.cms_staticplaceholder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    223    224    224            ]	           2604    88424    cms_title id    DEFAULT     ^   ALTER TABLE ONLY cms_title ALTER COLUMN id SET DEFAULT nextval('cms_title_id_seq'::regclass);
 ;   ALTER TABLE public.cms_title ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    226    225    226            `	           2604    88770    cms_treenode id    DEFAULT     d   ALTER TABLE ONLY cms_treenode ALTER COLUMN id SET DEFAULT nextval('cms_treenode_id_seq'::regclass);
 >   ALTER TABLE public.cms_treenode ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    231    232    232            _	           2604    88723    cms_urlconfrevision id    DEFAULT     r   ALTER TABLE ONLY cms_urlconfrevision ALTER COLUMN id SET DEFAULT nextval('cms_urlconfrevision_id_seq'::regclass);
 E   ALTER TABLE public.cms_urlconfrevision ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    230    229    230            ^	           2604    88439    cms_usersettings id    DEFAULT     l   ALTER TABLE ONLY cms_usersettings ALTER COLUMN id SET DEFAULT nextval('cms_usersettings_id_seq'::regclass);
 B   ALTER TABLE public.cms_usersettings ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    228    227    228            N	           2604    88169    django_admin_log id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    201    202    202            G	           2604    88055    django_content_type id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    188    187    188            F	           2604    88044    django_migrations id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    186    185    186            P	           2604    88204    django_site id    DEFAULT     b   ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    204    203    204            p	           2604    89447    djangocms_snippet_snippet id    DEFAULT     ~   ALTER TABLE ONLY djangocms_snippet_snippet ALTER COLUMN id SET DEFAULT nextval('djangocms_snippet_snippet_id_seq'::regclass);
 K   ALTER TABLE public.djangocms_snippet_snippet ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    255    256    256            y	           2604    89692    easy_thumbnails_source id    DEFAULT     x   ALTER TABLE ONLY easy_thumbnails_source ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_source_id_seq'::regclass);
 H   ALTER TABLE public.easy_thumbnails_source ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    264    263    264            z	           2604    89700    easy_thumbnails_thumbnail id    DEFAULT     ~   ALTER TABLE ONLY easy_thumbnails_thumbnail ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_thumbnail_id_seq'::regclass);
 K   ALTER TABLE public.easy_thumbnails_thumbnail ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    265    266    266            {	           2604    89726 &   easy_thumbnails_thumbnaildimensions id    DEFAULT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions ALTER COLUMN id SET DEFAULT nextval('easy_thumbnails_thumbnaildimensions_id_seq'::regclass);
 U   ALTER TABLE public.easy_thumbnails_thumbnaildimensions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    268    267    268            c	           2604    88833    filer_clipboard id    DEFAULT     j   ALTER TABLE ONLY filer_clipboard ALTER COLUMN id SET DEFAULT nextval('filer_clipboard_id_seq'::regclass);
 A   ALTER TABLE public.filer_clipboard ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    235    236    236            d	           2604    88841    filer_clipboarditem id    DEFAULT     r   ALTER TABLE ONLY filer_clipboarditem ALTER COLUMN id SET DEFAULT nextval('filer_clipboarditem_id_seq'::regclass);
 E   ALTER TABLE public.filer_clipboarditem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    237    238    238            e	           2604    88849    filer_file id    DEFAULT     `   ALTER TABLE ONLY filer_file ALTER COLUMN id SET DEFAULT nextval('filer_file_id_seq'::regclass);
 <   ALTER TABLE public.filer_file ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    240    239    240            f	           2604    88860    filer_folder id    DEFAULT     d   ALTER TABLE ONLY filer_folder ALTER COLUMN id SET DEFAULT nextval('filer_folder_id_seq'::regclass);
 >   ALTER TABLE public.filer_folder ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    241    242    242            k	           2604    88872    filer_folderpermission id    DEFAULT     x   ALTER TABLE ONLY filer_folderpermission ALTER COLUMN id SET DEFAULT nextval('filer_folderpermission_id_seq'::regclass);
 H   ALTER TABLE public.filer_folderpermission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    244    243    244            l	           2604    88970    filer_thumbnailoption id    DEFAULT     v   ALTER TABLE ONLY filer_thumbnailoption ALTER COLUMN id SET DEFAULT nextval('filer_thumbnailoption_id_seq'::regclass);
 G   ALTER TABLE public.filer_thumbnailoption ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    246    247    247            ~	           2604    89743    menus_cachekey id    DEFAULT     h   ALTER TABLE ONLY menus_cachekey ALTER COLUMN id SET DEFAULT nextval('menus_cachekey_id_seq'::regclass);
 @   ALTER TABLE public.menus_cachekey ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    270    269    270            �	           2604    89833    overview_plugin_overviewitem id    DEFAULT     �   ALTER TABLE ONLY overview_plugin_overviewitem ALTER COLUMN id SET DEFAULT nextval('overview_plugin_overviewitem_id_seq'::regclass);
 N   ALTER TABLE public.overview_plugin_overviewitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    275    276    276            �	           2604    90002    portfolio_app_mediaasset id    DEFAULT     |   ALTER TABLE ONLY portfolio_app_mediaasset ALTER COLUMN id SET DEFAULT nextval('portfolio_app_mediaasset_id_seq'::regclass);
 J   ALTER TABLE public.portfolio_app_mediaasset ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    282    283    283            �	           2604    90038    portfolio_app_project_tags id    DEFAULT     �   ALTER TABLE ONLY portfolio_app_project_tags ALTER COLUMN id SET DEFAULT nextval('portfolio_app_project_tags_id_seq'::regclass);
 L   ALTER TABLE public.portfolio_app_project_tags ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    287    286    287            �	           2604    90119    profile_plugin_milestoneitem id    DEFAULT     �   ALTER TABLE ONLY profile_plugin_milestoneitem ALTER COLUMN id SET DEFAULT nextval('profile_plugin_milestoneitem_id_seq'::regclass);
 N   ALTER TABLE public.profile_plugin_milestoneitem ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    289    288    289            �	           2604    89855 !   testimonial_plugin_testimonial id    DEFAULT     �   ALTER TABLE ONLY testimonial_plugin_testimonial ALTER COLUMN id SET DEFAULT nextval('testimonial_plugin_testimonial_id_seq'::regclass);
 P   ALTER TABLE public.testimonial_plugin_testimonial ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    278    277    278            �          0    89771    aldryn_style_style 
   TABLE DATA               �   COPY aldryn_style_style (label, cmsplugin_ptr_id, class_name, id_name, tag_type, padding_left, padding_right, padding_top, padding_bottom, margin_left, margin_right, margin_top, margin_bottom, additional_class_names) FROM stdin;
    public       postgres    false    272   `      �          0    88070 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    192   6`                 0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    191            �          0    88080    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    194   S`                 0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    193            �          0    88062    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    190   p`                 0    0    auth_permission_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_permission_id_seq', 188, true);
            public       postgres    false    189            �          0    88088 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    196   Lh      �          0    88098    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    198   �h                 0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    197                        0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 1, true);
            public       postgres    false    195            �          0    88106    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    200   i      !           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    199            �          0    88220    cms_aliaspluginmodel 
   TABLE DATA               Z   COPY cms_aliaspluginmodel (cmsplugin_ptr_id, plugin_id, alias_placeholder_id) FROM stdin;
    public       postgres    false    207   /i      �          0    88209    cms_cmsplugin 
   TABLE DATA               �   COPY cms_cmsplugin (id, "position", language, plugin_type, creation_date, changed_date, parent_id, placeholder_id, depth, numchild, path) FROM stdin;
    public       postgres    false    206   Li      "           0    0    cms_cmsplugin_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('cms_cmsplugin_id_seq', 39, true);
            public       postgres    false    205            �          0    88227    cms_globalpagepermission 
   TABLE DATA               �   COPY cms_globalpagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, can_recover_page, group_id, user_id) FROM stdin;
    public       postgres    false    209   rk      #           0    0    cms_globalpagepermission_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('cms_globalpagepermission_id_seq', 1, false);
            public       postgres    false    208            �          0    88235    cms_globalpagepermission_sites 
   TABLE DATA               W   COPY cms_globalpagepermission_sites (id, globalpagepermission_id, site_id) FROM stdin;
    public       postgres    false    211   �k      $           0    0 %   cms_globalpagepermission_sites_id_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('cms_globalpagepermission_sites_id_seq', 1, false);
            public       postgres    false    210            �          0    88243    cms_page 
   TABLE DATA               y  COPY cms_page (id, created_by, changed_by, creation_date, changed_date, publication_date, publication_end_date, in_navigation, soft_root, reverse_id, navigation_extenders, template, login_required, limit_visibility_in_menu, is_home, application_urls, application_namespace, publisher_is_draft, languages, xframe_options, publisher_public_id, is_page_type, node_id) FROM stdin;
    public       postgres    false    213   �k      %           0    0    cms_page_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('cms_page_id_seq', 10, true);
            public       postgres    false    212            �          0    88391    cms_page_placeholders 
   TABLE DATA               E   COPY cms_page_placeholders (id, page_id, placeholder_id) FROM stdin;
    public       postgres    false    221   �l      &           0    0    cms_page_placeholders_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('cms_page_placeholders_id_seq', 21, true);
            public       postgres    false    220            �          0    88261    cms_pagepermission 
   TABLE DATA               �   COPY cms_pagepermission (id, can_change, can_add, can_delete, can_change_advanced_settings, can_publish, can_change_permissions, can_move_page, can_view, grant_on, group_id, page_id, user_id) FROM stdin;
    public       postgres    false    215   Dm      '           0    0    cms_pagepermission_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('cms_pagepermission_id_seq', 1, false);
            public       postgres    false    214            �          0    88370    cms_pageuser 
   TABLE DATA               ;   COPY cms_pageuser (user_ptr_id, created_by_id) FROM stdin;
    public       postgres    false    216   am      �          0    88375    cms_pageusergroup 
   TABLE DATA               A   COPY cms_pageusergroup (group_ptr_id, created_by_id) FROM stdin;
    public       postgres    false    217   ~m      �          0    88382    cms_placeholder 
   TABLE DATA               ;   COPY cms_placeholder (id, slot, default_width) FROM stdin;
    public       postgres    false    219   �m      (           0    0    cms_placeholder_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('cms_placeholder_id_seq', 22, true);
            public       postgres    false    218            �          0    88401    cms_placeholderreference 
   TABLE DATA               W   COPY cms_placeholderreference (cmsplugin_ptr_id, name, placeholder_ref_id) FROM stdin;
    public       postgres    false    222   /n      �          0    88408    cms_staticplaceholder 
   TABLE DATA               n   COPY cms_staticplaceholder (id, name, code, dirty, creation_method, draft_id, public_id, site_id) FROM stdin;
    public       postgres    false    224   Ln      )           0    0    cms_staticplaceholder_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('cms_staticplaceholder_id_seq', 1, false);
            public       postgres    false    223            �          0    88421 	   cms_title 
   TABLE DATA               �   COPY cms_title (id, language, title, page_title, menu_title, meta_description, slug, path, has_url_overwrite, redirect, creation_date, published, publisher_is_draft, publisher_state, page_id, publisher_public_id) FROM stdin;
    public       postgres    false    226   in      *           0    0    cms_title_id_seq    SEQUENCE SET     8   SELECT pg_catalog.setval('cms_title_id_seq', 10, true);
            public       postgres    false    225            �          0    88767    cms_treenode 
   TABLE DATA               N   COPY cms_treenode (id, path, depth, numchild, parent_id, site_id) FROM stdin;
    public       postgres    false    232   o      +           0    0    cms_treenode_id_seq    SEQUENCE SET     :   SELECT pg_catalog.setval('cms_treenode_id_seq', 5, true);
            public       postgres    false    231            �          0    88720    cms_urlconfrevision 
   TABLE DATA               4   COPY cms_urlconfrevision (id, revision) FROM stdin;
    public       postgres    false    230   Vo      ,           0    0    cms_urlconfrevision_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('cms_urlconfrevision_id_seq', 1, false);
            public       postgres    false    229            �          0    88436    cms_usersettings 
   TABLE DATA               H   COPY cms_usersettings (id, language, clipboard_id, user_id) FROM stdin;
    public       postgres    false    228   �o      -           0    0    cms_usersettings_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('cms_usersettings_id_seq', 1, true);
            public       postgres    false    227            �          0    89885    contact_me_plugin_message 
   TABLE DATA               t   COPY contact_me_plugin_message (cmsplugin_ptr_id, name, email_address, message, created_at, updated_at) FROM stdin;
    public       postgres    false    280   �o      �          0    89893    contact_me_plugin_shortcontact 
   TABLE DATA               Q   COPY contact_me_plugin_shortcontact (cmsplugin_ptr_id, email, phone) FROM stdin;
    public       postgres    false    281   /p      �          0    88166    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    202   ~p      .           0    0    django_admin_log_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('django_admin_log_id_seq', 34, true);
            public       postgres    false    201            �          0    88052    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    188   �s      /           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 63, true);
            public       postgres    false    187            �          0    88041    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    186   bv      0           0    0    django_migrations_id_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('django_migrations_id_seq', 132, true);
            public       postgres    false    185            �          0    89750    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    271   }      �          0    88201    django_site 
   TABLE DATA               0   COPY django_site (id, domain, name) FROM stdin;
    public       postgres    false    204   ��      1           0    0    django_site_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('django_site_id_seq', 1, true);
            public       postgres    false    203            �          0    88798    djangocms_column_column 
   TABLE DATA               C   COPY djangocms_column_column (cmsplugin_ptr_id, width) FROM stdin;
    public       postgres    false    233   �      �          0    88803    djangocms_column_multicolumns 
   TABLE DATA               B   COPY djangocms_column_multicolumns (cmsplugin_ptr_id) FROM stdin;
    public       postgres    false    234   �      �          0    88994    djangocms_file_file 
   TABLE DATA               �   COPY djangocms_file_file (cmsplugin_ptr_id, file_name, link_target, link_title, file_src_id, attributes, template, show_file_size) FROM stdin;
    public       postgres    false    248   #�      �          0    89063    djangocms_file_folder 
   TABLE DATA               |   COPY djangocms_file_folder (template, link_target, show_file_size, attributes, cmsplugin_ptr_id, folder_src_id) FROM stdin;
    public       postgres    false    249   @�      �          0    89083    djangocms_googlemap_googlemap 
   TABLE DATA               -  COPY djangocms_googlemap_googlemap (cmsplugin_ptr_id, title, zoom, lat, lng, width, height, scrollwheel, double_click_zoom, draggable, keyboard_shortcuts, pan_control, zoom_control, street_view_control, style, fullscreen_control, map_type_control, rotate_control, scale_control, template) FROM stdin;
    public       postgres    false    250   ]�      �          0    89172 #   djangocms_googlemap_googlemapmarker 
   TABLE DATA               �   COPY djangocms_googlemap_googlemapmarker (cmsplugin_ptr_id, title, address, lat, lng, show_content, info_content, icon_id) FROM stdin;
    public       postgres    false    251   z�      �          0    89180 "   djangocms_googlemap_googlemaproute 
   TABLE DATA               p   COPY djangocms_googlemap_googlemaproute (cmsplugin_ptr_id, title, origin, destination, travel_mode) FROM stdin;
    public       postgres    false    252   ��      �          0    89205    djangocms_link_link 
   TABLE DATA               �   COPY djangocms_link_link (cmsplugin_ptr_id, name, external_link, anchor, mailto, phone, target, internal_link_id, attributes, template) FROM stdin;
    public       postgres    false    253   ��      �          0    89282    djangocms_picture_picture 
   TABLE DATA               %  COPY djangocms_picture_picture (cmsplugin_ptr_id, link_url, alignment, link_page_id, height, width, picture_id, attributes, caption_text, link_attributes, link_target, use_automatic_scaling, use_crop, use_no_cropping, use_upscale, thumbnail_options_id, external_picture, template) FROM stdin;
    public       postgres    false    254   у      �          0    89444    djangocms_snippet_snippet 
   TABLE DATA               L   COPY djangocms_snippet_snippet (id, name, html, template, slug) FROM stdin;
    public       postgres    false    256   �      2           0    0     djangocms_snippet_snippet_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('djangocms_snippet_snippet_id_seq', 1, false);
            public       postgres    false    255            �          0    89455    djangocms_snippet_snippetptr 
   TABLE DATA               M   COPY djangocms_snippet_snippetptr (cmsplugin_ptr_id, snippet_id) FROM stdin;
    public       postgres    false    257   �      �          0    89500    djangocms_style_style 
   TABLE DATA               �   COPY djangocms_style_style (cmsplugin_ptr_id, class_name, tag_type, padding_left, padding_right, padding_top, padding_bottom, margin_left, margin_right, margin_top, margin_bottom, additional_classes, attributes, id_name, label) FROM stdin;
    public       postgres    false    258   (�      �          0    89558    djangocms_text_ckeditor_text 
   TABLE DATA               G   COPY djangocms_text_ckeditor_text (cmsplugin_ptr_id, body) FROM stdin;
    public       postgres    false    259   E�      �          0    89581    djangocms_video_videoplayer 
   TABLE DATA               t   COPY djangocms_video_videoplayer (cmsplugin_ptr_id, embed_link, poster_id, attributes, label, template) FROM stdin;
    public       postgres    false    260   b�      �          0    89648    djangocms_video_videosource 
   TABLE DATA               z   COPY djangocms_video_videosource (cmsplugin_ptr_id, text_title, text_description, attributes, source_file_id) FROM stdin;
    public       postgres    false    261   �      �          0    89656    djangocms_video_videotrack 
   TABLE DATA               i   COPY djangocms_video_videotrack (cmsplugin_ptr_id, kind, srclang, label, attributes, src_id) FROM stdin;
    public       postgres    false    262   ��      �          0    89689    easy_thumbnails_source 
   TABLE DATA               K   COPY easy_thumbnails_source (id, storage_hash, name, modified) FROM stdin;
    public       postgres    false    264   ��      3           0    0    easy_thumbnails_source_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('easy_thumbnails_source_id_seq', 1, false);
            public       postgres    false    263            �          0    89697    easy_thumbnails_thumbnail 
   TABLE DATA               Y   COPY easy_thumbnails_thumbnail (id, storage_hash, name, modified, source_id) FROM stdin;
    public       postgres    false    266   ք      4           0    0     easy_thumbnails_thumbnail_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('easy_thumbnails_thumbnail_id_seq', 1, false);
            public       postgres    false    265            �          0    89723 #   easy_thumbnails_thumbnaildimensions 
   TABLE DATA               W   COPY easy_thumbnails_thumbnaildimensions (id, thumbnail_id, width, height) FROM stdin;
    public       postgres    false    268   �      5           0    0 *   easy_thumbnails_thumbnaildimensions_id_seq    SEQUENCE SET     R   SELECT pg_catalog.setval('easy_thumbnails_thumbnaildimensions_id_seq', 1, false);
            public       postgres    false    267            �          0    88830    filer_clipboard 
   TABLE DATA               /   COPY filer_clipboard (id, user_id) FROM stdin;
    public       postgres    false    236   �      6           0    0    filer_clipboard_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('filer_clipboard_id_seq', 1, false);
            public       postgres    false    235            �          0    88838    filer_clipboarditem 
   TABLE DATA               A   COPY filer_clipboarditem (id, clipboard_id, file_id) FROM stdin;
    public       postgres    false    238   -�      7           0    0    filer_clipboarditem_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('filer_clipboarditem_id_seq', 1, false);
            public       postgres    false    237            �          0    88846 
   filer_file 
   TABLE DATA               �   COPY filer_file (id, file, _file_size, sha1, has_all_mandatory_data, original_filename, name, description, uploaded_at, modified_at, is_public, folder_id, owner_id, polymorphic_ctype_id) FROM stdin;
    public       postgres    false    240   J�      8           0    0    filer_file_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('filer_file_id_seq', 1, false);
            public       postgres    false    239            �          0    88857    filer_folder 
   TABLE DATA                  COPY filer_folder (id, name, uploaded_at, created_at, modified_at, lft, rght, tree_id, level, owner_id, parent_id) FROM stdin;
    public       postgres    false    242   g�      9           0    0    filer_folder_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('filer_folder_id_seq', 1, false);
            public       postgres    false    241            �          0    88869    filer_folderpermission 
   TABLE DATA               �   COPY filer_folderpermission (id, type, everybody, can_edit, can_read, can_add_children, folder_id, group_id, user_id) FROM stdin;
    public       postgres    false    244   ��      :           0    0    filer_folderpermission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('filer_folderpermission_id_seq', 1, false);
            public       postgres    false    243            �          0    88877    filer_image 
   TABLE DATA               �   COPY filer_image (file_ptr_id, _height, _width, date_taken, default_alt_text, default_caption, author, must_always_publish_author_credit, must_always_publish_copyright, subject_location) FROM stdin;
    public       postgres    false    245   ��      �          0    88967    filer_thumbnailoption 
   TABLE DATA               P   COPY filer_thumbnailoption (id, name, width, height, crop, upscale) FROM stdin;
    public       postgres    false    247   ��      ;           0    0    filer_thumbnailoption_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('filer_thumbnailoption_id_seq', 1, false);
            public       postgres    false    246            �          0    89809    hero_area_plugin_heroarea 
   TABLE DATA               o   COPY hero_area_plugin_heroarea (cmsplugin_ptr_id, name, message, image_file, youtube_introduction) FROM stdin;
    public       postgres    false    273   ۅ      �          0    89740    menus_cachekey 
   TABLE DATA               :   COPY menus_cachekey (id, language, site, key) FROM stdin;
    public       postgres    false    270   b�      <           0    0    menus_cachekey_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('menus_cachekey_id_seq', 31, true);
            public       postgres    false    269            �          0    89823    overview_plugin_overview 
   TABLE DATA               =   COPY overview_plugin_overview (cmsplugin_ptr_id) FROM stdin;
    public       postgres    false    274   ��      �          0    89830    overview_plugin_overviewitem 
   TABLE DATA               ^   COPY overview_plugin_overviewitem (id, title, description, image, overview_id_id) FROM stdin;
    public       postgres    false    276   ��      =           0    0 #   overview_plugin_overviewitem_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('overview_plugin_overviewitem_id_seq', 15, true);
            public       postgres    false    275            �          0    89999    portfolio_app_mediaasset 
   TABLE DATA               d   COPY portfolio_app_mediaasset (id, name, type, media_asset, project_id_id, youtube_url) FROM stdin;
    public       postgres    false    283   ��      >           0    0    portfolio_app_mediaasset_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('portfolio_app_mediaasset_id_seq', 7, true);
            public       postgres    false    282            �          0    90020    portfolio_app_project 
   TABLE DATA               �   COPY portfolio_app_project (cmsplugin_ptr_id, slug, title, sub_title, description, skills, roles, client, length, demo_url, top_image, created_at, updated_at) FROM stdin;
    public       postgres    false    284   ω      �          0    90035    portfolio_app_project_tags 
   TABLE DATA               E   COPY portfolio_app_project_tags (id, project_id, tag_id) FROM stdin;
    public       postgres    false    287   ��      ?           0    0 !   portfolio_app_project_tags_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('portfolio_app_project_tags_id_seq', 8, true);
            public       postgres    false    286            �          0    90028    portfolio_app_tag 
   TABLE DATA               <   COPY portfolio_app_tag (cmsplugin_ptr_id, name) FROM stdin;
    public       postgres    false    285   B�      �          0    90116    profile_plugin_milestoneitem 
   TABLE DATA               i   COPY profile_plugin_milestoneitem (id, title, date, description, profile_id_id, media_asset) FROM stdin;
    public       postgres    false    289   ��      @           0    0 #   profile_plugin_milestoneitem_id_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('profile_plugin_milestoneitem_id_seq', 4, true);
            public       postgres    false    288            �          0    90125    profile_plugin_profile 
   TABLE DATA               �   COPY profile_plugin_profile (cmsplugin_ptr_id, name, avatar, working_position, location, date_of_birth, email, self_introduction, programing_language, database, ide_and_tool, vcs_dvcs, framework) FROM stdin;
    public       postgres    false    290   ,�      �          0    89852    testimonial_plugin_testimonial 
   TABLE DATA               z   COPY testimonial_plugin_testimonial (id, customer_name, content, customer_position, testimonial_plugin_id_id) FROM stdin;
    public       postgres    false    278   P�      A           0    0 %   testimonial_plugin_testimonial_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('testimonial_plugin_testimonial_id_seq', 6, true);
            public       postgres    false    277            �          0    89861 $   testimonial_plugin_testimonialplugin 
   TABLE DATA               I   COPY testimonial_plugin_testimonialplugin (cmsplugin_ptr_id) FROM stdin;
    public       postgres    false    279   �      �
           2606    89778 *   aldryn_style_style aldryn_style_style_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY aldryn_style_style
    ADD CONSTRAINT aldryn_style_style_pkey PRIMARY KEY (cmsplugin_ptr_id);
 T   ALTER TABLE ONLY public.aldryn_style_style DROP CONSTRAINT aldryn_style_style_pkey;
       public         postgres    false    272    272            �	           2606    88077    auth_group auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    192    192            �	           2606    88132 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    194    194    194            �	           2606    88085 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    194    194            �	           2606    88075    auth_group auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    192    192            �	           2606    88118 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    190    190    190            �	           2606    88067 $   auth_permission auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    190    190            �	           2606    88103 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    198    198            �	           2606    88147 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    198    198    198            �	           2606    88093    auth_user auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    196    196            �	           2606    88111 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    200    200            �	           2606    88161 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    200    200    200            �	           2606    88189     auth_user auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    196    196            �	           2606    88224 .   cms_aliaspluginmodel cms_aliaspluginmodel_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_pkey PRIMARY KEY (cmsplugin_ptr_id);
 X   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_pkey;
       public         postgres    false    207    207            �	           2606    88696 .   cms_cmsplugin cms_cmsplugin_path_4917bb44_uniq 
   CONSTRAINT     b   ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_path_4917bb44_uniq UNIQUE (path);
 X   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_path_4917bb44_uniq;
       public         postgres    false    206    206            �	           2606    88219     cms_cmsplugin cms_cmsplugin_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_pkey;
       public         postgres    false    206    206            �	           2606    88315 ^   cms_globalpagepermission_sites cms_globalpagepermission_globalpagepermission_id__db684f41_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq UNIQUE (globalpagepermission_id, site_id);
 �   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermission_globalpagepermission_id__db684f41_uniq;
       public         postgres    false    211    211    211            �	           2606    88232 6   cms_globalpagepermission cms_globalpagepermission_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_pkey;
       public         postgres    false    209    209            �	           2606    88240 B   cms_globalpagepermission_sites cms_globalpagepermission_sites_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermission_sites_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermission_sites_pkey;
       public         postgres    false    211    211            �	           2606    88778 :   cms_page cms_page_node_id_publisher_is_draft_c1293d6a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq UNIQUE (node_id, publisher_is_draft);
 d   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_node_id_publisher_is_draft_c1293d6a_uniq;
       public         postgres    false    213    213    213            �	           2606    88256    cms_page cms_page_pkey 
   CONSTRAINT     M   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_pkey;
       public         postgres    false    213    213            �	           2606    88479 P   cms_page_placeholders cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq UNIQUE (page_id, placeholder_id);
 z   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_page_id_placeholder_id_ab7fbfb8_uniq;
       public         postgres    false    221    221    221            �	           2606    88396 0   cms_page_placeholders cms_page_placeholders_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_pkey;
       public         postgres    false    221    221            �	           2606    88258 )   cms_page cms_page_publisher_public_id_key 
   CONSTRAINT     l   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_key UNIQUE (publisher_public_id);
 S   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_publisher_public_id_key;
       public         postgres    false    213    213            �	           2606    88266 *   cms_pagepermission cms_pagepermission_pkey 
   CONSTRAINT     a   ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_pkey PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_pkey;
       public         postgres    false    215    215            �	           2606    88374    cms_pageuser cms_pageuser_pkey 
   CONSTRAINT     ^   ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT cms_pageuser_pkey PRIMARY KEY (user_ptr_id);
 H   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_pkey;
       public         postgres    false    216    216            �	           2606    88379 (   cms_pageusergroup cms_pageusergroup_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_pkey PRIMARY KEY (group_ptr_id);
 R   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_pkey;
       public         postgres    false    217    217            �	           2606    88388 $   cms_placeholder cms_placeholder_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY cms_placeholder
    ADD CONSTRAINT cms_placeholder_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.cms_placeholder DROP CONSTRAINT cms_placeholder_pkey;
       public         postgres    false    219    219            �	           2606    88405 6   cms_placeholderreference cms_placeholderreference_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY cms_placeholderreference
    ADD CONSTRAINT cms_placeholderreference_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderreference_pkey;
       public         postgres    false    222    222            �	           2606    88418 F   cms_staticplaceholder cms_staticplaceholder_code_site_id_21ba079c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq UNIQUE (code, site_id);
 p   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_code_site_id_21ba079c_uniq;
       public         postgres    false    224    224    224            �	           2606    88416 0   cms_staticplaceholder cms_staticplaceholder_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_pkey;
       public         postgres    false    224    224            
           2606    88433 2   cms_title cms_title_language_page_id_61aaf084_uniq 
   CONSTRAINT     s   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_language_page_id_61aaf084_uniq UNIQUE (language, page_id);
 \   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_language_page_id_61aaf084_uniq;
       public         postgres    false    226    226    226            
           2606    88429    cms_title cms_title_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_pkey;
       public         postgres    false    226    226            
           2606    88431 +   cms_title cms_title_publisher_public_id_key 
   CONSTRAINT     n   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_key UNIQUE (publisher_public_id);
 U   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_publisher_public_id_key;
       public         postgres    false    226    226            
           2606    88776 "   cms_treenode cms_treenode_path_key 
   CONSTRAINT     V   ALTER TABLE ONLY cms_treenode
    ADD CONSTRAINT cms_treenode_path_key UNIQUE (path);
 L   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_path_key;
       public         postgres    false    232    232            
           2606    88774    cms_treenode cms_treenode_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY cms_treenode
    ADD CONSTRAINT cms_treenode_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_pkey;
       public         postgres    false    232    232            
           2606    88725 ,   cms_urlconfrevision cms_urlconfrevision_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY cms_urlconfrevision
    ADD CONSTRAINT cms_urlconfrevision_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.cms_urlconfrevision DROP CONSTRAINT cms_urlconfrevision_pkey;
       public         postgres    false    230    230            
           2606    88441 &   cms_usersettings cms_usersettings_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY cms_usersettings
    ADD CONSTRAINT cms_usersettings_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_pkey;
       public         postgres    false    228    228            
           2606    88443 -   cms_usersettings cms_usersettings_user_id_key 
   CONSTRAINT     d   ALTER TABLE ONLY cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_key UNIQUE (user_id);
 W   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_user_id_key;
       public         postgres    false    228    228            �
           2606    89892 8   contact_me_plugin_message contact_me_plugin_message_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY contact_me_plugin_message
    ADD CONSTRAINT contact_me_plugin_message_pkey PRIMARY KEY (cmsplugin_ptr_id);
 b   ALTER TABLE ONLY public.contact_me_plugin_message DROP CONSTRAINT contact_me_plugin_message_pkey;
       public         postgres    false    280    280            �
           2606    89897 B   contact_me_plugin_shortcontact contact_me_plugin_shortcontact_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY contact_me_plugin_shortcontact
    ADD CONSTRAINT contact_me_plugin_shortcontact_pkey PRIMARY KEY (cmsplugin_ptr_id);
 l   ALTER TABLE ONLY public.contact_me_plugin_shortcontact DROP CONSTRAINT contact_me_plugin_shortcontact_pkey;
       public         postgres    false    281    281            �	           2606    88175 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    202    202            �	           2606    88059 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    188    188    188            �	           2606    88057 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    188    188            �	           2606    88049 (   django_migrations django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    186    186            �
           2606    89757 "   django_session django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    271    271            �	           2606    89761 ,   django_site django_site_domain_a2e37b91_uniq 
   CONSTRAINT     b   ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public         postgres    false    204    204            �	           2606    88206    django_site django_site_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public         postgres    false    204    204            !
           2606    88802 4   djangocms_column_column djangocms_column_column_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY djangocms_column_column
    ADD CONSTRAINT djangocms_column_column_pkey PRIMARY KEY (cmsplugin_ptr_id);
 ^   ALTER TABLE ONLY public.djangocms_column_column DROP CONSTRAINT djangocms_column_column_pkey;
       public         postgres    false    233    233            #
           2606    88807 @   djangocms_column_multicolumns djangocms_column_multicolumns_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_multicolumns_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.djangocms_column_multicolumns DROP CONSTRAINT djangocms_column_multicolumns_pkey;
       public         postgres    false    234    234            E
           2606    88998 ,   djangocms_file_file djangocms_file_file_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_pkey PRIMARY KEY (cmsplugin_ptr_id);
 V   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_pkey;
       public         postgres    false    248    248            H
           2606    89070 0   djangocms_file_folder djangocms_file_folder_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folder_pkey;
       public         postgres    false    249    249            J
           2606    89091 @   djangocms_googlemap_googlemap djangocms_googlemap_googlemap_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap_googlemap_pkey PRIMARY KEY (cmsplugin_ptr_id);
 j   ALTER TABLE ONLY public.djangocms_googlemap_googlemap DROP CONSTRAINT djangocms_googlemap_googlemap_pkey;
       public         postgres    false    250    250            M
           2606    89179 L   djangocms_googlemap_googlemapmarker djangocms_googlemap_googlemapmarker_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap_googlemapmarker_pkey PRIMARY KEY (cmsplugin_ptr_id);
 v   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap_googlemapmarker_pkey;
       public         postgres    false    251    251            O
           2606    89187 J   djangocms_googlemap_googlemaproute djangocms_googlemap_googlemaproute_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap_googlemaproute_pkey PRIMARY KEY (cmsplugin_ptr_id);
 t   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute DROP CONSTRAINT djangocms_googlemap_googlemaproute_pkey;
       public         postgres    false    252    252            R
           2606    89212 ,   djangocms_link_link djangocms_link_link_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_pkey PRIMARY KEY (cmsplugin_ptr_id);
 V   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_pkey;
       public         postgres    false    253    253            V
           2606    89289 8   djangocms_picture_picture djangocms_picture_picture_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_pkey PRIMARY KEY (cmsplugin_ptr_id);
 b   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_picture_pkey;
       public         postgres    false    254    254            Z
           2606    89454 <   djangocms_snippet_snippet djangocms_snippet_snippet_name_key 
   CONSTRAINT     p   ALTER TABLE ONLY djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_name_key UNIQUE (name);
 f   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_name_key;
       public         postgres    false    256    256            \
           2606    89452 8   djangocms_snippet_snippet djangocms_snippet_snippet_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_pkey;
       public         postgres    false    256    256            _
           2606    89493 F   djangocms_snippet_snippet djangocms_snippet_snippet_slug_bd43cd96_uniq 
   CONSTRAINT     z   ALTER TABLE ONLY djangocms_snippet_snippet
    ADD CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq UNIQUE (slug);
 p   ALTER TABLE ONLY public.djangocms_snippet_snippet DROP CONSTRAINT djangocms_snippet_snippet_slug_bd43cd96_uniq;
       public         postgres    false    256    256            a
           2606    89459 >   djangocms_snippet_snippetptr djangocms_snippet_snippetptr_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_snippetptr_pkey;
       public         postgres    false    257    257            d
           2606    89504 0   djangocms_style_style djangocms_style_style_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY djangocms_style_style
    ADD CONSTRAINT djangocms_style_style_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.djangocms_style_style DROP CONSTRAINT djangocms_style_style_pkey;
       public         postgres    false    258    258            f
           2606    89565 >   djangocms_text_ckeditor_text djangocms_text_ckeditor_text_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckeditor_text_pkey PRIMARY KEY (cmsplugin_ptr_id);
 h   ALTER TABLE ONLY public.djangocms_text_ckeditor_text DROP CONSTRAINT djangocms_text_ckeditor_text_pkey;
       public         postgres    false    259    259            h
           2606    89590 6   djangocms_video_videoplayer djangocms_video_video_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_video_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_video_pkey;
       public         postgres    false    260    260            k
           2606    89655 <   djangocms_video_videosource djangocms_video_videosource_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_videosource_pkey PRIMARY KEY (cmsplugin_ptr_id);
 f   ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_videosource_pkey;
       public         postgres    false    261    261            n
           2606    89663 :   djangocms_video_videotrack djangocms_video_videotrack_pkey 
   CONSTRAINT        ALTER TABLE ONLY djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_pkey PRIMARY KEY (cmsplugin_ptr_id);
 d   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_videotrack_pkey;
       public         postgres    false    262    262            s
           2606    89694 2   easy_thumbnails_source easy_thumbnails_source_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_pkey;
       public         postgres    false    264    264            w
           2606    89706 M   easy_thumbnails_source easy_thumbnails_source_storage_hash_name_481ce32d_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_source
    ADD CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq UNIQUE (storage_hash, name);
 w   ALTER TABLE ONLY public.easy_thumbnails_source DROP CONSTRAINT easy_thumbnails_source_storage_hash_name_481ce32d_uniq;
       public         postgres    false    264    264    264            y
           2606    89704 Y   easy_thumbnails_thumbnail easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq UNIQUE (storage_hash, name, source_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnai_storage_hash_name_source_fb375270_uniq;
       public         postgres    false    266    266    266    266            }
           2606    89702 8   easy_thumbnails_thumbnail easy_thumbnails_thumbnail_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thumbnail_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thumbnail_pkey;
       public         postgres    false    266    266            �
           2606    89730 L   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey PRIMARY KEY (id);
 v   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_pkey;
       public         postgres    false    268    268            �
           2606    89732 X   easy_thumbnails_thumbnaildimensions easy_thumbnails_thumbnaildimensions_thumbnail_id_key 
   CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key UNIQUE (thumbnail_id);
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thumbnaildimensions_thumbnail_id_key;
       public         postgres    false    268    268            %
           2606    88835 $   filer_clipboard filer_clipboard_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY filer_clipboard
    ADD CONSTRAINT filer_clipboard_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_pkey;
       public         postgres    false    236    236            *
           2606    88843 ,   filer_clipboarditem filer_clipboarditem_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_pkey;
       public         postgres    false    238    238            .
           2606    88854    filer_file filer_file_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_pkey;
       public         postgres    false    240    240            5
           2606    88876 6   filer_folder filer_folder_parent_id_name_bc773258_uniq 
   CONSTRAINT     u   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_parent_id_name_bc773258_uniq UNIQUE (parent_id, name);
 `   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_name_bc773258_uniq;
       public         postgres    false    242    242    242            7
           2606    88866    filer_folder filer_folder_pkey 
   CONSTRAINT     U   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_pkey PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_pkey;
       public         postgres    false    242    242            =
           2606    88874 2   filer_folderpermission filer_folderpermission_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_pkey;
       public         postgres    false    244    244            @
           2606    88884    filer_image filer_image_pkey 
   CONSTRAINT     \   ALTER TABLE ONLY filer_image
    ADD CONSTRAINT filer_image_pkey PRIMARY KEY (file_ptr_id);
 F   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_pkey;
       public         postgres    false    245    245            B
           2606    88972 0   filer_thumbnailoption filer_thumbnailoption_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY filer_thumbnailoption
    ADD CONSTRAINT filer_thumbnailoption_pkey PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.filer_thumbnailoption DROP CONSTRAINT filer_thumbnailoption_pkey;
       public         postgres    false    247    247            �
           2606    89813 8   hero_area_plugin_heroarea hero_area_plugin_heroarea_pkey 
   CONSTRAINT     }   ALTER TABLE ONLY hero_area_plugin_heroarea
    ADD CONSTRAINT hero_area_plugin_heroarea_pkey PRIMARY KEY (cmsplugin_ptr_id);
 b   ALTER TABLE ONLY public.hero_area_plugin_heroarea DROP CONSTRAINT hero_area_plugin_heroarea_pkey;
       public         postgres    false    273    273            �
           2606    89749 "   menus_cachekey menus_cachekey_pkey 
   CONSTRAINT     Y   ALTER TABLE ONLY menus_cachekey
    ADD CONSTRAINT menus_cachekey_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.menus_cachekey DROP CONSTRAINT menus_cachekey_pkey;
       public         postgres    false    270    270            �
           2606    89827 6   overview_plugin_overview overview_plugin_overview_pkey 
   CONSTRAINT     {   ALTER TABLE ONLY overview_plugin_overview
    ADD CONSTRAINT overview_plugin_overview_pkey PRIMARY KEY (cmsplugin_ptr_id);
 `   ALTER TABLE ONLY public.overview_plugin_overview DROP CONSTRAINT overview_plugin_overview_pkey;
       public         postgres    false    274    274            �
           2606    89838 >   overview_plugin_overviewitem overview_plugin_overviewitem_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY overview_plugin_overviewitem
    ADD CONSTRAINT overview_plugin_overviewitem_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.overview_plugin_overviewitem DROP CONSTRAINT overview_plugin_overviewitem_pkey;
       public         postgres    false    276    276            �
           2606    90005 6   portfolio_app_mediaasset portfolio_app_mediaasset_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY portfolio_app_mediaasset
    ADD CONSTRAINT portfolio_app_mediaasset_pkey PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.portfolio_app_mediaasset DROP CONSTRAINT portfolio_app_mediaasset_pkey;
       public         postgres    false    283    283            �
           2606    90027 0   portfolio_app_project portfolio_app_project_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY portfolio_app_project
    ADD CONSTRAINT portfolio_app_project_pkey PRIMARY KEY (cmsplugin_ptr_id);
 Z   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_project_pkey;
       public         postgres    false    284    284            �
           2606    90040 :   portfolio_app_project_tags portfolio_app_project_tags_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_project_tags_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_project_tags_pkey;
       public         postgres    false    287    287            �
           2606    90073 U   portfolio_app_project_tags portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq UNIQUE (project_id, tag_id);
    ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_project_tags_project_id_tag_id_5d19a931_uniq;
       public         postgres    false    287    287    287            �
           2606    90032 (   portfolio_app_tag portfolio_app_tag_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY portfolio_app_tag
    ADD CONSTRAINT portfolio_app_tag_pkey PRIMARY KEY (cmsplugin_ptr_id);
 R   ALTER TABLE ONLY public.portfolio_app_tag DROP CONSTRAINT portfolio_app_tag_pkey;
       public         postgres    false    285    285            �
           2606    90124 >   profile_plugin_milestoneitem profile_plugin_milestoneitem_pkey 
   CONSTRAINT     u   ALTER TABLE ONLY profile_plugin_milestoneitem
    ADD CONSTRAINT profile_plugin_milestoneitem_pkey PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.profile_plugin_milestoneitem DROP CONSTRAINT profile_plugin_milestoneitem_pkey;
       public         postgres    false    289    289            �
           2606    90132 2   profile_plugin_profile profile_plugin_profile_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY profile_plugin_profile
    ADD CONSTRAINT profile_plugin_profile_pkey PRIMARY KEY (cmsplugin_ptr_id);
 \   ALTER TABLE ONLY public.profile_plugin_profile DROP CONSTRAINT profile_plugin_profile_pkey;
       public         postgres    false    290    290            �
           2606    89860 B   testimonial_plugin_testimonial testimonial_plugin_testimonial_pkey 
   CONSTRAINT     y   ALTER TABLE ONLY testimonial_plugin_testimonial
    ADD CONSTRAINT testimonial_plugin_testimonial_pkey PRIMARY KEY (id);
 l   ALTER TABLE ONLY public.testimonial_plugin_testimonial DROP CONSTRAINT testimonial_plugin_testimonial_pkey;
       public         postgres    false    278    278            �
           2606    89865 N   testimonial_plugin_testimonialplugin testimonial_plugin_testimonialplugin_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY testimonial_plugin_testimonialplugin
    ADD CONSTRAINT testimonial_plugin_testimonialplugin_pkey PRIMARY KEY (cmsplugin_ptr_id);
 x   ALTER TABLE ONLY public.testimonial_plugin_testimonialplugin DROP CONSTRAINT testimonial_plugin_testimonialplugin_pkey;
       public         postgres    false    279    279            �	           1259    88120    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    192            �	           1259    88133 (   auth_group_permissions_group_id_b120cbf9    INDEX     h   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    194            �	           1259    88134 -   auth_group_permissions_permission_id_84c5c92e    INDEX     r   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    194            �	           1259    88119 (   auth_permission_content_type_id_2f476e4b    INDEX     h   CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    190            �	           1259    88149 "   auth_user_groups_group_id_97559544    INDEX     \   CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    198            �	           1259    88148 !   auth_user_groups_user_id_6a12ed8b    INDEX     Z   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    198            �	           1259    88163 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     z   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    200            �	           1259    88162 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     n   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    200            �	           1259    88190     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    196            �	           1259    88488 2   cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a    INDEX     |   CREATE INDEX cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a ON cms_aliaspluginmodel USING btree (alias_placeholder_id);
 F   DROP INDEX public.cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a;
       public         postgres    false    207            �	           1259    88285 '   cms_aliaspluginmodel_plugin_id_9867676e    INDEX     f   CREATE INDEX cms_aliaspluginmodel_plugin_id_9867676e ON cms_aliaspluginmodel USING btree (plugin_id);
 ;   DROP INDEX public.cms_aliaspluginmodel_plugin_id_9867676e;
       public         postgres    false    207            �	           1259    88267    cms_cmsplugin_language_bbea8a48    INDEX     V   CREATE INDEX cms_cmsplugin_language_bbea8a48 ON cms_cmsplugin USING btree (language);
 3   DROP INDEX public.cms_cmsplugin_language_bbea8a48;
       public         postgres    false    206            �	           1259    88268 $   cms_cmsplugin_language_bbea8a48_like    INDEX     o   CREATE INDEX cms_cmsplugin_language_bbea8a48_like ON cms_cmsplugin USING btree (language varchar_pattern_ops);
 8   DROP INDEX public.cms_cmsplugin_language_bbea8a48_like;
       public         postgres    false    206            �	           1259    88286     cms_cmsplugin_parent_id_fd3bd9dd    INDEX     X   CREATE INDEX cms_cmsplugin_parent_id_fd3bd9dd ON cms_cmsplugin USING btree (parent_id);
 4   DROP INDEX public.cms_cmsplugin_parent_id_fd3bd9dd;
       public         postgres    false    206            �	           1259    88697     cms_cmsplugin_path_4917bb44_like    INDEX     g   CREATE INDEX cms_cmsplugin_path_4917bb44_like ON cms_cmsplugin USING btree (path varchar_pattern_ops);
 4   DROP INDEX public.cms_cmsplugin_path_4917bb44_like;
       public         postgres    false    206            �	           1259    88482 %   cms_cmsplugin_placeholder_id_0bfa3b26    INDEX     b   CREATE INDEX cms_cmsplugin_placeholder_id_0bfa3b26 ON cms_cmsplugin USING btree (placeholder_id);
 9   DROP INDEX public.cms_cmsplugin_placeholder_id_0bfa3b26;
       public         postgres    false    206            �	           1259    88269 "   cms_cmsplugin_plugin_type_94e96ebf    INDEX     \   CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf ON cms_cmsplugin USING btree (plugin_type);
 6   DROP INDEX public.cms_cmsplugin_plugin_type_94e96ebf;
       public         postgres    false    206            �	           1259    88270 '   cms_cmsplugin_plugin_type_94e96ebf_like    INDEX     u   CREATE INDEX cms_cmsplugin_plugin_type_94e96ebf_like ON cms_cmsplugin USING btree (plugin_type varchar_pattern_ops);
 ;   DROP INDEX public.cms_cmsplugin_plugin_type_94e96ebf_like;
       public         postgres    false    206            �	           1259    88302 *   cms_globalpagepermission_group_id_991b4733    INDEX     l   CREATE INDEX cms_globalpagepermission_group_id_991b4733 ON cms_globalpagepermission USING btree (group_id);
 >   DROP INDEX public.cms_globalpagepermission_group_id_991b4733;
       public         postgres    false    209            �	           1259    88316 ?   cms_globalpagepermission_sites_globalpagepermission_id_46bd2681    INDEX     �   CREATE INDEX cms_globalpagepermission_sites_globalpagepermission_id_46bd2681 ON cms_globalpagepermission_sites USING btree (globalpagepermission_id);
 S   DROP INDEX public.cms_globalpagepermission_sites_globalpagepermission_id_46bd2681;
       public         postgres    false    211            �	           1259    88317 /   cms_globalpagepermission_sites_site_id_00460b53    INDEX     v   CREATE INDEX cms_globalpagepermission_sites_site_id_00460b53 ON cms_globalpagepermission_sites USING btree (site_id);
 C   DROP INDEX public.cms_globalpagepermission_sites_site_id_00460b53;
       public         postgres    false    211            �	           1259    88303 )   cms_globalpagepermission_user_id_a227cee1    INDEX     j   CREATE INDEX cms_globalpagepermission_user_id_a227cee1 ON cms_globalpagepermission USING btree (user_id);
 =   DROP INDEX public.cms_globalpagepermission_user_id_a227cee1;
       public         postgres    false    209            �	           1259    88343 "   cms_page_application_urls_9ef47497    INDEX     \   CREATE INDEX cms_page_application_urls_9ef47497 ON cms_page USING btree (application_urls);
 6   DROP INDEX public.cms_page_application_urls_9ef47497;
       public         postgres    false    213            �	           1259    88344 '   cms_page_application_urls_9ef47497_like    INDEX     u   CREATE INDEX cms_page_application_urls_9ef47497_like ON cms_page USING btree (application_urls varchar_pattern_ops);
 ;   DROP INDEX public.cms_page_application_urls_9ef47497_like;
       public         postgres    false    213            �	           1259    88335    cms_page_in_navigation_01c24279    INDEX     V   CREATE INDEX cms_page_in_navigation_01c24279 ON cms_page USING btree (in_navigation);
 3   DROP INDEX public.cms_page_in_navigation_01c24279;
       public         postgres    false    213            �	           1259    88342    cms_page_is_home_edadca07    INDEX     J   CREATE INDEX cms_page_is_home_edadca07 ON cms_page USING btree (is_home);
 -   DROP INDEX public.cms_page_is_home_edadca07;
       public         postgres    false    213            �	           1259    88341 *   cms_page_limit_visibility_in_menu_30db6aa6    INDEX     l   CREATE INDEX cms_page_limit_visibility_in_menu_30db6aa6 ON cms_page USING btree (limit_visibility_in_menu);
 >   DROP INDEX public.cms_page_limit_visibility_in_menu_30db6aa6;
       public         postgres    false    213            �	           1259    88339 &   cms_page_navigation_extenders_c24af8dd    INDEX     d   CREATE INDEX cms_page_navigation_extenders_c24af8dd ON cms_page USING btree (navigation_extenders);
 :   DROP INDEX public.cms_page_navigation_extenders_c24af8dd;
       public         postgres    false    213            �	           1259    88340 +   cms_page_navigation_extenders_c24af8dd_like    INDEX     }   CREATE INDEX cms_page_navigation_extenders_c24af8dd_like ON cms_page USING btree (navigation_extenders varchar_pattern_ops);
 ?   DROP INDEX public.cms_page_navigation_extenders_c24af8dd_like;
       public         postgres    false    213            �	           1259    88792    cms_page_node_id_c87b85a9    INDEX     J   CREATE INDEX cms_page_node_id_c87b85a9 ON cms_page USING btree (node_id);
 -   DROP INDEX public.cms_page_node_id_c87b85a9;
       public         postgres    false    213            �	           1259    88480 &   cms_page_placeholders_page_id_f2ce8dec    INDEX     d   CREATE INDEX cms_page_placeholders_page_id_f2ce8dec ON cms_page_placeholders USING btree (page_id);
 :   DROP INDEX public.cms_page_placeholders_page_id_f2ce8dec;
       public         postgres    false    221            �	           1259    88481 -   cms_page_placeholders_placeholder_id_6b120886    INDEX     r   CREATE INDEX cms_page_placeholders_placeholder_id_6b120886 ON cms_page_placeholders USING btree (placeholder_id);
 A   DROP INDEX public.cms_page_placeholders_placeholder_id_6b120886;
       public         postgres    false    221            �	           1259    88333 "   cms_page_publication_date_684fabf7    INDEX     \   CREATE INDEX cms_page_publication_date_684fabf7 ON cms_page USING btree (publication_date);
 6   DROP INDEX public.cms_page_publication_date_684fabf7;
       public         postgres    false    213            �	           1259    88334 &   cms_page_publication_end_date_12a0c46a    INDEX     d   CREATE INDEX cms_page_publication_end_date_12a0c46a ON cms_page USING btree (publication_end_date);
 :   DROP INDEX public.cms_page_publication_end_date_12a0c46a;
       public         postgres    false    213            �	           1259    88349 $   cms_page_publisher_is_draft_141cba60    INDEX     `   CREATE INDEX cms_page_publisher_is_draft_141cba60 ON cms_page USING btree (publisher_is_draft);
 8   DROP INDEX public.cms_page_publisher_is_draft_141cba60;
       public         postgres    false    213            �	           1259    88337    cms_page_reverse_id_ffc9ede2    INDEX     P   CREATE INDEX cms_page_reverse_id_ffc9ede2 ON cms_page USING btree (reverse_id);
 0   DROP INDEX public.cms_page_reverse_id_ffc9ede2;
       public         postgres    false    213            �	           1259    88338 !   cms_page_reverse_id_ffc9ede2_like    INDEX     i   CREATE INDEX cms_page_reverse_id_ffc9ede2_like ON cms_page USING btree (reverse_id varchar_pattern_ops);
 5   DROP INDEX public.cms_page_reverse_id_ffc9ede2_like;
       public         postgres    false    213            �	           1259    88336    cms_page_soft_root_51efccbe    INDEX     N   CREATE INDEX cms_page_soft_root_51efccbe ON cms_page USING btree (soft_root);
 /   DROP INDEX public.cms_page_soft_root_51efccbe;
       public         postgres    false    213            �	           1259    88367 $   cms_pagepermission_group_id_af5af193    INDEX     `   CREATE INDEX cms_pagepermission_group_id_af5af193 ON cms_pagepermission USING btree (group_id);
 8   DROP INDEX public.cms_pagepermission_group_id_af5af193;
       public         postgres    false    215            �	           1259    88368 #   cms_pagepermission_page_id_0ae9a163    INDEX     ^   CREATE INDEX cms_pagepermission_page_id_0ae9a163 ON cms_pagepermission USING btree (page_id);
 7   DROP INDEX public.cms_pagepermission_page_id_0ae9a163;
       public         postgres    false    215            �	           1259    88369 #   cms_pagepermission_user_id_0c7d2b3c    INDEX     ^   CREATE INDEX cms_pagepermission_user_id_0c7d2b3c ON cms_pagepermission USING btree (user_id);
 7   DROP INDEX public.cms_pagepermission_user_id_0c7d2b3c;
       public         postgres    false    215            �	           1259    88454 #   cms_pageuser_created_by_id_8e9fbf83    INDEX     ^   CREATE INDEX cms_pageuser_created_by_id_8e9fbf83 ON cms_pageuser USING btree (created_by_id);
 7   DROP INDEX public.cms_pageuser_created_by_id_8e9fbf83;
       public         postgres    false    216            �	           1259    88465 (   cms_pageusergroup_created_by_id_7d57fa39    INDEX     h   CREATE INDEX cms_pageusergroup_created_by_id_7d57fa39 ON cms_pageusergroup USING btree (created_by_id);
 <   DROP INDEX public.cms_pageusergroup_created_by_id_7d57fa39;
       public         postgres    false    217            �	           1259    88555    cms_placeholder_slot_0bc04d21    INDEX     R   CREATE INDEX cms_placeholder_slot_0bc04d21 ON cms_placeholder USING btree (slot);
 1   DROP INDEX public.cms_placeholder_slot_0bc04d21;
       public         postgres    false    219            �	           1259    88554 "   cms_placeholder_slot_0bc04d21_like    INDEX     k   CREATE INDEX cms_placeholder_slot_0bc04d21_like ON cms_placeholder USING btree (slot varchar_pattern_ops);
 6   DROP INDEX public.cms_placeholder_slot_0bc04d21_like;
       public         postgres    false    219            �	           1259    88504 4   cms_placeholderreference_placeholder_ref_id_244759b1    INDEX     �   CREATE INDEX cms_placeholderreference_placeholder_ref_id_244759b1 ON cms_placeholderreference USING btree (placeholder_ref_id);
 H   DROP INDEX public.cms_placeholderreference_placeholder_ref_id_244759b1;
       public         postgres    false    222            �	           1259    88520 '   cms_staticplaceholder_draft_id_5aee407b    INDEX     f   CREATE INDEX cms_staticplaceholder_draft_id_5aee407b ON cms_staticplaceholder USING btree (draft_id);
 ;   DROP INDEX public.cms_staticplaceholder_draft_id_5aee407b;
       public         postgres    false    224             
           1259    88521 (   cms_staticplaceholder_public_id_876aaa66    INDEX     h   CREATE INDEX cms_staticplaceholder_public_id_876aaa66 ON cms_staticplaceholder USING btree (public_id);
 <   DROP INDEX public.cms_staticplaceholder_public_id_876aaa66;
       public         postgres    false    224            
           1259    88522 &   cms_staticplaceholder_site_id_dc6a85b6    INDEX     d   CREATE INDEX cms_staticplaceholder_site_id_dc6a85b6 ON cms_staticplaceholder USING btree (site_id);
 :   DROP INDEX public.cms_staticplaceholder_site_id_dc6a85b6;
       public         postgres    false    224            
           1259    88539 $   cms_title_has_url_overwrite_ecf27bb9    INDEX     `   CREATE INDEX cms_title_has_url_overwrite_ecf27bb9 ON cms_title USING btree (has_url_overwrite);
 8   DROP INDEX public.cms_title_has_url_overwrite_ecf27bb9;
       public         postgres    false    226            
           1259    88533    cms_title_language_50a0dfa1    INDEX     N   CREATE INDEX cms_title_language_50a0dfa1 ON cms_title USING btree (language);
 /   DROP INDEX public.cms_title_language_50a0dfa1;
       public         postgres    false    226            
           1259    88534     cms_title_language_50a0dfa1_like    INDEX     g   CREATE INDEX cms_title_language_50a0dfa1_like ON cms_title USING btree (language varchar_pattern_ops);
 4   DROP INDEX public.cms_title_language_50a0dfa1_like;
       public         postgres    false    226            
           1259    88542    cms_title_page_id_5fade2a3    INDEX     L   CREATE INDEX cms_title_page_id_5fade2a3 ON cms_title USING btree (page_id);
 .   DROP INDEX public.cms_title_page_id_5fade2a3;
       public         postgres    false    226            
           1259    88537    cms_title_path_c484314c    INDEX     F   CREATE INDEX cms_title_path_c484314c ON cms_title USING btree (path);
 +   DROP INDEX public.cms_title_path_c484314c;
       public         postgres    false    226            	
           1259    88538    cms_title_path_c484314c_like    INDEX     _   CREATE INDEX cms_title_path_c484314c_like ON cms_title USING btree (path varchar_pattern_ops);
 0   DROP INDEX public.cms_title_path_c484314c_like;
       public         postgres    false    226            
           1259    88540 %   cms_title_publisher_is_draft_95874c88    INDEX     b   CREATE INDEX cms_title_publisher_is_draft_95874c88 ON cms_title USING btree (publisher_is_draft);
 9   DROP INDEX public.cms_title_publisher_is_draft_95874c88;
       public         postgres    false    226            
           1259    88541 "   cms_title_publisher_state_9a952b0f    INDEX     \   CREATE INDEX cms_title_publisher_state_9a952b0f ON cms_title USING btree (publisher_state);
 6   DROP INDEX public.cms_title_publisher_state_9a952b0f;
       public         postgres    false    226            
           1259    88535    cms_title_slug_4947d146    INDEX     F   CREATE INDEX cms_title_slug_4947d146 ON cms_title USING btree (slug);
 +   DROP INDEX public.cms_title_slug_4947d146;
       public         postgres    false    226            
           1259    88536    cms_title_slug_4947d146_like    INDEX     _   CREATE INDEX cms_title_slug_4947d146_like ON cms_title USING btree (slug varchar_pattern_ops);
 0   DROP INDEX public.cms_title_slug_4947d146_like;
       public         postgres    false    226            
           1259    88790    cms_treenode_parent_id_59bb02c4    INDEX     V   CREATE INDEX cms_treenode_parent_id_59bb02c4 ON cms_treenode USING btree (parent_id);
 3   DROP INDEX public.cms_treenode_parent_id_59bb02c4;
       public         postgres    false    232            
           1259    88789    cms_treenode_path_6eb22885_like    INDEX     e   CREATE INDEX cms_treenode_path_6eb22885_like ON cms_treenode USING btree (path varchar_pattern_ops);
 3   DROP INDEX public.cms_treenode_path_6eb22885_like;
       public         postgres    false    232            
           1259    88791    cms_treenode_site_id_d3f46985    INDEX     R   CREATE INDEX cms_treenode_site_id_d3f46985 ON cms_treenode USING btree (site_id);
 1   DROP INDEX public.cms_treenode_site_id_d3f46985;
       public         postgres    false    232            
           1259    88553 &   cms_usersettings_clipboard_id_3ae17c19    INDEX     d   CREATE INDEX cms_usersettings_clipboard_id_3ae17c19 ON cms_usersettings USING btree (clipboard_id);
 :   DROP INDEX public.cms_usersettings_clipboard_id_3ae17c19;
       public         postgres    false    228            �	           1259    88186 )   django_admin_log_content_type_id_c4bce8eb    INDEX     j   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    202            �	           1259    88187 !   django_admin_log_user_id_c564eba6    INDEX     Z   CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    202            �
           1259    89759 #   django_session_expire_date_a5c62663    INDEX     ^   CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    271            �
           1259    89758 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    271            �	           1259    89762     django_site_domain_a2e37b91_like    INDEX     g   CREATE INDEX django_site_domain_a2e37b91_like ON django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public         postgres    false    204            C
           1259    89025 (   djangocms_file_file_file_src_id_74ac14a5    INDEX     h   CREATE INDEX djangocms_file_file_file_src_id_74ac14a5 ON djangocms_file_file USING btree (file_src_id);
 <   DROP INDEX public.djangocms_file_file_file_src_id_74ac14a5;
       public         postgres    false    248            F
           1259    89081 ,   djangocms_file_folder_folder_src_id_9558406a    INDEX     p   CREATE INDEX djangocms_file_folder_folder_src_id_9558406a ON djangocms_file_folder USING btree (folder_src_id);
 @   DROP INDEX public.djangocms_file_folder_folder_src_id_9558406a;
       public         postgres    false    249            K
           1259    89199 4   djangocms_googlemap_googlemapmarker_icon_id_3b103213    INDEX     �   CREATE INDEX djangocms_googlemap_googlemapmarker_icon_id_3b103213 ON djangocms_googlemap_googlemapmarker USING btree (icon_id);
 H   DROP INDEX public.djangocms_googlemap_googlemapmarker_icon_id_3b103213;
       public         postgres    false    251            P
           1259    89223 )   djangocms_link_link_page_link_id_adba1bc7    INDEX     n   CREATE INDEX djangocms_link_link_page_link_id_adba1bc7 ON djangocms_link_link USING btree (internal_link_id);
 =   DROP INDEX public.djangocms_link_link_page_link_id_adba1bc7;
       public         postgres    false    253            S
           1259    89300 /   djangocms_picture_picture_page_link_id_d5c782e0    INDEX     v   CREATE INDEX djangocms_picture_picture_page_link_id_d5c782e0 ON djangocms_picture_picture USING btree (link_page_id);
 C   DROP INDEX public.djangocms_picture_picture_page_link_id_d5c782e0;
       public         postgres    false    254            T
           1259    89306 -   djangocms_picture_picture_picture_id_f7d6711b    INDEX     r   CREATE INDEX djangocms_picture_picture_picture_id_f7d6711b ON djangocms_picture_picture USING btree (picture_id);
 A   DROP INDEX public.djangocms_picture_picture_picture_id_f7d6711b;
       public         postgres    false    254            W
           1259    89434 7   djangocms_picture_picture_thumbnail_options_id_59cf80d1    INDEX     �   CREATE INDEX djangocms_picture_picture_thumbnail_options_id_59cf80d1 ON djangocms_picture_picture USING btree (thumbnail_options_id);
 K   DROP INDEX public.djangocms_picture_picture_thumbnail_options_id_59cf80d1;
       public         postgres    false    254            X
           1259    89460 ,   djangocms_snippet_snippet_name_260f397b_like    INDEX        CREATE INDEX djangocms_snippet_snippet_name_260f397b_like ON djangocms_snippet_snippet USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.djangocms_snippet_snippet_name_260f397b_like;
       public         postgres    false    256            ]
           1259    89494 ,   djangocms_snippet_snippet_slug_bd43cd96_like    INDEX        CREATE INDEX djangocms_snippet_snippet_slug_bd43cd96_like ON djangocms_snippet_snippet USING btree (slug varchar_pattern_ops);
 @   DROP INDEX public.djangocms_snippet_snippet_slug_bd43cd96_like;
       public         postgres    false    256            b
           1259    89471 0   djangocms_snippet_snippetptr_snippet_id_56b99614    INDEX     x   CREATE INDEX djangocms_snippet_snippetptr_snippet_id_56b99614 ON djangocms_snippet_snippetptr USING btree (snippet_id);
 D   DROP INDEX public.djangocms_snippet_snippetptr_snippet_id_56b99614;
       public         postgres    false    257            i
           1259    89624 .   djangocms_video_videoplayer_poster_id_07790e24    INDEX     t   CREATE INDEX djangocms_video_videoplayer_poster_id_07790e24 ON djangocms_video_videoplayer USING btree (poster_id);
 B   DROP INDEX public.djangocms_video_videoplayer_poster_id_07790e24;
       public         postgres    false    260            l
           1259    89674 3   djangocms_video_videosource_source_file_id_16f11167    INDEX     ~   CREATE INDEX djangocms_video_videosource_source_file_id_16f11167 ON djangocms_video_videosource USING btree (source_file_id);
 G   DROP INDEX public.djangocms_video_videosource_source_file_id_16f11167;
       public         postgres    false    261            o
           1259    89685 *   djangocms_video_videotrack_src_id_e5a015d8    INDEX     l   CREATE INDEX djangocms_video_videotrack_src_id_e5a015d8 ON djangocms_video_videotrack USING btree (src_id);
 >   DROP INDEX public.djangocms_video_videotrack_src_id_e5a015d8;
       public         postgres    false    262            p
           1259    89709 $   easy_thumbnails_source_name_5fe0edc6    INDEX     `   CREATE INDEX easy_thumbnails_source_name_5fe0edc6 ON easy_thumbnails_source USING btree (name);
 8   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6;
       public         postgres    false    264            q
           1259    89710 )   easy_thumbnails_source_name_5fe0edc6_like    INDEX     y   CREATE INDEX easy_thumbnails_source_name_5fe0edc6_like ON easy_thumbnails_source USING btree (name varchar_pattern_ops);
 =   DROP INDEX public.easy_thumbnails_source_name_5fe0edc6_like;
       public         postgres    false    264            t
           1259    89707 ,   easy_thumbnails_source_storage_hash_946cbcc9    INDEX     p   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9 ON easy_thumbnails_source USING btree (storage_hash);
 @   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9;
       public         postgres    false    264            u
           1259    89708 1   easy_thumbnails_source_storage_hash_946cbcc9_like    INDEX     �   CREATE INDEX easy_thumbnails_source_storage_hash_946cbcc9_like ON easy_thumbnails_source USING btree (storage_hash varchar_pattern_ops);
 E   DROP INDEX public.easy_thumbnails_source_storage_hash_946cbcc9_like;
       public         postgres    false    264            z
           1259    89718 '   easy_thumbnails_thumbnail_name_b5882c31    INDEX     f   CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31 ON easy_thumbnails_thumbnail USING btree (name);
 ;   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31;
       public         postgres    false    266            {
           1259    89719 ,   easy_thumbnails_thumbnail_name_b5882c31_like    INDEX        CREATE INDEX easy_thumbnails_thumbnail_name_b5882c31_like ON easy_thumbnails_thumbnail USING btree (name varchar_pattern_ops);
 @   DROP INDEX public.easy_thumbnails_thumbnail_name_b5882c31_like;
       public         postgres    false    266            ~
           1259    89720 ,   easy_thumbnails_thumbnail_source_id_5b57bc77    INDEX     p   CREATE INDEX easy_thumbnails_thumbnail_source_id_5b57bc77 ON easy_thumbnails_thumbnail USING btree (source_id);
 @   DROP INDEX public.easy_thumbnails_thumbnail_source_id_5b57bc77;
       public         postgres    false    266            
           1259    89716 /   easy_thumbnails_thumbnail_storage_hash_f1435f49    INDEX     v   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49 ON easy_thumbnails_thumbnail USING btree (storage_hash);
 C   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49;
       public         postgres    false    266            �
           1259    89717 4   easy_thumbnails_thumbnail_storage_hash_f1435f49_like    INDEX     �   CREATE INDEX easy_thumbnails_thumbnail_storage_hash_f1435f49_like ON easy_thumbnails_thumbnail USING btree (storage_hash varchar_pattern_ops);
 H   DROP INDEX public.easy_thumbnails_thumbnail_storage_hash_f1435f49_like;
       public         postgres    false    266            &
           1259    88949     filer_clipboard_user_id_b52ff0bc    INDEX     X   CREATE INDEX filer_clipboard_user_id_b52ff0bc ON filer_clipboard USING btree (user_id);
 4   DROP INDEX public.filer_clipboard_user_id_b52ff0bc;
       public         postgres    false    236            '
           1259    88890 )   filer_clipboarditem_clipboard_id_7a76518b    INDEX     j   CREATE INDEX filer_clipboarditem_clipboard_id_7a76518b ON filer_clipboarditem USING btree (clipboard_id);
 =   DROP INDEX public.filer_clipboarditem_clipboard_id_7a76518b;
       public         postgres    false    238            (
           1259    88943 $   filer_clipboarditem_file_id_06196f80    INDEX     `   CREATE INDEX filer_clipboarditem_file_id_06196f80 ON filer_clipboarditem USING btree (file_id);
 8   DROP INDEX public.filer_clipboarditem_file_id_06196f80;
       public         postgres    false    238            +
           1259    88925    filer_file_folder_id_af803bbb    INDEX     R   CREATE INDEX filer_file_folder_id_af803bbb ON filer_file USING btree (folder_id);
 1   DROP INDEX public.filer_file_folder_id_af803bbb;
       public         postgres    false    240            ,
           1259    88931    filer_file_owner_id_b9e32671    INDEX     P   CREATE INDEX filer_file_owner_id_b9e32671 ON filer_file USING btree (owner_id);
 0   DROP INDEX public.filer_file_owner_id_b9e32671;
       public         postgres    false    240            /
           1259    88937 (   filer_file_polymorphic_ctype_id_f44903c1    INDEX     h   CREATE INDEX filer_file_polymorphic_ctype_id_f44903c1 ON filer_file USING btree (polymorphic_ctype_id);
 <   DROP INDEX public.filer_file_polymorphic_ctype_id_f44903c1;
       public         postgres    false    240            0
           1259    88904    filer_folder_level_b631d28a    INDEX     N   CREATE INDEX filer_folder_level_b631d28a ON filer_folder USING btree (level);
 /   DROP INDEX public.filer_folder_level_b631d28a;
       public         postgres    false    242            1
           1259    88901    filer_folder_lft_2c2b69f1    INDEX     J   CREATE INDEX filer_folder_lft_2c2b69f1 ON filer_folder USING btree (lft);
 -   DROP INDEX public.filer_folder_lft_2c2b69f1;
       public         postgres    false    242            2
           1259    88905    filer_folder_owner_id_be530fb4    INDEX     T   CREATE INDEX filer_folder_owner_id_be530fb4 ON filer_folder USING btree (owner_id);
 2   DROP INDEX public.filer_folder_owner_id_be530fb4;
       public         postgres    false    242            3
           1259    88906    filer_folder_parent_id_308aecda    INDEX     V   CREATE INDEX filer_folder_parent_id_308aecda ON filer_folder USING btree (parent_id);
 3   DROP INDEX public.filer_folder_parent_id_308aecda;
       public         postgres    false    242            8
           1259    88902    filer_folder_rght_34946267    INDEX     L   CREATE INDEX filer_folder_rght_34946267 ON filer_folder USING btree (rght);
 .   DROP INDEX public.filer_folder_rght_34946267;
       public         postgres    false    242            9
           1259    88903    filer_folder_tree_id_b016223c    INDEX     R   CREATE INDEX filer_folder_tree_id_b016223c ON filer_folder USING btree (tree_id);
 1   DROP INDEX public.filer_folder_tree_id_b016223c;
       public         postgres    false    242            :
           1259    88922 )   filer_folderpermission_folder_id_5d02f1da    INDEX     j   CREATE INDEX filer_folderpermission_folder_id_5d02f1da ON filer_folderpermission USING btree (folder_id);
 =   DROP INDEX public.filer_folderpermission_folder_id_5d02f1da;
       public         postgres    false    244            ;
           1259    88923 (   filer_folderpermission_group_id_8901bafa    INDEX     h   CREATE INDEX filer_folderpermission_group_id_8901bafa ON filer_folderpermission USING btree (group_id);
 <   DROP INDEX public.filer_folderpermission_group_id_8901bafa;
       public         postgres    false    244            >
           1259    88924 '   filer_folderpermission_user_id_7673d4b6    INDEX     f   CREATE INDEX filer_folderpermission_user_id_7673d4b6 ON filer_folderpermission USING btree (user_id);
 ;   DROP INDEX public.filer_folderpermission_user_id_7673d4b6;
       public         postgres    false    244            �
           1259    89849 4   overview_plugin_overviewitem_overview_id_id_928fc1c7    INDEX     �   CREATE INDEX overview_plugin_overviewitem_overview_id_id_928fc1c7 ON overview_plugin_overviewitem USING btree (overview_id_id);
 H   DROP INDEX public.overview_plugin_overviewitem_overview_id_id_928fc1c7;
       public         postgres    false    276            �
           1259    90076 /   portfolio_app_mediaasset_project_id_id_2bd68af0    INDEX     v   CREATE INDEX portfolio_app_mediaasset_project_id_id_2bd68af0 ON portfolio_app_mediaasset USING btree (project_id_id);
 C   DROP INDEX public.portfolio_app_mediaasset_project_id_id_2bd68af0;
       public         postgres    false    283            �
           1259    90054 #   portfolio_app_project_slug_c7455a3e    INDEX     ^   CREATE INDEX portfolio_app_project_slug_c7455a3e ON portfolio_app_project USING btree (slug);
 7   DROP INDEX public.portfolio_app_project_slug_c7455a3e;
       public         postgres    false    284            �
           1259    90055 (   portfolio_app_project_slug_c7455a3e_like    INDEX     w   CREATE INDEX portfolio_app_project_slug_c7455a3e_like ON portfolio_app_project USING btree (slug varchar_pattern_ops);
 <   DROP INDEX public.portfolio_app_project_slug_c7455a3e_like;
       public         postgres    false    284            �
           1259    90074 .   portfolio_app_project_tags_project_id_74c3a22f    INDEX     t   CREATE INDEX portfolio_app_project_tags_project_id_74c3a22f ON portfolio_app_project_tags USING btree (project_id);
 B   DROP INDEX public.portfolio_app_project_tags_project_id_74c3a22f;
       public         postgres    false    287            �
           1259    90075 *   portfolio_app_project_tags_tag_id_023e820f    INDEX     l   CREATE INDEX portfolio_app_project_tags_tag_id_023e820f ON portfolio_app_project_tags USING btree (tag_id);
 >   DROP INDEX public.portfolio_app_project_tags_tag_id_023e820f;
       public         postgres    false    287            �
           1259    90138 3   profile_plugin_milestoneitem_profile_id_id_31cc7d00    INDEX     ~   CREATE INDEX profile_plugin_milestoneitem_profile_id_id_31cc7d00 ON profile_plugin_milestoneitem USING btree (profile_id_id);
 G   DROP INDEX public.profile_plugin_milestoneitem_profile_id_id_31cc7d00;
       public         postgres    false    289            �
           1259    89871 <   testimonial_plugin_testimo_testimonial_plugin_id_id_4364514e    INDEX     �   CREATE INDEX testimonial_plugin_testimo_testimonial_plugin_id_id_4364514e ON testimonial_plugin_testimonial USING btree (testimonial_plugin_id_id);
 P   DROP INDEX public.testimonial_plugin_testimo_testimonial_plugin_id_id_4364514e;
       public         postgres    false    278                       2606    89779 L   aldryn_style_style aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY aldryn_style_style
    ADD CONSTRAINT aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.aldryn_style_style DROP CONSTRAINT aldryn_style_style_cmsplugin_ptr_id_b8d337d7_fk_cms_cmspl;
       public       postgres    false    206    2493    272            �
           2606    88126 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    190    194    2448            �
           2606    88121 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    192    194    2453            �
           2606    88112 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    188    190    2443            �
           2606    88141 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    192    198    2453            �
           2606    88136 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    196    198    2461            �
           2606    88155 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    190    200    2448            �
           2606    88150 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    196    200    2461            �
           2606    88489 T   cms_aliaspluginmodel cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place FOREIGN KEY (alias_placeholder_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_alias_placeholder_id_6d6e0c8a_fk_cms_place;
       public       postgres    false    2543    207    219            �
           2606    88727 P   cms_aliaspluginmodel cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_cmsplugin_ptr_id_f71dfd31_fk_cms_cmspl;
       public       postgres    false    207    2493    206            �
           2606    89606 P   cms_aliaspluginmodel cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_aliaspluginmodel
    ADD CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id FOREIGN KEY (plugin_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.cms_aliaspluginmodel DROP CONSTRAINT cms_aliaspluginmodel_plugin_id_9867676e_fk_cms_cmsplugin_id;
       public       postgres    false    206    207    2493            �
           2606    89601 B   cms_cmsplugin cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id FOREIGN KEY (parent_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_parent_id_fd3bd9dd_fk_cms_cmsplugin_id;
       public       postgres    false    2493    206    206            �
           2606    88483 I   cms_cmsplugin cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_cmsplugin
    ADD CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id FOREIGN KEY (placeholder_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.cms_cmsplugin DROP CONSTRAINT cms_cmsplugin_placeholder_id_0bfa3b26_fk_cms_placeholder_id;
       public       postgres    false    219    2543    206            �
           2606    88708 ^   cms_globalpagepermission_sites cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa    FK CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa FOREIGN KEY (globalpagepermission_id) REFERENCES cms_globalpagepermission(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermis_globalpagepermission_46bd2681_fk_cms_globa;
       public       postgres    false    209    211    2503            �
           2606    88703 Q   cms_globalpagepermission_sites cms_globalpagepermis_site_id_00460b53_fk_django_si    FK CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission_sites
    ADD CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.cms_globalpagepermission_sites DROP CONSTRAINT cms_globalpagepermis_site_id_00460b53_fk_django_si;
       public       postgres    false    204    211    2485            �
           2606    88292 T   cms_globalpagepermission cms_globalpagepermission_group_id_991b4733_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_group_id_991b4733_fk_auth_group_id;
       public       postgres    false    192    209    2453            �
           2606    88297 R   cms_globalpagepermission cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_globalpagepermission
    ADD CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.cms_globalpagepermission DROP CONSTRAINT cms_globalpagepermission_user_id_a227cee1_fk_auth_user_id;
       public       postgres    false    2461    196    209            �
           2606    88793 5   cms_page cms_page_node_id_c87b85a9_fk_cms_treenode_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id FOREIGN KEY (node_id) REFERENCES cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_node_id_c87b85a9_fk_cms_treenode_id;
       public       postgres    false    2590    213    232            �
           2606    88473 O   cms_page_placeholders cms_page_placeholder_placeholder_id_6b120886_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place FOREIGN KEY (placeholder_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholder_placeholder_id_6b120886_fk_cms_place;
       public       postgres    false    221    2543    219            �
           2606    88468 K   cms_page_placeholders cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_page_placeholders
    ADD CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.cms_page_placeholders DROP CONSTRAINT cms_page_placeholders_page_id_f2ce8dec_fk_cms_page_id;
       public       postgres    false    2522    221    213            �
           2606    88323 =   cms_page cms_page_publisher_public_id_d619fca0_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_page
    ADD CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id FOREIGN KEY (publisher_public_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.cms_page DROP CONSTRAINT cms_page_publisher_public_id_d619fca0_fk_cms_page_id;
       public       postgres    false    213    2522    213            �
           2606    88352 H   cms_pagepermission cms_pagepermission_group_id_af5af193_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 r   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_group_id_af5af193_fk_auth_group_id;
       public       postgres    false    192    2453    215            �
           2606    88357 E   cms_pagepermission cms_pagepermission_page_id_0ae9a163_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_page_id_0ae9a163_fk_cms_page_id;
       public       postgres    false    2522    215    213            �
           2606    88362 F   cms_pagepermission cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pagepermission
    ADD CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 p   ALTER TABLE ONLY public.cms_pagepermission DROP CONSTRAINT cms_pagepermission_user_id_0c7d2b3c_fk_auth_user_id;
       public       postgres    false    215    196    2461            �
           2606    88449 @   cms_pageuser cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_created_by_id_8e9fbf83_fk_auth_user_id;
       public       postgres    false    196    2461    216            �
           2606    88444 >   cms_pageuser cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pageuser
    ADD CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id FOREIGN KEY (user_ptr_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.cms_pageuser DROP CONSTRAINT cms_pageuser_user_ptr_id_b3d65592_fk_auth_user_id;
       public       postgres    false    216    2461    196            �
           2606    88460 J   cms_pageusergroup cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id FOREIGN KEY (created_by_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_created_by_id_7d57fa39_fk_auth_user_id;
       public       postgres    false    196    217    2461            �
           2606    88455 J   cms_pageusergroup cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_pageusergroup
    ADD CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id FOREIGN KEY (group_ptr_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.cms_pageusergroup DROP CONSTRAINT cms_pageusergroup_group_ptr_id_34578d93_fk_auth_group_id;
       public       postgres    false    192    217    2453            �
           2606    88732 T   cms_placeholderreference cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderrefer_cmsplugin_ptr_id_6977ec85_fk_cms_cmspl;
       public       postgres    false    2493    222    206            �
           2606    88499 V   cms_placeholderreference cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place    FK CONSTRAINT     �   ALTER TABLE ONLY cms_placeholderreference
    ADD CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place FOREIGN KEY (placeholder_ref_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.cms_placeholderreference DROP CONSTRAINT cms_placeholderrefer_placeholder_ref_id_244759b1_fk_cms_place;
       public       postgres    false    2543    222    219            �
           2606    88505 S   cms_staticplaceholder cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id FOREIGN KEY (draft_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_draft_id_5aee407b_fk_cms_placeholder_id;
       public       postgres    false    2543    219    224            �
           2606    88510 T   cms_staticplaceholder cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id FOREIGN KEY (public_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_public_id_876aaa66_fk_cms_placeholder_id;
       public       postgres    false    224    219    2543            �
           2606    88515 N   cms_staticplaceholder cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_staticplaceholder
    ADD CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.cms_staticplaceholder DROP CONSTRAINT cms_staticplaceholder_site_id_dc6a85b6_fk_django_site_id;
       public       postgres    false    204    2485    224            �
           2606    88523 3   cms_title cms_title_page_id_5fade2a3_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id FOREIGN KEY (page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 ]   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_page_id_5fade2a3_fk_cms_page_id;
       public       postgres    false    226    2522    213            �
           2606    88528 @   cms_title cms_title_publisher_public_id_003a2702_fk_cms_title_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_title
    ADD CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id FOREIGN KEY (publisher_public_id) REFERENCES cms_title(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.cms_title DROP CONSTRAINT cms_title_publisher_public_id_003a2702_fk_cms_title_id;
       public       postgres    false    2571    226    226            �
           2606    88779 ?   cms_treenode cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_treenode
    ADD CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id FOREIGN KEY (parent_id) REFERENCES cms_treenode(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_parent_id_59bb02c4_fk_cms_treenode_id;
       public       postgres    false    232    232    2590            �
           2606    88784 <   cms_treenode cms_treenode_site_id_d3f46985_fk_django_site_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_treenode
    ADD CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;
 f   ALTER TABLE ONLY public.cms_treenode DROP CONSTRAINT cms_treenode_site_id_d3f46985_fk_django_site_id;
       public       postgres    false    204    232    2485            �
           2606    88543 M   cms_usersettings cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_usersettings
    ADD CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id FOREIGN KEY (clipboard_id) REFERENCES cms_placeholder(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_clipboard_id_3ae17c19_fk_cms_placeholder_id;
       public       postgres    false    228    2543    219            �
           2606    88713 B   cms_usersettings cms_usersettings_user_id_09633b2d_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY cms_usersettings
    ADD CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.cms_usersettings DROP CONSTRAINT cms_usersettings_user_id_09633b2d_fk_auth_user_id;
       public       postgres    false    228    196    2461                       2606    89898 U   contact_me_plugin_message contact_me_plugin_me_cmsplugin_ptr_id_8157c61f_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY contact_me_plugin_message
    ADD CONSTRAINT contact_me_plugin_me_cmsplugin_ptr_id_8157c61f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.contact_me_plugin_message DROP CONSTRAINT contact_me_plugin_me_cmsplugin_ptr_id_8157c61f_fk_cms_cmspl;
       public       postgres    false    2493    206    280                       2606    89903 Z   contact_me_plugin_shortcontact contact_me_plugin_sh_cmsplugin_ptr_id_29d7cb6d_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY contact_me_plugin_shortcontact
    ADD CONSTRAINT contact_me_plugin_sh_cmsplugin_ptr_id_29d7cb6d_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.contact_me_plugin_shortcontact DROP CONSTRAINT contact_me_plugin_sh_cmsplugin_ptr_id_29d7cb6d_fk_cms_cmspl;
       public       postgres    false    206    2493    281            �
           2606    88176 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    202    2443    188            �
           2606    88194 5   django_admin_log django_admin_log_user_id_c564eba6_fk    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 _   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk;
       public       postgres    false    202    2461    196            �
           2606    88818 S   djangocms_column_column djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_column_column
    ADD CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.djangocms_column_column DROP CONSTRAINT djangocms_column_col_cmsplugin_ptr_id_e7ab9661_fk_cms_cmspl;
       public       postgres    false    206    233    2493            �
           2606    88823 Y   djangocms_column_multicolumns djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_column_multicolumns
    ADD CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_column_multicolumns DROP CONSTRAINT djangocms_column_mul_cmsplugin_ptr_id_aa54884e_fk_cms_cmspl;
       public       postgres    false    234    206    2493            �
           2606    89020 N   djangocms_file_file djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_cmsplugin_ptr_id_428f5041_fk_cms_cmspl;
       public       postgres    false    2493    206    248            �
           2606    89058 M   djangocms_file_file djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_file_file
    ADD CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id FOREIGN KEY (file_src_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 w   ALTER TABLE ONLY public.djangocms_file_file DROP CONSTRAINT djangocms_file_file_file_src_id_74ac14a5_fk_filer_file_id;
       public       postgres    false    2606    248    240            �
           2606    89071 Q   djangocms_file_folder djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folde_cmsplugin_ptr_id_b258b166_fk_cms_cmspl;
       public       postgres    false    2493    249    206            �
           2606    89076 U   djangocms_file_folder djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_file_folder
    ADD CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id FOREIGN KEY (folder_src_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_file_folder DROP CONSTRAINT djangocms_file_folder_folder_src_id_9558406a_fk_filer_folder_id;
       public       postgres    false    242    249    2615            �
           2606    89188 _   djangocms_googlemap_googlemapmarker djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_bdd9e018_fk_cms_cmspl;
       public       postgres    false    2493    206    251            �
           2606    89150 Y   djangocms_googlemap_googlemap djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemap
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemap DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_c8493888_fk_cms_cmspl;
       public       postgres    false    2493    206    250            �
           2606    89193 ^   djangocms_googlemap_googlemaproute djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemaproute
    ADD CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemaproute DROP CONSTRAINT djangocms_googlemap__cmsplugin_ptr_id_f6a135c6_fk_cms_cmspl;
       public       postgres    false    2493    206    252            �
           2606    89200 V   djangocms_googlemap_googlemapmarker djangocms_googlemap__icon_id_3b103213_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_googlemap_googlemapmarker
    ADD CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima FOREIGN KEY (icon_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_googlemap_googlemapmarker DROP CONSTRAINT djangocms_googlemap__icon_id_3b103213_fk_filer_ima;
       public       postgres    false    2624    251    245            �
           2606    89229 N   djangocms_link_link djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_cmsplugin_ptr_id_10f7b2f2_fk_cms_cmspl;
       public       postgres    false    253    206    2493            �
           2606    89257 P   djangocms_link_link djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_link_link
    ADD CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id FOREIGN KEY (internal_link_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_link_link DROP CONSTRAINT djangocms_link_link_internal_link_id_41549c8e_fk_cms_page_id;
       public       postgres    false    213    253    2522            �
           2606    89429 U   djangocms_picture_picture djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_cmsplugin_ptr_id_0e797309_fk_cms_cmspl;
       public       postgres    false    254    2493    206            �
           2606    89424 O   djangocms_picture_picture djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima FOREIGN KEY (picture_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_picture_id_f7d6711b_fk_filer_ima;
       public       postgres    false    245    254    2624            �
           2606    89435 Y   djangocms_picture_picture djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu FOREIGN KEY (thumbnail_options_id) REFERENCES filer_thumbnailoption(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_pi_thumbnail_options_id_59cf80d1_fk_filer_thu;
       public       postgres    false    2626    254    247            �
           2606    89419 X   djangocms_picture_picture djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_picture_picture
    ADD CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id FOREIGN KEY (link_page_id) REFERENCES cms_page(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_picture_picture DROP CONSTRAINT djangocms_picture_picture_link_page_id_dbec9beb_fk_cms_page_id;
       public       postgres    false    213    254    2522            �
           2606    89487 X   djangocms_snippet_snippetptr djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_sn_cmsplugin_ptr_id_4cf9435f_fk_cms_cmspl;
       public       postgres    false    257    206    2493            �
           2606    89495 P   djangocms_snippet_snippetptr djangocms_snippet_snippetptr_snippet_id_56b99614_fk    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_snippet_snippetptr
    ADD CONSTRAINT djangocms_snippet_snippetptr_snippet_id_56b99614_fk FOREIGN KEY (snippet_id) REFERENCES djangocms_snippet_snippet(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_snippet_snippetptr DROP CONSTRAINT djangocms_snippet_snippetptr_snippet_id_56b99614_fk;
       public       postgres    false    257    256    2652            �
           2606    89510 Q   djangocms_style_style djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_style_style
    ADD CONSTRAINT djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.djangocms_style_style DROP CONSTRAINT djangocms_style_styl_cmsplugin_ptr_id_820d9b8f_fk_cms_cmspl;
       public       postgres    false    258    206    2493            �
           2606    89576 X   djangocms_text_ckeditor_text djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_text_ckeditor_text
    ADD CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_text_ckeditor_text DROP CONSTRAINT djangocms_text_ckedi_cmsplugin_ptr_id_946882c1_fk_cms_cmspl;
       public       postgres    false    259    2493    206            �
           2606    89611 W   djangocms_video_videoplayer djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_0367e96e_fk_cms_cmspl;
       public       postgres    false    2493    260    206            �
           2606    89664 W   djangocms_video_videosource djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_474cebf9_fk_cms_cmspl;
       public       postgres    false    2493    261    206            �
           2606    89675 V   djangocms_video_videotrack djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_vide_cmsplugin_ptr_id_edcbdf6c_fk_cms_cmspl;
       public       postgres    false    2493    206    262            �
           2606    89625 P   djangocms_video_videoplayer djangocms_video_vide_poster_id_07790e24_fk_filer_ima    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videoplayer
    ADD CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima FOREIGN KEY (poster_id) REFERENCES filer_image(file_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.djangocms_video_videoplayer DROP CONSTRAINT djangocms_video_vide_poster_id_07790e24_fk_filer_ima;
       public       postgres    false    2624    260    245            �
           2606    89669 U   djangocms_video_videosource djangocms_video_vide_source_file_id_16f11167_fk_filer_fil    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videosource
    ADD CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil FOREIGN KEY (source_file_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.djangocms_video_videosource DROP CONSTRAINT djangocms_video_vide_source_file_id_16f11167_fk_filer_fil;
       public       postgres    false    240    261    2606            �
           2606    89680 V   djangocms_video_videotrack djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY djangocms_video_videotrack
    ADD CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id FOREIGN KEY (src_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.djangocms_video_videotrack DROP CONSTRAINT djangocms_video_videotrack_src_id_e5a015d8_fk_filer_file_id;
       public       postgres    false    262    2606    240            �
           2606    89711 N   easy_thumbnails_thumbnail easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum    FK CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnail
    ADD CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum FOREIGN KEY (source_id) REFERENCES easy_thumbnails_source(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.easy_thumbnails_thumbnail DROP CONSTRAINT easy_thumbnails_thum_source_id_5b57bc77_fk_easy_thum;
       public       postgres    false    2675    266    264                        2606    89733 [   easy_thumbnails_thumbnaildimensions easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum    FK CONSTRAINT     �   ALTER TABLE ONLY easy_thumbnails_thumbnaildimensions
    ADD CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum FOREIGN KEY (thumbnail_id) REFERENCES easy_thumbnails_thumbnail(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.easy_thumbnails_thumbnaildimensions DROP CONSTRAINT easy_thumbnails_thum_thumbnail_id_c3a0c549_fk_easy_thum;
       public       postgres    false    266    268    2685            �
           2606    88950 @   filer_clipboard filer_clipboard_user_id_b52ff0bc_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboard
    ADD CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_clipboard DROP CONSTRAINT filer_clipboard_user_id_b52ff0bc_fk_auth_user_id;
       public       postgres    false    236    2461    196            �
           2606    88885 S   filer_clipboarditem filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id FOREIGN KEY (clipboard_id) REFERENCES filer_clipboard(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_clipboard_id_7a76518b_fk_filer_clipboard_id;
       public       postgres    false    236    2597    238            �
           2606    88944 I   filer_clipboarditem filer_clipboarditem_file_id_06196f80_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_clipboarditem
    ADD CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id FOREIGN KEY (file_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.filer_clipboarditem DROP CONSTRAINT filer_clipboarditem_file_id_06196f80_fk_filer_file_id;
       public       postgres    false    2606    240    238            �
           2606    88926 ;   filer_file filer_file_folder_id_af803bbb_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_folder_id_af803bbb_fk_filer_folder_id;
       public       postgres    false    2615    242    240            �
           2606    88974 7   filer_file filer_file_owner_id_b9e32671_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 a   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_owner_id_b9e32671_fk_auth_user_id;
       public       postgres    false    2461    196    240            �
           2606    88960 @   filer_file filer_file_polymorphic_ctype_id_f44903c1_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY filer_file
    ADD CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co FOREIGN KEY (polymorphic_ctype_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 j   ALTER TABLE ONLY public.filer_file DROP CONSTRAINT filer_file_polymorphic_ctype_id_f44903c1_fk_django_co;
       public       postgres    false    188    240    2443            �
           2606    88979 ;   filer_folder filer_folder_owner_id_be530fb4_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id FOREIGN KEY (owner_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 e   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_owner_id_be530fb4_fk_auth_user_id;
       public       postgres    false    2461    196    242            �
           2606    88896 ?   filer_folder filer_folder_parent_id_308aecda_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folder
    ADD CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id FOREIGN KEY (parent_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 i   ALTER TABLE ONLY public.filer_folder DROP CONSTRAINT filer_folder_parent_id_308aecda_fk_filer_folder_id;
       public       postgres    false    242    242    2615            �
           2606    88907 S   filer_folderpermission filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id FOREIGN KEY (folder_id) REFERENCES filer_folder(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_folder_id_5d02f1da_fk_filer_folder_id;
       public       postgres    false    2615    244    242            �
           2606    88912 P   filer_folderpermission filer_folderpermission_group_id_8901bafa_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_group_id_8901bafa_fk_auth_group_id;
       public       postgres    false    2453    244    192            �
           2606    88984 N   filer_folderpermission filer_folderpermission_user_id_7673d4b6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_folderpermission
    ADD CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 x   ALTER TABLE ONLY public.filer_folderpermission DROP CONSTRAINT filer_folderpermission_user_id_7673d4b6_fk_auth_user_id;
       public       postgres    false    196    2461    244            �
           2606    88989 =   filer_image filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id    FK CONSTRAINT     �   ALTER TABLE ONLY filer_image
    ADD CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id FOREIGN KEY (file_ptr_id) REFERENCES filer_file(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.filer_image DROP CONSTRAINT filer_image_file_ptr_id_3e21d4f0_fk_filer_file_id;
       public       postgres    false    240    245    2606                       2606    89814 U   hero_area_plugin_heroarea hero_area_plugin_her_cmsplugin_ptr_id_79452eaa_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY hero_area_plugin_heroarea
    ADD CONSTRAINT hero_area_plugin_her_cmsplugin_ptr_id_79452eaa_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.hero_area_plugin_heroarea DROP CONSTRAINT hero_area_plugin_her_cmsplugin_ptr_id_79452eaa_fk_cms_cmspl;
       public       postgres    false    206    2493    273                       2606    89839 T   overview_plugin_overview overview_plugin_over_cmsplugin_ptr_id_e64d3f35_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY overview_plugin_overview
    ADD CONSTRAINT overview_plugin_over_cmsplugin_ptr_id_e64d3f35_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 ~   ALTER TABLE ONLY public.overview_plugin_overview DROP CONSTRAINT overview_plugin_over_cmsplugin_ptr_id_e64d3f35_fk_cms_cmspl;
       public       postgres    false    274    206    2493                       2606    89844 V   overview_plugin_overviewitem overview_plugin_over_overview_id_id_928fc1c7_fk_overview_    FK CONSTRAINT     �   ALTER TABLE ONLY overview_plugin_overviewitem
    ADD CONSTRAINT overview_plugin_over_overview_id_id_928fc1c7_fk_overview_ FOREIGN KEY (overview_id_id) REFERENCES overview_plugin_overview(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.overview_plugin_overviewitem DROP CONSTRAINT overview_plugin_over_overview_id_id_928fc1c7_fk_overview_;
       public       postgres    false    276    274    2704            	           2606    90077 Q   portfolio_app_mediaasset portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_mediaasset
    ADD CONSTRAINT portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio FOREIGN KEY (project_id_id) REFERENCES portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_mediaasset DROP CONSTRAINT portfolio_app_mediaa_project_id_id_2bd68af0_fk_portfolio;
       public       postgres    false    283    2721    284            
           2606    90044 Q   portfolio_app_project portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_project
    ADD CONSTRAINT portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_project DROP CONSTRAINT portfolio_app_projec_cmsplugin_ptr_id_4a8ee954_fk_cms_cmspl;
       public       postgres    false    284    2493    206                       2606    90062 P   portfolio_app_project_tags portfolio_app_projec_project_id_74c3a22f_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_projec_project_id_74c3a22f_fk_portfolio FOREIGN KEY (project_id) REFERENCES portfolio_app_project(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_projec_project_id_74c3a22f_fk_portfolio;
       public       postgres    false    287    2721    284                       2606    90067 L   portfolio_app_project_tags portfolio_app_projec_tag_id_023e820f_fk_portfolio    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_project_tags
    ADD CONSTRAINT portfolio_app_projec_tag_id_023e820f_fk_portfolio FOREIGN KEY (tag_id) REFERENCES portfolio_app_tag(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 v   ALTER TABLE ONLY public.portfolio_app_project_tags DROP CONSTRAINT portfolio_app_projec_tag_id_023e820f_fk_portfolio;
       public       postgres    false    285    287    2725                       2606    90057 Q   portfolio_app_tag portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id    FK CONSTRAINT     �   ALTER TABLE ONLY portfolio_app_tag
    ADD CONSTRAINT portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 {   ALTER TABLE ONLY public.portfolio_app_tag DROP CONSTRAINT portfolio_app_tag_cmsplugin_ptr_id_990c25f3_fk_cms_cmsplugin_id;
       public       postgres    false    285    206    2493                       2606    90139 U   profile_plugin_milestoneitem profile_plugin_miles_profile_id_id_31cc7d00_fk_profile_p    FK CONSTRAINT     �   ALTER TABLE ONLY profile_plugin_milestoneitem
    ADD CONSTRAINT profile_plugin_miles_profile_id_id_31cc7d00_fk_profile_p FOREIGN KEY (profile_id_id) REFERENCES profile_plugin_profile(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.profile_plugin_milestoneitem DROP CONSTRAINT profile_plugin_miles_profile_id_id_31cc7d00_fk_profile_p;
       public       postgres    false    2736    289    290                       2606    90133 R   profile_plugin_profile profile_plugin_profi_cmsplugin_ptr_id_86d3a84c_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY profile_plugin_profile
    ADD CONSTRAINT profile_plugin_profi_cmsplugin_ptr_id_86d3a84c_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 |   ALTER TABLE ONLY public.profile_plugin_profile DROP CONSTRAINT profile_plugin_profi_cmsplugin_ptr_id_86d3a84c_fk_cms_cmspl;
       public       postgres    false    2493    290    206                       2606    89866 `   testimonial_plugin_testimonialplugin testimonial_plugin_t_cmsplugin_ptr_id_fdd8d434_fk_cms_cmspl    FK CONSTRAINT     �   ALTER TABLE ONLY testimonial_plugin_testimonialplugin
    ADD CONSTRAINT testimonial_plugin_t_cmsplugin_ptr_id_fdd8d434_fk_cms_cmspl FOREIGN KEY (cmsplugin_ptr_id) REFERENCES cms_cmsplugin(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.testimonial_plugin_testimonialplugin DROP CONSTRAINT testimonial_plugin_t_cmsplugin_ptr_id_fdd8d434_fk_cms_cmspl;
       public       postgres    false    206    279    2493                       2606    89872 ^   testimonial_plugin_testimonial testimonial_plugin_t_testimonial_plugin_i_4364514e_fk_testimoni    FK CONSTRAINT       ALTER TABLE ONLY testimonial_plugin_testimonial
    ADD CONSTRAINT testimonial_plugin_t_testimonial_plugin_i_4364514e_fk_testimoni FOREIGN KEY (testimonial_plugin_id_id) REFERENCES testimonial_plugin_testimonialplugin(cmsplugin_ptr_id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.testimonial_plugin_testimonial DROP CONSTRAINT testimonial_plugin_t_testimonial_plugin_i_4364514e_fk_testimoni;
       public       postgres    false    278    2712    279            �      x������ � �      �      x������ � �      �      x������ � �      �   �  x�uYKo�6<��B��R�zY:z.P�V �g3��$9m�}��%wI��Z�p��8\2J�6<�צ�?��u�_�.�U%L�mà,�r�7],�M�R��7�$+�>\�Ţ�Ǹm���0���5����m��'�'X��6d���k�K�~�3͉͐�#:�	��#�пy+�h\���T'�=�B��h� ��=��_�箟{�-Z�.	�lD���J����k�:���o��M��}v"�I��
��`g�7� e�u!�4�
�b��Kh�ݣT=�Ha�3 �MJ��6"U�k��1���d�9����bC� ��q6[�L����+q���|@��J�ę����#�4F�9�q@�[Փ0_��Z|��˲�z���+��T�1df����1��9�?��.w�<�Zv�jȲ�U�}���(����@?8샸��F�{���V40�_����f���/�Ӹݱ��[_ǽ��a/��}���^7�Mo��4ɪ��
#�����9dC����0���Aiq��e|��ɶ�,T�9��ْM�D��囀��� �|�d�m�n2-))Q�6���q��k�L��k�Nu͖7Ǣ"
g+��Q�7�#Ū����SL����&��4��U�.�o��.r夋���E$l�����4�L�>r2�p�ɸ���X���>����=Ȇ= R �ʞ����ᅏ���}|ބ�C�M�Y%D�$���4�R#EF��^�dj�w3ş�3���ǰlY�t�Bi)�9���XF]��]�K��Q]�<˖�R����r�Aq��h��o�7K�[�̽�?	�83�F~=�2�ˏyX���V��,�ql��aqp[��St=D�r	6(�͡��H�xR{�'�RQ�}�}4˨�~a�3�^l������!�h��{k(�j�f�1��(f��� U�#�u\�e�ׯnY�>��]�o��e���E���'��.߱I:�QP*��C*��	����y�ٱ) �6i	=��Ӷ�_��a��y��)�o�!�òg3y�����q�D��ͯ�l��/_���� ����e���������oB���w`���e��b��ʾ?�����O�Ml�����dN���y��T�AO�!�z���af��=@r?��p5 ��Z a�F `q{��}�����!f�l?� !ᰍ-〞��q���ժS�ymŽV�Sf�7[�T�c�bn�T�{��p�U����¸�*ms���Ni�Ff�؎w�l!x��!�0��<Q{ÃG�'����; �� ��F`�oۿ�{�T�_�-���"T��\-�BU�A���|�ˢwQ���Ga&FP�. �� ��6OZѤ�n��·y�$��v���$��F+���m2�gXDמ.bRU̶8/E�YG��A����a>��R|ؐ�cA���
��X��"�9�j�л��Z��E��Fh`�:�x�Ff �*���s����츼ù�,3���_¤��*��z�E=��+~	�©���r=�A�F������!�>�q�lr5L� �͵<���s�l͉:�l	�l��%�������^�bX� o�6`��9)BN�e�ʰ��`��Οzu7���xwŠ;)~�@I�an�q@Q�i3U��� :���D��vG,4Io��������0��!$�I���M	�<�p���H�g�iRM����C��������Iع��&�`�����'5\v�xvA�4�oSJ���9�_O)��D�}�m�'��{.<�[�º��
� ��@E�^ǡ��l�M�M�E��8�'��K`� �࣯��,�y��o�}���[�b^�)V�yX�bH�bsV�GT�9��#*�c��m&��:�?�c#
 �c#�#�\���M�pp�~���x���= ׇTtD�8Җ8"��dD��#`���qD ��0�m��ڛn�4D��v�Ms
~�	�k��O����EJ�?Q���      �   �   x�%�A�0@��Wx�&ڷ}n�A3J<A� �����_ߠ���Q���ݦ�θP @�#���XQ^�~���#�|���{�cy��]o���g��b���0�i�ˇ�BT(b�@� �%S�՝%���!��+,F,������y?j(�      �      x������ � �      �      x������ � �      �      x������ � �      �     x���Io�0F��Ƚ1+��-u�t�s1
�5�X����B;6�� ��ޓf�#���m�n��t2<��bu7��s��0^�\]!f���9Y$|v�j�<L���s:,| @G[ї�~�8���i.?e��(f���M�)�DVE�ж�o����aX̦�s2�R��C ;���)�z�t�!T�:����a�������.e-L�1@@ju��@m�����B�"ȠJ!�N���v0Y�:����p�~�]�+�r�%Gv�~t��껡Tݍ�X���L^Ed��II���-�tL�M�%yI��R�16ĉcx�h�R �qb�	 I|�G���v���j�(Q|�G����p[��ZbMFn�o��ˋ���N��4L��ֱ�)xe5�bM�i��w��8�ы*��3n҄�#�wlc@)+�3Ѧ1a��J���|pL�&�1�D+��)�i��o����[?f��٣�WD�\f��|o ��JXj����X�A����q��h}<i�TG��+����ι����      �      x������ � �      �      x������ � �      �   '  x���OK�0�s�)z���͛��w"⡵��-3��-2��1Q���}(��$���}���E��$(P��@8��؜�d!!� �(��<��o�G?�������4î_�*��]w|sT��g�0m��<k!��S�B�-y����<y๋��)(���){��IJV-x�������8��q��z��a5�����\�M��u�I�	��/{@hK���u,��Z)��I8������Ђ;�������ӧ���*Q��2R�N-)M�O�p~��$�S��q+8�Q��      �   Q   x����0���0\�B����s��|:۲�Ph�t_��$�չ�m<���'��7^J9q��¥~l��1��o�	�%x/���5      �      x������ � �      �      x������ � �      �      x������ � �      �   �   x�m�Q
� ��ÔhB�\�'��[���I�_L(h�ϙ7�+�:�w6��M(�2�\���
/L�MBSp�0m�{���f�d\3yd�z��Y{<D����X�#���T1�j�>r�x�T��\�o3�W�      �      x������ � �      �      x������ � �      �   �   x����
�0�s�އ%I��}���j���!�?kE��u6���|�2O��� �u�u�X�w5��R�M�U��/���"`���X`�rK��4&���Y��E��Vl�k��ev�;IЁ��G�[:�+9�8N�
nq���H��u������L'h��2�7���yn�      �   (   x�3�4000�4�4����4�2�|S������� ��      �   4   x�3�LK1NJ56��5MLL�5�45׵4LNԵ�4NKMI53K32����� 
�      �      x�3�L��4�4����� U4      �   _   x�3�����P�K/�L���S%E��@AC��������\N�Ԝ�|�����N#C]]##+S+CK=sSsms��\1z\\\ ��#      �   ?   x�32�,�H�����(I�5��4rH�M���K���Զ0Q042T02�P05���22'Eu� bd�      �   _  x��VMo�8<˿BеA���[��Px��b�6T�qȒa��E������%�]$��u�%μ�Ӽ�X���Hs&-�p��+�2̖���mk�f���-`�Q�A�� x��
9S�1�*аa�]�qO�x����T�����_ ֊�Z0VHB5(�Sf9Z��� ]K&԰�M[���}Y��1@>/Vwe�vUa��ŭwuՅ��E��v�}��Uq���u&b5. �C�.)�S9�duإ��Dn�I�ӑT�Uu�ДN��u�ߴ�/��u^�_�ݪ�7>�{cY�׾��6�)�F���@-�e�i��e��G���W���kR�����8`O8�Ǳ38�(���`��R����^�#�a��X�)(��ي#[�����$
>����0 >�x*+F.-G"�@9�����!4W�#��R՘"X��R3�����������ms���]����n[�\����.��i��V7�>��3j4�\i��j�9��#B&��)F�d����mfZ Y�!:à��x�	������&l� hiH��S�e��}w� �!�(�0(��C��l�7~��	��|n�7��e^v�맃͊g��y0L�!i�*��j�|-5�3[���*׭v>�(����ߔk7j��G�Dxc0�:\:���\��U��;����#�~��r�+��JI��0� ��6���׳bՔ"���
R¢�.?.�ջO����Y=�AF�I=�Nf��r�Ϗ�x8�h�hiJ
�v��'G��st�h<��������a�����Rď��"T!J	H��̭�۴1�����B���6Z�O�T;�p��3#tXɴ�����sӛ��.b�PFsJpx�|!������      �   e  x��T[�� �F�ي18�]�*���	��Y�~elg��c?��nA�Fа�&����̀�ʨ�ej�W0Z����ʌ�O�
�D�:�{���<L5�#KXV�}'��3~��8Ù%�i�2Bs()�/�i����h�Q�h�Ys�QfɸʴiuԬx�%�F~�k]M�lJ�W��z��X��U�}m[s*B��PԹ�e˄9k7&�kUS4d�kĻ.�����=�2�n";T���ޔ=�]2�ɗ����>���U��7:�x��3E>[�Ǎ^F�m�p��+�æh[ڤ�`�N��)m|�%�3Ti�<x2�O�ll�O�c
��^4�Q�	ZY��{3Y����g�N����i��
X�_-hO��Ջ�\	F�[����SD�}A4���L����C�̶/��{1��>���ѠU�=f ��V�U$����&�U�Ow=�ge�Ο�MN_��)���r����<Ѝ��>�#v��/*�����ə�c�k|ߵ�����:HA�#em����rE����؞#�>v���{X���7��K��r]�����Tf$Z�D/���@�wC���c�C�׮y��h��K/�yl��Y�4O�;,f�� }%.�      �   	  x����n��g�b�L ꃒr-��M���Y����RN������A�>��W$e�^�v��q��T�NE��c]6;)���?��9܃�R����!w�u|�V(Һ�P��x��m�(�}�Ȣ�N4����s�^���(�G�Nzf1E9���-��R>os�EٌU_\��\CݵQ_��?ES�'���F��|��Ru�Gu.�f��B��1��~��t�q�N(�3�7��#�r�z�4�k�%o(��FAZ��u[۸�EX���� 7��Cy/��X�]?�0U�w}q���<U����u��ӱ���������n�ǯlc��л����rF�@��2����,��c��H�8��L�%Riˋ�1�D����A���1bG�A�C�&�Y�=+6��r?��Y�)Nl�O�b�ڻ�t�?�I���`���I�$��� �YRrb�@._{�-��$�����e��}�&Ms2��\��r����a�/���^I4q��d+��`5x��@^l����V gb��Rp��dh4&ZN�U\����k_��!U�J�M~��)��&{��!���B;y
�\�#8O�ؠ�T�&S��(���a�-D�d*�Ņ2T�|�DKNt���.J���K(K�P�v���ԑ�rls=oTO!U�kV.g���r�x�!�B+J
�dv�uS��>=j�1O)�k-E���+����.W��v=��R��2ǘ*ih�&��ڹ�T�����[�*&t�e7��X(���Q�ó�\����({)�)j&�a� �Zt�SvB��IKF<[}��&���Y�b8jj�����tL]�+�i�֥���2�,�5Ld͐u1T㷰�۔l�a���Aȃ�>q��*VH�o��h)�EYg�2�]��&�ZW�q��D���Sd8��bs��5Ǖ!P�1"�Y�mK�����%�F�aP]N�و%��S2�8��"��^�B�%�s��������u������֐TiuN����a����p�C���%i8z�f0'M�&<��ҕ1k0�mES4"�X�@�x��߶.m+���1���)|2.I�Ħػ5�%N���Gt�.{�Ȣ�b���}ѕ�Μ�FE�F�����M����-<��z��swS�������q��d��Y�f�UԞ
�3*���/�x��Mw⠝&���ql��-,�j�]���YM
��2K�#"��o�$�4و��~�(��Cv��ߊr�����xopZ?�@�,͐%(���lġ����bɡT��a�^k�c`��icVTV71a�J�X���e	(E��eLN�H��#�~'��OI���}��kc���d��a��w[�ק�͵|��7�Y�<J}��0TI�@���<(ב���R��!���/�j�&)��A�=�E�� ��	ec�˦>��y
��E�ܽC[_.ոr��Oz�����(3�����j���X�e�u�ΒԜ�i���tz8ŵ���r[�p�M�lx��^&�{J&�y�����-�.ʒ�?��Qv>�:_�p��������AL㛛~?��]v��NG6�9���er@���j;g�=��� �At|�t��m��\���v�N�z��b��6���kI"�U����M"U������m�mp�m��H��(��]��[�=�3�g�P�wxUi�!ǻ��J>����kz:�����|��U���ޑ:�,����~/��1�\ȑU2^�wݱ��G��a�H���>�@�C�N�Ft��H�8p���Lsܞa�lb��X�ǰ \6�W9 �c��lT��AY��]���D��L��U��q����I�K�qZe�����v`XYi���������,B>�n�����iз�����t�x��%m�� �~O �+�c��n�(<(w ܣ0^�;7��>��o>����A��]��~�t��8a�e1�[:}&�ު��(9z223�Kȟ ���n ,������S�^-%�:s�aF(�8��Q��>�?I} )\���V��������4��V{�J~�R��c}�Z��&�����%��yY$�c�~��p� �ts���k��e,(�o��1�_&�c�'R�.]?�vMM�{a�בX���;(r��e�Y�g�±�<qt����K%.9�c�{���s�)SX��v��K���"'�������<s(
<Hy�@룜����8*_��\�Xr삣�C��G��V����w�H~��3�c�i&߻KF-��6�殭(k�ɄǺ,ʁ��O�u&�Nw0�����g�      �   /  x���r�8���Sd?�.I܌�z����D�ƀT��[ɦcc�~d�$��y��Y�@�_�w$5���݉�N�2���ͷ��\��0�s�&X�V�}CD���FDF�/�Z���A��4H�ʊ�T����P����Cn�#�W�"[�H��P\D�|X|[�DV�4#o,�ڰ9t�T��E�s���"{���x�>��"%�e�\q�N�Tk�����|V(r�y�v��M�f� h%���(�Aِl3FI�h�6Y�X��2|��"8�F|.�UP��H�Ց�vQ���D�M��-��~
��y������rֱ��9�(�W*��Hںn�#2��,uQ��F�h�����γ`\��/�>��C�� �gJY�E�?���|}���-�c~��͡;A ξ �4�=���0�@�t~����S��x-��UJs���ݥ�C]Z�		���Ԭ�+֬q�����x�$	ֺ���(V8#�*���>�Wl�_�~2q�97��DS�7&��֬���p�(�Y�f��{9r!{ՠ���d�r`o��6R�`�h��ڧ��^zG���5J2�n���"�
��D�Qs��]�|Q�־S4�����-r��fPg��_��J��^����gǴa��&��"�j���z��^��Qa�=�����g�ǵ����}���,�=k���@3Wሳ�E�
`�(Ð%�"#���%�����R����e͍�Դ�=�3iU_o5����
�b6Z��yk�ʰ'�����H��h��z�?7�A��k-Kj����_�Ҝ���=ك���=W?0sÞ�# ��v�O� tD      �      x�3�L�H�-�I�K��Efs��qqq �<	�      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   w   x�����0 �s2Eh�T9 3 �G$�V��q���w�ϩ;��~�U2���46��%��A��eyb&���p���{�T�5�@�����6�]��x��y�:���kzX��e!H�      �   L   x�3��L��4�L�-�7�3�3��M�+���OI-�O͋7����"��Ҥ��d.c"է%��pP37F��� �x-      �      x�3�22����� WV      �     x��ˎ�@E���cس�%�<)��d��2.�����KYF#Ϯw��nս}� ���~F�(\��֡|��Yex
 4��5e����Lȅ%|ё�oW#�@��XH����#��J�n���p����Fr݅t�`ϥ��<w�2,�A�R���ᅎ�.`���P���),��N(��B�������K�k�I!���xփ�����x�A	�N�b 4�x��9�!��:I�"�KΓ�9"��@��ĺH���G�q��e	��A9	r���4.��M��Ov�M�;��A[ų���)��s4lH	����t#o��M�5A��9��I]4O�,o��b��Y��,도�I���4\w�M����jvu[mWMy�l���/��PJ(�J��pr��i��n���Z����fu�7�݇:�kX��d��։���ۏ���6��9.Lm��)���z��u�2����BX�N�%���6���jLt=���T5�[>A�.��W��=$�����y��,���      �   �   x���M�0�u{(�J<��芍		�Kd��uC�.�N���Hjz�sw<��v�n-�q��Xj
d.�H����I����"���n�qv
t���9�$
��"�f��?�u�ŵgE������*�_'{�g0�p9�C1��CI8y*Į_16�c8���k�isb��Mw�g��YH)}�[qG      �     x��W�n�F}V�b�KK���#�k�@�&0�&胁bE��u�\f/���{f�B*M[40b�"ggΜ9sxz��,���'�����z|�u�z���5�	����
�h��UT�N�N�ڷz�
etX�ՉD/���^���D��UA�KT5�������h/���Q~)�[��bm���`~�h�x+�1�o��˧l���N��Kq�Ʈ��My\w�mdl�:Nߧ@ʨ^%�ߍ���A�y�FJ��b�^��R	�Z������
i⦽51�2�qQл!�xG�������h�ӭ�	�ޫ�����:��ì�|[�� 2z���y/�ӳ�;�R��[C9��^e~��Y��]z�([��<\�V����}�\��^��U��Q�F��ʊ�R�� ,�W���q �T�L..�N��rN�r	zhu�r ��&|D�����;=<���С�� <�D�db��!iFS��᢮N�����F�Vx�Ձ�f�&뎳q
PT���d�S�e���K���R�]�i�H#[�P	3-�i��VK�W��X�)s�������-(�)��u;;�T�3��%�ɑ[\:]��{L	��Q._3,��{��TO��F��07n��"�3~��z1��A�\f�4�;���Pn68��"�fSĽ���8M����2w���9X�2�G"��q�7�#��0qHn�(�����tAM�M�R���U��d]�\���� �\�l�V���"�p]D��j�A��-I�@���(P\k�L	�an� �����V-��13�,��q�q��ʙ����H��T����B�_�P����3��5��%��<�44$Pz��Te��<��U`ʬ�rkʑ�e�)���5[{�Ƨ���凷����w��W�K��^���;�W���Ǉ��	=v~�a�Z��m�Y�FujoG�����V���mW�߮��X<jE�����i�.N�_^�::>/Ϯ^�]�~���<;y����7�<[�_�\����'����1�;>�[��v�5z��e�_��-������{J�M��?:r����,]��Q�!*�%	nm	h�U�<i�!�\[uW!>��Lk&�Nf�B+/k����U{��gr��Q�	�y!5Ryj�`H|���v�'��H#P&�
P	�Z5����g8���m���K^DuX��@���A��T�����LӚI�x��+����ɦ��[�:���Vfey�4����I	qF;o�/Y,�Lxb����qI�Eq_u�U㒣���խd���LG5��nK�KQ�&]Gd�OZ�y���dSuh�&c�[|�>*�O�g}U���@}�>eڞ|5�&y�����Td;5:c�W;��@�=�F���mli�f�R�O�4��:q*h�*�D��_PK��7h�Ѥ@��K�{�R��<'HD�%�SX��/Hs�"@)E�6W�^�N.˟^<�.c�p<��Фr��JmP��пe�yJr�٫�w 7m�,Kٹ�sa���̌6ْC��P��lvA��<_kr����fjԦ�T�e_5�~�K^��l�W�J�lS�~䌹�w/�Z2I��O���@%+�I�'���Ef]H�U�g��Z��xr�~�dޔŃT�OLj�$�f�� ��ҜԖ�X%�#����m-�S�,lv�Y�DŴ=�(�w�^\���`���qIxPWتչ�t�@�J��И�֝/��J<��{���{,AxY?����7s4��?| �ݓ����b��`�:P�k9�,x��Q�������������ί�O�N.���'���/^���"/�      �   4   x��� !��'
[\���������z�#�/fh��O�_���R[	�      �   ^   x�3���,����26�t�J�K��26�+M�*�26�JML.Q�K,�,K�26����pI�26�t��sQp��26�H�M,������� =��      �   l  x��T�n7}��bޔ��+˺ ��&�C '(`�O��h��$x���o�����J��y0��9s�̙)'�!6=�C8	���n�fvR�$���3;/�@�@��d]�dY�ż���ɝ������?�=}�>�w�����[z�j�&��@��
	+tLiBΤ
�e�!��n"�]�R'<�u���d��x���H��uy[��N�����ڜ�H �1G�
�8W��dV�v��+nH<�^q1�{˵쁸G��>���G����j~��j�!:�`�����&3S,,�4+��j���� ��:���E���N薛�����ب��>�E*w���I�.Rϩ�?��9x���,��[�h�$F���R� �6��X�q���R���%%�կ
}����90�Ulһl,�}��_��ݵ���l'֙�T|������=`�?�z�J �Ճ�]��"NO]���z�Ŷ���=�	%60�2ɑ�-��mKT�[�����r^����'\+H��y�4�z5L�a.dOR)��	3����Yl� ���P,%��ц
�9O�D�LzJsa��>��b���&rO��͡���\/�HF�f�7�(X	b���Z�Í�wg~;�za�N����<�!�[�R�ERfA!⏬`E}L���9�~,��KlO����'R},�"���Vy�G
�,\���8��*S�l��¤����ˋӎH��X���5�˟����V~6*�pFJ���y�s����dQײ�T�Co]R��H���!�؛��%׍c�����\o���MQ����n��l|�rYݬW�r�YoV7�]Q.W�me��o^���6�)��n2]����}���c���b:��q��W      �     x��VMSG=�_1E@����S��"pa��_Z���1�3��Y���c�[���zF�r%������ׯ_���_z�Ԩ��l�(���v��h4hm�;��m���ײ��i������ѫ^����u�F���fP��w\�:�RST:�+�Q�m�_��x��~����q����d���p��￰0�5UvM�P��r3kV��6j[)��h9pL�ږ",뛪���2۴��';���|�������>x3����XMVu�޺�� �at�^���^$t �P��S35\*�j�/���r�D�b�@]Ƅ0t�A?`�uH�"�nU�6v^3PL������� 4.�5]�s�W ��Z8D�@�@
�Vq�6�c�ֵ�!����$�<
j�c�n=�����G�˨B��*���]�)o)������H*@��kU�M���n�/�W�uR7r�<��+�;T(hgC����x�fi%�A7N�Yu���3�]&Y�2.q)A@�3*P,�-.��v���xT�!��W�Œ*���L��8�Š�I��DZ�.ԭ����}^`	�΢��ݾ��E�4|C&�ѐh�0%) ����JB9��x��f��Z���.S�Ą7S����V��@]�]��d-�Aʜ�<�iN�K���D�z~$����6��D�W�I���B*0��V3�ՎIK�,�ɵ�~��h#�dˠ#K/��,_-j��-�w���V��	M��H��HR���5њA�LE�KP��|���ծ��8	����lFu���5�l�@4���̻�n(U��R�eGBwF��R bKo���5����x�7P5j4�(�0hH]@;Ww F�`,�z�F���Ր�y5�25��g�_^c#�Sܣfˈ�w3HE�z/�iA��dQZ���+�^u�}��~���Z��ߝ=9���B���s�ːt�n`�g��#��"���k�*[X�T��EB
�'V���Kw%�q.g��iLP炟O)gȈ`���`48|����C�{�d��O!�3�f�rX�5��V�b��3��Ε)���6{"ʱ.�;L$���V�H�c�4d�dsC�'��-Χű�E����J̘D��lI�L+�
�����s��r����������"��`��_'�r ^�����ViOd��X.j��[���/�d�
,�Bg�y�XK��Y���7��%��U�U�̪4���^9?�0q^C�Ѐ.X�kZ�:����>�S���k��l0����h@�mMy���?�?�El�}��mRx�F܌'���,�zt� a�Bo��
Txir�t!V ��t�����EO���<����#`��$b;<}~?��������9$`�[����rқ�}��P�����t�v8n
\<������bFtF�������f���V�^ߍ�_0No.�c�d�)��w�����o8���U�j���E�ax����w��>u���ކq=<���Ǉ0��xo���x,�����mmNқ���$�9IoNқ���$�9IoNқ���$��O�_[[[� �0��      �   �   x���;�0���>�t�x��Q AI�$kb�Gd���rJ�\NB*ΐ��f��1���r�j�?��W��l�#dI���Ғ�j
�����Dg��#ጡ�,T?�Rƍ�����'�r6�_uO��}�2fIͷz�.���,��+wv��a:�������L�ڑu�i�@��      �      x�34�22����� 
��     