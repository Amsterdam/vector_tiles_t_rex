# Create vector tiles for basiskaart with T-REX

T-REX vector tile creation

https://t-rex.tileserver.ch/


For now we start by importing the latest version of the basiskaart db

`docker-compose up -d database`

`docker-compose exec database update-db.sh basiskaart`

To generate a new version for config.toml do:

`docker-compose run t_rex genconfig --dbconn postgresql://basiskaart:insecure@database/basiskaart > config/config.toml.template
`

Run T-Rex tileserver: 


`docker-compose run -p 6767:6767 t_rex serve --config  /var/config/config.toml
`
 
 
 Then go to :
 
 `http://localhost:6767/`
 
 or 
 
 
 `http://localhost:6767/static/leaflet.html`
 
 or
 
 `http://localhost:6767/static/leaflet_topo_wm.html`
 
 
Load basiskaart in other database : 
 
`wget -O /tmp/basiskaart_latest.gz -nc https://admin.data.amsterdam.nl/postgres/basiskaart_latest.gz`

`pg_restore --if-exists -j 4 -O -c --schema=bgt -h host -d database -U user /tmp/basiskaart_latest.gz`


Now we have imported basiskaart tables and materialized views in the bgt schema.  
