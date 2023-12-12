create table if not exists Musicians(
id SERIAL primary key,
musician_name VARCHAR(200) not null 
);

create table if not exists Genres(
id SERIAL primary key,
genre_name VARCHAR(100) not null
);

create table if not exists Albums(
id SERIAL primary key,
album_name VARCHAR(200) not null,
album_year DATE
);

--многие ко многим

create table if not exists Musicians_Genres(
musician_id INTEGER references Musicians(id),
genre_id INTEGER references Genres(id),
constraint M_G primary key(musician_id, genre_id)
);

--многие ко многим 

create table if not exists Musicians_Albums(
musician_id INTEGER references Musicians(id),
album_id INTEGER references Albums(id),
constraint M_A primary key(musician_id, album_id)
);

--один к одному

create table if not exists Tracks(
id SERIAL primary key,
track_name VARCHAR(200) not null,
lenght numeric not null
);

create table if not exists Collections(
id SERIAL primary key,
collection_name VARCHAR(200) not null,
collection_year DATE
);

--многие ко многим

create table if not exists Tracks_Collections(
track_id INTEGER references Tracks(id),
collection_id INTEGER references Collections(id),
constraint T_C primary key(track_id, collection_id)
);

alter table Tracks
add album_id INTEGER references Albums(id);
