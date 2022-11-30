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
VALUES (N'������', 1, 2009),
       (N'������ 2', 1, 2022),
       (N'���������� ������: ����������� ����', 2, 2022),
       (N'����� �����', 2, 2014),
       (N'�������������', 3, 2019),
       (N'������������', 3, 2018),
       (N'������� �� ������ 2049', 4, 2017),
       (N'�������', 4, 2024),
       (N'��� ������� �������', 5, 2015),
       (N'���� ������� �������', 5, 1993),
       (N'�������', 6, 2008),
       (N'����������', 6, 2016);
GO

GO
EXEC dbo.link_film_and_genre_by_name 1, N'����������'
EXEC dbo.link_film_and_genre_by_name 1, N'������'
EXEC dbo.link_film_and_genre_by_name 1, N'�����'
EXEC dbo.link_film_and_genre_by_name 1, N'�����������'

EXEC dbo.link_film_and_genre_by_name 2, N'����������'
EXEC dbo.link_film_and_genre_by_name 2, N'�������'
EXEC dbo.link_film_and_genre_by_name 2, N'������'
EXEC dbo.link_film_and_genre_by_name 2, N'�����������'

EXEC dbo.link_film_and_genre_by_name 3, N'�����������'
EXEC dbo.link_film_and_genre_by_name 3, N'�������'
EXEC dbo.link_film_and_genre_by_name 3, N'�����������'
EXEC dbo.link_film_and_genre_by_name 3, N'��������'

EXEC dbo.link_film_and_genre_by_name 4, N'����������'
EXEC dbo.link_film_and_genre_by_name 4, N'������'
EXEC dbo.link_film_and_genre_by_name 4, N'�������'
EXEC dbo.link_film_and_genre_by_name 4, N'���������'
EXEC dbo.link_film_and_genre_by_name 4, N'�������'
EXEC dbo.link_film_and_genre_by_name 4, N'�����������'
EXEC dbo.link_film_and_genre_by_name 4, N'��������'

EXEC dbo.link_film_and_genre_by_name 5, N'�����'
EXEC dbo.link_film_and_genre_by_name 5, N'�����'
EXEC dbo.link_film_and_genre_by_name 5, N'�������'

EXEC dbo.link_film_and_genre_by_name 6, N'�����'
EXEC dbo.link_film_and_genre_by_name 6, N'�����'
EXEC dbo.link_film_and_genre_by_name 6, N'��������'

EXEC dbo.link_film_and_genre_by_name 7, N'����������'
EXEC dbo.link_film_and_genre_by_name 7, N'������'
EXEC dbo.link_film_and_genre_by_name 7, N'�������'
EXEC dbo.link_film_and_genre_by_name 7, N'�����'

EXEC dbo.link_film_and_genre_by_name 8, N'����������'
EXEC dbo.link_film_and_genre_by_name 8, N'�������'
EXEC dbo.link_film_and_genre_by_name 8, N'�������'
EXEC dbo.link_film_and_genre_by_name 8, N'�����������'
EXEC dbo.link_film_and_genre_by_name 8, N'��������'

EXEC dbo.link_film_and_genre_by_name 9, N'����������'
EXEC dbo.link_film_and_genre_by_name 9, N'�����������'
EXEC dbo.link_film_and_genre_by_name 9, N'������'

EXEC dbo.link_film_and_genre_by_name 10, N'�����������'
EXEC dbo.link_film_and_genre_by_name 10, N'����������'
EXEC dbo.link_film_and_genre_by_name 10, N'��������'

EXEC dbo.link_film_and_genre_by_name 11, N'�����'
EXEC dbo.link_film_and_genre_by_name 11, N'����������'
EXEC dbo.link_film_and_genre_by_name 11, N'�������'
EXEC dbo.link_film_and_genre_by_name 11, N'��������'

EXEC dbo.link_film_and_genre_by_name 12, N'�������'
EXEC dbo.link_film_and_genre_by_name 12, N'�����'
EXEC dbo.link_film_and_genre_by_name 12, N'����������'
GO

GO
INSERT INTO [cinema]
VALUES (N'������ ����', N'������ ����', '89953211400'),
       (N'�����', N'�����������', '89953211410'),
       (N'����-�������', N'�����������', '89953211420'),
       (N'��� �������� ��������', N'������', '89953211430'),
       (N'������', N'����� ������', '89953211440')
GO

GO
INSERT INTO [hall]
VALUES (N'�����', 15, 1),
       (N'�������', 30, 1),
       (N'�������', 60, 1),
       (N'#1', 10, 2),
       (N'#2', 10, 2),
       (N'#3', 10, 2),
       (N'������', 8, 3),
       (N'������', 16, 3),
       (N'������', 16, 3),
       (N'������', 10, 4),
       (N'������', 64, 4),
       (N'������', 33, 5),
       (N'������', 46, 5)
GO

GO
INSERT INTO [user] (login, password, [first name], [second name], [third name], [email])
VALUES ('admin', 'admin', 'admin', 'admin', 'admin', 'admin@amin.admin');
GO

SELECT * FROM [user]