USE [master]
GO
/****** Object:  Database [JuanDb]    Script Date: 31/07/2023 11:49:42 ******/
CREATE DATABASE [JuanDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'JuanDb_Data', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\JuanDb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'JuanDb_Log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\JuanDb.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [JuanDb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [JuanDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [JuanDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [JuanDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [JuanDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [JuanDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [JuanDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [JuanDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [JuanDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [JuanDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [JuanDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [JuanDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [JuanDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [JuanDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [JuanDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [JuanDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [JuanDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [JuanDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [JuanDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [JuanDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [JuanDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [JuanDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [JuanDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [JuanDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [JuanDb] SET RECOVERY FULL 
GO
ALTER DATABASE [JuanDb] SET  MULTI_USER 
GO
ALTER DATABASE [JuanDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [JuanDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [JuanDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [JuanDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [JuanDb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [JuanDb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [JuanDb] SET QUERY_STORE = OFF
GO
USE [JuanDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 31/07/2023 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 31/07/2023 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 31/07/2023 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 31/07/2023 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 31/07/2023 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 31/07/2023 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 31/07/2023 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[Fullname] [nvarchar](max) NULL,
	[IsActive] [bit] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 31/07/2023 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Banners]    Script Date: 31/07/2023 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Banners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[SubTitle] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Banners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 31/07/2023 11:49:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Admin] [nvarchar](max) NULL,
	[CreateDate] [datetime2](7) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Description2] [nvarchar](max) NULL,
	[Description3] [nvarchar](max) NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brands]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brands](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Brands] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[WorkingHours] [nvarchar](max) NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currencies](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[MonetaryUnit] [nvarchar](max) NULL,
 CONSTRAINT [PK_Currencies] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[BlogAuthor] [nvarchar](max) NULL,
	[Position] [nvarchar](max) NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[NationalLanguage] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OurBlogs]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OurBlogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_OurBlogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OurProducts]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OurProducts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_OurProducts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[IsMain] [bit] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Price] [decimal](18, 4) NOT NULL,
	[DiscountPrice] [decimal](18, 4) NOT NULL,
	[SellerCount] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[CategoriesId] [int] NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sellers]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sellers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Price] [decimal](18, 4) NOT NULL,
	[DiscountPrice] [decimal](18, 4) NOT NULL,
 CONSTRAINT [PK_Sellers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SendMessages]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SendMessages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[Message] [nvarchar](max) NULL,
 CONSTRAINT [PK_SendMessages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Color] [nvarchar](max) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Settings]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Settings](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Key] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_Settings] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SingleBanners]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SingleBanners](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_SingleBanners] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sliders]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sliders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Sale] [nvarchar](max) NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Sliders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Socials]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Socials](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[CustomerId] [int] NOT NULL,
 CONSTRAINT [PK_Socials] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[TagName] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TopSellers]    Script Date: 31/07/2023 11:49:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TopSellers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_TopSellers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221104154116_CreateSliderTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221104163811_CreateCurrencyAndlanguageTables', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221104170122_AddCurrencyNameColumnToCurrencyTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221104171945_DeleteCurrencyNameColumnToCurenncyTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221105082522_CreateSettingTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221105093634_AddImageColumnToLanguagetable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221105113215_CreateCategoriesTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221105124539_Remove-migration', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221105132604_CreateSocialTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221105132716_DeleteSocialTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221105152525_CreateServiceTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221105161630_CreateOurProductTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221105164021_CreateProductTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221105165329_AddDisCountColumnToProductTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221105165702_DeleteDisCountColumnToProductTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221105165838_AddDisCountPriceColumnToProductTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221106065015_CreateBannerTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221106071259_CreateTopSellerTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221106080950_DeleteImageColumnToProductTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221106081457_AddProductImagesColumnToProductTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221106082137_CreateProductImageTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221106102618_CreateSingleBannerTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221106105130_CreateSellerTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221106105348_DeleteImageColumnToSellerTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221106110725_CreateBrandTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221106123633_CreateOurBlogTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221107063310_CreateBlogTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221107074044_AddSellerCountColumnToProductTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221107110142_CreateContactTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221107130521_AddDescriptionColumnToBlogTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221107143147_CreateSocialandCustomertable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221108114924_CreatetagTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221108115210_AddTitleColumntotagTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221108115811_DeleteTitleColumntotagTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221108115954_DeleteTitleColumntoTagTableeeee', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221108142728_AddDescriptionColumntoProductTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221109135801_AddColumnDescriptionToBlog', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221109144747_CreateSendMessageTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221110062919_AddColumnToCategoriesTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221110073807_AddColumnToCategoriesTablee', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221111055151_CreateIdentityTable', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221111063657_AddIsActiveColumn', N'3.1.29')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221111063943_UpdateIsActiveColumnDefaultValue', N'3.1.29')
GO
SET IDENTITY_INSERT [dbo].[Banners] ON 

INSERT [dbo].[Banners] ([Id], [IsDeleted], [SubTitle], [Title], [Image]) VALUES (1, 0, N'sports shoes', N'For Sports men', N'banner-1.jpg')
INSERT [dbo].[Banners] ([Id], [IsDeleted], [SubTitle], [Title], [Image]) VALUES (2, 0, N'sports shoes', N'For Sports men', N'banner-2.jpg')
SET IDENTITY_INSERT [dbo].[Banners] OFF
GO
SET IDENTITY_INSERT [dbo].[Blogs] ON 

INSERT [dbo].[Blogs] ([Id], [IsDeleted], [Image], [Title], [Admin], [CreateDate], [Description], [Description2], [Description3]) VALUES (2, 0, N'blog-1.jpg', N'Celebrity Daughter Opens About to Having Her Eye color', N'Admin,', CAST(N'2029-07-14T00:00:00.0000000' AS DateTime2), N' Bigger ipsum dolor sit amet consectetur adipisicing elit. Voluptate perferendis
                                        consequuntur illo aliquid nihil ad neque, debitis praesentium libero ullam
                                        asperiores exercitationem deserunt inventore facilis, officiis,', N'Quisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur.
                                            venenatis elit ac ultrices convallis. Duis est nisi, tincidunt ac urna sed,
                                            cursus blandit lectus. In ullamcorper sit amet ligula ut eleifend. Proin
                                            dictum
                                            tempor ligula, ac feugiat metus. Sed finibus tortor eu scelerisque
                                            scelerisque.', N'aliquam maiores asperiores recusandae commodi blanditiis ipsum tempora culpa
                                        possimus assumenda ab quidem a voluptatum quia natus? Ex neque, saepe
                                        reiciendis
                                        quasi velit perspiciatis error vel quas quibusdam autem nesciunt voluptas odit
                                        quis
                                        dignissimos eos aspernatur voluptatum est repellat. Pariatur praesentium,
                                        corrupti
                                        deserunt ducimus quo doloremque nostrum aspernatur saepe cupiditate sit autem
                                        exercitationem debitis, maiores vitae perferendis nemo? Voluptas illo, animi
                                        temporibus quod earum molestias eaque, iure rem amet autem dignissimos officia
                                        dolores numquam distinctio esse voluptates optio pariatur aspernatur omnis?
                                        Ipsam
                                        qui commodi velit natus reiciendis quod quibusdam nemo eveniet similique animi!')
INSERT [dbo].[Blogs] ([Id], [IsDeleted], [Image], [Title], [Admin], [CreateDate], [Description], [Description2], [Description3]) VALUES (3, 0, N'blog-2.jpg', N'Sotto Winner Offering Money To Any Man That Will Date Her', N'Admin,', CAST(N'2029-07-14T00:00:00.0000000' AS DateTime2), N' Bigger ipsum dolor sit amet consectetur adipisicing elit. Voluptate perferendis
                                        consequuntur illo aliquid nihil ad neque, debitis praesentium libero ullam
                                        asperiores exercitationem deserunt inventore facilis, officiis,', N'Quisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur.
                                            venenatis elit ac ultrices convallis. Duis est nisi, tincidunt ac urna sed,
                                            cursus blandit lectus. In ullamcorper sit amet ligula ut eleifend. Proin
                                            dictum
                                            tempor ligula, ac feugiat metus. Sed finibus tortor eu scelerisque
                                            scelerisque.', N'aliquam maiores asperiores recusandae commodi blanditiis ipsum tempora culpa
                                        possimus assumenda ab quidem a voluptatum quia natus? Ex neque, saepe
                                        reiciendis
                                        quasi velit perspiciatis error vel quas quibusdam autem nesciunt voluptas odit
                                        quis
                                        dignissimos eos aspernatur voluptatum est repellat. Pariatur praesentium,
                                        corrupti
                                        deserunt ducimus quo doloremque nostrum aspernatur saepe cupiditate sit autem
                                        exercitationem debitis, maiores vitae perferendis nemo? Voluptas illo, animi
                                        temporibus quod earum molestias eaque, iure rem amet autem dignissimos officia
                                        dolores numquam distinctio esse voluptates optio pariatur aspernatur omnis?
                                        Ipsam
                                        qui commodi velit natus reiciendis quod quibusdam nemo eveniet similique animi!')
INSERT [dbo].[Blogs] ([Id], [IsDeleted], [Image], [Title], [Admin], [CreateDate], [Description], [Description2], [Description3]) VALUES (4, 0, N'blog-3.jpg', N'Children Left Home Alone For 4 Days In TV Series Experiment', N'Admin,', CAST(N'2029-07-14T00:00:00.0000000' AS DateTime2), N' Bigger ipsum dolor sit amet consectetur adipisicing elit. Voluptate perferendis
                                        consequuntur illo aliquid nihil ad neque, debitis praesentium libero ullam
                                        asperiores exercitationem deserunt inventore facilis, officiis,', N'Quisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur.
                                            venenatis elit ac ultrices convallis. Duis est nisi, tincidunt ac urna sed,
                                            cursus blandit lectus. In ullamcorper sit amet ligula ut eleifend. Proin
                                            dictum
                                            tempor ligula, ac feugiat metus. Sed finibus tortor eu scelerisque
                                            scelerisque.', N'aliquam maiores asperiores recusandae commodi blanditiis ipsum tempora culpa
                                        possimus assumenda ab quidem a voluptatum quia natus? Ex neque, saepe
                                        reiciendis
                                        quasi velit perspiciatis error vel quas quibusdam autem nesciunt voluptas odit
                                        quis
                                        dignissimos eos aspernatur voluptatum est repellat. Pariatur praesentium,
                                        corrupti
                                        deserunt ducimus quo doloremque nostrum aspernatur saepe cupiditate sit autem
                                        exercitationem debitis, maiores vitae perferendis nemo? Voluptas illo, animi
                                        temporibus quod earum molestias eaque, iure rem amet autem dignissimos officia
                                        dolores numquam distinctio esse voluptates optio pariatur aspernatur omnis?
                                        Ipsam
                                        qui commodi velit natus reiciendis quod quibusdam nemo eveniet similique animi!')
INSERT [dbo].[Blogs] ([Id], [IsDeleted], [Image], [Title], [Admin], [CreateDate], [Description], [Description2], [Description3]) VALUES (6, 0, N'blog-4.jpg', N'  People Are Willing Lie When To Comes Money Research from', N'Admin,', CAST(N'2029-07-14T00:00:00.0000000' AS DateTime2), N' Bigger ipsum dolor sit amet consectetur adipisicing elit. Voluptate perferendis
                                        consequuntur illo aliquid nihil ad neque, debitis praesentium libero ullam
                                        asperiores exercitationem deserunt inventore facilis, officiis,', N'Quisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur.
                                            venenatis elit ac ultrices convallis. Duis est nisi, tincidunt ac urna sed,
                                            cursus blandit lectus. In ullamcorper sit amet ligula ut eleifend. Proin
                                            dictum
                                            tempor ligula, ac feugiat metus. Sed finibus tortor eu scelerisque
                                            scelerisque.', N'aliquam maiores asperiores recusandae commodi blanditiis ipsum tempora culpa
                                        possimus assumenda ab quidem a voluptatum quia natus? Ex neque, saepe
                                        reiciendis
                                        quasi velit perspiciatis error vel quas quibusdam autem nesciunt voluptas odit
                                        quis
                                        dignissimos eos aspernatur voluptatum est repellat. Pariatur praesentium,
                                        corrupti
                                        deserunt ducimus quo doloremque nostrum aspernatur saepe cupiditate sit autem
                                        exercitationem debitis, maiores vitae perferendis nemo? Voluptas illo, animi
                                        temporibus quod earum molestias eaque, iure rem amet autem dignissimos officia
                                        dolores numquam distinctio esse voluptates optio pariatur aspernatur omnis?
                                        Ipsam
                                        qui commodi velit natus reiciendis quod quibusdam nemo eveniet similique animi!')
INSERT [dbo].[Blogs] ([Id], [IsDeleted], [Image], [Title], [Admin], [CreateDate], [Description], [Description2], [Description3]) VALUES (7, 0, N'blog-details-1.jpg', N'Celebrity Daughter Opens About Upto Having Her Eye', N'Admin,', CAST(N'2029-07-14T00:00:00.0000000' AS DateTime2), N'Bigger ipsum dolor sit amet consectetur adipisicing elit. Voluptate perferendis consequuntur illo aliquid nihil ad neque, debitis praesentium libero ullam asperiores exercitationem deserunt inventore facilis, officiis,', N'Quisque semper nunc vitae erat pellentesque, ac placerat arcu consectetur. venenatis elit ac ultrices convallis. Duis est nisi, tincidunt ac urna sed, cursus blandit lectus. In ullamcorper sit amet ligula ut eleifend. Proin dictum tempor ligula, ac feugiat metus. Sed finibus tortor eu scelerisque scelerisque.', N'aliquam maiores asperiores recusandae commodi blanditiis ipsum tempora culpa possimus assumenda ab quidem a voluptatum quia natus? Ex neque, saepe reiciendis quasi velit perspiciatis error vel quas quibusdam autem nesciunt voluptas odit quis dignissimos eos aspernatur voluptatum est repellat. Pariatur praesentium, corrupti deserunt ducimus quo doloremque nostrum aspernatur saepe cupiditate sit autem exercitationem debitis, maiores vitae perferendis nemo? Voluptas illo, animi temporibus quod earum molestias eaque, iure rem amet autem dignissimos officia dolores numquam distinctio esse voluptates optio pariatur aspernatur omnis? Ipsam qui commodi velit natus reiciendis quod quibusdam nemo eveniet similique animi!')
SET IDENTITY_INSERT [dbo].[Blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[Brands] ON 

INSERT [dbo].[Brands] ([Id], [IsDeleted], [Image]) VALUES (1, 0, N'br1.png')
INSERT [dbo].[Brands] ([Id], [IsDeleted], [Image]) VALUES (2, 0, N'br2.png')
INSERT [dbo].[Brands] ([Id], [IsDeleted], [Image]) VALUES (3, 0, N'br3.png')
INSERT [dbo].[Brands] ([Id], [IsDeleted], [Image]) VALUES (4, 0, N'br4.png')
INSERT [dbo].[Brands] ([Id], [IsDeleted], [Image]) VALUES (5, 0, N'br2.png')
SET IDENTITY_INSERT [dbo].[Brands] OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [IsDeleted], [Name]) VALUES (1, 0, N'Ecommerce')
INSERT [dbo].[Categories] ([Id], [IsDeleted], [Name]) VALUES (3, 0, N'Shopify')
INSERT [dbo].[Categories] ([Id], [IsDeleted], [Name]) VALUES (4, 0, N'Prestashop')
INSERT [dbo].[Categories] ([Id], [IsDeleted], [Name]) VALUES (5, 0, N'Opencart')
INSERT [dbo].[Categories] ([Id], [IsDeleted], [Name]) VALUES (6, 0, N'Magento')
INSERT [dbo].[Categories] ([Id], [IsDeleted], [Name]) VALUES (7, 0, N'Jigoshop')
INSERT [dbo].[Categories] ([Id], [IsDeleted], [Name]) VALUES (8, 0, N'Mens')
INSERT [dbo].[Categories] ([Id], [IsDeleted], [Name]) VALUES (9, 0, N'Womens')
INSERT [dbo].[Categories] ([Id], [IsDeleted], [Name]) VALUES (10, 0, N'Sports')
INSERT [dbo].[Categories] ([Id], [IsDeleted], [Name]) VALUES (11, 0, N'Fabric')
INSERT [dbo].[Categories] ([Id], [IsDeleted], [Name]) VALUES (12, 1, N'Leather')
INSERT [dbo].[Categories] ([Id], [IsDeleted], [Name]) VALUES (1008, 0, N'Various')
SET IDENTITY_INSERT [dbo].[Categories] OFF
GO
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [IsDeleted], [Title], [Description], [Address], [Email], [Phone], [WorkingHours]) VALUES (2, 0, N'Contact Us', N'Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram anteposuerit litterarum formas human.', N'Address : No 40 Baria Sreet 133/2 NewYork City', N' info@yourdomain.com', N' +88013245657', N'<span>Monday – Saturday:</span>08AM – 22PM')
SET IDENTITY_INSERT [dbo].[Contacts] OFF
GO
SET IDENTITY_INSERT [dbo].[Currencies] ON 

INSERT [dbo].[Currencies] ([Id], [IsDeleted], [MonetaryUnit]) VALUES (3, 0, N'$ usd')
INSERT [dbo].[Currencies] ([Id], [IsDeleted], [MonetaryUnit]) VALUES (6, 0, N'€ EURO')
SET IDENTITY_INSERT [dbo].[Currencies] OFF
GO
SET IDENTITY_INSERT [dbo].[Customers] ON 

INSERT [dbo].[Customers] ([Id], [IsDeleted], [Image], [BlogAuthor], [Position]) VALUES (1, 0, N'11.jpg', N'Erik Jhonson', N'UI UX Designer')
SET IDENTITY_INSERT [dbo].[Customers] OFF
GO
SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([Id], [IsDeleted], [NationalLanguage], [Image]) VALUES (1, 0, N'english', N'en.png')
INSERT [dbo].[Languages] ([Id], [IsDeleted], [NationalLanguage], [Image]) VALUES (2, 0, N'french', N'fr.png')
SET IDENTITY_INSERT [dbo].[Languages] OFF
GO
SET IDENTITY_INSERT [dbo].[OurBlogs] ON 

INSERT [dbo].[OurBlogs] ([Id], [IsDeleted], [Title], [Description]) VALUES (1, 0, N'Our Blog', N'Lorem ipsum dolor sit amet consectetur adipisicing')
SET IDENTITY_INSERT [dbo].[OurBlogs] OFF
GO
SET IDENTITY_INSERT [dbo].[OurProducts] ON 

INSERT [dbo].[OurProducts] ([Id], [IsDeleted], [Title], [Description]) VALUES (1, 0, N'Our Product', N'Lorem ipsum dolor sit amet consectetur adipisicing')
SET IDENTITY_INSERT [dbo].[OurProducts] OFF
GO
SET IDENTITY_INSERT [dbo].[ProductImages] ON 

INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (62, 0, N'product-1.jpg', 1, 28)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (64, 0, N'product-2.jpg', 1, 29)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (65, 0, N'product-3.jpg', 1, 30)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (66, 0, N'product-4.jpg', 1, 31)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (67, 0, N'product-5.jpg', 1, 33)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (68, 0, N'product-5.jpg', 1, 35)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (69, 0, N'product-1.jpg', 1, 38)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (70, 0, N'product-2.jpg', 1, 40)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (71, 0, N'product-3.jpg', 1, 43)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (72, 0, N'product-4.jpg', 1, 45)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (73, 0, N'product-5.jpg', 1, 46)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (74, 1, N'product-1.jpg', 1, 48)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (75, 0, N'product-2.jpg', 0, 28)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (76, 0, N'product-3.jpg', 0, 28)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (77, 0, N'product-5.jpg', 0, 29)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (78, 0, N'product-4.jpg', 0, 29)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (79, 0, N'product-1.jpg', 0, 30)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (80, 0, N'product-2.jpg', 0, 30)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (81, 0, N'product-3.jpg', 0, 31)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (82, 0, N'product-4.jpg', 0, 31)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (83, 0, N'product-2.jpg', 0, 33)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (84, 0, N'product-3.jpg', 0, 33)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (85, 0, N'product-5.jpg', 0, 35)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (86, 0, N'product-4.jpg', 0, 35)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (87, 0, N'product-1.jpg', 0, 38)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (88, 0, N'product-2.jpg', 0, 38)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (89, 0, N'product-3.jpg', 0, 40)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (90, 0, N'product-4.jpg', 0, 40)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (91, 0, N'product-2.jpg', 0, 43)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (92, 0, N'product-3.jpg', 0, 43)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (93, 0, N'product-5.jpg', 0, 45)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (94, 0, N'product-4.jpg', 0, 45)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (95, 0, N'product-1.jpg', 0, 46)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (96, 0, N'product-2.jpg', 0, 46)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (97, 1, N'product-3.jpg', 0, 48)
INSERT [dbo].[ProductImages] ([Id], [IsDeleted], [Image], [IsMain], [ProductId]) VALUES (98, 1, N'product-5.jpg', 0, 48)
SET IDENTITY_INSERT [dbo].[ProductImages] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([Id], [IsDeleted], [Title], [Price], [DiscountPrice], [SellerCount], [Description], [CategoriesId]) VALUES (28, 0, N'Leather Mens Slipper', CAST(80.0000 AS Decimal(18, 4)), CAST(40.0000 AS Decimal(18, 4)), 1, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
                                        Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 8)
INSERT [dbo].[Products] ([Id], [IsDeleted], [Title], [Price], [DiscountPrice], [SellerCount], [Description], [CategoriesId]) VALUES (29, 0, N'Quickiin Mens shoes', CAST(80.0000 AS Decimal(18, 4)), CAST(10.0000 AS Decimal(18, 4)), 1, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
                                        Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 8)
INSERT [dbo].[Products] ([Id], [IsDeleted], [Title], [Price], [DiscountPrice], [SellerCount], [Description], [CategoriesId]) VALUES (30, 0, N'Rexpo Womens shoes', CAST(80.0000 AS Decimal(18, 4)), CAST(30.0000 AS Decimal(18, 4)), 4, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
                                        Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 9)
INSERT [dbo].[Products] ([Id], [IsDeleted], [Title], [Price], [DiscountPrice], [SellerCount], [Description], [CategoriesId]) VALUES (31, 0, N'Primitive Mens shoes', CAST(80.0000 AS Decimal(18, 4)), CAST(12.0000 AS Decimal(18, 4)), 3, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
                                        Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 9)
INSERT [dbo].[Products] ([Id], [IsDeleted], [Title], [Price], [DiscountPrice], [SellerCount], [Description], [CategoriesId]) VALUES (33, 0, N'Leather Mens Slipper', CAST(80.0000 AS Decimal(18, 4)), CAST(70.0000 AS Decimal(18, 4)), 15, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
                                        Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 10)
INSERT [dbo].[Products] ([Id], [IsDeleted], [Title], [Price], [DiscountPrice], [SellerCount], [Description], [CategoriesId]) VALUES (35, 0, N'Simple Fabric Shoe', CAST(80.0000 AS Decimal(18, 4)), CAST(25.0000 AS Decimal(18, 4)), 3, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
                                        Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 10)
INSERT [dbo].[Products] ([Id], [IsDeleted], [Title], [Price], [DiscountPrice], [SellerCount], [Description], [CategoriesId]) VALUES (38, 0, N'exclusive mens shoe', CAST(80.0000 AS Decimal(18, 4)), CAST(20.0000 AS Decimal(18, 4)), 1, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
                                        Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 11)
INSERT [dbo].[Products] ([Id], [IsDeleted], [Title], [Price], [DiscountPrice], [SellerCount], [Description], [CategoriesId]) VALUES (40, 0, N'Quickiin Mens shoes', CAST(80.0000 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), 2, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
                                        Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 11)
INSERT [dbo].[Products] ([Id], [IsDeleted], [Title], [Price], [DiscountPrice], [SellerCount], [Description], [CategoriesId]) VALUES (43, 0, N'Primitive Men shoes', CAST(80.0000 AS Decimal(18, 4)), CAST(15.0000 AS Decimal(18, 4)), 2, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
                                        Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 12)
INSERT [dbo].[Products] ([Id], [IsDeleted], [Title], [Price], [DiscountPrice], [SellerCount], [Description], [CategoriesId]) VALUES (45, 0, N'Sports Mens shoes', CAST(80.0000 AS Decimal(18, 4)), CAST(20.0000 AS Decimal(18, 4)), 1, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
                                        Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 12)
INSERT [dbo].[Products] ([Id], [IsDeleted], [Title], [Price], [DiscountPrice], [SellerCount], [Description], [CategoriesId]) VALUES (46, 0, N'Quickiin Mens shoes', CAST(80.0000 AS Decimal(18, 4)), CAST(30.0000 AS Decimal(18, 4)), 3, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
                                        Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 8)
INSERT [dbo].[Products] ([Id], [IsDeleted], [Title], [Price], [DiscountPrice], [SellerCount], [Description], [CategoriesId]) VALUES (48, 1, N'Primitive Mens Shoes', CAST(80.0000 AS Decimal(18, 4)), CAST(70.0000 AS Decimal(18, 4)), 5, N'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.<br>
                                        Phasellus id nisi quis justo tempus mollis sed et dui. In hac habitasse platea dictumst. Suspendisse ultrices mauris diam. Nullam sed aliquet elit. Mauris consequat nisi ut mauris efficitur lacinia.', 9)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[SendMessages] ON 

INSERT [dbo].[SendMessages] ([Id], [IsDeleted], [Name], [Phone], [Email], [Subject], [Message]) VALUES (1, 0, N'Emil', N'Abdullayev', N'emilaa@code.edu.az', N'Yeraz', N'Programming')
SET IDENTITY_INSERT [dbo].[SendMessages] OFF
GO
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [IsDeleted], [Image], [Title], [Description], [Color]) VALUES (1, 0, N'policy-1.png', N'FREE SHIPPING', N'Free shipping on all order', N'#fcedda')
INSERT [dbo].[Services] ([Id], [IsDeleted], [Image], [Title], [Description], [Color]) VALUES (2, 0, N'policy-2.png', N'ONLINE SUPPORT', N'Online support 24 hours a day', N'#f2fbcb')
INSERT [dbo].[Services] ([Id], [IsDeleted], [Image], [Title], [Description], [Color]) VALUES (3, 0, N'policy-3.png', N'MONEY RETURN', N'Back guarantee under 5 days', N'#f7d8f9')
SET IDENTITY_INSERT [dbo].[Services] OFF
GO
SET IDENTITY_INSERT [dbo].[Settings] ON 

INSERT [dbo].[Settings] ([Id], [IsDeleted], [Key], [Value]) VALUES (1, 0, N'HeaderTitle', N'Welcome to Juan online store')
INSERT [dbo].[Settings] ([Id], [IsDeleted], [Key], [Value]) VALUES (2, 0, N'HeaderLogo', N'logo.png')
INSERT [dbo].[Settings] ([Id], [IsDeleted], [Key], [Value]) VALUES (3, 0, N'Location', N'184 Main Rd E, St Albans VIC 3021, Australia')
INSERT [dbo].[Settings] ([Id], [IsDeleted], [Key], [Value]) VALUES (4, 0, N'Email', N'Mail Us: yourmail@gmail.com')
INSERT [dbo].[Settings] ([Id], [IsDeleted], [Key], [Value]) VALUES (5, 0, N'Phone', N'Phone: + 00 254 254565')
INSERT [dbo].[Settings] ([Id], [IsDeleted], [Key], [Value]) VALUES (6, 0, N'Facebook', N'<i class="fa fa-facebook"></i>')
INSERT [dbo].[Settings] ([Id], [IsDeleted], [Key], [Value]) VALUES (7, 0, N'Twitter', N'<i class="fa fa-twitter"></i>')
INSERT [dbo].[Settings] ([Id], [IsDeleted], [Key], [Value]) VALUES (8, 0, N'Linkedn', N'<i class="fa fa-linkedin"></i>')
INSERT [dbo].[Settings] ([Id], [IsDeleted], [Key], [Value]) VALUES (10, 0, N'Instagram', N'<i class="fa fa-instagram"></i>')
INSERT [dbo].[Settings] ([Id], [IsDeleted], [Key], [Value]) VALUES (11, 0, N'AuthorRight', N'Copyright 2019 <a href="index.html">Juan</a>. All Rights Reserved')
INSERT [dbo].[Settings] ([Id], [IsDeleted], [Key], [Value]) VALUES (12, 0, N'HomeProductTake', N'6')
SET IDENTITY_INSERT [dbo].[Settings] OFF
GO
SET IDENTITY_INSERT [dbo].[SingleBanners] ON 

INSERT [dbo].[SingleBanners] ([Id], [IsDeleted], [Image]) VALUES (4, 0, N'banner_left.jpg')
SET IDENTITY_INSERT [dbo].[SingleBanners] OFF
GO
SET IDENTITY_INSERT [dbo].[Sliders] ON 

INSERT [dbo].[Sliders] ([Id], [IsDeleted], [Image], [Sale], [Title], [Description]) VALUES (3, 0, N'slider-1.jpg', N'Top Selling!', N'New Collection', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incidid')
INSERT [dbo].[Sliders] ([Id], [IsDeleted], [Image], [Sale], [Title], [Description]) VALUES (4, 0, N'slider-2.jpg', N'Best Selling!', N'Top Collection', N'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incidid')
INSERT [dbo].[Sliders] ([Id], [IsDeleted], [Image], [Sale], [Title], [Description]) VALUES (6, 0, N'34b6f533-8ea4-46f6-b816-d6ff0e4ea940_blog-feature-img-4.jpg', N'Fiorello', N'Juan', N'Fiorello-Juan')
SET IDENTITY_INSERT [dbo].[Sliders] OFF
GO
SET IDENTITY_INSERT [dbo].[Socials] ON 

INSERT [dbo].[Socials] ([Id], [IsDeleted], [Image], [CustomerId]) VALUES (1, 0, N'facebook', 1)
INSERT [dbo].[Socials] ([Id], [IsDeleted], [Image], [CustomerId]) VALUES (2, 0, N'twitter', 1)
INSERT [dbo].[Socials] ([Id], [IsDeleted], [Image], [CustomerId]) VALUES (3, 0, N'vimeo', 1)
INSERT [dbo].[Socials] ([Id], [IsDeleted], [Image], [CustomerId]) VALUES (4, 0, N'pinterest', 1)
SET IDENTITY_INSERT [dbo].[Socials] OFF
GO
SET IDENTITY_INSERT [dbo].[Tags] ON 

INSERT [dbo].[Tags] ([Id], [IsDeleted], [TagName]) VALUES (1, 0, N'Fashion')
INSERT [dbo].[Tags] ([Id], [IsDeleted], [TagName]) VALUES (2, 0, N'Shoes')
INSERT [dbo].[Tags] ([Id], [IsDeleted], [TagName]) VALUES (3, 0, N'Wallet')
INSERT [dbo].[Tags] ([Id], [IsDeleted], [TagName]) VALUES (4, 0, N'Bags')
INSERT [dbo].[Tags] ([Id], [IsDeleted], [TagName]) VALUES (5, 0, N'Jewelery')
SET IDENTITY_INSERT [dbo].[Tags] OFF
GO
SET IDENTITY_INSERT [dbo].[TopSellers] ON 

INSERT [dbo].[TopSellers] ([Id], [IsDeleted], [Title], [Description]) VALUES (1, 0, N'Top seller', N'Lorem ipsum dolor sit amet consectetur adipisicing')
SET IDENTITY_INSERT [dbo].[TopSellers] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 31/07/2023 11:49:43 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 31/07/2023 11:49:43 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 31/07/2023 11:49:43 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 31/07/2023 11:49:43 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 31/07/2023 11:49:43 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 31/07/2023 11:49:43 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 31/07/2023 11:49:43 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_ProductId]    Script Date: 31/07/2023 11:49:43 ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_ProductId] ON [dbo].[ProductImages]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoriesId]    Script Date: 31/07/2023 11:49:43 ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoriesId] ON [dbo].[Products]
(
	[CategoriesId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Socials_CustomerId]    Script Date: 31/07/2023 11:49:43 ******/
CREATE NONCLUSTERED INDEX [IX_Socials_CustomerId] ON [dbo].[Socials]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUsers] ADD  DEFAULT (CONVERT([bit],(0))) FOR [IsActive]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [SellerCount]
GO
ALTER TABLE [dbo].[Products] ADD  DEFAULT ((0)) FOR [CategoriesId]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_Categories_CategoriesId] FOREIGN KEY([CategoriesId])
REFERENCES [dbo].[Categories] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_Categories_CategoriesId]
GO
ALTER TABLE [dbo].[Socials]  WITH CHECK ADD  CONSTRAINT [FK_Socials_Customers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Socials] CHECK CONSTRAINT [FK_Socials_Customers_CustomerId]
GO
USE [master]
GO
ALTER DATABASE [JuanDb] SET  READ_WRITE 
GO
