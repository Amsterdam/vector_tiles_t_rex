# Create vector tiles for basiskaart with T-REX

T-REX vector tile creation

https://t-rex.tileserver.ch/

- For now we start by importing the latest version of the basiskaart db 

`docker-compose up -d database`  
`docker-compose exec database update-db.sh basiskaart`

- Create the mviews which contains the BGT en KBK10 and KBK50 data, run from the repro root dir

``docker exec -it vector_tiles_t_rex_database_1 bash `psql -h localhost -p5402 -U [basiskaartuser] -d basiskaart -f ./config/database/create_all_mviews.sql` ``

- To generate a new version for config.toml do:

`docker-compose run t_rex genconfig --dbconn postgresql://basiskaart:insecure@database/basiskaart > config/config.toml.template`

Before runnning the tileserver, make sure it can actually cache the files to disk

`mkdir -p cache`

`sudo chown -Rf www-data:wwww-data cache`

- Run T-Rex tileserver:

`docker-compose run -p 6767:6767 t_rex serve --config  /var/config/config.toml`

or to use the new mview

`docker-compose run -p 6767:6767 t_rex serve --config  /var/config/topo_wm.toml` 

- Then go to :
 
 `http://localhost:6767/`
 
 or 
 
 
 `http://localhost:6767/static/leaflet.html`
 
 or
 
 `http://localhost:6767/static/leaflet_topo_wm.html`
 

 - to generate vector tiles cache, run cmd:

`docker-compose run t_rex generate --maxzoom 16 --config  /var/config/topo_wm.toml`
  
 - Create mbtiles file  
 
- `~/Development/datapunt/mbutil/mb-util --image_format=pbf cache/bgt_vw data/bgt_vw.mbtiles`

T-Rex writes the bounds and center in metdata.json with square brackets  around the array. 
But Tilserver-GL expects these arrays without square brackets. So we have tu opdate the metadata.
This can be done in the mbtiles file with : 

`sqlite3 data/bgt_vw.mbtiles
sqlite> update metadata set value="4.63974,52.25158,5.10768,52.50593" where name="bounds"; 
sqlite> update metadata set value="4.87371,52.378755,12" where name="center";
`
- Run Tileserver GL 

- `docker run --rm -it -v $(pwd):/data -p 8080:80 maptiler/tileserver-gl -c config/tileserver_cfg.json
`

