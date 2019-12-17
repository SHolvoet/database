CREATE TABLE [dbo].[Inventory] (
    [InventoryId]    INT IDENTITY (1, 1) NOT NULL,
    [PlayerAvatarId] INT NULL,
    [AvatarType]     INT NULL,
    [ItemId]         INT NULL,
    PRIMARY KEY CLUSTERED ([InventoryId] ASC),
    CONSTRAINT [FK_Item_ToInventory] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Item] ([ItemId])
);

