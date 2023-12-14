--SELECT-запросы
--задание 2 
--1)Название и продолжительность самого длительного трека
select lenght, track_name from tracks
where lenght = (select MAX(lenght) from tracks);

--2)Название треков, продолжительность которых не менее 3,5 минут
select track_name, lenght from tracks
where lenght >= 210;

--3)Названия сборников, вышедших в период с 2018 по 2020 год включительно
select collection_name, collection_year from collections
where collection_year between '2018-01-01' and '2020-12-31';

--4)Исполнители, чьё имя состоит из одного слова
select musician_name from musicians
where musician_name not like '% %';

--5)Название треков, которые содержат слово «мой» или «my»
select track_name from tracks
where track_name ilike '%my%'
or track_name ilike '%Мой%';

--Задание 3
--1)Количество исполнителей в каждом жанре
select count(musician_name), genre_name
from musicians m
join musicians_genres mg on m.id = mg.musician_id
join genres g on g.id = mg.genre_id
group by genre_name; 

--2)Количество треков, вошедших в альбомы 2019–2020 годов
select count(track_name)
from tracks t 
join albums a on t.album_id = a.id
where album_year between '2019-01-01' and '2020-12-31'
group by(album_year);

--3)Средняя продолжительность треков по каждому альбому
select avg(lenght), album_name
from tracks t 
join albums a on t.album_id = a.id
group by album_name;

--4)Все исполнители, которые не выпустили альбомы в 2020 году
select musician_name from musicians
except
select musician_name from musicians
where id = (select musician_id from musicians_albums
where musician_id = (select id from albums
where album_year between '2020-01-01' and '2020-12-31'));

--5)Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами)
select musician_name, collection_name from musicians m
join musicians_albums ma on m.id = ma.musician_id
join albums a on ma.musician_id = a.id
join tracks t on a.id = t.id
join tracks_collections tc on t.id = tc.track_id
join collections c on tc.collection_id = c.id
where musician_name = 'Coldplay';


