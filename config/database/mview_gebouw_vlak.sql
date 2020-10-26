DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_gebouw_vlak;
drop INDEX IF exists bgt_vw_gebouw_vlak_geom_idx;

CREATE MATERIALIZED VIEW bgt.bgt_vw_gebouw_vlak
TABLESPACE pg_default
AS SELECT "BGTPLUS_GISE_bordes".identificatie_lokaalid,
    "BGTPLUS_GISE_bordes".plus_type as type,
    "BGTPLUS_GISE_bordes".geometrie,
    "BGTPLUS_GISE_bordes".relatievehoogteligging
   FROM bgt."BGTPLUS_GISE_bordes"
  WHERE 1=1
UNION
 SELECT "BGTPLUS_GISE_luifel".identificatie_lokaalid,
    "BGTPLUS_GISE_luifel".plus_type as type,
    "BGTPLUS_GISE_luifel".geometrie,
    "BGTPLUS_GISE_luifel".relatievehoogteligging
   FROM bgt."BGTPLUS_GISE_luifel"
  WHERE 1=1
UNION
 SELECT "BGTPLUS_GISE_onbekend".identificatie_lokaalid,
    "BGTPLUS_GISE_onbekend".plus_type as type,
    "BGTPLUS_GISE_onbekend".geometrie,
    "BGTPLUS_GISE_onbekend".relatievehoogteligging
   FROM bgt."BGTPLUS_GISE_onbekend"
  WHERE 1=1
UNION
 SELECT "BGTPLUS_GISE_toegangstrap".identificatie_lokaalid,
    "BGTPLUS_GISE_toegangstrap".plus_type as type,
    "BGTPLUS_GISE_toegangstrap".geometrie,
    "BGTPLUS_GISE_toegangstrap".relatievehoogteligging
   FROM bgt."BGTPLUS_GISE_toegangstrap"
  WHERE 1=1
UNION
 SELECT "BGTPLUS_OBW_bunker".identificatie_lokaalid,
    "BGTPLUS_OBW_bunker".plus_type as type,
    "BGTPLUS_OBW_bunker".geometrie,
    "BGTPLUS_OBW_bunker".relatievehoogteligging
   FROM bgt."BGTPLUS_OBW_bunker"
  WHERE 1=1
UNION
 SELECT "BGTPLUS_OBW_onbekend".identificatie_lokaalid,
    "BGTPLUS_OBW_onbekend".plus_type as type,
    "BGTPLUS_OBW_onbekend".geometrie,
    "BGTPLUS_OBW_onbekend".relatievehoogteligging
   FROM bgt."BGTPLUS_OBW_onbekend"
  WHERE 1=1
UNION
 SELECT "BGTPLUS_OBW_schuur".identificatie_lokaalid,
    "BGTPLUS_OBW_schuur".plus_type as type,
    "BGTPLUS_OBW_schuur".geometrie,
    "BGTPLUS_OBW_schuur".relatievehoogteligging
   FROM bgt."BGTPLUS_OBW_schuur"
  WHERE 1=1
UNION
 SELECT "BGTPLUS_OBW_voedersilo".identificatie_lokaalid,
    "BGTPLUS_OBW_voedersilo".plus_type as type,
    "BGTPLUS_OBW_voedersilo".geometrie,
    "BGTPLUS_OBW_voedersilo".relatievehoogteligging
   FROM bgt."BGTPLUS_OBW_voedersilo"
  WHERE 1=1
UNION
 SELECT "BGT_OBW_bassin".identificatie_lokaalid,
    "BGT_OBW_bassin".bgt_type as type,
    "BGT_OBW_bassin".geometrie,
    "BGT_OBW_bassin".relatievehoogteligging
   FROM bgt."BGT_OBW_bassin"
  WHERE 1=1
UNION
 SELECT "BGT_OBW_bezinkbak".identificatie_lokaalid,
    "BGT_OBW_bezinkbak".bgt_type as type,
    "BGT_OBW_bezinkbak".geometrie,
    "BGT_OBW_bezinkbak".relatievehoogteligging
   FROM bgt."BGT_OBW_bezinkbak"
  WHERE 1=1
UNION
 SELECT "BGT_OBW_lage_trafo".identificatie_lokaalid,
    "BGT_OBW_lage_trafo".bgt_type as type,
    "BGT_OBW_lage_trafo".geometrie,
    "BGT_OBW_lage_trafo".relatievehoogteligging
   FROM bgt."BGT_OBW_lage_trafo"
  WHERE 1=1
UNION
 SELECT "BGT_OBW_open_loods".identificatie_lokaalid,
    "BGT_OBW_open_loods".bgt_type as type,
    "BGT_OBW_open_loods".geometrie,
    "BGT_OBW_open_loods".relatievehoogteligging
   FROM bgt."BGT_OBW_open_loods"
  WHERE 1=1
UNION
 SELECT "BGT_OBW_opslagtank".identificatie_lokaalid,
    "BGT_OBW_opslagtank".bgt_type as type,
    "BGT_OBW_opslagtank".geometrie,
    "BGT_OBW_opslagtank".relatievehoogteligging
   FROM bgt."BGT_OBW_opslagtank"
  WHERE 1=1
UNION
 SELECT "BGT_OBW_overkapping".identificatie_lokaalid,
    "BGT_OBW_overkapping".bgt_type as type,
    "BGT_OBW_overkapping".geometrie,
    "BGT_OBW_overkapping".relatievehoogteligging
   FROM bgt."BGT_OBW_overkapping"
  WHERE 1=1
UNION
 SELECT "BGT_OBW_transitie".identificatie_lokaalid,
    "BGT_OBW_transitie".bgt_type as type,
    "BGT_OBW_transitie".geometrie,
    "BGT_OBW_transitie".relatievehoogteligging
   FROM bgt."BGT_OBW_transitie"
  WHERE 1=1
UNION
 SELECT "BGT_OBW_windturbine".identificatie_lokaalid,
    "BGT_OBW_windturbine".bgt_type as type,
    "BGT_OBW_windturbine".geometrie,
    "BGT_OBW_windturbine".relatievehoogteligging
   FROM bgt."BGT_OBW_windturbine"
  WHERE 1=1
UNION
 SELECT "BGT_PND_pand".identificatie_lokaalid,
    "BGT_PND_pand".bgt_status as type,
    "BGT_PND_pand".geometrie,
    "BGT_PND_pand".relatievehoogteligging
   FROM bgt."BGT_PND_pand"
  WHERE 1=1
UNION
 SELECT "CFT_Onderbouw".guid AS identificatie_lokaalid,
    NULL::character varying as type,
    "CFT_Onderbouw".geometrie,
    "CFT_Onderbouw".relatievehoogteligging
   FROM bgt."CFT_Onderbouw"
  WHERE 1=1
UNION
 SELECT "CFT_Overbouw".guid AS identificatie_lokaalid,
    NULL::character varying as type,
    "CFT_Overbouw".geometrie, 
    "CFT_Overbouw".relatievehoogteligging
   FROM bgt."CFT_Overbouw"
  WHERE 1=1
WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_gebouw_vlak_geom_idx ON bgt.bgt_vw_gebouw_vlak USING gist (geometrie);




