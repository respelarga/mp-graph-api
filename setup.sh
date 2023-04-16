docker build -t mp-graph-api:1.0 .
docker run -p 3000:3000 -d mp-graph-api:1.0