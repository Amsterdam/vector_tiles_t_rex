DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_terreindeel_vlak;
drop INDEX IF exists bgt_vw_terreindeel_vlak_geom_idx;


CREATE MATERIALIZED VIEW bgt.bgt_vw_terreindeel_vlak
TABLESPACE pg_default
AS SELECT
 		"BGT_BTRN_boomteelt".identificatie_lokaalid,
    "BGT_BTRN_boomteelt".bgt_fysiekvoorkomen as type,
    "BGT_BTRN_boomteelt".geometrie,
    "BGT_BTRN_boomteelt".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_BTRN_boomteelt"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_bouwland".identificatie_lokaalid,
    "BGT_BTRN_bouwland".bgt_fysiekvoorkomen as type,
    "BGT_BTRN_bouwland".geometrie,
    "BGT_BTRN_bouwland".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_BTRN_bouwland"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_fruitteelt".identificatie_lokaalid,
    "BGT_BTRN_fruitteelt".bgt_fysiekvoorkomen as type,
    "BGT_BTRN_fruitteelt".geometrie,
    "BGT_BTRN_fruitteelt".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_BTRN_fruitteelt"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_gemengd_bos".identificatie_lokaalid,
    "BGT_BTRN_gemengd_bos".bgt_fysiekvoorkomen as type,
    "BGT_BTRN_gemengd_bos".geometrie,
    "BGT_BTRN_gemengd_bos".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_BTRN_gemengd_bos"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_grasland_agrarisch".identificatie_lokaalid,
    "BGT_BTRN_grasland_agrarisch".bgt_fysiekvoorkomen as type,
    "BGT_BTRN_grasland_agrarisch".geometrie,
    "BGT_BTRN_grasland_agrarisch".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_BTRN_grasland_agrarisch"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_grasland_overig".identificatie_lokaalid,
    "BGT_BTRN_grasland_overig".bgt_fysiekvoorkomen as type,
    "BGT_BTRN_grasland_overig".geometrie,
    "BGT_BTRN_grasland_overig".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_BTRN_grasland_overig"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_groenvoorziening".identificatie_lokaalid,
    "BGT_BTRN_groenvoorziening".bgt_fysiekvoorkomen as type,
    "BGT_BTRN_groenvoorziening".geometrie,
    "BGT_BTRN_groenvoorziening".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_BTRN_groenvoorziening"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_houtwal".identificatie_lokaalid,
    "BGT_BTRN_houtwal".bgt_fysiekvoorkomen as type,
    "BGT_BTRN_houtwal".geometrie,
    "BGT_BTRN_houtwal".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_BTRN_houtwal"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_loofbos".identificatie_lokaalid,
    "BGT_BTRN_loofbos".bgt_fysiekvoorkomen as type,
    "BGT_BTRN_loofbos".geometrie,
    "BGT_BTRN_loofbos".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_BTRN_loofbos"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_moeras".identificatie_lokaalid,
    "BGT_BTRN_moeras".bgt_fysiekvoorkomen as type,
    "BGT_BTRN_moeras".geometrie,
    "BGT_BTRN_moeras".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_BTRN_moeras"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_naaldbos".identificatie_lokaalid,
    "BGT_BTRN_naaldbos".bgt_fysiekvoorkomen as type,
    "BGT_BTRN_naaldbos".geometrie,
    "BGT_BTRN_naaldbos".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_BTRN_naaldbos"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_rietland".identificatie_lokaalid,
    "BGT_BTRN_rietland".bgt_fysiekvoorkomen as type,
    "BGT_BTRN_rietland".geometrie,
    "BGT_BTRN_rietland".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_BTRN_rietland"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_struiken".identificatie_lokaalid,
    "BGT_BTRN_struiken".bgt_fysiekvoorkomen as type,
    "BGT_BTRN_struiken".geometrie,
    "BGT_BTRN_struiken".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_BTRN_struiken"
  WHERE 1=1
UNION
 SELECT
 		"BGT_KDL_perron".identificatie_lokaalid,
    "BGT_KDL_perron".bgt_type as type,
    "BGT_KDL_perron".geometrie,
    "BGT_KDL_perron".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_KDL_perron"
  WHERE 1=1
UNION
 SELECT
 		"BGT_KDL_strekdam".identificatie_lokaalid,
    "BGT_KDL_strekdam".bgt_type as type,
    "BGT_KDL_strekdam".geometrie,
    "BGT_KDL_strekdam".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_KDL_strekdam"
  WHERE 1=1
UNION
 SELECT
 		"BGT_OTRN_erf".identificatie_lokaalid,
    "BGT_OTRN_erf".bgt_fysiekvoorkomen as type,
    "BGT_OTRN_erf".geometrie,
    "BGT_OTRN_erf".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_OTRN_erf"
  WHERE 1=1
UNION
 SELECT
 		"BGT_OTRN_gesloten_verharding".identificatie_lokaalid,
    "BGT_OTRN_gesloten_verharding".bgt_fysiekvoorkomen as type,
    "BGT_OTRN_gesloten_verharding".geometrie,
    "BGT_OTRN_gesloten_verharding".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_OTRN_gesloten_verharding"
  WHERE 1=1
UNION
 SELECT
 		"BGT_OTRN_half_verhard".identificatie_lokaalid,
    "BGT_OTRN_half_verhard".bgt_fysiekvoorkomen as type,
    "BGT_OTRN_half_verhard".geometrie,
    "BGT_OTRN_half_verhard".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_OTRN_half_verhard"
  WHERE 1=1
UNION
 SELECT
 		 "BGT_OTRN_onverhard".identificatie_lokaalid,
    "BGT_OTRN_onverhard".bgt_fysiekvoorkomen as type,
    "BGT_OTRN_onverhard".geometrie,
    "BGT_OTRN_onverhard".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_OTRN_onverhard"
  WHERE 1=1
UNION
 SELECT
 		"BGT_OTRN_open_verharding".identificatie_lokaalid,
    "BGT_OTRN_open_verharding".bgt_fysiekvoorkomen as type,
    "BGT_OTRN_open_verharding".geometrie,
    "BGT_OTRN_open_verharding".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_OTRN_open_verharding"
  WHERE 1=1
UNION
 SELECT
 		"BGT_OTRN_zand".identificatie_lokaalid,
    "BGT_OTRN_zand".bgt_fysiekvoorkomen as type,
    "BGT_OTRN_zand".geometrie,
    "BGT_OTRN_zand".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_OTRN_zand"
  WHERE 1=1
UNION
 SELECT
 		"BGT_OWDL_oever_slootkant".identificatie_lokaalid,
    "BGT_OWDL_oever_slootkant".bgt_type as type,
    "BGT_OWDL_oever_slootkant".geometrie,
    "BGT_OWDL_oever_slootkant".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_OWDL_oever_slootkant"
  WHERE 1=1
UNION
 SELECT
 		"BGT_WGL_spoorbaan".identificatie_lokaalid,
    "BGT_WGL_spoorbaan".bgt_fysiekvoorkomen as type,
    "BGT_WGL_spoorbaan".geometrie,
    "BGT_WGL_spoorbaan".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_WGL_spoorbaan"
  WHERE 1=1
UNION
 SELECT
 		"BGT_BTRN_heide".identificatie_lokaalid,
    "BGT_BTRN_heide".bgt_fysiekvoorkomen as type,
    "BGT_BTRN_heide".geometrie,
    "BGT_BTRN_heide".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	6  as minzoom, 
 	 	21  as maxzoom
   FROM bgt."BGT_BTRN_heide"
  WHERE 1=1
WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_terreindeel_vlak_geom_idx ON bgt.bgt_vw_terreindeel_vlak USING gist (geometrie);