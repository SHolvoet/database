CREATE TABLE [dbo].[PlayerAvatar] (
    [PlayerAvatarId] INT        IDENTITY (1, 1) NOT NULL,
    [PlayerId]       INT        NOT NULL,
    [AvatarId]       INT        NOT NULL,
    [InventoryId]    INT        NULL,
    [FamilyName]     NCHAR (50) NOT NULL,
    [AvatarName]     NCHAR (50) NOT NULL,
    [TotalHealth]    INT        NULL,
    [TotalDefenece]  INT        NULL,
    [TotalStamina]   INT        NULL,
    [TotalMana]      INT        NULL,
    PRIMARY KEY CLUSTERED ([PlayerAvatarId] ASC),
    CONSTRAINT [FK_PlayerAvatarId_AvatarId] FOREIGN KEY ([AvatarId]) REFERENCES [dbo].[Avatar] ([AvatarId]),
    CONSTRAINT [FK_PlayerAvatarId_InventoryId] FOREIGN KEY ([InventoryId]) REFERENCES [dbo].[Inventory] ([InventoryId]),
    CONSTRAINT [FK_PlayerAvatarId_PlayerId] FOREIGN KEY ([PlayerId]) REFERENCES [dbo].[Player] ([PlayerId]),
    UNIQUE NONCLUSTERED ([AvatarName] ASC),
    UNIQUE NONCLUSTERED ([AvatarName] ASC),
    UNIQUE NONCLUSTERED ([FamilyName] ASC),
    UNIQUE NONCLUSTERED ([FamilyName] ASC)
);

