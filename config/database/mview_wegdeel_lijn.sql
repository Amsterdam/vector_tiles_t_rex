DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_wegdeel_lijn;
drop INDEX IF exists bgt_vw_wegdeel_lijn_geom_idx;

CREATE materialized VIEW bgt.bgt_vw_wegdeel_lijn
TABLESPACE pg_default AS

/* --- KBK10 ---- */
    select
        "WGL_smalle_weg".ogc_fid::text || 'WGL_smalle_weg' as identificatie_lokaalid,
        'smalle_weg' as type,
        "WGL_smalle_weg".geom,
        0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15  as maxzoom
    from
        kbk10."WGL_smalle_weg"
    where 1 = 1
    
 /* --- KBK50 ---- */
UNION
    SELECT 
        "WGL_straat_in_tunnel".ogc_fid::text || 'WGL_straat_in_tunnel' as identificatie_lokaalid,
        'straat_in_tunnel' as type,
        "WGL_straat_in_tunnel".geom,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	NULL::int  as minzoom, 
 	 	12 as maxzoom
    FROM kbk50."WGL_straat_in_tunnel"
    WHERE 1=1
UNION
    SELECT 
        "WGL_hoofdweg_in_tunnel".ogc_fid::text || 'WGL_hoofdweg_in_tunnel' as identificatie_lokaalid,
        'hoofdweg_in_tunnel' as type,
        "WGL_hoofdweg_in_tunnel".geom,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	NULL::int  as minzoom, 
 	 	12 as maxzoom
    FROM kbk50."WGL_hoofdweg_in_tunnel"
    WHERE 1=1
UNION
    SELECT 
        "WGL_regionale_weg_in_tunnel".ogc_fid::text || 'WGL_regionale_weg_in_tunnel' as identificatie_lokaalid,
        'regionale_weg_in_tunnel' as type,
        "WGL_regionale_weg_in_tunnel".geom,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	NULL::int  as minzoom, 
 	 	12  as maxzoom
    FROM kbk50."WGL_regionale_weg_in_tunnel"
    WHERE 1=1
UNION
    SELECT 
        "WGL_autosnelweg_in_tunnel".ogc_fid::text || 'WGL_autosnelweg_in_tunnel' as identificatie_lokaalid,
        'autosnelweg_in_tunnel' as type,
        "WGL_autosnelweg_in_tunnel".geom,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	NULL::int  as minzoom,
 	 	12  as maxzoom
    FROM kbk50."WGL_autosnelweg_in_tunnel"
    WHERE 1=1
UNION
    SELECT 
        "WGL_straat".ogc_fid::text || 'WGL_straat' as identificatie_lokaalid,
        'straat' as type,
        "WGL_straat".geom,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	NULL::int  as minzoom, 
 	 	12  as maxzoom
    FROM kbk50."WGL_straat"
    WHERE 1=1
UNION
    SELECT 
        "WGL_hoofdweg".ogc_fid::text || 'WGL_hoofdweg' as identificatie_lokaalid,
        'hoofdweg' as type,
        "WGL_hoofdweg".geom,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	NULL::int  as minzoom,
 	 	12  as maxzoom
    FROM kbk50."WGL_hoofdweg"
    WHERE 1=1
UNION
    SELECT 
        "WGL_autosnelweg".ogc_fid::text || 'WGL_autosnelweg' as identificatie_lokaalid,
        'autosnelweg' as type,
        "WGL_autosnelweg".geom,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	NULL::int  as minzoom,
 	 	12  as maxzoom
    FROM kbk50."WGL_autosnelweg"
    WHERE 1=1
WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_wegdeel_lijn_geom_idx ON bgt.bgt_vw_wegdeel_lijn USING gist
( geom)