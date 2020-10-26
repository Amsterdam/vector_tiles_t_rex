DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_spoor_lijn;
drop INDEX IF exists bgt_vw_spoor_lijn_geom_idx;


CREATE MATERIALIZED VIEW bgt.bgt_vw_spoor_lijn 
TABLESPACE pg_default AS
    SELECT
 		"BGT_SPR_sneltram".identificatie_lokaalid,
        "BGT_SPR_sneltram".bgt_functie as type,
        "BGT_SPR_sneltram".geometrie,
        "BGT_SPR_sneltram".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
    FROM bgt."BGT_SPR_sneltram"
    WHERE  1=1
UNION
    SELECT
 		"BGT_SPR_tram".identificatie_lokaalid,
        "BGT_SPR_tram".bgt_functie as type,
        "BGT_SPR_tram".geometrie,
        "BGT_SPR_tram".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
    FROM bgt."BGT_SPR_tram"
    WHERE 1=1
UNION
    SELECT
 		"BGT_SPR_trein".identificatie_lokaalid,
        "BGT_SPR_trein".bgt_functie as type,
        "BGT_SPR_trein".geometrie,
        "BGT_SPR_trein".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
    FROM bgt."BGT_SPR_trein"
    WHERE 1=1

UNION

/* KBK10 */
    SELECT
 		"SBL_metro_overdekt".ogc_fid::character as identificatie_lokaalid,
        'SBL_metro_overdekt' as type,
        "SBL_metro_overdekt".geom,
        0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	9  as minzoom, 
 	 	21  as maxzoom
    FROM kbk10."SBL_metro_overdekt"
    WHERE 1=1
UNION
    SELECT
 		"SBL_trein_overdekt_1sp".ogc_fid::character as identificatie_lokaalid,
        'trein_overdekt_1sp' as type,
        "SBL_trein_overdekt_1sp".geom,
        0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	9  as minzoom, 
 	 	21  as maxzoom
    FROM kbk10."SBL_trein_overdekt_1sp"
    WHERE 1=1
UNION
    SELECT
 		"SBL_trein_overdekt_nsp".ogc_fid::character as identificatie_lokaalid,
        'SBL_trein_overdekt_nsp' as type,
        "SBL_trein_overdekt_nsp".geom,
        0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	9  as minzoom, 
 	 	21  as maxzoom
    FROM kbk10."SBL_trein_overdekt_nsp"
    WHERE 1=1
UNION
    SELECT
 		"SBL_metro_nietoverdekt_1sp".ogc_fid::character as identificatie_lokaalid,
        'SBL_metro_nietoverdekt_1sp' as type,
        "SBL_metro_nietoverdekt_1sp".geom,
        0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	9  as minzoom, 
 	 	21  as maxzoom
    FROM kbk10."SBL_metro_nietoverdekt_1sp"
    WHERE 1=1
UNION
    SELECT
 		"SBL_metro_nietoverdekt_nsp".ogc_fid::character as identificatie_lokaalid,
        'SBL_metro_nietoverdekt_nsp' as type,
        "SBL_metro_nietoverdekt_nsp".geom,
        0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	9  as minzoom, 
 	 	21  as maxzoom
    FROM kbk10."SBL_metro_nietoverdekt_nsp"
    WHERE 1=1
UNION
    SELECT
 		"SBL_trein_ongeelektrificeerd".ogc_fid::character as identificatie_lokaalid,
        'SBL_trein_ongeelektrificeerd' as type,
        "SBL_trein_ongeelektrificeerd".geom,
        0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	9  as minzoom, 
 	 	21  as maxzoom
    FROM kbk10."SBL_trein_ongeelektrificeerd"
    WHERE 1=1
UNION
    SELECT
 		"SBL_trein_ongeelektrificeerd".ogc_fid::character as identificatie_lokaalid,
        'SBL_trein_ongeelektrificeerd' as type,
        "SBL_trein_ongeelektrificeerd".geom,
        0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	9  as minzoom, 
 	 	21  as maxzoom
    FROM kbk10."SBL_trein_ongeelektrificeerd"
    WHERE 1=1
UNION
    SELECT
 		"SBL_trein_nietoverdekt_1sp".ogc_fid::character as identificatie_lokaalid,
        'SBL_trein_nietoverdekt_1sp' as type,
        "SBL_trein_nietoverdekt_1sp".geom,
        0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	9  as minzoom, 
 	 	21  as maxzoom
    FROM kbk10."SBL_trein_nietoverdekt_1sp"
    WHERE 1=1
UNION
    SELECT
 		"SBL_trein_nietoverdekt_nsp".ogc_fid::character as identificatie_lokaalid,
        'SBL_trein_nietoverdekt_nsp' as type,
        "SBL_trein_nietoverdekt_nsp".geom,
        0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	9  as minzoom, 
 	 	21  as maxzoom
    FROM kbk10."SBL_trein_nietoverdekt_nsp"
    WHERE 1=1

/* KBK50 */
UNION
    SELECT
 		"SBL_metro_sneltram_in_tunnel".ogc_fid::character as identificatie_lokaalid,
        'metro_sneltram_in_tunnel' as type,
        "SBL_metro_sneltram_in_tunnel".geom,
        0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	6  as minzoom, 
 	 	8  as maxzoom
    FROM kbk50."SBL_metro_sneltram_in_tunnel"
    WHERE 1=1
UNION
    SELECT
 		"SBL_trein_in_tunnel".ogc_fid::character as identificatie_lokaalid,
        'trein_in_tunnel' as type,
        "SBL_trein_in_tunnel".geom,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	6  as minzoom, 
 	 	8  as maxzoom
    FROM kbk50."SBL_trein_in_tunnel"
    WHERE 1=1
UNION
    SELECT
 		"SBL_metro_sneltram".ogc_fid::character as identificatie_lokaalid,
        'metro_sneltram' as type,
        "SBL_metro_sneltram".geom,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	6  as minzoom, 
 	 	8  as maxzoom
    FROM kbk50."SBL_metro_sneltram"
    WHERE 1=1
UNION
    SELECT
 		"SBL_trein_ongeelektrificeerd".ogc_fid::character as identificatie_lokaalid,
        'trein_ongeelektrificeerd' as type,
        "SBL_trein_ongeelektrificeerd".geom,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	6  as minzoom, 
 	 	8  as maxzoom
    FROM kbk50."SBL_trein_ongeelektrificeerd"
    WHERE 1=1
UNION
    SELECT
 		"SBL_trein".ogc_fid::character as identificatie_lokaalid,
        'trein' as type,
        "SBL_trein".geom,
        0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	6  as minzoom, 
 	 	8  as maxzoom
    FROM kbk50."SBL_trein"
    WHERE 1=1

WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_spoor_lijn_geom_idx ON bgt.bgt_vw_spoor_lijn USING gist
(geometrie);