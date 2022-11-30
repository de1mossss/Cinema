GO
USE [Cinema]
GO

GO
INSERT INTO [studio]
VALUES ('20th Century Fox'),
       ('20th Century Fox Animation'),
       ('A24'),
       ('Alcon Entertainment'),
       ('Amblin Entertainment'),
       ('Bad Robot Productions');
GO

GO
INSERT INTO [film]
VALUES (N'Аватар', 1, 2009),
       (N'Аватар 2', 1, 2022),
       (N'Ледниковый период: Приключения Бака', 2, 2022),
       (N'Книга жизни', 2, 2014),
       (N'Солнцестояние', 3, 2019),
       (N'Реинкарнация', 3, 2018),
       (N'Бегущий по лезвию 2049', 4, 2017),
       (N'Гарфилд', 4, 2024),
       (N'Мир Юрского периода', 5, 2015),
       (N'Парк Юрского периода', 5, 1993),
       (N'Монстро', 6, 2008),
       (N'Кловерфилд', 6, 2016);
GO

GO
EXEC dbo.link_film_and_genre_by_name 1, N'фантастика'
EXEC dbo.link_film_and_genre_by_name 1, N'боевик'
EXEC dbo.link_film_and_genre_by_name 1, N'драма'
EXEC dbo.link_film_and_genre_by_name 1, N'приключение'

EXEC dbo.link_film_and_genre_by_name 2, N'фантастика'
EXEC dbo.link_film_and_genre_by_name 2, N'фентези'
EXEC dbo.link_film_and_genre_by_name 2, N'боевик'
EXEC dbo.link_film_and_genre_by_name 2, N'приключение'

EXEC dbo.link_film_and_genre_by_name 3, N'мультфильмы'
EXEC dbo.link_film_and_genre_by_name 3, N'комедия'
EXEC dbo.link_film_and_genre_by_name 3, N'приключения'
EXEC dbo.link_film_and_genre_by_name 3, N'семейный'

EXEC dbo.link_film_and_genre_by_name 4, N'мультфильм'
EXEC dbo.link_film_and_genre_by_name 4, N'мюзикл'
EXEC dbo.link_film_and_genre_by_name 4, N'фентези'
EXEC dbo.link_film_and_genre_by_name 4, N'мелодрама'
EXEC dbo.link_film_and_genre_by_name 4, N'комедия'
EXEC dbo.link_film_and_genre_by_name 4, N'приключения'
EXEC dbo.link_film_and_genre_by_name 4, N'семейный'

EXEC dbo.link_film_and_genre_by_name 5, N'ужасы'
EXEC dbo.link_film_and_genre_by_name 5, N'драма'
EXEC dbo.link_film_and_genre_by_name 5, N'триллер'

EXEC dbo.link_film_and_genre_by_name 6, N'ужасы'
EXEC dbo.link_film_and_genre_by_name 6, N'драма'
EXEC dbo.link_film_and_genre_by_name 6, N'детектив'

EXEC dbo.link_film_and_genre_by_name 7, N'фантастика'
EXEC dbo.link_film_and_genre_by_name 7, N'боевик'
EXEC dbo.link_film_and_genre_by_name 7, N'триллер'
EXEC dbo.link_film_and_genre_by_name 7, N'драма'

EXEC dbo.link_film_and_genre_by_name 8, N'мультфильм'
EXEC dbo.link_film_and_genre_by_name 8, N'фэнтези'
EXEC dbo.link_film_and_genre_by_name 8, N'комедия'
EXEC dbo.link_film_and_genre_by_name 8, N'приключения'
EXEC dbo.link_film_and_genre_by_name 8, N'семейный'

EXEC dbo.link_film_and_genre_by_name 9, N'фантастика'
EXEC dbo.link_film_and_genre_by_name 9, N'приключения'
EXEC dbo.link_film_and_genre_by_name 9, N'боевик'

EXEC dbo.link_film_and_genre_by_name 10, N'приключения'
EXEC dbo.link_film_and_genre_by_name 10, N'фантастика'
EXEC dbo.link_film_and_genre_by_name 10, N'семейный'

EXEC dbo.link_film_and_genre_by_name 11, N'ужасы'
EXEC dbo.link_film_and_genre_by_name 11, N'фантастика'
EXEC dbo.link_film_and_genre_by_name 11, N'триллер'
EXEC dbo.link_film_and_genre_by_name 11, N'детектив'

EXEC dbo.link_film_and_genre_by_name 12, N'триллер'
EXEC dbo.link_film_and_genre_by_name 12, N'драма'
EXEC dbo.link_film_and_genre_by_name 12, N'фантастика'
GO

GO
INSERT INTO [cinema]
VALUES (N'Синема парк', N'Синема Парк', '89953211400'),
       (N'Орион', N'Островского', '89953211410'),
       (N'Эдем-Киномир', N'Кутателадзе', '89953211420'),
       (N'Дом культуры Академия', N'Ильича', '89953211430'),
       (N'Аврора', N'Карла Маркса', '89953211440')
GO

GO
INSERT INTO [hall]
VALUES (N'Малый', 15, 1),
       (N'Средний', 30, 1),
       (N'Большой', 60, 1),
       (N'#1', 10, 2),
       (N'#2', 10, 2),
       (N'#3', 10, 2),
       (N'Первый', 8, 3),
       (N'Второй', 16, 3),
       (N'Второй', 16, 3),
       (N'Первый', 10, 4),
       (N'Второй', 64, 4),
       (N'Первый', 33, 5),
       (N'Второй', 46, 5)
GO

GO
INSERT INTO [user] (login, password, [first name], [second name], [third name], [email])
VALUES ('admin', 'admin', 'admin', 'admin', 'admin', 'admin@amin.admin');
GO

SELECT * FROM [user]