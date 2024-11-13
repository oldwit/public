# ELK (Elasticsearch, Logstash, Kibana) util

## Author
Witold Krak, emial: witold.krak@gmail.com

## Prerequisites

- [docker](https://docs.docker.com/) installed
- docker volume elasticsearch.util need to be created before starting docker-compose if is not already created.

## Up

To start elk containers, execute the following command:
```bash
docker-compose -f elk-docker-compose.yml up -d
```

## Down

To stop elk containers, execute the following command:
```bash
docker-compose -f elk-docker-compose.yml down
```
