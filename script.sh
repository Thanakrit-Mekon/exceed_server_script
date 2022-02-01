docker-compose -f apps/mongo/docker-compose.yml down
rm apps/mongo/docker-compose.yml
mv exceed_server_script/docker-compose.yml apps/mongo/docker-compose.yml
docker-compose -f apps/mongo/docker-compose.yml up
