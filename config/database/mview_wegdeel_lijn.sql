DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_wegdeel_lijn;

CREATE materialized VIEW bgt.bgt_vw_wegdeel_lijn
TABLESPACE pg_default AS

/* --- KBK10 ---- */
    select
        "WGL_smalle_weg".ogc_fid::text ||'-'|| 'WGL_smalle_weg' as identificatie_lokaalid,
        'smalle_weg' as type,
		ST_makeValid(        "WGL_smalle_weg".geom) as geometrie,
        0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	15  as minzoom, 
 	 	15  as maxzoom
    from
        kbk10."WGL_smalle_weg"
    where 1 = 1
 --   UNION ALL
 --     select
 --       "WGL_autoveer".ogc_fid::text ||'-'|| 'WGL_autoveer' as identificatie_lokaalid,
 --       'autoveer' as type,
--		ST_makeValid(        "WGL_autoveer".geom) as geometrie,
 --       0  as relatievehoogteligging, 
 --	 	'kbk10' as bron, 
 --	 	13  as minzoom, 
 --	 	15  as maxzoom
 --   from
 --       kbk10."WGL_autoveer"
 --   where 1 = 1
 --   UNION ALL
 --     select
 --       "WGL_hartlijn".ogc_fid::text ||'-'|| 'WGL_hartlijn' as identificatie_lokaalid,
 --       'hartlijn' as type,
--		ST_makeValid(        "WGL_hartlijn".geom) as geometrie,
 --       0  as relatievehoogteligging, 
 --	 	'kbk10' as bron, 
 --	 	13  as minzoom, 
 --	 	15  as maxzoom
 --   from
 --       kbk10."WGL_hartlijn"
 --   where 1 = 1
-- UNION
 --   SELECT 
 --       "WGL_voetveer".ogc_fid::text ||'-'|| 'WGL_voetveer' as identificatie_lokaalid,
 --       'voetveer' as type,
--		ST_makeValid(        "WGL_voetveer".geom) as geometrie,
 --       0  as relatievehoogteligging, 
 --	 	'kbk10' as bron, 
 --	 	13 as minzoom,
 --	 	15  as maxzoom
 --   FROM kbk10."WGL_voetveer"
 --   WHERE 1=1
    
 /* --- KBK50 ---- */
UNION
    SELECT 
        "WGL_straat_in_tunnel".ogc_fid::text ||'-'|| 'WGL_straat_in_tunnel' as identificatie_lokaalid,
        'straat' as type,
		ST_makeValid(        "WGL_straat_in_tunnel".geom) as geometrie, 
        -1  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	11 as minzoom, 
 	 	13 as maxzoom
    FROM kbk50."WGL_straat_in_tunnel"
    WHERE 1=1
UNION
    SELECT 
        "WGL_hoofdweg_in_tunnel".ogc_fid::text ||'-'|| 'WGL_hoofdweg_in_tunnel' as identificatie_lokaalid,
        'hoofdweg' as type,
		ST_makeValid(        "WGL_hoofdweg_in_tunnel".geom) as geometrie,
        -1  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom, 
 	 	13 as maxzoom
    FROM kbk50."WGL_hoofdweg_in_tunnel"
    WHERE 1=1
UNION
    SELECT 
        "WGL_regionale_weg".ogc_fid::text ||'-'|| 'WGL_regionale_weg' as identificatie_lokaalid,
        'regionale_weg' as type,
		ST_makeValid(        "WGL_regionale_weg".geom) as geometrie,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom, 
 	 	13 as maxzoom
    FROM kbk50."WGL_regionale_weg"
    WHERE 1=1
UNION
    SELECT 
        "WGL_regionale_weg_in_tunnel".ogc_fid::text ||'-'|| 'WGL_regionale_weg_in_tunnel' as identificatie_lokaalid,
        'regionale_weg' as type,
		ST_makeValid(        "WGL_regionale_weg_in_tunnel".geom) as geometrie,
        -1  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom, 
 	 	13 as maxzoom
    FROM kbk50."WGL_regionale_weg_in_tunnel"
    WHERE 1=1
UNION
    SELECT 
        "WGL_autosnelweg_in_tunnel".ogc_fid::text ||'-'|| 'WGL_autosnelweg_in_tunnel' as identificatie_lokaalid,
        'autosnelweg' as type,
		ST_makeValid(        "WGL_autosnelweg_in_tunnel".geom) as geometrie,
        -1  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom,
 	 	13 as maxzoom
    FROM kbk50."WGL_autosnelweg_in_tunnel"
    WHERE 1=1
UNION
    SELECT 
        "WGL_straat".ogc_fid::text ||'-'|| 'WGL_straat' as identificatie_lokaalid,
        'straat' as type,
		ST_makeValid(        "WGL_straat".geom) as geometrie,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	11 as minzoom, 
 	 	13 as maxzoom
    FROM kbk50."WGL_straat"
    WHERE 1=1
UNION
    SELECT 
        "WGL_hoofdweg".ogc_fid::text ||'-'|| 'WGL_hoofdweg' as identificatie_lokaalid,
        'hoofdweg' as type,
		ST_makeValid(        "WGL_hoofdweg".geom) as geometrie,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom,
 	 	13 as maxzoom
    FROM kbk50."WGL_hoofdweg"
    WHERE 1=1
UNION
    SELECT 
        "WGL_autosnelweg".ogc_fid::text ||'-'|| 'WGL_autosnelweg' as identificatie_lokaalid,
        'autosnelweg' as type,
		ST_makeValid(        "WGL_autosnelweg".geom) as geometrie,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	8 as minzoom,
 	 	13 as maxzoom
    FROM kbk50."WGL_autosnelweg"
    WHERE 1=1
-- UNION
--     SELECT 
--         "WGL_veerverbinding".ogc_fid::text ||'-'|| 'WGL_veerverbinding' as identificatie_lokaalid,
--         'veerverbinding' as type,
-- 		ST_makeValid(        "WGL_veerverbinding".geom) as geometrie,
--         0  as relatievehoogteligging, 
--  	 	'kbk50' as bron, 
--  	 	8 as minzoom,
--  	 	13 as maxzoom
--     FROM kbk50."WGL_veerverbinding"
--     WHERE 1=1
WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_wegdeel_lijn_geom_idx ON bgt.bgt_vw_wegdeel_lijn USING gist (geometrie);