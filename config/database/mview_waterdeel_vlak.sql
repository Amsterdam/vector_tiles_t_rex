DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_waterdeel_vlak;
drop INDEX IF exists bgt_vw_waterdeel_vlak_geom_idx;


CREATE MATERIALIZED VIEW bgt.bgt_vw_waterdeel_vlak
TABLESPACE pg_default
AS SELECT "BGTPLUS_KDL_duiker_V".identificatie_lokaalid,
    "BGTPLUS_KDL_duiker_V".plus_type as type,
    "BGTPLUS_KDL_duiker_V". geometrie, 
     "BGTPLUS_KDL_duiker_V".relatievehoogteligging
   FROM bgt."BGTPLUS_KDL_duiker_V"
  WHERE 1=1
UNION
 SELECT "BGT_WDL_greppel_droge_sloot".identificatie_lokaalid,
    "BGT_WDL_greppel_droge_sloot".bgt_type as type,
    "BGT_WDL_greppel_droge_sloot". geometrie, 
     "BGT_WDL_greppel_droge_sloot".relatievehoogteligging
   FROM bgt."BGT_WDL_greppel_droge_sloot"
  WHERE 1=1
UNION
 SELECT "BGT_WDL_waterloop".identificatie_lokaalid,
    "BGT_WDL_waterloop".bgt_type as type,
    "BGT_WDL_waterloop". geometrie, 
     "BGT_WDL_waterloop".relatievehoogteligging
   FROM bgt."BGT_WDL_waterloop"
  WHERE 1=1
UNION
 SELECT "BGT_WDL_watervlakte".identificatie_lokaalid,
    "BGT_WDL_watervlakte".bgt_type as type,
    "BGT_WDL_watervlakte". geometrie, 
     "BGT_WDL_watervlakte".relatievehoogteligging
   FROM bgt."BGT_WDL_watervlakte"
  WHERE 1=1

  /* KBK10 */

 UNION 
 SELECT "WDL_breed_water".ogc_fid::character as identificatie_lokaalid,
    'breed_water' as type,
    "WDL_breed_water".geom, 
     NULL as relatievehoogteligging
   FROM kbk10."WDL_breed_water"
  WHERE 1=1

/* --- KBK50 ---- */

 UNION 
 SELECT "WDL_wateroppervlak".ogc_fid::character as identificatie_lokaalid,
    'breed_water' as type,
    "WDL_wateroppervlak".geom, 
     NULL as relatievehoogteligging
   FROM kbk50."WDL_wateroppervlak"
  WHERE 1=1

WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_waterdeel_vlak_geom_idx ON bgt.bgt_vw_waterdeel_vlak USING gist ( geometrie)
