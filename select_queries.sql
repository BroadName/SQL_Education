select count(musician_id), genre_id  from genre_of_singer
group by genre_id;

select collection_name from collections c
where data_of_prod between '2019-01-01' and '2020-12-31'; -- в задании не ясно включительно или нет

select avg(duration), albums_id  from tracks t
group by albums_id
order by albums_id;

select name_musician from musicians m
join album_of_singers aos on m.musician_id = aos.musician_id
join albums a on aos.albums_id = a.albums_id
where data_of_prod not between '2020-01-01' and '2020-12-31'
group by name_musician; -- ЛСП имеет 2 альбома один из которых не проходит условие

select collection_name from collections c
join singer_in_collection sic on sic.collections_id  = c.collections_id
join tracks t on t.track_id = sic.track_id
join albums a on a.albums_id = t.albums_id
join album_of_singers aos on aos.albums_id = a.albums_id
join musicians m on m.musician_id = aos.musician_id
where m.musician_id = 4
group by collection_name;

select album_name, count(*) from albums a 
left join album_of_singers aos on a.albums_id = aos.albums_id
left join musicians m on aos.musician_id = m.musician_id
left join genre_of_singer gos on m.musician_id = gos.musician_id 
left join genres g on gos.genre_id = g.genre_id
group by album_name
having count(*) > 1;


select name_of_track from tracks t
full join singer_in_collection sic on t.track_id = sic.track_id
where sic.track_id is null;

select name_musician, t.duration  from musicians m
left join album_of_singers aos on m.musician_id = aos.musician_id
left join albums a on aos.albums_id = a.albums_id
left join tracks t on a.albums_id = t.albums_id
order by t.duration
limit 5;

select album_name, count(track_id) from albums a
left join tracks t on a.albums_id = t.albums_id
group by album_name
order by count(track_id)
limit 3;
