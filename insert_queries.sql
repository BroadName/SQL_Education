insert into genres (genre)
values('Hip-Hop');

insert into genres (genre)
values('Alternative rock');

insert into genres (genre)
values('Rock');

insert into genres (genre)
values('Rap');

insert into genres (genre)
values('Pop');

insert into musicians (name_musician)
values('Oxxxymiron'),
		('ЛСП'),
		('NoizeMC'),
		('Three Days Grace');

insert into genre_of_singer(musician_id, genre_id)
values(1, 1),
	  (1, 4),
	  (2, 1),
	  (2, 4),
	  (3, 3),
	  (3, 4),
	  (4, 2),
	  (4, 3);
	 
insert into albums(album_name, data_of_prod)
values('Горгород', '2015-11-13'),
	  ('Вечный жид', '2011-09-15'),
	  ('Tragic City', '2017-04-28'),
	  ('One More City', '2020-09-18'),
	  ('Выход в город', '2021-11-19'),
	  ('Life Starts Now', '2009-09-22'),
	  ('One-X', '2006-06-13');
	 
insert into album_of_singers (musician_id, albums_id)
values(1, 1),
	  (1, 2),
	  (2, 3),
	  (2, 4),
	  (3, 5),
	  (4, 6),
	  (4, 7);

insert into tracks (albums_id, name_of_track, duration)
values(1, 'Не с начала', 125),
	  (1, 'Кем ты стал', 236),
	  (1, 'Всего лишь писатель', 209),
	  (1, 'Девочка Пиздец', 163),
	  (1, 'Переплетено', 291),
	  (1, 'Колыбельная', 197),
	  (1, 'Полигон', 220),
	  (1, 'Накануне', 221),
	  (1, 'Слово мэра', 240),
	  (1, 'Башня из слоновой кости', 204),
	  (1, 'Где нас нет', 265),
	  (2, 'Восточный Мордор', 168),
	  (2, 'Тентакли', 220),
	  (2, 'Спонтанное самовозгорание', 151),
	  (2, 'CCTV', 136),
	  (2, 'До сих пор МС', 203),
	  (2, 'Привет со дна', 304),
	  (2, 'Вечный жид', 152),
	  (2, 'В бульбуляторе', 166),
	  (2, 'Судьба моралиста', 112),
	  (2, 'Russky Cockney', 159),
	  (2, 'В говне', 149),
	  (2, 'Крокодиловы слёзы', 160),
	  (2, 'Жук в муравейнике', 240);
	 
insert into tracks (albums_id, name_of_track, duration)
values(3, 'Ползать', 203),
	  (3, 'Монетка', 200),
	  (3, 'Деньги не проблема', 237),
	  (3, 'Тело', 225),
	  (3, 'Воскресение', 181),
	  (3, 'Лабиринт отражений', 178),
	  (3, 'Белый танец', 275),
	  (3, 'Отброс', 152),
	  (3, 'Канкан', 254),
	  (3, 'Ещё один день', 244),
	  (3, 'Интерлюдия', 66),
	  (3, 'Конец света', 348),
	  (3, 'Плевок в вечность', 194),
	  (4, 'Золотой мальчик', 219),
	  (4, 'Поп-звезда', 177),
	  (4, 'Мамонтёнок', 215),
	  (4, 'Девочка-пришелец', 184),
	  (4, 'Парный дурак', 169),
	  (4, 'Золушка', 235),
	  (4, 'Ууу', 168),
	  (4, 'Бинокль', 209),
	  (4, 'Именно такой 20', 248),
	  (4, 'Амнезия', 235),
	  (4, 'Цветная бумага', 179),
	  (4, 'Один', 252),
	  (4, 'Дюны', 226),
	  (4, '10 негритят', 197),
	  (4, 'Вспоминай', 206);

insert into tracks (albums_id, name_of_track, duration)
values(5, 'Вояджер-1', 218),
	  (5, 'Выход в город', 188),
	  (5, 'Миокард', 182),
	  (5, 'Сельма Лагерлёф', 274),
	  (5, 'Сопротивление воздуха', 176),
	  (5, 'Двадцатые годы', 195),
	  (5, 'Век-волкодав', 178),
	  (5, 'Столетняя война', 193),
	  (5, 'Вуду', 209),
	  (5, 'Инстинкт', 233),
	  (5, 'Трансгуманизм 2.0', 200),
	  (5, 'Паучьими тенётами', 178),
	  (5, 'Песня предателя', 237),
	  (5, 'Бизнесмен, что продал мир', 232),
	  (5, 'Всё как у людей', 270),
	  (5, 'Букет крапивы', 185),
	  (5, '26.04', 230),
	  (5, 'Первые симптомы', 237),
	  (5, 'Опыт отсутствия', 194),
	  (5, 'Вереница', 244);

insert into tracks (albums_id, name_of_track, duration)
values(6, 'Bitter Taste', 242),
	  (6, 'Break', 193),
	  (6, 'World So Cold', 243),
	  (6, 'Lost In You', 233),
	  (6, 'The Good Life', 173),
	  (6, 'No More', 225),
	  (6, 'Last to Know', 207),
	  (6, 'Someome Who Cares', 292),
	  (6, 'Bully', 219),
	  (6, 'Without You', 214),
	  (6, 'Goin Down', 186),
	  (6, 'Life Starts Now', 188),
	  (7, 'It''s All Over', 242),
	  (7, 'Pain', 203),
	  (7, 'Animal I Have Become', 231),
	  (7, 'Never Too Late', 209),
	  (7, 'On My Own', 185),
	  (7, 'Riot', 207),
	  (7, 'Get Out Alive', 262),
	  (7, 'Let It Die', 189),
	  (7, 'Over And Over', 191),
	  (7, 'Time of Dying', 188),
	  (7, 'Gone Forever', 221),
	  (7, 'One X', 286),
	  (7, 'Running Away', 243),
	  (7, 'Animal I Have Become(Stripped Acoustic Version)', 225),
	  (7, 'I Hate Everything About You (Acoustic Version)', 233);

insert into collections (collection_name , data_of_prod)
values('Intelligence rap', '2022-01-15'),
	  ('Return me my 2007', '2020-04-22'),
	  ('Alternative', '2014-02-14'),
	  ('Just Relax', '2021-01-01');

insert into singer_in_collection (track_id, collections_id)
values(5, 1),
	  (9, 1),
	  (12, 1),
	  (23, 1),
	  (24, 1),
	  (58, 1),
	  (59, 1),
	  (60, 1),
	  (66, 1),
	  (67, 1);
	  
insert into singer_in_collection (track_id, collections_id)
values(74, 2),
	  (77, 2),
	  (79, 2),
	  (85, 2),
	  (87, 2),
	  (92, 2),
	  (93, 2),
	  (96, 2);
	
insert into singer_in_collection (track_id, collections_id)
values(73, 3),
	  (74, 3),
	  (75, 3),
	  (76, 3),
	  (77, 3),
	  (78, 3),
	  (79, 3),
	  (80, 3),
	  (81, 3),
	  (82, 3);
	  
insert into singer_in_collection (track_id, collections_id)
values(25, 4),
	  (26, 4),
	  (28, 4),
	  (33, 4);
