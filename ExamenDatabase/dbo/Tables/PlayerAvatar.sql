CREATE TABLE [dbo].[PlayerAvatar] (
    [PlayerAvatarId] INT        IDENTITY (1, 1) NOT NULL,
    [PlayerId]       INT        NOT NULL,
    [AvatarId]       INT        NOT NULL,
    [FamilyName]     NCHAR (50) NULL,
    [AvatarName]     NCHAR (50) NOT NULL,
    [InventoryId]    INT        NULL,
    [TotalHealth]    INT        DEFAULT ((100)) NULL,
    [TotalDefence]   INT        DEFAULT ((100)) NULL,
    [TotalStamina]   INT        DEFAULT ((100)) NULL,
    [TotalMana]      INT        DEFAULT ((100)) NULL,
    [HeadSlot1]      INT        DEFAULT ((0)) NULL,
    [ChestSlot2]     INT        DEFAULT ((0)) NULL,
    [BootsSlot3]     INT        DEFAULT ((0)) NULL,
    [MainHandSlot4]  INT        DEFAULT ((0)) NULL,
    [OffHandSlot5]   INT        DEFAULT ((0)) NULL,
    PRIMARY KEY CLUSTERED ([PlayerAvatarId] ASC),
    CONSTRAINT [FK_PlayerAvatar_Inventory] FOREIGN KEY ([InventoryId]) REFERENCES [dbo].[Inventory] ([InventoryId]),
    CONSTRAINT [FK_PlayerAvatarId_AvatarId] FOREIGN KEY ([AvatarId]) REFERENCES [dbo].[Avatar] ([AvatarId]),
    CONSTRAINT [FK_PlayerAvatarId_PlayerId] FOREIGN KEY ([PlayerId]) REFERENCES [dbo].[Player] ([PlayerId]),
    UNIQUE NONCLUSTERED ([AvatarName] ASC)
);

