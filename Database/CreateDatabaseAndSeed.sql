CREATE DATABASE podcastsDB
GO

use podcastsDB
GO

CREATE TABLE [dbo].[podcasts] 
(
    [Id]    UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
    [Title] NVARCHAR (MAX)   NOT NULL
)
GO

INSERT INTO podcasts (Title) 
values
('PODCAST 01'),
('PODCAST 03'),
('PODCAST 04'),
('PODCAST 05'),
('PODCAST 07'),
('PODCAST 06');
GO