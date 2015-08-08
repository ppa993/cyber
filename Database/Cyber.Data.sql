USE [master]
GO
/****** Object:  Database [Cyber]    Script Date: 8/8/2015 7:52:05 PM ******/
CREATE DATABASE [Cyber]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Cyber', FILENAME = N'e:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Cyber.mdf' , SIZE = 3136KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Cyber_log', FILENAME = N'e:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Cyber_log.ldf' , SIZE = 832KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Cyber] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Cyber].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Cyber] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Cyber] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Cyber] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Cyber] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Cyber] SET ARITHABORT OFF 
GO
ALTER DATABASE [Cyber] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Cyber] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Cyber] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Cyber] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Cyber] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Cyber] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Cyber] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Cyber] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Cyber] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Cyber] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Cyber] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Cyber] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Cyber] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Cyber] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Cyber] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Cyber] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Cyber] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Cyber] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Cyber] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Cyber] SET  MULTI_USER 
GO
ALTER DATABASE [Cyber] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Cyber] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Cyber] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Cyber] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Cyber]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 8/8/2015 7:52:05 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Comment](
	[PostID] [varchar](50) NOT NULL,
	[CommentID] [varchar](50) NOT NULL,
	[CommentContent] [nvarchar](max) NOT NULL,
	[CommentedDate] [datetime] NOT NULL,
	[CommentedBy] [nvarchar](128) NOT NULL,
	[LastModified] [datetime] NOT NULL,
 CONSTRAINT [PK_Cyber_Comment_1] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CommentLike]    Script Date: 8/8/2015 7:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CommentLike](
	[CommentID] [varchar](50) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_CommentLike] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Friend]    Script Date: 8/8/2015 7:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friend](
	[UserID] [nvarchar](128) NOT NULL,
	[FriendID] [nvarchar](128) NOT NULL,
	[FriendStatus] [bit] NOT NULL,
	[FriendSince] [datetime] NULL,
 CONSTRAINT [PK_Cyber_Friend] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Notification]    Script Date: 8/8/2015 7:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notification](
	[UserID] [nvarchar](128) NOT NULL,
	[NotificationID] [varchar](50) NOT NULL,
	[NotificationType] [int] NOT NULL,
	[NotificationContent] [nvarchar](255) NOT NULL,
	[NotificationDate] [datetime] NOT NULL,
	[Seen] [bit] NOT NULL,
 CONSTRAINT [PK_Cyber_Notification_1] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Notification_Type]    Script Date: 8/8/2015 7:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Notification_Type](
	[NotificationTypeID] [int] IDENTITY(1,1) NOT NULL,
	[NotificationTypeName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Cyber_Notification_Type] PRIMARY KEY CLUSTERED 
(
	[NotificationTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Post]    Script Date: 8/8/2015 7:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Post](
	[UserID] [nvarchar](128) NOT NULL,
	[PostID] [varchar](50) NOT NULL,
	[PostType] [int] NOT NULL,
	[PostContent] [nvarchar](max) NOT NULL,
	[PostedDate] [datetime] NOT NULL,
	[LastModified] [datetime] NOT NULL,
	[VisibleType] [int] NOT NULL,
 CONSTRAINT [PK_Cyber_Post_1] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Post_Type]    Script Date: 8/8/2015 7:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Post_Type](
	[PostTypeID] [int] IDENTITY(1,1) NOT NULL,
	[PostTypeName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Cyber_Post_Type] PRIMARY KEY CLUSTERED 
(
	[PostTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PostLike]    Script Date: 8/8/2015 7:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PostLike](
	[PostID] [varchar](50) NOT NULL,
	[UserID] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_PostLike] PRIMARY KEY CLUSTERED 
(
	[PostID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Profile_Photo]    Script Date: 8/8/2015 7:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Profile_Photo](
	[UserID] [nvarchar](128) NOT NULL,
	[ProfileImageUrl] [varchar](255) NULL,
	[CoverImageUrl] [varchar](255) NULL,
 CONSTRAINT [PK_Cyber_Profile_Photo] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Relationship_Type]    Script Date: 8/8/2015 7:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Relationship_Type](
	[RelationshipID] [int] IDENTITY(1,1) NOT NULL,
	[RelationshipName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cyber_Relationship_Type] PRIMARY KEY CLUSTERED 
(
	[RelationshipID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Role]    Script Date: 8/8/2015 7:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[UserID] [nvarchar](128) NOT NULL,
	[RoleType] [int] NOT NULL,
	[AssignedDate] [datetime] NOT NULL,
	[AssignedBy] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_Cyber_Role] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role_Type]    Script Date: 8/8/2015 7:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role_Type](
	[RoleTypeID] [int] NOT NULL,
	[RoleTypeName] [varchar](255) NOT NULL,
 CONSTRAINT [PK_Cyber_Role_Type] PRIMARY KEY CLUSTERED 
(
	[RoleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 8/8/2015 7:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [nvarchar](128) NOT NULL,
	[FirstName] [nvarchar](255) NOT NULL,
	[LastName] [nvarchar](255) NOT NULL,
	[BirthDay] [date] NOT NULL,
	[Gender] [bit] NOT NULL,
	[Relationship] [int] NOT NULL,
	[About] [nvarchar](max) NULL,
	[Email] [varchar](255) NULL,
	[Address] [nvarchar](255) NULL,
	[Work] [nvarchar](255) NULL,
	[ContactNumber] [varchar](50) NULL,
	[Studied] [nvarchar](255) NULL,
 CONSTRAINT [PK_Cyber_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Visible_Type]    Script Date: 8/8/2015 7:52:06 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Visible_Type](
	[VisibleTypeID] [int] IDENTITY(1,1) NOT NULL,
	[VisibleTypeName] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Cyber_Visible_Type] PRIMARY KEY CLUSTERED 
(
	[VisibleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Relationship_Type] ON 

INSERT [dbo].[Relationship_Type] ([RelationshipID], [RelationshipName]) VALUES (1, N'Single')
INSERT [dbo].[Relationship_Type] ([RelationshipID], [RelationshipName]) VALUES (2, N'Engaged')
INSERT [dbo].[Relationship_Type] ([RelationshipID], [RelationshipName]) VALUES (3, N'Married')
INSERT [dbo].[Relationship_Type] ([RelationshipID], [RelationshipName]) VALUES (4, N'Divorced')
SET IDENTITY_INSERT [dbo].[Relationship_Type] OFF
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([PostID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_Post]
GO
ALTER TABLE [dbo].[Comment]  WITH CHECK ADD  CONSTRAINT [FK_Comment_User] FOREIGN KEY([CommentedBy])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Comment] CHECK CONSTRAINT [FK_Comment_User]
GO
ALTER TABLE [dbo].[CommentLike]  WITH CHECK ADD  CONSTRAINT [FK_CommentLike_Comment] FOREIGN KEY([CommentID])
REFERENCES [dbo].[Comment] ([CommentID])
GO
ALTER TABLE [dbo].[CommentLike] CHECK CONSTRAINT [FK_CommentLike_Comment]
GO
ALTER TABLE [dbo].[CommentLike]  WITH CHECK ADD  CONSTRAINT [FK_CommentLike_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[CommentLike] CHECK CONSTRAINT [FK_CommentLike_User]
GO
ALTER TABLE [dbo].[Friend]  WITH CHECK ADD  CONSTRAINT [FK_Friend_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Friend] CHECK CONSTRAINT [FK_Friend_User]
GO
ALTER TABLE [dbo].[Friend]  WITH CHECK ADD  CONSTRAINT [FK_Friend_User1] FOREIGN KEY([FriendID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Friend] CHECK CONSTRAINT [FK_Friend_User1]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_Notification_Type] FOREIGN KEY([NotificationType])
REFERENCES [dbo].[Notification_Type] ([NotificationTypeID])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_Notification_Type]
GO
ALTER TABLE [dbo].[Notification]  WITH CHECK ADD  CONSTRAINT [FK_Notification_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Notification] CHECK CONSTRAINT [FK_Notification_User]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Post_Type] FOREIGN KEY([PostType])
REFERENCES [dbo].[Post_Type] ([PostTypeID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Post_Type]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_User]
GO
ALTER TABLE [dbo].[Post]  WITH CHECK ADD  CONSTRAINT [FK_Post_Visible_Type] FOREIGN KEY([VisibleType])
REFERENCES [dbo].[Visible_Type] ([VisibleTypeID])
GO
ALTER TABLE [dbo].[Post] CHECK CONSTRAINT [FK_Post_Visible_Type]
GO
ALTER TABLE [dbo].[PostLike]  WITH CHECK ADD  CONSTRAINT [FK_PostLike_Post] FOREIGN KEY([PostID])
REFERENCES [dbo].[Post] ([PostID])
GO
ALTER TABLE [dbo].[PostLike] CHECK CONSTRAINT [FK_PostLike_Post]
GO
ALTER TABLE [dbo].[PostLike]  WITH CHECK ADD  CONSTRAINT [FK_PostLike_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[PostLike] CHECK CONSTRAINT [FK_PostLike_User]
GO
ALTER TABLE [dbo].[Profile_Photo]  WITH CHECK ADD  CONSTRAINT [FK_Profile_Photo_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Profile_Photo] CHECK CONSTRAINT [FK_Profile_Photo_User]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Role_Role_Type] FOREIGN KEY([RoleType])
REFERENCES [dbo].[Role_Type] ([RoleTypeID])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Role_Role_Type]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Role_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Role_User]
GO
ALTER TABLE [dbo].[Role]  WITH CHECK ADD  CONSTRAINT [FK_Role_User1] FOREIGN KEY([AssignedBy])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[Role] CHECK CONSTRAINT [FK_Role_User1]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Relationship_Type] FOREIGN KEY([Relationship])
REFERENCES [dbo].[Relationship_Type] ([RelationshipID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Relationship_Type]
GO
USE [master]
GO
ALTER DATABASE [Cyber] SET  READ_WRITE 
GO
