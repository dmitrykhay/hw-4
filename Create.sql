CREATE TABLE IF NOT EXISTS genres (
genre_id SERIAL PRIMARY KEY,
genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS artists_genres (
id SERIAL PRIMARY KEY,
genre_id INTEGER NOT NULL REFERENCES genres(genre_id),
artist_id INTEGER NOT NULL REFERENCES artists(artist_id)
);

CREATE TABLE IF NOT EXISTS artists (
artist_id SERIAL PRIMARY KEY,
artist_name VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS artists_albums (
id SERIAL PRIMARY KEY,
artist_id INTEGER NOT NULL REFERENCES artists(artist_id),
album_id INTEGER NOT NULL REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS albums (
album_id SERIAL PRIMARY KEY,
album_name VARCHAR(50) NOT NULL,
year INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS tracks (
track_id SERIAL PRIMARY KEY,
track_name VARCHAR(50) NOT NULL,
lenght INTEGER NOT NULL,
album_id INTEGER NOT NULL REFERENCES albums(album_id)
);

CREATE TABLE IF NOT EXISTS tracks_collections (
id SERIAL PRIMARY KEY,
track_id INTEGER NOT NULL REFERENCES tracks(track_id),
collection_id INTEGER NOT NULL REFERENCES collections(collection_id)
);

CREATE TABLE IF NOT EXISTS collections (
collection_id SERIAL PRIMARY KEY,
collection_name VARCHAR(50) NOT NULL,
year INTEGER NOT NULL
);