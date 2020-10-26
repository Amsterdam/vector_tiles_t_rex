DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_inrichtingselement_vlak;
drop INDEX IF exists bgt_vw_inrichtingselement_vlak_geom_idx;


CREATE MATERIALIZED VIEW bgt.bgt_vw_inrichtingselement_vlak
TABLESPACE pg_default
AS SELECT
		"BGTPLUS_KDL_keermuur".identificatie_lokaalid || 'BGTPLUS_KDL_keermuur' as identificatie_lokaalid,
    "BGTPLUS_KDL_keermuur".plus_type as type,
    "BGTPLUS_KDL_keermuur". geometrie, 
     "BGTPLUS_KDL_keermuur".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_KDL_keermuur"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_OSDG_muur_V".identificatie_lokaalid || 'BGTPLUS_OSDG_muur_V' as identificatie_lokaalid,
     "BGTPLUS_OSDG_muur_V".plus_type as type,
    "BGTPLUS_OSDG_muur_V". geometrie, 
     "BGTPLUS_OSDG_muur_V".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_OSDG_muur_V"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_VGT_haag_V".identificatie_lokaalid || 'BGTPLUS_VGT_haag_V' as identificatie_lokaalid,
    "BGTPLUS_VGT_haag_V".plus_type as type,
    "BGTPLUS_VGT_haag_V". geometrie, 
     "BGTPLUS_VGT_haag_V".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_VGT_haag_V"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_WGI_boomspiegel_V".identificatie_lokaalid || 'BGTPLUS_WGI_boomspiegel_V' as identificatie_lokaalid,
    "BGTPLUS_WGI_boomspiegel_V".plus_type as type,
    "BGTPLUS_WGI_boomspiegel_V". geometrie, 
     "BGTPLUS_WGI_boomspiegel_V".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_WGI_boomspiegel_V"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_WGI_rooster_V".identificatie_lokaalid || 'BGTPLUS_WGI_rooster_V' as identificatie_lokaalid,
    "BGTPLUS_WGI_rooster_V".plus_type as type,
    "BGTPLUS_WGI_rooster_V". geometrie, 
     "BGTPLUS_WGI_rooster_V".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_WGI_rooster_V"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_WGI_wildrooster_V".identificatie_lokaalid || 'BGTPLUS_WGI_wildrooster_V' as identificatie_lokaalid,
    "BGTPLUS_WGI_wildrooster_V".plus_type as type,
    "BGTPLUS_WGI_wildrooster_V". geometrie, 
     "BGTPLUS_WGI_wildrooster_V".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_WGI_wildrooster_V"
  WHERE 1=1
UNION
 SELECT
		"BGT_KDL_gemaal".identificatie_lokaalid || 'BGT_KDL_gemaal' as identificatie_lokaalid,
    "BGT_KDL_gemaal".bgt_type as type,
    "BGT_KDL_gemaal". geometrie, 
     "BGT_KDL_gemaal".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGT_KDL_gemaal"
  WHERE 1=1
UNION
 SELECT
		"BGT_KDL_hoogspanningsmast_V".identificatie_lokaalid || 'BGT_KDL_hoogspanningsmast_V' as identificatie_lokaalid,
    "BGT_KDL_hoogspanningsmast_V".bgt_type as type,
    "BGT_KDL_hoogspanningsmast_V". geometrie, 
     "BGT_KDL_hoogspanningsmast_V".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGT_KDL_hoogspanningsmast_V"
  WHERE 1=1
UNION
 SELECT
		"BGT_KDL_sluis".identificatie_lokaalid || 'BGT_KDL_sluis' as identificatie_lokaalid,
    "BGT_KDL_sluis".bgt_type as type,
    "BGT_KDL_sluis". geometrie, 
     "BGT_KDL_sluis".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGT_KDL_sluis"
  WHERE 1=1
UNION
 SELECT
		"BGT_KDL_steiger".identificatie_lokaalid || 'BGT_KDL_steiger' as identificatie_lokaalid,
    "BGT_KDL_steiger".bgt_type as type,
    "BGT_KDL_steiger". geometrie, 
     "BGT_KDL_steiger".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGT_KDL_steiger"
  WHERE 1=1
UNION
 SELECT
		"BGT_KDL_stuw_V".identificatie_lokaalid || 'BGT_KDL_stuw_V' as identificatie_lokaalid,
    "BGT_KDL_stuw_V".bgt_type as type,
    "BGT_KDL_stuw_V". geometrie, 
     "BGT_KDL_stuw_V".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGT_KDL_stuw_V"
  WHERE 1=1
UNION
 SELECT
		"BGT_SDG_kademuur_V".identificatie_lokaalid || 'BGT_SDG_kademuur_V' as identificatie_lokaalid,
    "BGT_SDG_kademuur_V".bgt_type as type,
    "BGT_SDG_kademuur_V". geometrie, 
     "BGT_SDG_kademuur_V".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGT_SDG_kademuur_V"
  WHERE 1=1
UNION
 SELECT
		"BGT_SDG_muur_V".identificatie_lokaalid || 'BGT_SDG_muur_V' as identificatie_lokaalid,
    "BGT_SDG_muur_V".bgt_type as type,
    "BGT_SDG_muur_V". geometrie, 
     "BGT_SDG_muur_V".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGT_SDG_muur_V"
  WHERE 1=1

    /* KBK10 */

  UNION 
   SELECT
		"WDL_haven".ogc_fid::text || 'WDL_haven_kbk10' as identificatie_lokaal_id,
    'haven' as type,
    "WDL_haven".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15  as maxzoom
   FROM kbk10."WDL_haven"
  WHERE 1=1
  UNION
   SELECT
		"TRN_aanlegsteiger".ogc_fid::text || 'TRN_aanlegsteiger_kbk10' as identificatie_lokaal_id,
    'aanlegsteiger' as type,
    "TRN_aanlegsteiger".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
   FROM kbk10."TRN_aanlegsteiger"
  WHERE 1=1
  UNION
  SELECT
		"TRN_basaltblokken_steenglooiing".ogc_fid::text || 'TRN_basaltblokken_steenglooiing_kbk10' as identificatie_lokaal_id,
    'basaltblokken_steenglooiing' as type,
    "TRN_basaltblokken_steenglooiing".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_basaltblokken_steenglooiing"
  UNION
  SELECT
		"TRN_grasland".ogc_fid::text || 'TRN_grasland_kbk10' as identificatie_lokaal_id,
    'grasland' as type,
    "TRN_grasland".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_grasland"
  UNION 
  SELECT
		"TRN_akkerland".ogc_fid::text || 'TRN_akkerland_kbk10' as identificatie_lokaal_id,
    'akkerland' as type,
    "TRN_akkerland".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_akkerland"
  UNION 
  SELECT
		"TRN_overig".ogc_fid::text || 'TRN_overig_kbk10' as identificatie_lokaal_id,
    'overig' as type,
    "TRN_overig".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_overig"
  UNION 
  SELECT
		"TRN_bedrijfsterrein".ogc_fid::text || 'TRN_bedrijfsterrein_kbk10' as identificatie_lokaal_id,
    'bedrijfsterrein' as type,
    "TRN_bedrijfsterrein".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_bedrijfsterrein"
  UNION 
  SELECT
		"TRN_openbaar_groen".ogc_fid::text || 'TRN_openbaar_groen_kbk10' as identificatie_lokaal_id,
    'openbaar_groen' as type,
    "TRN_openbaar_groen".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_openbaar_groen"
  UNION 
  SELECT
		"TRN_zand".ogc_fid::text || 'TRN_zand_kbk10' as identificatie_lokaal_id,
    'zand' as type,
    "TRN_zand".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_zand"
  UNION 
  SELECT
		"TRN_bos-loofbos".ogc_fid::text || 'TRN_bos-loofbos_kbk10' as identificatie_lokaal_id,
    'bos-loofbos' as type,
    "TRN_bos-loofbos".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_bos-loofbos"
  UNION 
  SELECT
		"TRN_bos-naaldbos".ogc_fid::text || 'TRN_bos-naaldbos_kbk10' as identificatie_lokaal_id,
    'bos-naaldbos' as type,
    "TRN_bos-naaldbos".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_bos-naaldbos"
  UNION 
  SELECT
		"TRN_bos-gemengd_bos".ogc_fid::text || 'TRN_bos-gemengd_bos_kbk10' as identificatie_lokaal_id,
    'bos-gemengd_bos' as type,
    "TRN_bos-gemengd_bos".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_bos-gemengd_bos"
  UNION 
  SELECT
		"TRN_bos-griend".ogc_fid::text || 'TRN_bos-griend_kbk10' as identificatie_lokaal_id,
    'bos-griend' as type,
    "TRN_bos-griend".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_bos-griend"
  UNION 
  SELECT
		"TRN_boomgaard".ogc_fid::text || 'TRN_boomgaard_kbk10' as identificatie_lokaal_id,
    'boomgaard' as type,
    "TRN_boomgaard".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_boomgaard"
  UNION 
  SELECT
		"TRN_boomkwekerij".ogc_fid::text || 'TRN_boomkwekerij_kbk10' as identificatie_lokaal_id,
    'boomkwekerij' as type,
    "TRN_boomkwekerij".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_boomkwekerij"
  UNION 
  SELECT
		"TRN_dodenakker".ogc_fid::text || 'TRN_dodenakker_kbk10' as identificatie_lokaal_id,
    'dodenakker' as type,
    "TRN_dodenakker".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_dodenakker"
  UNION 
  SELECT
		"TRN_dodenakker_met_bos".ogc_fid::text || 'TRN_dodenakker_met_bos_kbk10' as identificatie_lokaal_id,
    'dodenakker_met_bos' as type,
    "TRN_dodenakker_met_bos".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_dodenakker_met_bos"
  UNION 
  SELECT
		"TRN_fruitkwekerij".ogc_fid::text || 'TRN_fruitkwekerij_kbk10' as identificatie_lokaal_id,
    'fruitkwekeri' as type,
    "TRN_fruitkwekerij".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_fruitkwekerij"
  UNION 
  SELECT
		"GBW_overdekt".ogc_fid::text || 'GBW_overdekt_kbk10' as identificatie_lokaal_id,
    'overdekt' as type,
    "GBW_overdekt".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."GBW_overdekt"
 UNION
  SELECT
		"GBW_gebouw".ogc_fid::text || 'GBW_gebouw_kbk10' as identificatie_lokaal_id,
    'gebouw' as type,
    "GBW_gebouw".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."GBW_gebouw"
 UNION 
  SELECT
		"GBW_hoogbouw".ogc_fid::text || 'GBW_hoogbouw_kbk10' as identificatie_lokaal_id,
    'hoogbouw' as type,
    "GBW_hoogbouw".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."GBW_hoogbouw"
 UNION 
  SELECT
		"GBW_kas_warenhuis".ogc_fid::text || 'GBW_kas_warenhuis_kbk10' as identificatie_lokaal_id,
    'kas_warenhuis' as type,
    "GBW_kas_warenhuis".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."GBW_kas_warenhuis"
 UNION 
  SELECT
		"TRN_binnentuin".ogc_fid::text || 'TRN_binnentuin_kbk10' as identificatie_lokaal_id,
    'binnentuin' as type,
    "TRN_binnentuin".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15 as maxzoom
  FROM kbk10."TRN_binnentuin"  

/* ---- KBK50 ---- */

 UNION 
 SELECT
		"TRN_agrarisch".ogc_fid::text || 'TRN_agrarisch_kbk50' as identificatie_lokaal_id,
    'TRN_agrarisch' as type,
    "TRN_agrarisch".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	16  as minzoom, 
 	 	8  as maxzoom
  FROM kbk50."TRN_agrarisch"
 UNION 
 SELECT
		"TRN_overig".ogc_fid::text || 'TRN_overig_kbk50' as identificatie_lokaal_id,
    'overig' as type,
    "TRN_overig".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	16  as minzoom, 
 	 	8  as maxzoom
  FROM kbk50."TRN_overig"
 UNION 
 SELECT
		"TRN_bedrijfsterrein_dienstverlening".ogc_fid::text || 'TRN_bedrijfsterrein_dienstverlening_kbk50' as identificatie_lokaal_id,
    'bedrijfsterrein_dienstverlening' as type,
    "TRN_bedrijfsterrein_dienstverlening".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	16  as minzoom, 
 	 	8  as maxzoom
  FROM kbk50."TRN_bedrijfsterrein_dienstverlening"
 UNION 
 SELECT
		"TRN_bos_groen_sport".ogc_fid::text || 'TRN_bos_groen_sport_kbk50' as identificatie_lokaal_id,
    'bos_groen_sport' as type,
    "TRN_bos_groen_sport".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	16  as minzoom, 
 	 	8  as maxzoom
  FROM kbk50."TRN_bos_groen_sport"
 UNION 
 SELECT
		"TRN_zand".ogc_fid::text || 'TRN_zand_kbk50' as identificatie_lokaal_id,
    'zand' as type,
    "TRN_zand".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	16  as minzoom, 
 	 	8  as maxzoom
  FROM kbk50."TRN_zand"
 UNION 
 SELECT
		"GBW_bebouwing".ogc_fid::text || 'GBW_bebouwing_kbk50' as identificatie_lokaal_id,
    'bebouwing' as type,
    "GBW_bebouwing".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	16  as minzoom, 
 	 	8  as maxzoom
  FROM kbk50."GBW_bebouwing"
   UNION 
 SELECT
		"GBW_kassen".ogc_fid::text || 'GBW_kassen_kbk50' as identificatie_lokaal_id,
    'kassen' as type,
    "GBW_kassen".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk50' as bron, 
 	 	16  as minzoom, 
 	 	8  as maxzoom
  FROM kbk50."GBW_kassen"
WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_inrichtingselement_vlak_geom_idx ON bgt.bgt_vw_inrichtingselement_vlak USING gist ( geometrie);
