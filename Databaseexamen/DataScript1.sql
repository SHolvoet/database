SET IDENTITY_INSERT [dbo].[Player] ON
INSERT INTO [dbo].[Player] ([PlayerId], [FirstName], [LastName], [Email], [Phone], [Login], [Password]) VALUES (1, N'Jan                                               ', N'Moenens                                           ', N'jan@moenens.be                                    ', N'0487675374          ', N'jan                 ', N'pasword             ')
INSERT INTO [dbo].[Player] ([PlayerId], [FirstName], [LastName], [Email], [Phone], [Login], [Password]) VALUES (2, N'Audrey                                            ', N'Vroman                                            ', N'audrey@vroman.be                                  ', N'0475775668          ', N'audrey              ', N'pasword             ')
INSERT INTO [dbo].[Player] ([PlayerId], [FirstName], [LastName], [Email], [Phone], [Login], [Password]) VALUES (4, N'Jerome                                            ', N'Moenens                                           ', N'Jerome@moenens.be                                 ', N'0040404850          ', N'jerome              ', N'imgod8575           ')
SET IDENTITY_INSERT [dbo].[Player] OFF

SET IDENTITY_INSERT [dbo].[Item] ON
INSERT INTO [dbo].[Item] ([ItemId], [Name], [SlotType], [AttackPower], [DefencePower], [Health], [Stamina], [Mana]) VALUES (9, N'StartersHelm                                      ', 1, NULL, 10, NULL, NULL, NULL)
INSERT INTO [dbo].[Item] ([ItemId], [Name], [SlotType], [AttackPower], [DefencePower], [Health], [Stamina], [Mana]) VALUES (10, N'StartersChest                                     ', 2, NULL, 10, NULL, NULL, NULL)
INSERT INTO [dbo].[Item] ([ItemId], [Name], [SlotType], [AttackPower], [DefencePower], [Health], [Stamina], [Mana]) VALUES (11, N'StartersBoots                                     ', 3, NULL, 10, NULL, NULL, NULL)
INSERT INTO [dbo].[Item] ([ItemId], [Name], [SlotType], [AttackPower], [DefencePower], [Health], [Stamina], [Mana]) VALUES (12, N'StartersSword                                     ', 4, 10, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[Item] ([ItemId], [Name], [SlotType], [AttackPower], [DefencePower], [Health], [Stamina], [Mana]) VALUES (13, N'StartersWand                                      ', 4, 10, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[Item] ([ItemId], [Name], [SlotType], [AttackPower], [DefencePower], [Health], [Stamina], [Mana]) VALUES (14, N'StartersMainDagger                                ', 4, 10, NULL, NULL, NULL, NULL)
INSERT INTO [dbo].[Item] ([ItemId], [Name], [SlotType], [AttackPower], [DefencePower], [Health], [Stamina], [Mana]) VALUES (15, N'StartersShield                                    ', 5, NULL, 10, NULL, NULL, NULL)
INSERT INTO [dbo].[Item] ([ItemId], [Name], [SlotType], [AttackPower], [DefencePower], [Health], [Stamina], [Mana]) VALUES (16, N'StartersRelic                                     ', 5, NULL, 10, NULL, NULL, NULL)
INSERT INTO [dbo].[Item] ([ItemId], [Name], [SlotType], [AttackPower], [DefencePower], [Health], [Stamina], [Mana]) VALUES (17, N'StartersOffDagger                                 ', 5, 10, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Item] OFF

SET IDENTITY_INSERT [dbo].[Avatar] ON
INSERT INTO [dbo].[Avatar] ([AvatarId], [Type], [Health], [Defence], [Stamina], [Mana]) VALUES (1, N'WARLOCK             ', 100, 75, 50, 175)
INSERT INTO [dbo].[Avatar] ([AvatarId], [Type], [Health], [Defence], [Stamina], [Mana]) VALUES (2, N'WARRIOR             ', 175, 125, 75, 25)
INSERT INTO [dbo].[Avatar] ([AvatarId], [Type], [Health], [Defence], [Stamina], [Mana]) VALUES (4, N'HUNTER              ', 150, 50, 175, 25)
SET IDENTITY_INSERT [dbo].[Avatar] OFF

SET IDENTITY_INSERT [dbo].[Inventory] ON
INSERT INTO [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [TypeId], [ItemId], [HeadSlot1], [ChestSlot2], [BootsSlot3], [MainHandSlot4], [OffHandSlot5]) VALUES (2, 1, 1, NULL, 9, 10, 11, 13, 16)
SET IDENTITY_INSERT [dbo].[Inventory] OFF

SET IDENTITY_INSERT [dbo].[PlayerAvatar] ON
INSERT INTO [dbo].[PlayerAvatar] ([PlayerAvatarId], [PlayerId], [AvatarId], [InventoryId], [FamilyName], [AvatarName], [TotalHealth], [TotalDefenece], [TotalStamina], [TotalMana]) VALUES (3, 1, 1, NULL, N'Galaxor                                           ', N'TheOne                                            ', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[PlayerAvatar] OFF
