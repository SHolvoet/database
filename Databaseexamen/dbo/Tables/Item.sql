CREATE TABLE [dbo].[Item] (
    [ItemId]       INT        IDENTITY (1, 1) NOT NULL,
    [Name]         NCHAR (50) NOT NULL,
    [SlotType]     INT        NULL,
    [AttackPower]  INT        NULL,
    [DefencePower] INT        NULL,
    [Health]       INT        NULL,
    [Stamina]      INT        NULL,
    [Mana]         INT        NULL,
    PRIMARY KEY CLUSTERED ([ItemId] ASC)
);

