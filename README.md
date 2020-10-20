# Create vector tiles for basiskaart with T-REX

T-REX vector tile creation : https://t-rex.tileserver.ch/



For now we start by importing the latest version of the basiskaart db 

docker-compose up -d database  

docker-compose exec database update-db.sh basiskaart

docker-compose run t_rex genconfig --dbconn postgresql://basiskaart:insecure@database/basiskaart > config/config.toml

docker-compose run -p 6767:6767 t_rex serve --config  /var/config/config.toml

 
 
`wget -O /tmp/basiskaart_latest.gz -nc https://admin.data.amsterdam.nl/postgres/basiskaart_latest.gz`

`pg_restore --if-exists -j 4 -O -c --schema=bgt -h host -d database -U user /tmp/basiskaart_latest.gz`


Now we have imported basiskaart tables and materialized views in the BGT schema 
