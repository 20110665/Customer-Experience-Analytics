/*
 Navicat Premium Data Transfer

 Source Server         : AWS-20110263
 Source Server Type    : SQL Server
 Source Server Version : 15004236
 Source Host           : cosmeticshopdb.cmitqpwwpolm.us-east-1.rds.amazonaws.com:1433
 Source Catalog        : CustomerExperienceAnalytics
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 15004236
 File Encoding         : 65001

 Date: 16/05/2023 01:06:23
*/


-- ----------------------------
-- Table structure for agent
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[agent]') AND type IN ('U'))
	DROP TABLE [dbo].[agent]
GO

CREATE TABLE [dbo].[agent] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [address] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_at] datetime2(7)  NULL,
  [dob] date  NULL,
  [email] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [phone] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [role] int  NULL,
  [update_at] datetime2(7)  NULL,
  [password] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [is_activate] bit  NULL
)
GO

ALTER TABLE [dbo].[agent] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of agent
-- ----------------------------
SET IDENTITY_INSERT [dbo].[agent] ON
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'1', N'761 North Michigan Ave', NULL, N'2001-04-09', N'brenhernandez215@gmail.com', N'Brenda Hernandez', N'312-607-3189', N'1', NULL, N'XHh9X139h2', NULL)
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'2', N'43 Yueliu Rd, Fangshan District', N'2001-03-30 12:54:54.0000000', N'2003-06-18', N'swaiyee@gmail.com', N'Siu Wai Yee', N'10-4767-1048', N'0', N'2012-09-02 17:33:11.0000000', N'JIxyA6Uayw', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'3', N'135 Jianxiang Rd, Pudong', N'2011-11-06 03:06:07.0000000', N'2008-12-04', N'boydrita@gmail.com', N'Rita Boyd', N'21-9108-0396', N'0', N'2020-10-31 10:59:14.0000000', N'97phpNiTE9', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'4', N'847 Narborough Rd', N'2018-09-10 08:13:18.0000000', N'2015-01-20', N'gwanda@icloud.com', N'Wanda Gonzalez', N'5925 887023', N'0', N'2016-08-18 20:56:20.0000000', N'oY6M4Ogjj6', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'5', N'5-19-17 Shinei 4 Jo, Kiyota Ward', N'2022-12-23 22:36:15.0000000', N'2002-12-25', N'yami@gmail.com', N'Imai Yamato', N'70-0079-0482', N'0', N'2016-04-23 03:36:03.0000000', N'fxALJRm24p', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'6', N'3-15-13 Ginza, Chuo-ku', N'2005-06-19 08:27:55.0000000', N'2013-07-12', N'sats@hotmail.com', N'Sato Seiko', N'70-4029-8413', N'1', N'2022-03-28 13:24:58.0000000', N'e5yRrMARf6', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'7', N'268 Lark Street', N'2012-08-06 08:37:38.0000000', N'2006-08-17', N'nomkenta@gmail.com', N'Nomura Kenta', N'838-896-6973', N'1', N'2023-02-06 01:47:50.0000000', N'35LZ7h9UQ4', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'8', N'578 East Cooke Road', N'2012-11-21 13:37:26.0000000', N'2001-08-20', N'shinook925@mail.com', N'Okamoto Shino', N'614-674-4858', N'0', N'2010-07-18 06:21:13.0000000', N'2xCQDED6Kg', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'9', N'5-19-10 Shinei 4 Jo, Kiyota Ward', N'2003-12-14 14:49:59.0000000', N'2000-01-09', N'waiyee13@icloud.com', N'Lok Wai Yee', N'90-6810-4104', N'1', N'2010-07-19 18:34:36.0000000', N'ht2bPD6Bhf', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'10', N'366 Lefeng 6th Rd', N'2008-01-22 10:26:13.0000000', N'2015-01-15', N'ld14@icloud.com', N'Duan Lu', N'760-618-4061', N'1', N'2005-06-25 15:47:37.0000000', N'ezeSws93wF', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'11', N'579 Fern Street', N'2002-06-27 11:17:23.0000000', N'2017-12-05', N'xme@outlook.com', N'Meng Xiuying', N'330-263-1594', N'1', N'2008-04-23 07:58:18.0000000', N'RB7zjF80Mk', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'12', N'156 Sanlitun Road, Chaoyang District', N'2004-07-27 05:53:38.0000000', N'2021-09-16', N'ksw@gmail.com', N'Kwok Sum Wing', N'141-8250-0371', N'0', N'2022-01-14 03:31:59.0000000', N'rM9RSGh0or', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'13', N'719 Lower Temple Street', N'2000-09-24 23:43:46.0000000', N'2005-11-01', N'tssw9@gmail.com', N'Tsui Siu Wai', N'(121) 571 5574', N'0', N'2002-04-16 03:08:51.0000000', N'vJtAICWIqh', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'14', N'3-19-1 Shimizu, Kita Ward', N'2019-08-20 02:07:07.0000000', N'2004-01-20', N'hsuawingfat1992@gmail.com', N'Hsuan Wing Fat', N'90-3775-2217', N'1', N'2018-03-04 07:13:15.0000000', N'KGnvZZyLIh', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'15', N'2 1-1 Honjocho, Yamatokoriyama', N'2018-03-16 10:39:22.0000000', N'2006-07-12', N'guojialun@mail.com', N'Guo Jialun', N'74-019-8935', N'1', N'2014-12-04 16:35:53.0000000', N'KrKv9amgTw', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'16', N'No. 464, Shuangqing Rd, Chenghua District', N'2002-12-18 22:32:03.0000000', N'2013-12-28', N'yuning9@gmail.com', N'Yan Yuning', N'28-7116-7676', N'0', N'2001-02-23 07:45:25.0000000', N'D0V9AdRjgN', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'17', N'674 028 County Rd, Yanqing District', N'2015-04-15 05:57:39.0000000', N'2016-08-28', N'eitamiyamoto@mail.com', N'Miyamoto Eita', N'198-8943-8871', N'1', N'2012-12-20 21:05:50.0000000', N'heQsVMhtki', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'18', N'1-7-13 Omido, Higashiosaka', N'2002-06-23 16:06:23.0000000', N'2000-01-06', N'nayuna@gmail.com', N'Nakayama Yuna', N'66-832-9936', N'1', N'2012-04-01 12:43:54.0000000', N'Xd5w40ILop', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'19', N'355 Stephenson Street', N'2020-05-16 08:20:17.0000000', N'2011-12-04', N'cheungtszhin@icloud.com', N'Cheung Tsz Hin', N'(121) 904 7884', N'1', N'2018-06-15 10:18:46.0000000', N'kYA6UFM5bD', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'20', N'981 Abingdon Rd, Cumnor', N'2022-12-17 03:49:09.0000000', N'2018-02-03', N'loht7@icloud.com', N'Loui Hiu Tung', N'7096 251682', N'1', N'2014-03-30 19:41:05.0000000', N'fn2pibAMWt', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'21', N'704 The Pavilion, Lammas Field, Driftway', N'2021-05-20 21:37:27.0000000', N'2013-05-12', N'ethomp422@gmail.com', N'Emily Thompson', N'5754 075031', N'1', N'2003-10-28 19:57:47.0000000', N'yfgGiKIfU1', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'22', N'173 The Pavilion, Lammas Field, Driftway', N'2005-04-07 19:21:03.0000000', N'2012-06-27', N'kojiaoshi@yahoo.com', N'Kojima Aoshi', N'5582 837819', N'0', N'2006-10-17 12:50:06.0000000', N'hBvmKrdcSS', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'23', N'323 Spring Gardens', N'2012-10-28 22:30:16.0000000', N'2009-09-14', N'nathan5@hotmail.com', N'Nathan Carter', N'(161) 344 1770', N'0', N'2005-09-13 09:14:21.0000000', N'6LEYwPDOT7', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'24', N'209 Maddox Street', N'2006-10-16 05:10:01.0000000', N'2015-10-01', N'rint@icloud.com', N'Tamura Rin', N'(20) 0826 6887', N'0', N'2014-03-10 10:54:38.0000000', N'aJcZmqBX3Q', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'25', N'221 Sanlitun Road, Chaoyang District', N'2016-07-31 00:45:01.0000000', N'2000-07-12', N'twaiyee19@gmail.com', N'Tse Wai Yee', N'140-9185-3886', N'1', N'2012-02-14 05:48:04.0000000', N'XNhHUyPOC8', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'26', N'4-9-2 Kamihigashi, Hirano Ward', N'2014-08-18 21:35:09.0000000', N'2020-04-27', N'liangxiuyi@outlook.com', N'Liang Xiuying', N'66-701-3454', N'0', N'2021-09-27 17:17:48.0000000', N'Ke64joOYOp', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'27', N'3-19-9 Shimizu, Kita Ward', N'2012-09-17 16:58:46.0000000', N'2011-07-05', N'jocl5@icloud.com', N'Joe Clark', N'90-7637-5699', N'1', N'2005-12-30 10:54:15.0000000', N'sPvp2IYJoH', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'28', N'825 Tianhe Road, Tianhe District', N'2021-01-12 01:55:05.0000000', N'2008-08-31', N'kmlee@outlook.com', N'Lee Kwok Ming', N'196-3846-9263', N'0', N'2007-11-28 03:20:49.0000000', N'mKvwobeyLu', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'29', N'266 Yueliu Rd, Fangshan District', N'2014-07-11 00:08:24.0000000', N'2012-10-19', N'myuen@hotmail.com', N'Yuen Ming', N'193-9456-7734', N'0', N'2008-02-24 15:41:44.0000000', N'1WUul6Mmkk', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'30', N'213 Little Clarendon St', N'2010-04-22 04:24:35.0000000', N'2019-03-17', N'ziyi4@gmail.com', N'Yang Ziyi', N'(1865) 01 7856', N'0', N'2020-02-21 06:28:58.0000000', N'4IsFdtXPNj', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'31', N'424 State Street', N'2023-05-05 19:19:40.0000000', N'2011-05-17', N'kwokyya@icloud.com', N'Yam Kwok Yin', N'838-349-7186', N'0', N'2011-12-11 15:00:14.0000000', N'bzjTgNYAdO', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'32', N'762 Trafalgar Square, Charing Cross', N'2018-10-22 14:00:03.0000000', N'2022-07-10', N'chang1006@icloud.com', N'Chang Chieh Lun', N'(151) 190 3109', N'0', N'2002-07-09 09:17:18.0000000', N'CT9KtAxNcw', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'33', N'618 Whitehouse Lane, Huntingdon Rd', N'2007-10-30 21:35:21.0000000', N'2004-07-01', N'garyj@gmail.com', N'Gary Johnson', N'5826 442076', N'0', N'2007-10-25 18:38:57.0000000', N'Z94dl63lNQ', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'34', N'513 Lefeng 6th Rd', N'2002-02-18 15:37:03.0000000', N'2017-07-02', N'frankharrison815@outlook.com', N'Frank Harrison', N'176-4739-2860', N'1', N'2010-03-02 03:59:51.0000000', N'tKJx7zo8rI', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'35', N'4-9-2 Kamihigashi, Hirano Ward', N'2013-08-04 02:41:13.0000000', N'2000-03-26', N'hsuakaming@outlook.com', N'Hsuan Ka Ming', N'90-0763-3369', N'1', N'2014-07-27 20:32:57.0000000', N'H4JJh9Xk29', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'36', N'769 Shennan E Rd, Cai Wu Wei, Luohu District', N'2019-08-14 16:52:35.0000000', N'2008-02-01', N'luchen@outlook.com', N'Chen Lu', N'179-4204-2118', N'0', N'2003-02-24 00:57:00.0000000', N'IUacrvKynX', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'37', N'2-1-1 Tenjinnomori, Nishinari Ward', N'2002-02-16 10:27:37.0000000', N'2017-11-24', N'hui02@outlook.com', N'Hui Wai Lam', N'66-385-0797', N'1', N'2019-04-14 02:16:56.0000000', N'HxXcXHNg7g', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'38', N'293 Shennan Ave, Futian District', N'2020-04-15 05:36:01.0000000', N'2009-11-13', N'kmmo4@icloud.com', N'Mo Kwok Ming', N'131-8321-1408', N'0', N'2021-05-11 13:57:44.0000000', N'jjWeNwruS8', N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'39', N'689 East Alley', N'2010-11-10 09:10:20.0000000', N'2019-07-28', N'saito3@gmail.com', N'Saito Yuna', N'614-088-9729', N'0', N'2010-08-31 08:57:47.0000000', N'I1t0qUncxa', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'40', N'917 Kengmei 15th Alley', N'2014-03-23 22:14:33.0000000', N'2016-12-18', N'yingfushing@hotmail.com', N'Ying Fu Shing', N'769-436-8723', N'0', N'2012-11-06 07:00:16.0000000', N'Z8prmedc7k', N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'1001', N'Alola', NULL, NULL, N'trvankiet02@gmail.com', N'Trần Kiệt', N'+84982238302', N'1', N'2023-05-05 15:57:58.0650000', NULL, N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'1002', NULL, N'2023-05-08 00:12:47.3590000', NULL, N'test1@gmail.com', NULL, NULL, NULL, NULL, N'123', NULL)
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'1003', N'a', NULL, NULL, N'a@a', N'a', N'a', N'1', N'2023-05-08 01:39:06.9930000', NULL, N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'1004', N'a', NULL, NULL, N'a@a', N'a', N'a', N'0', N'2023-05-08 01:39:19.2970000', NULL, N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'1005', N'a', NULL, NULL, N'a@a', N'a', N'0334395313', N'0', N'2023-05-08 01:39:34.0130000', NULL, N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'1006', N'a', NULL, NULL, N'a@a', N'a', N'0334395313', N'0', N'2023-05-08 01:39:41.1180000', NULL, N'0')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'1007', N'khanh hoa', N'2023-05-08 02:22:45.8300000', NULL, N'thien@gmail.com', N'Nguyen Dinh Thien', N'0334395313', N'0', N'2023-05-08 01:40:54.8130000', NULL, N'1')
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'1009', NULL, N'2023-05-08 10:32:56.9270000', NULL, N'20110720@student.hcmute.edu.vn', NULL, NULL, NULL, NULL, N'123', NULL)
GO

INSERT INTO [dbo].[agent] ([id], [address], [create_at], [dob], [email], [name], [phone], [role], [update_at], [password], [is_activate]) VALUES (N'1010', NULL, N'2023-05-08 11:46:20.4500000', NULL, N'a@student.hcmute.edu.vn', NULL, NULL, NULL, NULL, N'123', NULL)
GO

SET IDENTITY_INSERT [dbo].[agent] OFF
GO


-- ----------------------------
-- Table structure for call
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[call]') AND type IN ('U'))
	DROP TABLE [dbo].[call]
GO

CREATE TABLE [dbo].[call] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [business_hours] bit  NULL,
  [call_offer] bit  NULL,
  [call_response] bit  NULL,
  [create_at] datetime2(7)  NULL,
  [phone] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_at] datetime2(7)  NULL,
  [agent_id] int  NULL
)
GO

ALTER TABLE [dbo].[call] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of call
-- ----------------------------
SET IDENTITY_INSERT [dbo].[call] ON
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'1', N'1', N'1', N'1', N'2017-06-22 20:49:19.0000000', N'80-1796-3951', N'2017-04-28 23:27:43.0000000', N'6')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'2', N'1', N'0', N'1', N'2015-03-24 01:07:21.0000000', N'52-857-5222', N'2020-09-30 19:03:08.0000000', N'13')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'3', N'1', N'1', N'1', N'2019-03-08 17:18:56.0000000', N'52-456-1989', N'2019-11-10 18:21:28.0000000', N'22')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'4', N'1', N'0', N'1', N'2001-11-14 00:08:34.0000000', N'212-146-1851', N'2022-01-04 18:56:32.0000000', N'36')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'5', N'1', N'1', N'0', N'2011-04-18 05:07:30.0000000', N'5143 718071', N'2022-04-26 22:16:34.0000000', N'7')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'6', N'1', N'1', N'0', N'2022-06-24 18:15:47.0000000', N'162-9355-1832', N'2017-05-31 09:58:24.0000000', N'32')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'7', N'0', N'1', N'0', N'2015-01-09 07:05:13.0000000', N'5302 287534', N'2021-08-31 04:00:08.0000000', N'37')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'8', N'0', N'0', N'1', N'2016-06-24 10:17:40.0000000', N'5461 675233', N'2002-04-30 14:04:21.0000000', N'39')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'9', N'0', N'0', N'1', N'2020-01-26 16:13:31.0000000', N'157-9105-6877', N'2016-12-01 09:18:04.0000000', N'36')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'10', N'1', N'1', N'1', N'2003-07-11 02:26:15.0000000', N'212-591-4023', N'2007-11-27 07:58:53.0000000', N'31')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'11', N'0', N'0', N'1', N'2022-08-09 15:21:27.0000000', N'3-8053-5555', N'2021-08-23 14:01:06.0000000', N'18')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'12', N'1', N'0', N'0', N'2015-10-31 10:45:01.0000000', N'(1865) 54 2634', N'2021-04-27 04:09:14.0000000', N'27')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'13', N'0', N'0', N'1', N'2015-03-02 00:39:30.0000000', N'90-2688-6771', N'2018-05-20 02:49:53.0000000', N'6')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'14', N'1', N'0', N'0', N'2002-09-18 17:25:41.0000000', N'158-9355-2124', N'2005-08-24 04:07:38.0000000', N'36')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'15', N'1', N'1', N'0', N'2020-08-02 01:22:53.0000000', N'7097 043257', N'2004-06-22 07:31:26.0000000', N'26')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'16', N'1', N'0', N'0', N'2003-12-26 15:06:44.0000000', N'(151) 968 5060', N'2019-03-02 20:03:48.0000000', N'36')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'17', N'1', N'1', N'1', N'2002-01-02 10:57:24.0000000', N'212-869-5094', N'2010-12-27 05:52:00.0000000', N'3')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'18', N'1', N'1', N'1', N'2017-08-31 05:19:45.0000000', N'90-0699-9034', N'2007-03-27 11:13:13.0000000', N'1')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'19', N'1', N'0', N'1', N'2022-04-15 18:08:17.0000000', N'90-1998-3602', N'2007-10-22 10:04:40.0000000', N'16')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'20', N'0', N'0', N'0', N'2022-03-26 07:58:32.0000000', N'(1223) 05 2879', N'2017-09-06 01:25:07.0000000', N'40')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'21', N'0', N'0', N'1', N'2010-03-14 11:05:45.0000000', N'755-7928-8340', N'2008-06-24 16:01:04.0000000', N'16')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'22', N'0', N'1', N'1', N'2022-11-29 08:08:26.0000000', N'90-1963-9328', N'2005-09-24 04:24:57.0000000', N'38')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'23', N'0', N'1', N'0', N'2020-03-30 07:28:10.0000000', N'28-6661-0472', N'2019-04-21 05:42:45.0000000', N'31')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'24', N'1', N'0', N'1', N'2000-03-05 07:26:01.0000000', N'5199 561878', N'2012-04-26 00:45:50.0000000', N'39')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'25', N'1', N'1', N'0', N'2014-02-13 18:29:30.0000000', N'5366 421754', N'2010-02-14 07:37:12.0000000', N'35')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'26', N'0', N'1', N'0', N'2011-09-02 03:54:24.0000000', N'70-8369-7182', N'2002-02-28 18:54:17.0000000', N'3')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'27', N'1', N'0', N'0', N'2008-12-12 00:11:04.0000000', N'20-7522-0394', N'2001-01-10 20:19:53.0000000', N'14')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'28', N'1', N'1', N'1', N'2019-08-05 07:27:51.0000000', N'7594 053445', N'2010-08-17 19:47:21.0000000', N'35')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'29', N'1', N'1', N'0', N'2001-04-17 10:27:31.0000000', N'312-380-2259', N'2006-03-28 20:30:40.0000000', N'36')
GO

INSERT INTO [dbo].[call] ([id], [business_hours], [call_offer], [call_response], [create_at], [phone], [update_at], [agent_id]) VALUES (N'30', N'1', N'1', N'0', N'2011-02-21 00:08:16.0000000', N'7068 812674', N'2010-07-20 08:53:50.0000000', N'38')
GO

SET IDENTITY_INSERT [dbo].[call] OFF
GO


-- ----------------------------
-- Table structure for call_conversation
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[call_conversation]') AND type IN ('U'))
	DROP TABLE [dbo].[call_conversation]
GO

CREATE TABLE [dbo].[call_conversation] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [conversation] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_at] datetime2(7)  NULL,
  [update_at] datetime2(7)  NULL,
  [call_id] int  NULL
)
GO

ALTER TABLE [dbo].[call_conversation] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of call_conversation
-- ----------------------------
SET IDENTITY_INSERT [dbo].[call_conversation] ON
GO

SET IDENTITY_INSERT [dbo].[call_conversation] OFF
GO


-- ----------------------------
-- Table structure for call_detail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[call_detail]') AND type IN ('U'))
	DROP TABLE [dbo].[call_detail]
GO

CREATE TABLE [dbo].[call_detail] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [call_content] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_at] datetime2(7)  NULL,
  [service_level] float(53)  NOT NULL,
  [time_abandoned] time(7)  NULL,
  [time_on_queue] time(7)  NULL,
  [type_call] varchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_at] datetime2(7)  NULL,
  [wait_time] time(7)  NULL,
  [call_id] int  NULL,
  [feed_back_id] int  NULL
)
GO

ALTER TABLE [dbo].[call_detail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of call_detail
-- ----------------------------
SET IDENTITY_INSERT [dbo].[call_detail] ON
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1005', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_4_1.mp3', N'2014-05-25 14:10:22.0000000', N'0.32', N'00:29:14.0000000', N'00:36:08.0000000', N'Answer', N'2014-11-24 03:39:30.0000000', N'00:27:44.0000000', N'1', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1006', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_2_3.mp3', N'2010-12-26 05:47:08.0000000', N'0.68', N'00:18:31.0000000', N'00:45:40.0000000', N'Love', N'2016-05-09 21:52:00.0000000', N'00:11:49.0000000', N'2', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1007', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_4_5.mp3', N'2005-10-16 01:55:42.0000000', N'0.97', N'00:19:34.0000000', N'00:58:14.0000000', N'Complaint', N'2022-02-27 18:59:20.0000000', N'00:20:28.0000000', N'3', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1008', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_2_3.mp3', N'2014-12-05 01:48:16.0000000', N'0.08', N'00:00:36.0000000', N'00:21:47.0000000', N'Thank you', N'2007-03-29 01:27:18.0000000', N'00:05:28.0000000', N'4', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1009', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_1_6.mp3', N'2006-02-17 15:36:37.0000000', N'0.09', N'00:21:19.0000000', N'00:14:03.0000000', N'Thank you', N'2002-10-03 11:57:28.0000000', N'00:27:15.0000000', N'5', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1010', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_4_4.mp3', N'2022-12-04 03:53:00.0000000', N'0.01', N'00:29:34.0000000', N'00:48:12.0000000', N'Appologize', N'2002-04-22 02:36:35.0000000', N'00:01:25.0000000', N'6', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1011', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_1_2.mp3', N'2008-06-16 02:34:20.0000000', N'0.54', N'00:08:22.0000000', N'00:09:43.0000000', N'Love', N'2003-07-09 12:37:00.0000000', N'00:26:53.0000000', N'7', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1012', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_4_3.mp3', N'2000-12-22 12:19:45.0000000', N'0.13', N'00:27:04.0000000', N'00:18:01.0000000', N'Complaint', N'2002-12-07 15:12:28.0000000', N'00:05:15.0000000', N'8', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1013', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_4_5.mp3', N'2022-05-12 01:55:39.0000000', N'0.73', N'00:25:57.0000000', N'00:26:03.0000000', N'Thanks', N'2019-12-04 19:43:34.0000000', N'00:14:06.0000000', N'9', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1014', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_4_1.mp3', N'2006-03-30 19:34:49.0000000', N'0.25', N'00:27:16.0000000', N'00:06:41.0000000', N'Thank you', N'2011-01-11 19:48:37.0000000', N'00:25:22.0000000', N'10', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1015', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_4_3.mp3', N'2018-01-17 22:33:39.0000000', N'0.13', N'00:05:52.0000000', N'00:06:17.0000000', N'Complaint', N'2017-08-05 09:26:54.0000000', N'00:13:16.0000000', N'11', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1016', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_2_1.mp3', N'2000-05-17 00:38:28.0000000', N'0.66', N'00:03:30.0000000', N'00:54:35.0000000', N'Complaint', N'2002-02-22 11:35:58.0000000', N'00:08:29.0000000', N'12', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1017', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_3_6.mp3', N'2000-05-02 09:47:49.0000000', N'0.74', N'00:20:44.0000000', N'00:34:13.0000000', N'Love', N'2019-02-10 05:24:27.0000000', N'00:01:48.0000000', N'13', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1018', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_3_1.mp3', N'2008-04-17 20:26:18.0000000', N'0.12', N'00:06:43.0000000', N'00:13:57.0000000', N'Thanks', N'2002-09-04 05:39:30.0000000', N'00:27:45.0000000', N'14', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1019', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_4_1.mp3', N'2006-10-30 20:07:49.0000000', N'0.14', N'00:16:01.0000000', N'00:05:02.0000000', N'Thanks', N'2005-03-15 19:47:40.0000000', N'00:03:30.0000000', N'15', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1020', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_3_5.mp3', N'2000-07-10 09:07:35.0000000', N'0.44', N'00:13:31.0000000', N'00:36:43.0000000', N'Appologize', N'2008-02-04 04:23:20.0000000', N'00:27:41.0000000', N'16', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1021', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_1_3.mp3', N'2003-11-13 08:50:55.0000000', N'0.28', N'00:12:54.0000000', N'00:39:09.0000000', N'Thanks', N'2010-01-24 13:21:25.0000000', N'00:04:33.0000000', N'17', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1022', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_4_4.mp3', N'2015-09-14 02:04:08.0000000', N'0.81', N'00:22:22.0000000', N'00:48:14.0000000', N'Thank you', N'2010-03-04 12:48:37.0000000', N'00:28:13.0000000', N'18', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1023', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_4_2.mp3', N'2014-06-24 21:05:59.0000000', N'0.75', N'00:27:26.0000000', N'00:39:20.0000000', N'Appologize', N'2016-06-04 11:34:13.0000000', N'00:19:45.0000000', N'19', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1024', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_2_2.mp3', N'2011-02-14 07:40:33.0000000', N'0.5', N'00:18:37.0000000', N'00:26:23.0000000', N'Thanks', N'2010-09-16 05:11:38.0000000', N'00:07:56.0000000', N'20', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1025', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_2_4.mp3', N'2005-06-02 04:04:24.0000000', N'0.65', N'00:00:23.0000000', N'00:34:50.0000000', N'Thanks', N'2007-06-16 14:47:11.0000000', N'00:00:09.0000000', N'21', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1026', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_3_5.mp3', N'2016-03-10 10:56:00.0000000', N'0.39', N'00:08:12.0000000', N'00:32:11.0000000', N'Love', N'2005-06-19 08:50:13.0000000', N'00:17:05.0000000', N'22', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1027', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_3_2.mp3', N'2023-04-24 20:42:21.0000000', N'0.49', N'00:20:38.0000000', N'00:20:25.0000000', N'Thanks', N'2018-06-20 15:42:04.0000000', N'00:23:12.0000000', N'23', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1028', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_4_5.mp3', N'2001-12-30 04:22:44.0000000', N'0.09', N'00:12:59.0000000', N'00:46:50.0000000', N'Love', N'2005-02-26 20:16:00.0000000', N'00:01:09.0000000', N'24', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1029', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_4_1.mp3', N'2019-04-25 16:03:46.0000000', N'0.56', N'00:00:39.0000000', N'00:25:43.0000000', N'Answer', N'2002-01-08 22:28:48.0000000', N'00:10:50.0000000', N'25', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1030', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_5_5.mp3', N'2014-10-15 14:45:09.0000000', N'0.37', N'00:01:24.0000000', N'00:00:57.0000000', N'Thank you', N'2002-12-20 03:00:16.0000000', N'00:24:49.0000000', N'26', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1031', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_5_6.mp3', N'2023-03-08 11:04:26.0000000', N'0.91', N'00:06:17.0000000', N'00:47:38.0000000', N'Appologize', N'2021-03-09 08:26:16.0000000', N'00:11:15.0000000', N'27', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1032', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_5_6.mp3', N'2005-08-21 22:31:41.0000000', N'0.08', N'00:27:56.0000000', N'00:22:17.0000000', N'Question', N'2013-11-19 13:11:49.0000000', N'00:25:33.0000000', N'28', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1033', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_5_3.mp3', N'2010-07-13 18:55:03.0000000', N'0.08', N'00:26:05.0000000', N'00:04:57.0000000', N'Thank you', N'2003-07-26 23:31:56.0000000', N'00:20:34.0000000', N'29', NULL)
GO

INSERT INTO [dbo].[call_detail] ([id], [call_content], [create_at], [service_level], [time_abandoned], [time_on_queue], [type_call], [update_at], [wait_time], [call_id], [feed_back_id]) VALUES (N'1034', N'https://study4.com/media/tez_media1/sound/ets_toeic_2022_test_2_1.mp3', N'2010-08-23 22:29:40.0000000', N'0.67', N'00:07:18.0000000', N'00:50:50.0000000', N'Question', N'2015-10-19 09:27:32.0000000', N'00:11:11.0000000', N'30', NULL)
GO

SET IDENTITY_INSERT [dbo].[call_detail] OFF
GO


-- ----------------------------
-- Table structure for customer
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[customer]') AND type IN ('U'))
	DROP TABLE [dbo].[customer]
GO

CREATE TABLE [dbo].[customer] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [address] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [create_at] datetime2(7)  NULL,
  [dob] date  NULL,
  [email] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [job_title] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [name] nvarchar(100) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [phone] varchar(20) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_at] datetime2(7)  NULL
)
GO

ALTER TABLE [dbo].[customer] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of customer
-- ----------------------------
SET IDENTITY_INSERT [dbo].[customer] ON
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'1', N'2-1-3 Kaminopporo 1 Jo, Atsubetsu Ward', N'2000-04-01 05:03:47.0000000', N'2000-05-25', N'xwang43@icloud.com', N'Personal trainer', N'Wang Xiuying', N'80-2946-1304', N'2018-12-14 23:11:36.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'2', N'849 Little Clarendon St', N'2016-01-02 15:03:11.0000000', N'2019-02-03', N'cyho@gmail.com', N'Dancer', N'Ho Chung Yin', N'7042 224661', N'2005-03-29 22:17:03.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'3', N'366 Aigburth Rd, Aigburth', N'2012-02-07 23:56:41.0000000', N'2003-06-19', N'jiehongwu1031@gmail.com', N'Auditor', N'Wu Jiehong', N'7915 321302', N'2021-12-25 13:19:43.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'4', N'117 Fifth Avenue', N'2007-12-05 10:59:10.0000000', N'2015-06-30', N'ku86@mail.com', N'Groomer', N'Ku Wing Fat', N'212-173-9101', N'2013-02-05 21:34:11.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'5', N'509 East Cooke Road', N'2005-04-08 00:04:55.0000000', N'2022-10-09', N'ramos216@gmail.com', N'Makeup artist', N'Chad Ramos', N'614-421-6433', N'2012-02-15 09:53:26.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'6', N'5-19-12 Shinei 4 Jo, Kiyota Ward', N'2008-07-18 13:19:45.0000000', N'2015-06-21', N'zqi@mail.com', N'Graphic designer', N'Qin Zitao', N'11-916-5371', N'2019-11-09 08:27:48.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'7', N'174 Hanover St', N'2014-02-09 07:00:06.0000000', N'2002-07-12', N'mhawkins311@yahoo.com', N'Fashion designer', N'Marilyn Hawkins', N'(151) 041 7237', N'2017-12-20 20:13:54.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'8', N'5-2-1 Kikusui 3 Jo, Shiroishi Ward', N'2019-02-14 22:29:17.0000000', N'2016-10-05', N'yaoy2015@yahoo.com', N'Project manager', N'Yao Yuning', N'11-395-5631', N'2020-04-06 15:06:15.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'9', N'19 East Wangfujing Street, Dongcheng District ', N'2007-02-26 15:52:39.0000000', N'2001-05-26', N'sakka226@mail.com', N'Dancer', N'Kato Sakura', N'190-3759-4076', N'2007-03-23 21:23:58.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'10', N'494 Lower Temple Street', N'2013-10-10 13:32:04.0000000', N'2003-07-06', N'myo@icloud.com', N'Veterinarian', N'Yokoyama Misaki', N'5077 653211', N'2011-05-29 22:19:11.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'11', N'349 Trafalgar Square, Charing Cross', N'2005-12-24 13:29:01.0000000', N'2018-01-23', N'harrismanu@gmail.com', N'Makeup artist', N'Manuel Harris', N'(151) 992 1466', N'2012-06-20 14:05:02.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'12', N'84 Fern Street', N'2019-05-17 19:30:10.0000000', N'2004-12-22', N'nueno@yahoo.com', N'Veterinarian', N'Ueno Nanami', N'330-963-5327', N'2010-01-25 21:25:52.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'13', N'5-19-7 Shinei 4 Jo, Kiyota Ward', N'2007-09-07 11:46:49.0000000', N'2003-09-09', N'hawb925@hotmail.com', N'Pharmacist', N'Bruce Hawkins', N'80-6598-6009', N'2015-03-17 11:08:26.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'14', N'290 Pedway', N'2017-09-05 17:26:03.0000000', N'2001-12-23', N'lesliestone718@gmail.com', N'UX/UI designer', N'Leslie Stone', N'312-349-8829', N'2015-05-02 05:35:26.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'15', N'157 Cannon Street', N'2000-07-16 17:56:37.0000000', N'2009-07-01', N'kwf1992@icloud.com', N'Barber', N'Koo Wing Fat', N'(121) 202 6485', N'2011-04-15 09:35:03.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'16', N'695 Huanqu South Street 2nd Alley', N'2015-11-17 16:04:47.0000000', N'2022-10-04', N'xfang@icloud.com', N'Nurse', N'Fang Xiuying', N'169-0192-1967', N'2017-01-26 13:00:57.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'17', N'900 Lark Street', N'2003-05-09 02:46:32.0000000', N'2014-09-06', N'ws7@gmail.com', N'Auditor', N'Wang Shihan', N'838-240-6990', N'2002-09-25 17:19:17.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'18', N'960 Whitehouse Lane, Huntingdon Rd', N'2018-07-28 19:51:54.0000000', N'2022-02-20', N'tangkakeu@gmail.com', N'Biochemist', N'Tang Ka Keung', N'(1223) 83 3571', N'2004-11-17 10:29:55.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'19', N'542 Figueroa Street', N'2013-04-05 02:34:15.0000000', N'2020-03-08', N'luye@gmail.com', N'Nurse', N'Ye Lu', N'213-471-7283', N'2004-03-24 11:48:06.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'20', N'403 Regent Street', N'2002-08-12 06:14:05.0000000', N'2012-05-06', N'fanzitao@hotmail.com', N'Food scientist', N'Fang Zitao', N'5295 622238', N'2019-02-21 15:58:38.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'21', N'13-3-3 Toyohira 3 Jo, Toyohira Ward', N'2017-01-09 09:43:55.0000000', N'2021-10-26', N'sarao@yahoo.com', N'Dancer', N'Otsuka Sara', N'11-419-3750', N'2006-01-18 09:02:13.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'22', N'956 Silver St, Newnham', N'2000-02-18 20:35:25.0000000', N'2008-09-06', N'aoi98@hotmail.com', N'Actuary', N'Kato Aoi', N'5059 253900', N'2019-04-17 16:18:06.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'23', N'292 Fifth Avenue', N'2010-11-10 11:08:13.0000000', N'2014-04-04', N'gayunin@gmail.com', N'Marketing director', N'Gao Yuning', N'212-213-5269', N'2017-08-13 07:59:16.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'24', N'552 Riverview Road', N'2009-10-17 16:23:40.0000000', N'2008-05-05', N'judiaz@gmail.com', N'Information security analyst', N'Juan Diaz', N'330-365-2551', N'2022-01-06 16:35:33.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'25', N'5-2-19 Kikusui 3 Jo, Shiroishi Ward', N'2000-03-21 16:05:09.0000000', N'2018-01-13', N'judith55@outlook.com', N'Sales manager', N'Judith Ford', N'11-437-5368', N'2022-01-17 23:18:51.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'26', N'848 Sky Way', N'2008-03-03 11:07:40.0000000', N'2008-05-12', N'wagnerea@gmail.com', N'Biochemist', N'Earl Wagner', N'213-925-8657', N'2007-10-13 04:38:23.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'27', N'3-27-3 Higashitanabe, Higashisumiyoshi Ward', N'2008-10-17 21:56:56.0000000', N'2013-03-04', N'tingfungy@icloud.com', N'Nurse', N'Yung Ting Fung', N'70-2596-2105', N'2011-04-26 10:10:17.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'28', N'164 Dong Zhi Men, Dongcheng District', N'2016-10-25 14:22:52.0000000', N'2015-12-30', N'juancox@gmail.com', N'Business reporter', N'Juan Cox', N'10-407-3037', N'2005-08-07 19:48:55.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'29', N'212 Hanover St', N'2003-07-01 02:07:03.0000000', N'2011-12-11', N'daicht@outlook.com', N'Actor', N'Takada Daichi', N'7998 082026', N'2001-10-25 09:14:20.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'30', N'784 Cyril St, Braunstone Town', N'2016-04-20 03:24:07.0000000', N'2016-01-22', N'yunx77@icloud.com', N'Fashion designer', N'Xue Yunxi', N'(116) 360 0683', N'2008-06-23 21:10:08.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'31', N'1-1-18 Deshiro, Nishinari Ward', N'2014-07-16 10:00:27.0000000', N'2000-11-28', N'tiwaiman3@hotmail.com', N'Engineer', N'Tin Wai Man', N'90-0908-1801', N'2022-12-01 17:29:04.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'32', N'2-5-9 Chitose, Atsuta Ward', N'2001-03-28 17:08:21.0000000', N'2009-02-11', N'laukm@gmail.com', N'Event manager', N'Lau Ka Man', N'52-227-4707', N'2008-08-16 08:07:37.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'33', N'3-27-1 Higashitanabe, Higashisumiyoshi Ward', N'2013-01-01 12:14:29.0000000', N'2004-02-28', N'wongyf1996@gmail.com', N'teacher', N'Wong Yun Fat', N'70-7637-6362', N'2023-03-12 15:34:05.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'34', N'371 Central Avenue', N'2012-03-27 06:01:55.0000000', N'2014-10-30', N'llo72@gmail.com', N'Housekeeper', N'Long Lu', N'838-425-2898', N'2003-01-09 01:09:40.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'35', N'21 Tremont Road', N'2021-11-20 23:45:43.0000000', N'2013-07-01', N'smyer212@gmail.com', N'Veterinary assistant', N'Stephanie Myers', N'614-970-3095', N'2017-08-07 11:38:37.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'36', N'823 FuXingMenNei Street, XiCheng District', N'2020-07-13 23:01:52.0000000', N'2010-03-25', N'shi8@gmail.com', N'Architect', N'Shi Jialun', N'10-107-1953', N'2015-03-25 10:10:51.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'37', N'766 Whitehouse Lane, Huntingdon Rd', N'2022-08-10 02:44:17.0000000', N'2022-06-29', N'xduan@hotmail.com', N'Engineer', N'Duan Xiuying', N'7592 611802', N'2007-11-19 19:20:41.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'38', N'3-19-8 Shimizu, Kita Ward', N'2002-08-15 21:24:10.0000000', N'2008-06-26', N'sara67@gmail.com', N'Account manager', N'Kinoshita Sara', N'52-215-7045', N'2015-06-10 17:27:20.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'39', N'256 Central Avenue', N'2018-12-22 13:21:02.0000000', N'2001-08-04', N'anqiwei@yahoo.com', N'Mobile application developer', N'Wei Anqi', N'838-319-0856', N'2007-05-26 08:11:02.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'40', N'774 Shanhu Rd', N'2013-02-16 15:40:28.0000000', N'2019-04-03', N'taozhennan79@gmail.com', N'Professor', N'Tao Zhennan', N'769-696-5342', N'2018-01-16 20:51:01.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'41', N'310 Hanover Street', N'2022-11-11 04:48:14.0000000', N'2012-06-08', N'fuj@outlook.com', N'Doctor', N'Fu Jialun', N'(20) 2071 7692', N'2019-08-21 13:16:40.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'42', N'1-6-16, Marunouchi, Chiyoda-ku', N'2014-10-03 08:04:10.0000000', N'2003-11-01', N'koyari509@hotmail.com', N'Marketing director', N'Koyama Rin', N'3-0787-5476', N'2010-08-21 16:58:00.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'43', N'618 68 Qinghe Middle St, Haidian District', N'2022-09-24 10:31:31.0000000', N'2009-10-22', N'guor325@outlook.com', N'Software developer', N'Guo Rui', N'149-0742-7816', N'2016-03-02 20:09:28.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'44', N'912 1st Ave', N'2008-06-21 21:46:24.0000000', N'2023-03-11', N'szekwanche@outlook.com', N'Financial planner', N'Che Sze Kwan', N'718-298-8293', N'2015-03-29 18:25:05.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'45', N'728 Bergen St', N'2013-08-11 09:43:47.0000000', N'2009-09-17', N'emmaw@icloud.com', N'Breeder', N'Emma Wood', N'718-453-9293', N'2016-10-01 06:08:20.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'46', N'230 Lodge Ln, Toxteth', N'2019-05-02 05:17:46.0000000', N'2002-03-20', N'natake@mail.com', N'Breeder', N'Takeuchi Nanami', N'5972 207060', N'2016-02-27 17:13:03.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'47', N'10 1-1 Honjocho, Yamatokoriyama', N'2016-03-11 07:35:03.0000000', N'2001-09-05', N'kato07@hotmail.com', N'Operations manager', N'Kato Seiko', N'74-325-1358', N'2008-11-29 01:04:08.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'48', N'2-1-20 Kaminopporo 1 Jo, Atsubetsu Ward', N'2018-08-31 20:13:29.0000000', N'2015-09-13', N'saitori2012@icloud.com', N'Database manager', N'Saito Rin', N'90-8646-3895', N'2002-01-29 00:20:24.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'49', N'13-3-1 Toyohira 3 Jo, Toyohira Ward', N'2004-09-11 03:43:12.0000000', N'2012-11-09', N'xiuyinghu@gmail.com', N'Writer', N'Hu Xiuying', N'11-638-3781', N'2023-04-23 16:41:00.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'50', N'276 Hongqiao Rd., Xu Hui District', N'2003-01-23 12:09:56.0000000', N'2008-02-21', N'wingsze422@outlook.com', N'Team leader', N'Ho Wing Sze', N'149-7397-4297', N'2019-12-12 19:14:05.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'51', N'497 Tianbei 1st Rd, Luohu District', N'2000-03-13 21:46:59.0000000', N'2001-09-04', N'phholm5@icloud.com', N'Information security analyst', N'Philip Holmes', N'755-6647-3106', N'2018-02-19 20:18:09.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'52', N'581 Xue Yuan Yi Xiang, Longgang', N'2004-10-26 04:10:33.0000000', N'2000-11-05', N'ando10@gmail.com', N'Software developer', N'Ando Seiko', N'755-145-8968', N'2013-05-24 13:53:54.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'53', N'594 Sky Way', N'2008-06-15 00:52:55.0000000', N'2007-05-28', N'minyamada97@icloud.com', N'Spa manager', N'Yamada Minato', N'213-147-6148', N'2022-05-24 14:59:04.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'54', N'13-3-9 Toyohira 3 Jo, Toyohira Ward', N'2014-01-06 01:12:42.0000000', N'2006-03-17', N'takuya86@icloud.com', N'Librarian', N'Wada Takuya', N'90-1213-6229', N'2015-04-28 07:48:13.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'55', N'339 Hanover St', N'2017-08-19 12:00:32.0000000', N'2000-12-11', N'dofreeman@outlook.com', N'Personal trainer', N'Donald Freeman', N'(151) 108 2841', N'2022-02-17 20:16:51.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'56', N'635 North Michigan Ave', N'2001-05-16 01:06:42.0000000', N'2022-11-07', N'shannoncolli@mail.com', N'Housekeeper', N'Shannon Collins', N'312-453-3818', N'2021-10-01 06:21:34.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'57', N'679 Bergen St', N'2003-05-07 04:44:27.0000000', N'2002-04-07', N'hoyinchen@outlook.com', N'Operations manager', N'Cheng Ho Yin', N'718-844-7300', N'2018-04-20 07:17:17.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'58', N'3-15-2 Ginza, Chuo-ku', N'2003-10-17 08:05:05.0000000', N'2004-12-25', N'muikk@yahoo.com', N'Makeup artist', N'Mui Ka Keung', N'3-5079-6785', N'2003-01-10 01:59:55.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'59', N'13 4-20 Kawagishicho, Mizuho Ward', N'2005-09-03 20:44:05.0000000', N'2003-06-14', N'cao1008@icloud.com', N'Software developer', N'Cao Zitao', N'90-3731-5790', N'2022-09-19 18:35:22.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'60', N'1-5-6, Higashi-Shimbashi, Minato-ku', N'2002-07-19 02:07:08.0000000', N'2009-12-05', N'mooreanna5@icloud.com', N'Makeup artist', N'Anna Moore', N'90-9158-7374', N'2022-09-24 18:04:03.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'61', N'750 Wooster Street', N'2007-06-15 08:56:25.0000000', N'2005-08-23', N'watsang@gmail.com', N'Office clerk', N'Tsang Wai Yee', N'212-838-9878', N'2019-01-25 11:53:34.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'62', N'5-2-10 Kikusui 3 Jo, Shiroishi Ward', N'2008-10-21 14:25:17.0000000', N'2003-10-04', N'zhong8@outlook.com', N'Technical support', N'Zhong Yuning', N'80-9560-0065', N'2006-09-22 20:05:33.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'63', N'704 Earle Rd', N'2005-07-26 07:15:42.0000000', N'2017-06-11', N'waisan4@hotmail.com', N'Fashion designer', N'Tang Wai San', N'(151) 080 1547', N'2004-08-06 07:18:53.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'64', N'5-4-2 Kikusui 3 Jo, Shiroishi Ward,', N'2006-12-18 16:45:37.0000000', N'2016-02-20', N'ssyl@icloud.com', N'Project manager', N'Sylvia Stewart', N'70-0808-5628', N'2002-02-23 23:30:50.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'65', N'638 Regent Street', N'2012-05-04 03:15:09.0000000', N'2000-01-26', N'yotaue715@icloud.com', N'Veterinary assistant', N'Ueno Yota', N'5506 478106', N'2014-05-03 16:29:41.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'66', N'3-9-17 Gakuenminami', N'2016-01-01 14:09:42.0000000', N'2018-03-10', N'uchidtaku@mail.com', N'Engineer', N'Uchida Takuya', N'80-8511-9608', N'2018-06-12 17:23:47.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'67', N'825 Portland St', N'2014-06-29 16:24:38.0000000', N'2015-11-29', N'dla@yahoo.com', N'Librarian', N'Laura Diaz', N'(161) 764 9934', N'2002-12-30 20:28:40.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'68', N'594 Little Clarendon St', N'2007-05-16 10:52:41.0000000', N'2007-08-22', N'wingfatchan@outlook.com', N'Personal trainer', N'Chan Wing Fat', N'(1865) 16 5260', N'2009-11-21 22:03:20.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'69', N'6-1-19, Miyanomori 4 Jō, Chuo Ward', N'2012-11-14 20:04:26.0000000', N'2007-06-25', N'onkayla@gmail.com', N'Tutor', N'Lam On Kay', N'11-994-1534', N'2005-09-16 22:20:11.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'70', N'829 Figueroa Street', N'2014-01-26 23:34:51.0000000', N'2002-12-14', N'xiuying10@gmail.com', N'Marketing director', N'Han Xiuying', N'213-824-1054', N'2021-06-05 05:08:22.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'71', N'429 Riverview Road', N'2001-02-20 13:04:21.0000000', N'2007-10-18', N'phillipsmichael@mail.com', N'Business reporter', N'Michael Phillips', N'330-816-8150', N'2011-08-04 20:20:18.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'72', N'626 Silver St, Newnham', N'2016-11-06 05:01:04.0000000', N'2012-02-17', N'huz@outlook.com', N'Breeder', N'Hu Zhennan', N'(1223) 97 9155', N'2007-11-22 00:13:56.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'73', N'5-4-13 Kikusui 3 Jo, Shiroishi Ward,', N'2017-04-15 03:48:24.0000000', N'2017-07-30', N'tin1@gmail.com', N'Food scientist', N'Tin Ka Ling', N'11-796-3151', N'2022-08-04 15:11:15.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'74', N'971 New Street', N'2017-06-09 23:36:21.0000000', N'2015-02-27', N'yszeyu105@yahoo.com', N'Business reporter', N'Yung Sze Yu', N'(121) 925 2122', N'2001-06-17 17:14:30.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'75', N'982 Ridgewood Road', N'2014-06-30 19:42:30.0000000', N'2016-03-19', N'ziyi1@icloud.com', N'Nurse', N'Gao Ziyi', N'330-403-2272', N'2009-02-17 22:36:35.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'76', N'421 Fifth Avenue', N'2011-07-22 09:32:14.0000000', N'2017-02-19', N'kazumanakamura96@gmail.com', N'Producer', N'Nakamura Kazuma', N'212-726-3316', N'2010-09-11 14:42:14.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'77', N'794 Collier Road', N'2005-08-10 18:48:07.0000000', N'2019-12-01', N'xiuying110@icloud.com', N'Veterinary assistant', N'Lu Xiuying', N'330-916-8189', N'2002-11-11 02:47:48.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'78', N'16 3-803 Kusunokiajima, Kita Ward', N'2008-01-25 00:43:13.0000000', N'2013-07-07', N'aoshiyoshida@hotmail.com', N'teacher', N'Yoshida Aoshi', N'52-124-8311', N'2001-10-06 16:10:32.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'79', N'No. 748, Shuangqing Rd, Chenghua District', N'2012-08-04 03:56:04.0000000', N'2020-10-28', N'nicolem@gmail.com', N'Office manager', N'Nicole Moreno', N'180-2206-4688', N'2002-10-08 06:28:49.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'80', N'No. 637, Shuangqing Rd, Chenghua District', N'2009-01-20 00:40:23.0000000', N'2017-01-06', N'perrychar04@icloud.com', N'Project manager', N'Charlotte Perry', N'28-7486-5394', N'2008-07-26 19:46:59.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'81', N'1 Diplomacy Drive', N'2012-12-19 01:53:54.0000000', N'2022-11-26', N'wanglu@hotmail.com', N'Horticulturist', N'Wang Lu', N'614-450-6848', N'2012-01-26 10:20:26.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'82', N'635 Sackville St', N'2013-04-05 05:29:08.0000000', N'2020-08-03', N'tsubasao711@mail.com', N'Food scientist', N'Ogawa Tsubasa', N'7235 985405', N'2014-08-22 23:50:55.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'83', N'421 W Ring Rd, Buji Town, Longgang', N'2004-04-25 18:22:44.0000000', N'2004-12-14', N'wsk8@icloud.com', N'Retail sales associate', N'Kwong Wing Sze', N'160-4193-5646', N'2007-06-02 09:19:21.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'84', N'337 Tangyuan Street 5th Alley, Airport Road, Baiyun', N'2011-12-19 05:47:05.0000000', N'2018-06-30', N'ktakada@icloud.com', N'Multimedia animator', N'Takada Kaito', N'140-3993-6737', N'2002-11-18 22:01:30.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'85', N'854 Abingdon Rd, Cumnor', N'2017-08-29 11:48:27.0000000', N'2000-06-07', N'yunxifan@yahoo.com', N'Farmer', N'Fang Yunxi', N'(1865) 68 1442', N'2010-06-12 15:42:56.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'86', N'143 Sky Way', N'2000-08-25 06:37:15.0000000', N'2009-11-04', N'christopherdan@gmail.com', N'Farmer', N'Christopher Daniels', N'213-938-4371', N'2012-03-13 03:14:49.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'87', N'7 4-20 Kawagishicho, Mizuho Ward', N'2012-12-04 06:17:58.0000000', N'2004-10-27', N'mosuga42@icloud.com', N'Office manager', N'Sugawara Momoka', N'52-107-7590', N'2007-12-05 11:38:53.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'88', N'485 The Pavilion, Lammas Field, Driftway', N'2001-04-29 20:17:28.0000000', N'2016-10-25', N'so9@icloud.com', N'Housekeeper', N'So Wing Fat', N'(1223) 07 3667', N'2006-07-15 02:51:23.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'89', N'473 Tangyuan Street 5th Alley, Airport Road, Baiyun', N'2021-04-18 11:52:30.0000000', N'2022-01-23', N'kimhamilton@gmail.com', N'Personal trainer', N'Kimberly Hamilton', N'185-7432-5722', N'2018-02-27 20:38:30.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'90', N'965 NO.6, YuShuang Road, ChengHua Distric', N'2012-11-29 20:34:37.0000000', N'2013-04-18', N'twyau@gmail.com', N'Retail sales associate', N'Yau Tin Wing', N'184-1930-8372', N'2015-06-04 13:18:57.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'91', N'2-3-4 Yoyogi, Shibuya-ku', N'2017-01-29 02:15:06.0000000', N'2005-06-30', N'shimizuyuna@yahoo.com', N'Web developer', N'Shimizu Yuna', N'80-4128-5222', N'2022-06-21 18:08:19.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'92', N'172 New Wakefield St', N'2014-02-01 20:41:07.0000000', N'2005-12-15', N'karyshing327@gmail.com', N'Technical support', N'Shing Kar Yan', N'5216 198080', N'2012-12-23 21:28:27.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'93', N'12 4-20 Kawagishicho, Mizuho Ward', N'2013-02-16 13:01:00.0000000', N'2015-09-20', N'rui419@gmail.com', N'Librarian', N'Song Rui', N'80-2643-0589', N'2017-07-16 01:52:54.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'94', N'601 West Houston Street', N'2021-07-27 15:22:06.0000000', N'2014-11-07', N'laky@outlook.com', N'Tutor', N'Lau Kwok Yin', N'212-065-7341', N'2019-11-04 02:23:04.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'95', N'337 Narborough Rd', N'2010-01-10 20:38:30.0000000', N'2008-01-30', N'bonniecl@yahoo.com', N'Orthodontist', N'Bonnie Clark', N'(116) 040 7074', N'2022-12-08 00:24:35.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'96', N'816 State Street', N'2008-02-18 01:33:07.0000000', N'2004-05-22', N'jetran@icloud.com', N'Tutor', N'Jeffery Tran', N'838-596-0291', N'2013-06-30 08:06:12.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'97', N'662 Flatbush Ave', N'2000-10-12 14:57:38.0000000', N'2019-05-13', N'shawnjordan@icloud.com', N'Account coordinator', N'Shawn Jordan', N'718-992-4841', N'2017-11-09 20:51:33.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'98', N'25 Spring Gardens', N'2000-08-31 00:20:10.0000000', N'2003-10-23', N'pkell@gmail.com', N'Office clerk', N'Peggy Kelley', N'(161) 724 1453', N'2003-12-15 08:14:05.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'99', N'828 Diplomacy Drive', N'2001-01-14 19:44:19.0000000', N'2004-02-23', N'shru5@outlook.com', N'Spa manager', N'Shao Rui', N'614-119-8376', N'2009-08-11 07:40:35.0000000')
GO

INSERT INTO [dbo].[customer] ([id], [address], [create_at], [dob], [email], [job_title], [name], [phone], [update_at]) VALUES (N'100', N'893 Osney Mead', N'2004-05-11 05:58:48.0000000', N'2008-11-10', N'din@hotmail.com', N'teacher', N'Nicole Diaz', N'(1865) 44 4789', N'2019-04-02 14:02:10.0000000')
GO

SET IDENTITY_INSERT [dbo].[customer] OFF
GO


-- ----------------------------
-- Table structure for feed_back_detail
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[feed_back_detail]') AND type IN ('U'))
	DROP TABLE [dbo].[feed_back_detail]
GO

CREATE TABLE [dbo].[feed_back_detail] (
  [id] int  IDENTITY(1,1) NOT NULL,
  [create_at] datetime2(7)  NULL,
  [feed_back_content] nvarchar(255) COLLATE SQL_Latin1_General_CP1_CI_AS  NULL,
  [update_at] datetime2(7)  NULL,
  [agent_id] int  NULL,
  [call_id] int  NULL
)
GO

ALTER TABLE [dbo].[feed_back_detail] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of feed_back_detail
-- ----------------------------
SET IDENTITY_INSERT [dbo].[feed_back_detail] ON
GO

INSERT INTO [dbo].[feed_back_detail] ([id], [create_at], [feed_back_content], [update_at], [agent_id], [call_id]) VALUES (N'1', N'2008-01-13 17:11:13.0000000', N'HMjw6yXM4G', N'2011-02-02 20:17:38.0000000', N'1', N'1')
GO

INSERT INTO [dbo].[feed_back_detail] ([id], [create_at], [feed_back_content], [update_at], [agent_id], [call_id]) VALUES (N'2', N'2010-05-21 03:39:04.0000000', N'RjJgcq6DWG', N'2023-02-08 16:00:21.0000000', N'1', N'2')
GO

INSERT INTO [dbo].[feed_back_detail] ([id], [create_at], [feed_back_content], [update_at], [agent_id], [call_id]) VALUES (N'3', N'2014-04-02 09:26:39.0000000', N'sQQuLFNBKo', N'2000-01-23 13:24:55.0000000', N'1', N'3')
GO

INSERT INTO [dbo].[feed_back_detail] ([id], [create_at], [feed_back_content], [update_at], [agent_id], [call_id]) VALUES (N'4', N'2003-04-28 16:01:55.0000000', N'pySOLrWKRS', N'2012-10-06 01:52:27.0000000', N'1', N'4')
GO

INSERT INTO [dbo].[feed_back_detail] ([id], [create_at], [feed_back_content], [update_at], [agent_id], [call_id]) VALUES (N'5', N'2009-04-18 00:18:38.0000000', N'UNvslQ1YcU', N'2002-01-18 02:36:43.0000000', N'1', N'5')
GO

INSERT INTO [dbo].[feed_back_detail] ([id], [create_at], [feed_back_content], [update_at], [agent_id], [call_id]) VALUES (N'6', N'2021-08-11 03:57:53.0000000', N'iObZG1wrtF', N'2010-08-28 12:20:18.0000000', N'1', N'6')
GO

INSERT INTO [dbo].[feed_back_detail] ([id], [create_at], [feed_back_content], [update_at], [agent_id], [call_id]) VALUES (N'7', N'2021-06-15 12:11:29.0000000', N'2eKliy9GYB', N'2018-11-14 15:45:46.0000000', N'1', N'7')
GO

INSERT INTO [dbo].[feed_back_detail] ([id], [create_at], [feed_back_content], [update_at], [agent_id], [call_id]) VALUES (N'8', N'2011-04-20 11:23:34.0000000', N'OURZwRujbu', N'2006-08-21 11:50:46.0000000', N'1', N'8')
GO

INSERT INTO [dbo].[feed_back_detail] ([id], [create_at], [feed_back_content], [update_at], [agent_id], [call_id]) VALUES (N'9', N'2013-01-13 20:21:20.0000000', N'Ts6syYmd2v', N'2001-11-26 16:10:30.0000000', N'1', N'9')
GO

INSERT INTO [dbo].[feed_back_detail] ([id], [create_at], [feed_back_content], [update_at], [agent_id], [call_id]) VALUES (N'10', N'2010-08-12 12:35:50.0000000', N'Bd5Iqnoxk9', N'2014-06-06 16:34:20.0000000', N'1', N'10')
GO

SET IDENTITY_INSERT [dbo].[feed_back_detail] OFF
GO


-- ----------------------------
-- Auto increment value for agent
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[agent]', RESEED, 1010)
GO


-- ----------------------------
-- Primary Key structure for table agent
-- ----------------------------
ALTER TABLE [dbo].[agent] ADD CONSTRAINT [PK__agent__3213E83F0DF2D17F] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for call
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[call]', RESEED, 200)
GO


-- ----------------------------
-- Primary Key structure for table call
-- ----------------------------
ALTER TABLE [dbo].[call] ADD CONSTRAINT [PK__call__3213E83F01C2A2FB] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for call_conversation
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[call_conversation]', RESEED, 1)
GO


-- ----------------------------
-- Primary Key structure for table call_conversation
-- ----------------------------
ALTER TABLE [dbo].[call_conversation] ADD CONSTRAINT [PK__call_con__3213E83F7E35E977] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for call_detail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[call_detail]', RESEED, 1204)
GO


-- ----------------------------
-- Primary Key structure for table call_detail
-- ----------------------------
ALTER TABLE [dbo].[call_detail] ADD CONSTRAINT [PK__call_det__3213E83F0A48CD8B] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for customer
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[customer]', RESEED, 101)
GO


-- ----------------------------
-- Primary Key structure for table customer
-- ----------------------------
ALTER TABLE [dbo].[customer] ADD CONSTRAINT [PK__customer__3213E83F2811955F] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Auto increment value for feed_back_detail
-- ----------------------------
DBCC CHECKIDENT ('[dbo].[feed_back_detail]', RESEED, 10)
GO


-- ----------------------------
-- Primary Key structure for table feed_back_detail
-- ----------------------------
ALTER TABLE [dbo].[feed_back_detail] ADD CONSTRAINT [PK__feed_bac__3213E83F3925F6C0] PRIMARY KEY CLUSTERED ([id])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Foreign Keys structure for table call
-- ----------------------------
ALTER TABLE [dbo].[call] ADD CONSTRAINT [FK8hq0mi3iiyaev080u72hr8uow] FOREIGN KEY ([agent_id]) REFERENCES [dbo].[agent] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table call_conversation
-- ----------------------------
ALTER TABLE [dbo].[call_conversation] ADD CONSTRAINT [FK3gxcmte7pv4ihfuqw0pjcebx7] FOREIGN KEY ([call_id]) REFERENCES [dbo].[call] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table call_detail
-- ----------------------------
ALTER TABLE [dbo].[call_detail] ADD CONSTRAINT [FKvro5x6am4ii0vxidt8csqv8f] FOREIGN KEY ([call_id]) REFERENCES [dbo].[call] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[call_detail] ADD CONSTRAINT [FKe2sefkgt6hanhutqp81w4kyj2] FOREIGN KEY ([feed_back_id]) REFERENCES [dbo].[feed_back_detail] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO


-- ----------------------------
-- Foreign Keys structure for table feed_back_detail
-- ----------------------------
ALTER TABLE [dbo].[feed_back_detail] ADD CONSTRAINT [FKfj4m4xjnxeotv7yk5egt425qr] FOREIGN KEY ([agent_id]) REFERENCES [dbo].[agent] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

ALTER TABLE [dbo].[feed_back_detail] ADD CONSTRAINT [FKh8bkijrsrvwqc6u5yh2796mk6] FOREIGN KEY ([call_id]) REFERENCES [dbo].[call] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO

