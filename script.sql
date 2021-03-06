USE [master]
GO
/****** Object:  Database [Client LMS]    Script Date: 26-11-2021 21:40:55 ******/
CREATE DATABASE [Client LMS]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Client LMS', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Client LMS.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Client LMS_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\Client LMS_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Client LMS] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Client LMS].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Client LMS] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Client LMS] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Client LMS] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Client LMS] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Client LMS] SET ARITHABORT OFF 
GO
ALTER DATABASE [Client LMS] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Client LMS] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Client LMS] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Client LMS] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Client LMS] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Client LMS] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Client LMS] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Client LMS] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Client LMS] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Client LMS] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Client LMS] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Client LMS] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Client LMS] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Client LMS] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Client LMS] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Client LMS] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Client LMS] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Client LMS] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Client LMS] SET  MULTI_USER 
GO
ALTER DATABASE [Client LMS] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Client LMS] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Client LMS] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Client LMS] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Client LMS] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Client LMS]
GO
/****** Object:  Table [dbo].[Contable]    Script Date: 26-11-2021 21:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contable](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Firstname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](50) NULL,
	[Username] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Gender] [varchar](50) NULL,
	[Dob] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Conpass] [nvarchar](50) NULL,
	[Addline1] [nvarchar](50) NULL,
	[Addline2] [nvarchar](50) NULL,
	[Zipcode] [nvarchar](50) NULL,
	[Place] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Code] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Datetime] [datetime] NULL CONSTRAINT [DF_Contable_Datetime]  DEFAULT (getdate()),
 CONSTRAINT [PK_Contable] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[contactdetails]    Script Date: 26-11-2021 21:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contactdetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[message] [nvarchar](max) NULL,
	[datetime] [datetime] NULL CONSTRAINT [DF_clientDetails_contact details_datetime]  DEFAULT (getdate()),
 CONSTRAINT [PK_clientDetails_contact details] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoginDetail]    Script Date: 26-11-2021 21:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoginDetail](
	[uname] [varchar](50) NULL,
	[pass] [varchar](50) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 26-11-2021 21:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserInfo](
	[ID] [int] NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  StoredProcedure [dbo].[clientlms]    Script Date: 26-11-2021 21:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[clientlms]
@username nvarchar(50),
@email nvarchar(50),
@phone nvarchar(50),
@message nvarchar(MAX)

as
begin
Insert into contactdetails(username,email,phone,message)
values (@username,@email,@phone,@message)
end
GO
/****** Object:  StoredProcedure [dbo].[condb]    Script Date: 26-11-2021 21:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[condb]
@Firstname nvarchar(50),
@Lastname nvarchar(50),
@Username nvarchar(50),
@Email1 nvarchar(50),
@Gender varchar(50),
@Dob nvarchar(50),
@Password nvarchar(50),
@Conpass nvarchar(50),
@Addline1 nvarchar(50),
@Addline2 nvarchar(50),
@Zipcode nvarchar(50),
@Place varchar(50),
@Country varchar(50),
@Cod nvarchar(50),
@Phone nvarchar(50),
@Email2 nvarchar(50)

as
begin
Insert into Contable(Firstname,Lastname,Username,Email1,Gender,Dob,Password,Conpass,Addline1,Addline2,Zipcode,Place,Country,Code,Phone,Email2)
values (@Firstname,@Lastname,@Username,@Email1,@Gender,@Dob,@Password,@Conpass,@Addline1,@Addline2,@Zipcode,@Place,@Country,@Cod,@Phone,@Email2)
end
GO
/****** Object:  StoredProcedure [dbo].[contbl]    Script Date: 26-11-2021 21:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[contbl]
@Firstname nvarchar(50),
@Lastname nvarchar(50),
@Username nvarchar(50),
@Email1 nvarchar(50),
@Gender varchar(50),
@Dob nvarchar(50),
@Password nvarchar(50),
@Conpass nvarchar(50),
@Addline1 nvarchar(50),
@Addline2 nvarchar(50),
@Zipcode nvarchar(50),
@Place varchar(50),
@Country varchar(50),
@Cod nvarchar(50),
@Phone nvarchar(50)


as
begin
Insert into Contable(Firstname,Lastname,Username,Email1,Gender,Dob,Password,Conpass,Addline1,Addline2,Zipcode,Place,Country,Code,Phone)
values (@Firstname,@Lastname,@Username,@Email1,@Gender,@Dob,@Password,@Conpass,@Addline1,@Addline2,@Zipcode,@Place,@Country,@Cod,@Phone)
end
GO
/****** Object:  StoredProcedure [dbo].[contbln]    Script Date: 26-11-2021 21:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[contbln]
@Firstname nvarchar(50),
@Lastname nvarchar(50),
@Username nvarchar(50),
@Email nvarchar(50),
@Gender varchar(50),
@Dob nvarchar(50),
@Password nvarchar(50),
@Conpass nvarchar(50),
@Addline1 nvarchar(50),
@Addline2 nvarchar(50),
@Zipcode nvarchar(50),
@Place varchar(50),
@Country varchar(50),
@Cod nvarchar(50),
@Phone nvarchar(50)

as
begin
Insert into Contable(Firstname,Lastname,Username,Email,Gender,Dob,Password,Conpass,Addline1,Addline2,Zipcode,Place,Country,Code,Phone)
values (@Firstname,@Lastname,@Username,@Email,@Gender,@Dob,@Password,@Conpass,@Addline1,@Addline2,@Zipcode,@Place,@Country,@Cod,@Phone)
end
GO
/****** Object:  StoredProcedure [dbo].[getcontactdetails]    Script Date: 26-11-2021 21:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[getcontactdetails]
as
begin
select * from contactdetails
end
GO
/****** Object:  StoredProcedure [dbo].[registration]    Script Date: 26-11-2021 21:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[registration]
as
begin
select * from Contable 
end
GO
/****** Object:  StoredProcedure [dbo].[searchemp]    Script Date: 26-11-2021 21:40:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[searchemp]
@ID int,
@Firstname nvarchar(50),
@Lastname nvarchar(50),
@Email1 nvarchar(50),
@Country varchar(50),
@Phone nvarchar(50)
as
begin
Insert into Contable(ID,Firstname,Lastname,Email1,Country,Phone)
values (@ID,@Firstname,@Lastname,@Email1,@Country,@Phone)
end
GO
USE [master]
GO
ALTER DATABASE [Client LMS] SET  READ_WRITE 
GO
