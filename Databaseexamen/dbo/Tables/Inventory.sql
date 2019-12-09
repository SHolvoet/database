CREATE TABLE [dbo].[Inventory] (
    [InventoryId]    INT IDENTITY (1, 1) NOT NULL,
    [PlayerAvatarId] INT NOT NULL,
    [TypeId]         INT NULL,
    [ItemId]         INT NULL,
    [HeadSlot1]      INT NULL,
    [ChestSlot2]     INT NULL,
    [BootsSlot3]     INT NULL,
    [MainHandSlot4]  INT NULL,
    [OffHandSlot5]   INT NULL,

    PRIMARY KEY CLUSTERED ([InventoryId] ASC),
    CONSTRAINT [FK_Item_ToInventory] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Item] ([ItemId])
);

