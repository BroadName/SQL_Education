CREATE DATABASE music_service_db;

CREATE TABLE IF NOT EXISTS genres(genre_ID SERIAL PRIMARY KEY,
                                  Genre VARCHAR(60) NOT NULL UNIQUE);

CREATE TABLE IF NOT EXISTS musicians(
                        musician_ID SERIAL PRIMARY KEY,
                        name_musician VARCHAR(60) NOT NULL);

CREATE TABLE IF NOT EXISTS genre_of_singer(
        genre_of_singer_id SERIAL PRIMARY KEY,
        musician_ID INT NOT NULL,
        genre_ID INT NOT NULL,
        CONSTRAINT fk_musicians FOREIGN KEY(musician_ID) REFERENCES musicians(musician_ID) ON DELETE CASCADE,
        CONSTRAINT fk_genres FOREIGN KEY(genre_ID) REFERENCES genres(genre_ID) ON DELETE CASCADE);

CREATE TABLE IF NOT EXISTS albums(
                        albums_id SERIAL PRIMARY KEY,
                        album_name VARCHAR(80) NOT NULL,
                        data_of_prod DATE NOT NULL);

CREATE TABLE IF NOT EXISTS album_of_singers(
        album_of_singers_id SERIAL PRIMARY KEY,
        musician_ID INT NOT NULL,
        albums_id INT NOT NULL,
        CONSTRAINT fk_musicians FOREIGN KEY(musician_ID) REFERENCES musicians(musician_ID) ON DELETE CASCADE,
        CONSTRAINT fk_albums FOREIGN KEY(albums_id) REFERENCES albums(albums_id) ON DELETE CASCADE);

CREATE TABLE IF NOT EXISTS tracks(
        track_id SERIAL PRIMARY KEY,
        albums_id INT NOT NULL,
        name_of_track VARCHAR(100) NOT NULL,
        duration INT NOT NULL,
        FOREIGN KEY(albums_id) REFERENCES albums(albums_id));

CREATE TABLE IF NOT EXISTS collections(
                        collections_id SERIAL PRIMARY KEY,
                        collection_name VARCHAR(80) NOT NULL UNIQUE,
                        data_of_prod DATE NOT NULL);

CREATE TABLE IF NOT EXISTS singer_in_collection(
        singer_in_collection_id SERIAL PRIMARY KEY,
        track_id INT NOT NULL,
        collections_id INT NOT NULL,
        CONSTRAINT fk_tracks FOREIGN KEY(track_id) REFERENCES tracks(track_id) ON DELETE CASCADE,
        CONSTRAINT fk_collections FOREIGN KEY(collections_id) REFERENCES collections(collections_id) ON DELETE CASCADE);
