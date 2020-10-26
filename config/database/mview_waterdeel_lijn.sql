DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_waterdeel_lijn;
drop INDEX IF exists bgt_vw_waterdeel_lijn_geom_idx;

CREATE MATERIALIZED VIEW bgt.bgt_vw_waterdeel_lijn
TABLESPACE pg_default
AS SELECT
 		"BGTPLUS_KDL_duiker_L".identificatie_lokaalid || 'BGTPLUS_KDL_duiker_L' as identificatie_lokaalid,
    "BGTPLUS_KDL_duiker_L".plus_type as type,
    "BGTPLUS_KDL_duiker_L".geometrie,
    "BGTPLUS_KDL_duiker_L".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_KDL_duiker_L"
  WHERE  1=1

/* --- KBK50 ---- */

 UNION  
 SELECT
 		"WDL_brede_waterloop".ogc_fid::text || 'WDL_brede_waterloop' as identificatie_lokaal_id,
    'brede_waterloop' as type,
    "WDL_brede_waterloop".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	NULL::int  as minzoom, 
 	 	12  as maxzoom
   FROM kbk50."WDL_brede_waterloop"
  WHERE 1=1

 UNION  
 SELECT
 		"WDL_smalle_waterloop".ogc_fid::text || 'WDL_smalle_waterloop' as identificatie_lokaal_id,
    'smalle_waterloop' as type,
    "WDL_smalle_waterloop".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	NULL::int  as minzoom, 
 	 	12  as maxzoom
   FROM kbk50."WDL_smalle_waterloop"
  WHERE 1=1

WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_waterdeel_lijn_geom_idx ON bgt.bgt_vw_waterdeel_lijn USING gist (geometrie);