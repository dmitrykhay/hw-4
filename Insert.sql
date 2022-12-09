INSERT INTO genres(genre_name)
VALUES ('Hip-Hop/Rap'),
('Rock'),
('Jazz'),
('Reggae'),
('Country');

INSERT INTO artists_genres(genre_id, artist_id)
VALUES (1, 1), (5, 2), (5, 3), (1, 4), (2, 5), (2, 6), (1, 7), (1, 8);

INSERT INTO artists(artist_name)
VALUES ('Kendrick Lamar'), 
('Bob Marley'), 
('Amy MacDonald'), 
('Curtis Jackson'), 
('Paul Stanley'), 
('James Alan Hetfield'), 
('Michael Ray Nguyen-Stevenson'), 
('Hank Williams III'),
('Fergie');

INSERT INTO artists_albums(artist_id, album_id)
VALUES (1, 6), (3, 4), (4, 5), (5, 1), (6, 2), (6, 3), (7, 7), (8, 8), (9, 9), (5, 9);

INSERT INTO albums(album_name, year)
VALUES ('Live to Win', 2006),
('Master of Puppets', 1986),
('The Black Album', 1991),
('This Is the Life', 2008),
('The Massacre', 2005),
('Good Kid, M.A.A.D City', 2012),
('Legendary', 2019),
('Lovesick, Broke and Driftin', 2002),
('Monkey Business', 2005);

INSERT INTO tracks(track_name, lenght, album_id)
VALUES ('Live to Win', 188, 1),
('Master of Puppets', 516, 2),
('The Unforgiven', 386, 3),
('Nothing Else Matters', 387, 3),
('This Is the Life', 185, 4),
('Poison Prince', 208, 4),
('Just a Lil Bit', 237, 5),
('Candy Shop', 209, 5),
('Disco Inferno', 214, 5),
('M.A.A.D City', 350, 6),
('Swimming Pools (Drank)', 313, 6),
('Goddamn', 211, 7),
('Haute', 160, 7),
('Lightskin Lil Wayne', 153, 7),
('Cecil Brown', 212, 8),
('My Humps', 235, 9);

INSERT INTO tracks_collections(track_id, collection_id)
VALUES (7, 1), (8, 1), (9, 1), (10, 1), (11, 1), (12, 1), (13, 1), (14, 1), (15, 3), (5, 3), (6, 3), (12, 8), (13, 8), (14, 8);

INSERT INTO collections(collection_name, year)
VALUES ('Rap Hits', 2016),
('Rock Hits', 2015),
('Country Hits', 2017),
('Reggae Hits', 2017),
('The BEST of Metallica', 2009),
('MY collection', 2021),
('Lounge mix', 2022),
('Tyga collection', 2020);