docker run \
    -e UPDATES=enabled \
    -e ALLOW_CORS=enabled \
    -p 5432:5432 \
    -p 8080:80 \
    -e THREADS=24 \
    -e "OSM2PGSQL_EXTRA_ARGS=-C 4096" \
    -v openstreetmap-data:/var/lib/postgresql/12/main \
    -d overv/openstreetmap-tile-server \
    run
