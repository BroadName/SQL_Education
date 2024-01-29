select duration, name_of_track  from tracks -- Exe.2 task 1
where duration = (select max(duration) from tracks);

select name_of_track from tracks -- Exe.2 task 2
where duration >= 210;

select collection_name from collections c -- Exe.2 task 3
where data_of_prod between '2018-01-01' and '2020-12-31'; 

select name_musician from musicians -- Exe.2 task 4
where name_musician not like '% %';

insert into tracks (albums_id, name_of_track, duration) -- добавил запись, так как результат следующего запроса был пустой
values(2, 'Ты только мой', 242);

select name_of_track from tracks -- Exe.2 task 5
where name_of_track like '%my%' or name_of_track like '%мой%';

select genre, count(musician_id)  from genre_of_singer gos -- Exe.3 task 1
left join genres g on g.genre_id = gos.genre_id 
group by genre;

select count(track_id) from albums a -- Exe.3 task 2
join tracks t ON t.albums_id = a.albums_id
where a.data_of_prod between '2019-01-01' and '2020-12-31';

select album_name, avg(duration)  from tracks t -- Exe.3 task 3
join album_of_singers aos on aos.albums_id = t.albums_id
join albums a on a.albums_id = aos.albums_id 
group by album_name
order by album_name;

select distinct m.name_musician from musicians m -- Exe.3 task 4
where m.name_musician not in (
select name_musician from musicians m2 
left join album_of_singers aos on aos.musician_id = m2.musician_id
left join albums a on a.albums_id = aos.albums_id
where a.data_of_prod between '2020-01-01' and '2020-12-31')
order by name_musician;

select distinct collection_name from collections c -- Exe.3 task 5
join singer_in_collection sic on sic.collections_id  = c.collections_id
join tracks t on t.track_id = sic.track_id
join albums a on a.albums_id = t.albums_id
join album_of_singers aos on aos.albums_id = a.albums_id
join musicians m on m.musician_id = aos.musician_id
where m.name_musician = 'Three Days Grace' ;

select album_name, count(*) from albums a -- Exe.4 task 1
left join album_of_singers aos on a.albums_id = aos.albums_id
left join musicians m on aos.musician_id = m.musician_id
left join genre_of_singer gos on m.musician_id = gos.musician_id 
left join genres g on gos.genre_id = g.genre_id
group by album_name
having count(*) > 1;


select name_of_track from tracks t -- Exe.4 task 2
full join singer_in_collection sic on t.track_id = sic.track_id
where sic.track_id is null;

select name_musician from musicians m --Exe.4 task 3
left join album_of_singers aos on m.musician_id = aos.musician_id
left join albums a on aos.albums_id = a.albums_id
left join tracks t on a.albums_id = t.albums_id
where t.duration = (select min(duration) from tracks)
group by m.name_musician, t.duration;

select album_name from albums a --Exe.4 task 4
join tracks t on a.albums_id = t.albums_id 
group by album_name
having count(track_id) < (select count(t.track_id) from albums a
join tracks t on a.albums_id = t.albums_id
group by a.album_name
limit 1);
