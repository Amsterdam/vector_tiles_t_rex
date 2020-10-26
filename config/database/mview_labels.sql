DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_labels;
drop INDEX IF exists bgt_vw_labels_geom_idx;

CREATE MATERIALIZED VIEW bgt.bgt_vw_labels
TABLESPACE pg_default
AS SELECT		
    "BAG_LBL_Ligplaatsnummeraanduidingreeks"."BAG_identificatie" as identificatie_lokaalid,
    'ligplaats' as type,
    "BAG_LBL_Ligplaatsnummeraanduidingreeks".geometrie,
    "BAG_LBL_Ligplaatsnummeraanduidingreeks".hoek, 
    "BAG_LBL_Ligplaatsnummeraanduidingreeks".tekst, 
 	'bag/bgt' as bron, 
 	6  as minzoom, 
 	21  as maxzoom
   FROM bgt."BAG_LBL_Ligplaatsnummeraanduidingreeks"
  WHERE 1=1
union
SELECT
    "BAG_LBL_Standplaatsnummeraanduidingreeks"."BAG_identificatie" as identificatie_lokaalid,
    'standplaats' as type,
    "BAG_LBL_Standplaatsnummeraanduidingreeks".geometrie,
    "BAG_LBL_Standplaatsnummeraanduidingreeks".hoek, 
    "BAG_LBL_Standplaatsnummeraanduidingreeks".tekst, 
 	'bag/bgt' as bron, 
 	6  as minzoom, 
 	21  as maxzoom
   FROM bgt."BAG_LBL_Standplaatsnummeraanduidingreeks"
  WHERE 1=1
union
SELECT
    "BGT_LBL_administratief_gebied".identificatie_lokaalid,
    "BGT_LBL_administratief_gebied".openbareruimtetype as type,
    "BGT_LBL_administratief_gebied".geometrie,
    "BGT_LBL_administratief_gebied".hoek, 
    "BGT_LBL_administratief_gebied".tekst, 
 	'bgt' as bron, 
 	6  as minzoom, 
 	21  as maxzoom
   FROM bgt."BGT_LBL_administratief_gebied"
  WHERE 1=1
union
SELECT
    "BGT_LBL_kunstwerk".identificatie_lokaalid,
    "BGT_LBL_kunstwerk".openbareruimtetype as type,
    "BGT_LBL_kunstwerk".geometrie,
    "BGT_LBL_kunstwerk".hoek, 
    "BGT_LBL_kunstwerk".tekst, 
 	'bgt' as bron, 
 	6  as minzoom, 
 	21  as maxzoom
   FROM bgt."BGT_LBL_kunstwerk"
  WHERE 1=1
union
SELECT
    "BGT_LBL_landschappelijk_gebied".identificatie_lokaalid,
    "BGT_LBL_landschappelijk_gebied".openbareruimtetype as type,
    "BGT_LBL_landschappelijk_gebied".geometrie,
    "BGT_LBL_landschappelijk_gebied".hoek, 
    "BGT_LBL_landschappelijk_gebied".tekst, 
 	'bgt' as bron, 
 	6  as minzoom, 
 	21  as maxzoom
   FROM bgt."BGT_LBL_landschappelijk_gebied"
  WHERE 1=1
union
SELECT
    "BGT_LBL_nummeraanduidingreeks".identificatie_lokaalid,
    'nummeraanduiding' as type,
    "BGT_LBL_nummeraanduidingreeks".geometrie,
    "BGT_LBL_nummeraanduidingreeks".hoek, 
    "BGT_LBL_nummeraanduidingreeks".tekst, 
 	'bgt' as bron, 
 	6  as minzoom, 
 	21  as maxzoom
   FROM bgt."BGT_LBL_nummeraanduidingreeks"
  WHERE 1=1
union
SELECT
    "BGT_LBL_terrein".identificatie_lokaalid,
    "BGT_LBL_terrein".openbareruimtetype as type,
    "BGT_LBL_terrein".geometrie,
    "BGT_LBL_terrein".hoek, 
    "BGT_LBL_terrein".tekst, 
 	'bgt' as bron, 
 	6  as minzoom, 
 	21  as maxzoom
   FROM bgt."BGT_LBL_terrein"
  WHERE 1=1
union
SELECT
    "BGT_LBL_water".identificatie_lokaalid,
    "BGT_LBL_water".openbareruimtetype as type,
    "BGT_LBL_water".geometrie,
    "BGT_LBL_water".hoek, 
    "BGT_LBL_water".tekst, 
 	'bgt' as bron, 
 	6  as minzoom, 
 	21  as maxzoom
   FROM bgt."BGT_LBL_water"
  WHERE 1=1
union
SELECT
    "BGT_LBL_weg".identificatie_lokaalid,
    "BGT_LBL_weg".openbareruimtetype as type,
    "BGT_LBL_weg".geometrie,
    "BGT_LBL_weg".hoek, 
    "BGT_LBL_weg".tekst, 
 	'bgt' as bron, 
 	6  as minzoom, 
 	21  as maxzoom
   FROM bgt."BGT_LBL_weg"
  WHERE 1=1

WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_labels_geom_idx ON bgt.bgt_vw_labels USING gist (geometrie);





