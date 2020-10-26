DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_wegdeel_vlak;
drop INDEX IF exists bgt_vw_wegdeel_vlak_geom_idx;

CREATE MATERIALIZED VIEW bgt.bgt_vw_wegdeel_vlak
TABLESPACE pg_default
AS
    SELECT
 		"BGT_OWGL_berm".identificatie_lokaalid,
        "BGT_OWGL_berm".bgt_functie as type,
        "BGT_OWGL_berm".bgt_fysiekvoorkomen as subtype,
        "BGT_OWGL_berm".plus_fysiekvoorkomen as subsubtype,
        "BGT_OWGL_berm". geometrie,
        "BGT_OWGL_berm".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_OWGL_berm"
    WHERE 1=1
UNION
    SELECT
 		"BGT_OWGL_verkeerseiland".identificatie_lokaalid,
        "BGT_OWGL_verkeerseiland".bgt_functie as type,
        "BGT_OWGL_verkeerseiland".bgt_fysiekvoorkomen as subtype,
        "BGT_OWGL_verkeerseiland".plus_fysiekvoorkomen as subsubtype,
        "BGT_OWGL_verkeerseiland". geometrie,
        "BGT_OWGL_verkeerseiland".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_OWGL_verkeerseiland"
    WHERE 1=1
UNION
    SELECT
 		"BGT_WGL_baan_voor_vliegverkeer".identificatie_lokaalid,
        "BGT_WGL_baan_voor_vliegverkeer".bgt_functie as type,
        "BGT_WGL_baan_voor_vliegverkeer".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_baan_voor_vliegverkeer".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_baan_voor_vliegverkeer". geometrie,
        "BGT_WGL_baan_voor_vliegverkeer".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_baan_voor_vliegverkeer"
    WHERE 1=1
UNION
    SELECT
 		"BGT_WGL_fietspad".identificatie_lokaalid,
        "BGT_WGL_fietspad".bgt_functie as type,
        "BGT_WGL_fietspad".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_fietspad".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_fietspad". geometrie,
        "BGT_WGL_fietspad".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_fietspad"
    WHERE 1=1
UNION
    SELECT
 		"BGT_WGL_inrit".identificatie_lokaalid,
        "BGT_WGL_inrit".bgt_functie as type,
        "BGT_WGL_inrit".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_inrit".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_inrit". geometrie,
        "BGT_WGL_inrit".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_inrit"
    WHERE 1=1
UNION
    SELECT
 		"BGT_WGL_ov-baan".identificatie_lokaalid,
        "BGT_WGL_ov-baan".bgt_functie as type,
        "BGT_WGL_ov-baan".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_ov-baan".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_ov-baan". geometrie,
        "BGT_WGL_ov-baan".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_ov-baan"
    WHERE 1=1
UNION
    SELECT
 		"BGT_WGL_overweg".identificatie_lokaalid,
        "BGT_WGL_overweg".bgt_functie as type,
        "BGT_WGL_overweg".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_overweg".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_overweg". geometrie,
        "BGT_WGL_overweg".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_overweg"
    WHERE 1=1
UNION
    SELECT
 		"BGT_WGL_parkeervlak".identificatie_lokaalid,
        "BGT_WGL_parkeervlak".bgt_functie as type,
        "BGT_WGL_parkeervlak".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_parkeervlak".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_parkeervlak". geometrie,
        "BGT_WGL_parkeervlak".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_parkeervlak"
    WHERE 1=1
UNION
    SELECT
 		"BGT_WGL_rijbaan_autosnelweg".identificatie_lokaalid,
        "BGT_WGL_rijbaan_autosnelweg".bgt_functie as type,
        "BGT_WGL_rijbaan_autosnelweg".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_rijbaan_autosnelweg".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_rijbaan_autosnelweg". geometrie,
        "BGT_WGL_rijbaan_autosnelweg".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_rijbaan_autosnelweg"
    WHERE 1=1
UNION
    SELECT
 		"BGT_WGL_rijbaan_autoweg".identificatie_lokaalid,
        "BGT_WGL_rijbaan_autoweg".bgt_functie as type,
        "BGT_WGL_rijbaan_autoweg".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_rijbaan_autoweg".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_rijbaan_autoweg". geometrie,
        "BGT_WGL_rijbaan_autoweg".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_rijbaan_autoweg"
    WHERE 1=1
UNION
    SELECT
 		"BGT_WGL_rijbaan_lokale_weg".identificatie_lokaalid,
        "BGT_WGL_rijbaan_lokale_weg".bgt_functie as type,
        "BGT_WGL_rijbaan_lokale_weg".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_rijbaan_lokale_weg".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_rijbaan_lokale_weg". geometrie,
        "BGT_WGL_rijbaan_lokale_weg".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_rijbaan_lokale_weg"
    WHERE 1=1
UNION
    SELECT
 		"BGT_WGL_rijbaan_regionale_weg".identificatie_lokaalid,
        "BGT_WGL_rijbaan_regionale_weg".bgt_functie as type,
        "BGT_WGL_rijbaan_regionale_weg".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_rijbaan_regionale_weg".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_rijbaan_regionale_weg". geometrie,
        "BGT_WGL_rijbaan_regionale_weg".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_rijbaan_regionale_weg"
    WHERE 1=1
UNION
    SELECT
 		"BGT_WGL_ruiterpad".identificatie_lokaalid,
        "BGT_WGL_ruiterpad".bgt_functie as type,
        "BGT_WGL_ruiterpad".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_ruiterpad".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_ruiterpad". geometrie,
        "BGT_WGL_ruiterpad".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_ruiterpad"
    WHERE 1=1
UNION
    SELECT
 		"BGT_WGL_voetgangersgebied".identificatie_lokaalid,
        "BGT_WGL_voetgangersgebied".bgt_functie as type,
        "BGT_WGL_voetgangersgebied".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_voetgangersgebied".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_voetgangersgebied". geometrie,
        "BGT_WGL_voetgangersgebied".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_voetgangersgebied"
    WHERE 1=1
UNION
    SELECT
 		"BGT_WGL_voetpad".identificatie_lokaalid,
        "BGT_WGL_voetpad".bgt_functie as type,
        "BGT_WGL_voetpad".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_voetpad".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_voetpad". geometrie,
        "BGT_WGL_voetpad".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_voetpad"
    WHERE 1=1
UNION
    SELECT 
        "BGT_WGL_voetpad_op_trap".identificatie_lokaalid,
        "BGT_WGL_voetpad_op_trap".bgt_functie as type,
        "BGT_WGL_voetpad_op_trap".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_voetpad_op_trap".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_voetpad_op_trap". geometrie,
        "BGT_WGL_voetpad_op_trap".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_voetpad_op_trap"
    WHERE 1=1
UNION
    SELECT 
        "BGT_WGL_woonerf".identificatie_lokaalid,
        "BGT_WGL_woonerf".bgt_functie as type,
        "BGT_WGL_woonerf".bgt_fysiekvoorkomen as subtype,
        "BGT_WGL_woonerf".plus_fysiekvoorkomen as subsubtype,
        "BGT_WGL_woonerf". geometrie,
        "BGT_WGL_woonerf".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
    FROM bgt."BGT_WGL_woonerf"
    WHERE 1=1
UNION
    
    /* KBK10 */

    SELECT 
        "WGL_startbaan_landingsbaan".ogc_fid::character as identificatie_lokaalid,
        'startbaan_landingsbaan' as type,
        NULL as subtype,
        NULL as subsubtype,
        "WGL_startbaan_landingsbaan".geom,
        0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15  as maxzoom
    FROM kbk10."WGL_startbaan_landingsbaan"
    WHERE 1=1
UNION
    SELECT 
        "TRN_spoorbaanlichaam".ogc_fid::character as identificatie_lokaalid,
        'spoorbaanlichaam' as type,
        NULL as subtype,
        NULL as subsubtype,
        "TRN_spoorbaanlichaam".geom,
        0  as relatievehoogteligging, 
 	    'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15  as maxzoom
    FROM kbk10."TRN_spoorbaanlichaam"
    WHERE 1=1
WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_wegdeel_vlak_geom_idx ON bgt.bgt_vw_wegdeel_vlak USING gist (geometrie);
