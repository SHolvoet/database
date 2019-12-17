CREATE TABLE [dbo].[Player] (
    [PlayerId]  INT        IDENTITY (1, 1) NOT NULL,
    [FirstName] NCHAR (50) NOT NULL,
    [LastName]  NCHAR (50) NOT NULL,
    [Email]     NCHAR (50) NOT NULL,
    [Phone]     NCHAR (20) NOT NULL,
    [Login]     NCHAR (20) NOT NULL,
    [Password]  NCHAR (20) NOT NULL,
    PRIMARY KEY CLUSTERED ([PlayerId] ASC),
    UNIQUE NONCLUSTERED ([Login] ASC)
);

