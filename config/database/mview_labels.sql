DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_labels;
drop INDEX IF exists bgt_vw_labels_geom_idx;

CREATE MATERIALIZED VIEW bgt.bgt_vw_labels
TABLESPACE pg_default
AS SELECT		
    "BAG_LBL_Ligplaatsnummeraanduidingreeks"."BAG_identificatie" || 'BAG_LBL_Ligplaatsnummeraanduidingreeks' as identificatie_lokaalid,
    'ligplaats' as type,
		ST_makeValid(    "BAG_LBL_Ligplaatsnummeraanduidingreeks".geometrie) as geometrie,
    "BAG_LBL_Ligplaatsnummeraanduidingreeks".hoek, 
    "BAG_LBL_Ligplaatsnummeraanduidingreeks".tekst, 
 	'bag/bgt' as bron, 
 	16  as minzoom, 
 	NULL::int  as maxzoom
   FROM bgt."BAG_LBL_Ligplaatsnummeraanduidingreeks"
  WHERE 1=1
union
SELECT
    "BAG_LBL_Standplaatsnummeraanduidingreeks"."BAG_identificatie" || 'BAG_LBL_Standplaatsnummeraanduidingreeks' as identificatie_lokaalid,
    'standplaats' as type,
		ST_makeValid(    "BAG_LBL_Standplaatsnummeraanduidingreeks".geometrie) as geometrie,
    "BAG_LBL_Standplaatsnummeraanduidingreeks".hoek, 
    "BAG_LBL_Standplaatsnummeraanduidingreeks".tekst, 
 	'bag/bgt' as bron, 
 	16  as minzoom, 
 	NULL::int  as maxzoom
   FROM bgt."BAG_LBL_Standplaatsnummeraanduidingreeks"
  WHERE 1=1
union
SELECT
    "BGT_LBL_administratief_gebied".identificatie_lokaalid ||'-'|| row_number() over (partition by "BGT_LBL_administratief_gebied".identificatie_lokaalid order by tijdstipregistratie desc ) ||'-'|| 'BGT_LBL_administratief_gebied' as identificatie_lokaalid,
    "BGT_LBL_administratief_gebied".openbareruimtetype as type,
		ST_makeValid(    "BGT_LBL_administratief_gebied".geometrie) as geometrie,
    "BGT_LBL_administratief_gebied".hoek, 
    "BGT_LBL_administratief_gebied".tekst, 
 	'bgt' as bron, 
 	16  as minzoom, 
 	NULL::int  as maxzoom
   FROM bgt."BGT_LBL_administratief_gebied"
  WHERE 1=1
union
SELECT
    "BGT_LBL_kunstwerk".identificatie_lokaalid ||'-'|| row_number() over (partition by "BGT_LBL_kunstwerk".identificatie_lokaalid order by tijdstipregistratie desc ) ||'-'||  'BGT_LBL_kunstwerk' as identificatie_lokaalid,
    "BGT_LBL_kunstwerk".openbareruimtetype as type,
		ST_makeValid(    "BGT_LBL_kunstwerk".geometrie) as geometrie,
    "BGT_LBL_kunstwerk".hoek, 
    "BGT_LBL_kunstwerk".tekst, 
 	'bgt' as bron, 
 	16  as minzoom, 
 	NULL::int  as maxzoom
   FROM bgt."BGT_LBL_kunstwerk"
  WHERE 1=1
union
SELECT
    "BGT_LBL_landschappelijk_gebied".identificatie_lokaalid ||'-'|| row_number() over (partition by "BGT_LBL_landschappelijk_gebied".identificatie_lokaalid order by tijdstipregistratie desc ) ||'-'|| 'BGT_LBL_landschappelijk_gebied' as identificatie_lokaalid,
    "BGT_LBL_landschappelijk_gebied".openbareruimtetype as type,
		ST_makeValid(    "BGT_LBL_landschappelijk_gebied".geometrie) as geometrie,
    "BGT_LBL_landschappelijk_gebied".hoek, 
    "BGT_LBL_landschappelijk_gebied".tekst, 
 	'bgt' as bron, 
 	16  as minzoom, 
 	NULL::int  as maxzoom
   FROM bgt."BGT_LBL_landschappelijk_gebied"
  WHERE 1=1
union
SELECT
    "BGT_LBL_nummeraanduidingreeks".identificatie_lokaalid ||'-'|| "BGT_LBL_nummeraanduidingreeks".tekst ||'-'|| "BGT_LBL_nummeraanduidingreeks".ogc_fid ||'-'|| 'BGT_LBL_nummeraanduidingreeks' as identificatie_lokaalid,
    'nummeraanduiding' as type,
		ST_makeValid(    "BGT_LBL_nummeraanduidingreeks".geometrie) as geometrie,
    "BGT_LBL_nummeraanduidingreeks".hoek, 
    "BGT_LBL_nummeraanduidingreeks".tekst, 
 	'bgt' as bron, 
 	16  as minzoom, 
 	NULL::int  as maxzoom
   FROM bgt."BGT_LBL_nummeraanduidingreeks"
  WHERE 1=1
union
SELECT
    "BGT_LBL_terrein".identificatie_lokaalid ||'-'|| row_number() over (partition by "BGT_LBL_terrein".identificatie_lokaalid order by tijdstipregistratie desc ) ||'-'|| 'BGT_LBL_terrein' as identificatie_lokaalid,
    "BGT_LBL_terrein".openbareruimtetype as type,
		ST_makeValid(    "BGT_LBL_terrein".geometrie) as geometrie,
    "BGT_LBL_terrein".hoek, 
    "BGT_LBL_terrein".tekst, 
 	'bgt' as bron, 
 	16  as minzoom, 
 	NULL::int  as maxzoom
   FROM bgt."BGT_LBL_terrein"
  WHERE 1=1
union
SELECT
    "BGT_LBL_water".identificatie_lokaalid ||'-'|| row_number() over (partition by "BGT_LBL_water".identificatie_lokaalid order by tijdstipregistratie desc ) ||'-'|| 'BGT_LBL_water' as identificatie_lokaalid,
    "BGT_LBL_water".openbareruimtetype as type,
		ST_makeValid(    "BGT_LBL_water".geometrie) as geometrie,
    "BGT_LBL_water".hoek, 
    "BGT_LBL_water".tekst, 
 	'bgt' as bron, 
 	16  as minzoom, 
 	NULL::int  as maxzoom
   FROM bgt."BGT_LBL_water"
  WHERE 1=1
union
SELECT
    "BGT_LBL_weg".identificatie_lokaalid ||'-'|| row_number() over (partition by "BGT_LBL_weg".identificatie_lokaalid order by tijdstipregistratie desc ) ||'-'|| 'BGT_LBL_weg' as identificatie_lokaalid,
    "BGT_LBL_weg".openbareruimtetype as type,
		ST_makeValid(    "BGT_LBL_weg".geometrie) as geometrie,
    "BGT_LBL_weg".hoek, 
    "BGT_LBL_weg".tekst, 
 	'bgt' as bron, 
 	16  as minzoom, 
 	NULL::int  as maxzoom
   FROM bgt."BGT_LBL_weg"
  WHERE 1=1

WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_labels_geom_idx ON bgt.bgt_vw_labels USING gist (geometrie);





