# Create vector tiles for basiskaart with T-REX

T-REX vector tile creation : https://t-rex.tileserver.ch/



For now we start by importing the latest version of the basiskaart db 

 
`wget -O /tmp/basiskaart_latest.gz -nc https://admin.data.amsterdam.nl/postgres/basiskaart_latest.gz`

`pg_restore --if-exists -j 4 -O -c --schema=bgt  -d database -U mdbadmin /tmp/basiskaart_latest.gz`


Now we have imported basiskaart tables and materialized views in the BGT schema 
