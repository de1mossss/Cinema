GO
CREATE DATABASE [Cinema];
GO

GO
USE [Cinema]
GO

-- films database
GO
CREATE TABLE [genre]
(
    [code] bigint IDENTITY (1,1),
    [name] varchar(64) NOT NULL,
    CONSTRAINT PK_FILM_GENRE_CODE PRIMARY KEY ([code]),
    CONSTRAINT U_GENRE_NAME UNIQUE ([name])
);

CREATE TABLE [studio]
(
    [code] bigint IDENTITY (1,1),
    [name] varchar(128) NOT NULL,
    CONSTRAINT PK_STUDIO_CODE PRIMARY KEY ([code]),
    CONSTRAINT U_STUDIO_NAME UNIQUE ([name])
);

CREATE TABLE [film]
(
    [code]         bigint IDENTITY (1,1),
    [name]         varchar(128) NOT NULL,
    [studio]       bigint,
    [release date] integer,
    CONSTRAINT PK_FILM_CODE PRIMARY KEY ([code]),
    CONSTRAINT FK_FILM_STUDIO FOREIGN KEY ([studio]) REFERENCES [studio] ([code]),
    CONSTRAINT CHECK_FILM_YEAR CHECK ([release date] > 0)
);

CREATE TABLE [film-genre]
(
    [film]  bigint,
    [genre] bigint NOT NULL,
    CONSTRAINT FK_FILM_GENRE_FILM FOREIGN KEY ([film]) REFERENCES [film] ([code]),
    CONSTRAINT FK_FILM_GENRE_GENRE FOREIGN KEY ([genre]) REFERENCES [genre] ([code]),
    CONSTRAINT U_FILM_GENRE_FILM_GENRE UNIQUE ([film], [genre])
);
GO

-- cinema database
GO
CREATE TABLE [cinema]
(
    [code]         bigint IDENTITY (1,1),
    [name]         varchar(64)  NOT NULL,
    [address]      varchar(128) NOT NULL,
    [phone number] varchar(32),
    CONSTRAINT PK_CINEMA_CODE PRIMARY KEY ([code])
);

CREATE TABLE [hall]
(
    [code]     bigint IDENTITY (1,1),
    [name]     varchar(64) NOT NULL,
    [capacity] int,
    [cinema]   bigint      NOT NULL,
    CONSTRAINT PK_HALL_CODE PRIMARY KEY ([code]),
    CONSTRAINT FK_HALL_CINEMA FOREIGN KEY ([cinema]) REFERENCES [cinema] ([code]),
    CONSTRAINT CHECK_HALL_CAPACITY CHECK ([capacity] > 0)
);

CREATE TABLE [session]
(
    [code] bigint IDENTITY (1,1),
    [date] date,
    [time] time,
    [hall] bigint,
    [film] bigint,
    CONSTRAINT PK_SESSION_CODE PRIMARY KEY ([code]),
    CONSTRAINT FK_SESSION_HALL FOREIGN KEY ([hall]) REFERENCES [hall] ([code]),
    CONSTRAINT FK_SESSION_FILM FOREIGN KEY ([film]) REFERENCES [film] ([code])
);

CREATE TABLE [user]
(
    [code]        bigint IDENTITY (1, 1),
    [login]       varchar(64) NOT NULL,
    [password]    varchar(64) NOT NULL,
    [first name]  varchar(64) NOT NULL,
    [second name] varchar(64) NOT NULL,
    [third name]  varchar(64),
    [email]       varchar(64) NOT NULL,
    CONSTRAINT PK_USER_CODE PRIMARY KEY ([code]),
    CONSTRAINT U_LOGIN_EMAIL UNIQUE ([login], [email])
)

CREATE TABLE [ticket]
(
    [code]          bigint IDENTITY (1,1),
    [purchase date] date,
    [session]       bigint,
    [user]          bigint,
    CONSTRAINT PK_TICKET_CODE PRIMARY KEY ([code]),
    CONSTRAINT FK_TICKET_SESSION FOREIGN KEY ([session]) REFERENCES [session] ([code]),
    CONSTRAINT FK_TICKET_USER FOREIGN KEY ([user]) REFERENCES [user] ([code])
);
GO

GO
CREATE OR ALTER FUNCTION get_genre_code(@genre_name AS varchar(64))
    RETURNS bigint AS
BEGIN
    DECLARE @ret_val bigint
    SELECT @ret_val = code FROM genre WHERE name LIKE @genre_name;
    RETURN @ret_val
END;
GO

GO
CREATE OR ALTER PROCEDURE link_film_and_genre_by_name(@film_id bigint, @genre_name varchar(64)) AS
BEGIN
    DECLARE @genre_code bigint
    SELECT @genre_code = dbo.get_genre_code(@genre_name)
    IF @genre_code IS NULL
        INSERT INTO genre VALUES (@genre_name)
    SELECT @genre_code = dbo.get_genre_code(@genre_name)
    INSERT INTO [film-genre] VALUES (@film_id, @genre_code);
END;
GO
