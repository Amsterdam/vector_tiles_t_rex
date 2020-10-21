# Create vector tiles for basiskaart with T-REX

T-REX vector tile creation : https://t-rex.tileserver.ch/


# For now we start by importing the latest version of the basiskaart db 
docker-compose up -d database  
docker-compose exec database update-db.sh basiskaart
# Create the mviews which contains the BGT en KBK10 and KBK50 data, first login in database
docker exec -it vector_tiles_t_rex_database_1 bash
# secondly, create mviews
psql -U basiskaart -W -d basiskaart -f /database/create_all_mviews.sql

# Configure t-rex
docker-compose run t_rex genconfig --dbconn postgresql://basiskaart:insecure@database/basiskaart > config/config.toml

# Run t-rex
docker-compose run -p 6767:6767 t_rex serve --config  /var/config/config.toml

 
 
`wget -O /tmp/basiskaart_latest.gz -nc https://admin.data.amsterdam.nl/postgres/basiskaart_latest.gz`

`pg_restore --if-exists -j 4 -O -c --schema=bgt -h host -d database -U user /tmp/basiskaart_latest.gz`


Now we have imported basiskaart tables and materialized views in the BGT schema 
