# Postgres util

## Author
Witold Krak, emial: witold.krak@gmail.com

## Prerequisites

- [docker](https://docs.docker.com/) installed

## Build script

To build postgres docker image, execute the following script:
```bash
./build.sh
```

## Run script

To run postgres docker container, execute the following script:
```bash
./run.sh
```

## Login to container and access postgres db

To login to postgres container, execute the following command:
```bash
docker exec -it postgres.util /bin/bash
```

In order to login to postgres db from within postgres.util container: 
```bash
psql -U postgres -p password
```

## Login to postgres db

To login to postgres container, execute the following command:

```bash
psql postgresql://<username>:<password>@<host>:<port>/<database>
```

