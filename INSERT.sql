insert into Musicians (id, musician_name)
values (1, 'Hans Zimmer'),
(2, 'Fall out boy'),
(3, 'Coldplay'),
(4, 'МакSим');

insert into Genres (id, genre_name)
values (1, 'Classical music'),
(2, 'Rock'),
(3, 'Pop');

insert into Albums (id, album_name, album_year)
values (1, 'No Time to Die', '2021-10-01'),
(2, 'The Holiday', '2006-11-29'),
(3, 'Mania', '2018-01-19'),
(4, 'Save Rock and Roll', '2013-04-13'),
(5, 'Everyday Life', '2019-10-22'),
(6, 'A Rush Of Blood To The Head', '2000-07-10'),
(7, 'Viva La Vida Or Death And All His Friends', '2008-06-12'),
(8, 'Мой рай', '2007-11-15');

insert into Tracks (id, album_id, track_name, lenght)
values (1, 1, 'Home', 225),
(2, 2, 'Light my fire', 74),
(3, 3, 'Champion', 229),
(4, 4, 'My songs know what you did in the dark', 188),
(5, 5, 'Church', 230),
(6, 6, 'In my place', 228),
(7, 7, 'Viva La Vida', 241),
(8, 8, 'Мой рай', 216);

insert into collections (id, collection_name, collection_year)
values (1, 'Hans Zimmer: The magic of Cinema', '2023-11-16'),
(2, 'Greatest Hits: Believers Never Die – Volume Two', '2019-11-15'),
(3, 'A Rush Of Blood To The Head / Parachutes', '2006-10-02'),
(4, 'Viva La Vida / X&Y', '2011-09-13');

insert into musicians_genres (musician_id, genre_id)
values (1, 1),
(2, 2),
(3, 3),
(4, 3);

insert into musicians_albums (musician_id, album_id)
values (1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(3, 7),
(4, 8);

insert into tracks_collections (track_id, collection_id)
values (1, 1),
(2, 2),
(3, 3),
(3, 4);







