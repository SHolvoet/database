CREATE TABLE [dbo].[Item] (
    [ItemId]       INT        IDENTITY (1, 1) NOT NULL,
    [Name]         NCHAR (50) NOT NULL,
	[AvatarType]   INT		  NULL,
    [SlotType]     INT        NULL,
    [AttackPower]  INT        NULL,
    [DefencePower] INT        NULL,
    [Health]       INT        NULL,
    [Stamina]      INT        NULL,
    [Mana]         INT        NULL,
    PRIMARY KEY CLUSTERED ([ItemId] ASC), 
    CONSTRAINT [CK_Item_SlotType] CHECK (AvatarType = NULL OR (SlotType = 1) OR (SlotType = 2) OR (SlotType = 4)) 
);
