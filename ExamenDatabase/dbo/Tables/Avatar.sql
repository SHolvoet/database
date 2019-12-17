CREATE TABLE [dbo].[Avatar] (
    [AvatarId] INT        IDENTITY (1, 1) NOT NULL,
    [Type]     NCHAR (20) NOT NULL,
    [Health]   INT        NOT NULL,
    [Defence]  INT        NOT NULL,
    [Stamina]  INT        NOT NULL,
    [Mana]     INT        NOT NULL,
    PRIMARY KEY CLUSTERED ([AvatarId] ASC)
);

