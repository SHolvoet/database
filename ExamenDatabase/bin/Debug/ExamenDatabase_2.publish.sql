﻿/*
Deployment script for ExamenSql

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "ExamenSql"
:setvar DefaultFilePrefix "ExamenSql"
:setvar DefaultDataPath "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

USE [Examen]
GO
SET IDENTITY_INSERT [dbo].[Avatar] ON 

INSERT [dbo].[Avatar] ([AvatarId], [Type], [Health], [Defence], [Stamina], [Mana]) VALUES (1, N'WARLOCK             ', 100, 75, 50, 175)
INSERT [dbo].[Avatar] ([AvatarId], [Type], [Health], [Defence], [Stamina], [Mana]) VALUES (2, N'WARRIOR             ', 175, 125, 75, 25)
INSERT [dbo].[Avatar] ([AvatarId], [Type], [Health], [Defence], [Stamina], [Mana]) VALUES (4, N'HUNTER              ', 150, 50, 175, 25)
SET IDENTITY_INSERT [dbo].[Avatar] OFF

USE [Examen]
GO
SET IDENTITY_INSERT [dbo].[Player] ON 

INSERT [dbo].[Player] ([PlayerId], [FirstName], [LastName], [Email], [Phone], [Login], [Password]) VALUES (31, N'FirstName                                         ', N'familienaam                                       ', N'test@email.com                                    ', N'505505              ', N'TestAccount         ', N'test                ')
INSERT [dbo].[Player] ([PlayerId], [FirstName], [LastName], [Email], [Phone], [Login], [Password]) VALUES (32, N'Jan                                               ', N'Moenens                                           ', N'Janmoenens@test.be                                ', N'45454544554         ', N'Jan1                ', N'Admin               ')
INSERT [dbo].[Player] ([PlayerId], [FirstName], [LastName], [Email], [Phone], [Login], [Password]) VALUES (37, N'jan                                               ', N'moenens                                           ', N'janmoenens@test.be                                ', N'454545              ', N'jan2                ', N'Admin               ')
SET IDENTITY_INSERT [dbo].[Player] OFF

USE [Examen]
GO
SET IDENTITY_INSERT [dbo].[PlayerAvatar] ON 

INSERT [dbo].[PlayerAvatar] ([PlayerAvatarId], [PlayerId], [AvatarId], [FamilyName], [AvatarName], [InventoryId], [TotalHealth], [TotalDefence], [TotalStamina], [TotalMana], [HeadSlot1], [ChestSlot2], [BootsSlot3], [MainHandSlot4], [OffHandSlot5]) VALUES (6, 31, 1, N'Glaxor                                            ', N'Jedi                                              ', 5, 100, 100, 100, 100, 9, 10, 11, 13, 16)
INSERT [dbo].[PlayerAvatar] ([PlayerAvatarId], [PlayerId], [AvatarId], [FamilyName], [AvatarName], [InventoryId], [TotalHealth], [TotalDefence], [TotalStamina], [TotalMana], [HeadSlot1], [ChestSlot2], [BootsSlot3], [MainHandSlot4], [OffHandSlot5]) VALUES (7, 32, 4, N'Familie1                                          ', N'Test1                                             ', 6, 100, 100, 100, 100, 0, 0, 0, 0, 0)
INSERT [dbo].[PlayerAvatar] ([PlayerAvatarId], [PlayerId], [AvatarId], [FamilyName], [AvatarName], [InventoryId], [TotalHealth], [TotalDefence], [TotalStamina], [TotalMana], [HeadSlot1], [ChestSlot2], [BootsSlot3], [MainHandSlot4], [OffHandSlot5]) VALUES (12, 37, 2, N'Familie2                                          ', N'Test2                                             ', 18, 100, 100, 100, 100, 0, 0, 0, 0, 0)
INSERT [dbo].[PlayerAvatar] ([PlayerAvatarId], [PlayerId], [AvatarId], [FamilyName], [AvatarName], [InventoryId], [TotalHealth], [TotalDefence], [TotalStamina], [TotalMana], [HeadSlot1], [ChestSlot2], [BootsSlot3], [MainHandSlot4], [OffHandSlot5]) VALUES (16, 31, 4, N'Glaxor                                            ', N'Jedi3                                             ', 22, 100, 100, 100, 100, 9, 10, 11, 14, 17)
INSERT [dbo].[PlayerAvatar] ([PlayerAvatarId], [PlayerId], [AvatarId], [FamilyName], [AvatarName], [InventoryId], [TotalHealth], [TotalDefence], [TotalStamina], [TotalMana], [HeadSlot1], [ChestSlot2], [BootsSlot3], [MainHandSlot4], [OffHandSlot5]) VALUES (17, 31, 2, N'Glaxor                                            ', N'Jedi2                                             ', 23, 100, 100, 100, 100, 9, 10, 11, 12, 15)
SET IDENTITY_INSERT [dbo].[PlayerAvatar] OFF

USE [Examen]
GO
SET IDENTITY_INSERT [dbo].[Inventory] ON 

INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (5, 6, 1, NULL)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (6, 7, 4, NULL)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (8, 6, 1, 9)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (9, 6, 1, 10)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (10, 6, 1, 11)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (11, 6, 1, 13)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (12, 6, 1, 16)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (13, 6, 1, 12)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (14, 6, 1, 17)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (18, 12, 2, NULL)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (22, 16, 4, NULL)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (23, 17, 2, NULL)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (25, 6, 1, 24)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (26, 7, 1, 24)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (27, 12, 1, 24)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (28, 16, 1, 24)
INSERT [dbo].[Inventory] ([InventoryId], [PlayerAvatarId], [AvatarType], [ItemId]) VALUES (29, 17, 1, 24)
SET IDENTITY_INSERT [dbo].[Inventory] OFF

USE [Examen]
GO
SET IDENTITY_INSERT [dbo].[Item] ON 

INSERT [dbo].[Item] ([ItemId], [Name], [AvatarType], [SlotType], [AttackPower], [Defence], [Health], [Stamina], [Mana]) VALUES (9, N'StartersHelm                                      ', NULL, 1, 0, 10, 0, 0, 25)
INSERT [dbo].[Item] ([ItemId], [Name], [AvatarType], [SlotType], [AttackPower], [Defence], [Health], [Stamina], [Mana]) VALUES (10, N'StartersChest                                     ', NULL, 2, 0, 10, 25, 0, 0)
INSERT [dbo].[Item] ([ItemId], [Name], [AvatarType], [SlotType], [AttackPower], [Defence], [Health], [Stamina], [Mana]) VALUES (11, N'StartersBoots                                     ', NULL, 3, 0, 10, 0, 25, 0)
INSERT [dbo].[Item] ([ItemId], [Name], [AvatarType], [SlotType], [AttackPower], [Defence], [Health], [Stamina], [Mana]) VALUES (12, N'StartersSword                                     ', 2, 4, 10, 0, 0, 0, 0)
INSERT [dbo].[Item] ([ItemId], [Name], [AvatarType], [SlotType], [AttackPower], [Defence], [Health], [Stamina], [Mana]) VALUES (13, N'StartersWand                                      ', 1, 4, 10, 0, 0, 0, 0)
INSERT [dbo].[Item] ([ItemId], [Name], [AvatarType], [SlotType], [AttackPower], [Defence], [Health], [Stamina], [Mana]) VALUES (14, N'StartersMainDagger                                ', 4, 4, 10, 0, 0, 0, 0)
INSERT [dbo].[Item] ([ItemId], [Name], [AvatarType], [SlotType], [AttackPower], [Defence], [Health], [Stamina], [Mana]) VALUES (15, N'StartersShield                                    ', 2, 5, 0, 10, 0, 0, 0)
INSERT [dbo].[Item] ([ItemId], [Name], [AvatarType], [SlotType], [AttackPower], [Defence], [Health], [Stamina], [Mana]) VALUES (16, N'StartersRelic                                     ', 1, 5, 0, 10, 0, 0, 0)
INSERT [dbo].[Item] ([ItemId], [Name], [AvatarType], [SlotType], [AttackPower], [Defence], [Health], [Stamina], [Mana]) VALUES (17, N'StartersOffDagger                                 ', 4, 5, 10, 0, 0, 0, 0)
INSERT [dbo].[Item] ([ItemId], [Name], [AvatarType], [SlotType], [AttackPower], [Defence], [Health], [Stamina], [Mana]) VALUES (24, N'Kerstmuts                                         ', NULL, 1, 0, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Item] OFF
GO

GO
PRINT N'Update complete.';


GO