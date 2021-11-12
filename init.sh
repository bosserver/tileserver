docker volume create openstreetmap-data

docker run \
    -e DOWNLOAD_PBF=https://download.geofabrik.de/europe/germany-latest.osm.pbf \
    -e DOWNLOAD_POLY=https://download.geofabrik.de/europe/germany.poly \
    -v openstreetmap-data:/var/lib/postgresql/12/main \
    overv/openstreetmap-tile-server \
    import
