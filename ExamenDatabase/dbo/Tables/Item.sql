CREATE TABLE [dbo].[Item] (
    [ItemId]      INT        IDENTITY (1, 1) NOT NULL,
    [Name]        NCHAR (50) NOT NULL,
    [AvatarType]  INT        NULL,
    [SlotType]    INT        NULL,
    [AttackPower] INT        DEFAULT ((0)) NULL,
    [Defence]     INT        DEFAULT ((0)) NULL,
    [Health]      INT        DEFAULT ((0)) NULL,
    [Stamina]     INT        DEFAULT ((0)) NULL,
    [Mana]        INT        DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([ItemId] ASC),
    UNIQUE NONCLUSTERED ([Name] ASC)
);

