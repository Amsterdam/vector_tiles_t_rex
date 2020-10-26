DROP  MATERIALIZED VIEW IF exists bgt.bgt_vw_inrichtingselement_lijn;
drop INDEX IF exists bgt_vw_inrichtingselement_lijn_geom_idx;

CREATE MATERIALIZED VIEW bgt.bgt_vw_inrichtingselement_lijn
TABLESPACE pg_default
AS SELECT
		"BGTPLUS_OSDG_damwand".identificatie_lokaalid,
    "BGTPLUS_OSDG_damwand".plus_type as type,
    "BGTPLUS_OSDG_damwand".geometrie,
    "BGTPLUS_OSDG_damwand".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_OSDG_damwand"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_OSDG_geluidsscherm".identificatie_lokaalid,
    "BGTPLUS_OSDG_geluidsscherm".plus_type as type,
    "BGTPLUS_OSDG_geluidsscherm".geometrie,
    "BGTPLUS_OSDG_geluidsscherm".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_OSDG_geluidsscherm"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_OSDG_hek".identificatie_lokaalid,
    "BGTPLUS_OSDG_hek".plus_type as type,
    "BGTPLUS_OSDG_hek".geometrie,
    "BGTPLUS_OSDG_hek".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_OSDG_hek"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_OSDG_kademuur_L".identificatie_lokaalid,
    "BGTPLUS_OSDG_kademuur_L".plus_type as type,
    "BGTPLUS_OSDG_kademuur_L".geometrie,
    "BGTPLUS_OSDG_kademuur_L".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_OSDG_kademuur_L"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_OSDG_muur_L".identificatie_lokaalid,
    "BGTPLUS_OSDG_muur_L".plus_type as type,
    "BGTPLUS_OSDG_muur_L".geometrie,
    "BGTPLUS_OSDG_muur_L".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_OSDG_muur_L"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_OSDG_walbescherming".identificatie_lokaalid,
    "BGTPLUS_OSDG_walbescherming".plus_type as type,
    "BGTPLUS_OSDG_walbescherming".geometrie,
    "BGTPLUS_OSDG_walbescherming".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_OSDG_walbescherming"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_SDG_draadraster".identificatie_lokaalid,
    "BGTPLUS_SDG_draadraster".plus_type as type,
    "BGTPLUS_SDG_draadraster".geometrie,
    "BGTPLUS_SDG_draadraster".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_SDG_draadraster"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_SDG_faunaraster".identificatie_lokaalid,
    "BGTPLUS_SDG_faunaraster".plus_type as type,
    "BGTPLUS_SDG_faunaraster".geometrie,
    "BGTPLUS_SDG_faunaraster".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_SDG_faunaraster"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_VGT_haag_L".identificatie_lokaalid,
    "BGTPLUS_VGT_haag_L".plus_type as type,
    "BGTPLUS_VGT_haag_L".geometrie,
    "BGTPLUS_VGT_haag_L".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_VGT_haag_L"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_WDI_geleidewerk".identificatie_lokaalid,
    "BGTPLUS_WDI_geleidewerk".plus_type as type,
    "BGTPLUS_WDI_geleidewerk".geometrie,
    "BGTPLUS_WDI_geleidewerk".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_WDI_geleidewerk"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_WDI_remmingswerk".identificatie_lokaalid,
    "BGTPLUS_WDI_remmingswerk".plus_type as type,
    "BGTPLUS_WDI_remmingswerk".geometrie,
    "BGTPLUS_WDI_remmingswerk".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_WDI_remmingswerk"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_WGI_balustrade".identificatie_lokaalid,
    "BGTPLUS_WGI_balustrade".plus_type as type,
    "BGTPLUS_WGI_balustrade".geometrie,
    "BGTPLUS_WGI_balustrade".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_WGI_balustrade"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_WGI_geleideconstructie_L".identificatie_lokaalid,
    "BGTPLUS_WGI_geleideconstructie_L".plus_type as type,
    "BGTPLUS_WGI_geleideconstructie_L".geometrie,
    "BGTPLUS_WGI_geleideconstructie_L".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_WGI_geleideconstructie_L"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_WGI_rooster_L".identificatie_lokaalid,
    "BGTPLUS_WGI_rooster_L".plus_type as type,
    "BGTPLUS_WGI_rooster_L".geometrie,
    "BGTPLUS_WGI_rooster_L".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_WGI_rooster_L"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_WGI_wildrooster_L".identificatie_lokaalid,
    "BGTPLUS_WGI_wildrooster_L".plus_type as type,
    "BGTPLUS_WGI_wildrooster_L".geometrie,
    "BGTPLUS_WGI_wildrooster_L".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_WGI_wildrooster_L"
  WHERE 1=1
UNION
 SELECT
		"BGT_KDL_stuw_L".identificatie_lokaalid,
    "BGT_KDL_stuw_L".bgt_type as type,
    "BGT_KDL_stuw_L".geometrie,
    "BGT_KDL_stuw_L".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGT_KDL_stuw_L"
  WHERE 1=1
UNION
 SELECT
		"BGT_SDG_damwand".identificatie_lokaalid,
    "BGT_SDG_damwand".bgt_type as type,
    "BGT_SDG_damwand".geometrie,
    "BGT_SDG_damwand".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGT_SDG_damwand"
  WHERE 1=1
UNION
 SELECT
		"BGT_SDG_geluidsscherm".identificatie_lokaalid,
    "BGT_SDG_geluidsscherm".bgt_type as type,
    "BGT_SDG_geluidsscherm".geometrie,
    "BGT_SDG_geluidsscherm".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGT_SDG_geluidsscherm"
  WHERE 1=1
UNION
 SELECT
		"BGT_SDG_hek".identificatie_lokaalid,
    "BGT_SDG_hek".bgt_type as type,
    "BGT_SDG_hek".geometrie,
    "BGT_SDG_hek".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGT_SDG_hek"
  WHERE 1=1
UNION
 SELECT
		"BGT_SDG_kademuur_L".identificatie_lokaalid,
    "BGT_SDG_kademuur_L".bgt_type as type,
    "BGT_SDG_kademuur_L".geometrie,
    "BGT_SDG_kademuur_L".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGT_SDG_kademuur_L"
  WHERE 1=1
UNION
 SELECT
		"BGT_SDG_muur_L".identificatie_lokaalid,
    "BGT_SDG_muur_L".bgt_type as type,
    "BGT_SDG_muur_L".geometrie,
    "BGT_SDG_muur_L".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGT_SDG_muur_L"
  WHERE 1=1
UNION
 SELECT
		"BGT_SDG_walbescherming".identificatie_lokaalid,
    "BGT_SDG_walbescherming".bgt_type as type,
    "BGT_SDG_walbescherming".geometrie,
    "BGT_SDG_walbescherming".relatievehoogteligging, 
 	 	'bgt' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGT_SDG_walbescherming"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_KDL_onbekend_L".identificatie_lokaalid,
    "BGTPLUS_KDL_onbekend_L".plus_type as type,
    "BGTPLUS_KDL_onbekend_L".geometrie,
    "BGTPLUS_KDL_onbekend_L".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_KDL_onbekend_L"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_SDG_onbekend_L".identificatie_lokaalid,
    "BGTPLUS_SDG_onbekend_L".plus_type as type,
    "BGTPLUS_SDG_onbekend_L".geometrie,
    "BGTPLUS_SDG_onbekend_L".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_SDG_onbekend_L"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_VGT_onbekend_L".identificatie_lokaalid,
    "BGTPLUS_VGT_onbekend_L".plus_type as type,
    "BGTPLUS_VGT_onbekend_L".geometrie,
    "BGTPLUS_VGT_onbekend_L".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_VGT_onbekend_L"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_WGI_lijnafwatering".identificatie_lokaalid,
    "BGTPLUS_WGI_lijnafwatering".plus_type as type,
    "BGTPLUS_WGI_lijnafwatering".geometrie,
    "BGTPLUS_WGI_lijnafwatering".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_WGI_lijnafwatering"
  WHERE 1=1
UNION
 SELECT
		"BGTPLUS_WGI_molgoot".identificatie_lokaalid,
    "BGTPLUS_WGI_molgoot".plus_type as type,
    "BGTPLUS_WGI_molgoot".geometrie,
    "BGTPLUS_WGI_molgoot".relatievehoogteligging, 
 	 	'bgtplus' as bron, 
 	 	16  as minzoom, 
 	 	NULL::int  as maxzoom
   FROM bgt."BGTPLUS_WGI_molgoot"
  WHERE 1=1

/* ---- KBK10 ---- */
  UNION
  SELECT
		"WDL_waterbassin".ogc_fid::character as identificatie_lokaalid,
    'waterbassin' as type,
    "WDL_waterbassin".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15  as maxzoom
  FROM kbk10."WDL_waterbassin"
 UNION 
  SELECT
		"WDL_smal_water_3_tot_6m".ogc_fid::character as identificatie_lokaalid,
    'smal_water_3_tot_6m' as type,
    "WDL_smal_water_3_tot_6m".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15  as maxzoom
  FROM kbk10."WDL_smal_water_3_tot_6m"
 UNION 
  SELECT
		"WDL_smal_water_tot_3m".ogc_fid::character as identificatie_lokaalid,
    'smal_water_tot_3m' as type,
    "WDL_smal_water_tot_3m".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15  as maxzoom
  FROM kbk10."WDL_smal_water_tot_3m"
 UNION 
  SELECT
		"KRT_tunnelcontour".ogc_fid::character as identificatie_lokaalid,
    'tunnelcontour' as type,
    "KRT_tunnelcontour".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15  as maxzoom
  FROM kbk10."KRT_tunnelcontour"
 UNION 
  SELECT
		"IRT_aanlegsteiger_smal".ogc_fid::character as identificatie_lokaalid,
    'aanlegsteiger_smal' as type,
    "IRT_aanlegsteiger_smal".geom, 
    0  as relatievehoogteligging, 
 	 	'kbk10' as bron, 
 	 	13  as minzoom, 
 	 	15  as maxzoom
  FROM kbk10."IRT_aanlegsteiger_smal"

WITH DATA;

-- View indexes:
CREATE INDEX bgt_vw_inrichtingselement_lijn_geom_idx ON bgt.bgt_vw_inrichtingselement_lijn USING gist (geometrie);