CREATE KEYSPACE IF NOT EXISTS streaming WITH replication = {'class': 'SimpleStrategy', 'replication_factor': '2'};

CREATE TABLE IF NOT EXISTS streaming.vehicles (
    id text,
    time text,
    longitude double,
    latitude double,
    PRIMARY KEY (id, time)
);

CREATE TABLE IF NOT EXISTS streaming.vehicles_by_tileid (
    tile_id text,
    id text,
    time timestamp,
    longitude double,
    latitude double,
    PRIMARY KEY (tile_id, id)
);
