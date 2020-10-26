DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_waterdeel_lijn;
drop INDEX IF exists bgt_vw_waterdeel_lijn_geom_idx;

CREATE MATERIALIZED VIEW bgt.bgt_vw_waterdeel_lijn
TABLESPACE pg_default
AS SELECT
 		"BGTPLUS_KDL_duiker_L".identificatie_lokaalid,
    "BGTPLUS_KDL_duiker_L".plus_type as type,
    "BGTPLUS_KDL_duiker_L".geometrie,
    "BGTPLUS_KDL_duiker_L".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGTPLUS_KDL_duiker_L"
  WHERE  1=1

/* --- KBK50 ---- */

 UNION  
 SELECT
 		"WDL_brede_waterloop".ogc_fid::character as identificatie_lokaalid,
    'brede_waterloop' as type,
    "WDL_brede_waterloop".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	6  as minzoom, 
 	 	8  as maxzoom
   FROM kbk50."WDL_brede_waterloop"
  WHERE 1=1

 UNION  
 SELECT
 		"WDL_smalle_waterloop".ogc_fid::character as identificatie_lokaalid,
    'smalle_waterloop' as type,
    "WDL_smalle_waterloop".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	6  as minzoom, 
 	 	8  as maxzoom
   FROM kbk50."WDL_smalle_waterloop"
  WHERE 1=1

WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_waterdeel_lijn_geom_idx ON bgt.bgt_vw_waterdeel_lijn USING gist (geometrie);