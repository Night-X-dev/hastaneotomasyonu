USE [master]
GO
/****** Object:  Database [hastahane]    Script Date: 21.05.2022 22:50:22 ******/
CREATE DATABASE [hastahane]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'hastahane', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\hastahane.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'hastahane_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\hastahane_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [hastahane] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [hastahane].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [hastahane] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [hastahane] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [hastahane] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [hastahane] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [hastahane] SET ARITHABORT OFF 
GO
ALTER DATABASE [hastahane] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [hastahane] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [hastahane] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [hastahane] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [hastahane] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [hastahane] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [hastahane] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [hastahane] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [hastahane] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [hastahane] SET  DISABLE_BROKER 
GO
ALTER DATABASE [hastahane] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [hastahane] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [hastahane] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [hastahane] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [hastahane] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [hastahane] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [hastahane] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [hastahane] SET RECOVERY FULL 
GO
ALTER DATABASE [hastahane] SET  MULTI_USER 
GO
ALTER DATABASE [hastahane] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [hastahane] SET DB_CHAINING OFF 
GO
ALTER DATABASE [hastahane] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [hastahane] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [hastahane] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [hastahane] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'hastahane', N'ON'
GO
ALTER DATABASE [hastahane] SET QUERY_STORE = OFF
GO
USE [hastahane]
GO
/****** Object:  Table [dbo].[doktorlar]    Script Date: 21.05.2022 22:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[doktorlar](
	[tc] [varchar](50) NULL,
	[ad] [varchar](50) NULL,
	[soyad] [varchar](50) NULL,
	[cinsiyet] [varchar](50) NULL,
	[dogumyeri] [varchar](50) NULL,
	[dtarihi] [varchar](50) NULL,
	[ceptel] [varchar](50) NULL,
	[sabittel] [varchar](50) NULL,
	[eposta] [varchar](50) NULL,
	[poliklinik] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hastalar]    Script Date: 21.05.2022 22:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hastalar](
	[tc] [varchar](50) NULL,
	[ad] [varchar](50) NULL,
	[soyad] [varchar](50) NULL,
	[cinsiyet] [varchar](50) NULL,
	[dogumyeri] [varchar](50) NULL,
	[dtarihi] [varchar](50) NULL,
	[anneadi] [varchar](50) NULL,
	[babaadi] [varchar](50) NULL,
	[ceptel] [varchar](50) NULL,
	[sabittel] [varchar](50) NULL,
	[eposta] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[randevu]    Script Date: 21.05.2022 22:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[randevu](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tarih] [varchar](50) NULL,
	[poliklinik] [varchar](50) NULL,
	[doktor] [varchar](50) NULL,
	[tc] [varchar](50) NULL,
	[saat] [varchar](50) NULL,
 CONSTRAINT [PK_randevu] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[uye]    Script Date: 21.05.2022 22:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[uye](
	[kadi] [varchar](50) NULL,
	[sifre] [varchar](50) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[doktorlar] ([tc], [ad], [soyad], [cinsiyet], [dogumyeri], [dtarihi], [ceptel], [sabittel], [eposta], [poliklinik]) VALUES (N'53913564485', N'Enver', N'İlçi', N'ERKEK', N'Hasankeyf', N'01.01.2000', N'5986325698', N'Yok', N'enver@ilci.com', N'Kardiyoloji')
INSERT [dbo].[doktorlar] ([tc], [ad], [soyad], [cinsiyet], [dogumyeri], [dtarihi], [ceptel], [sabittel], [eposta], [poliklinik]) VALUES (N'65985026687', N'Mustafa', N'Öztürk', N'ERKEK', N'Gaziosmanpaşa', N'01.03.1982', N'0537 548 98 78', N'Yok', N'mustafa@ozturk.info', N'Akıl Ve Ruh Sağlığı')
INSERT [dbo].[doktorlar] ([tc], [ad], [soyad], [cinsiyet], [dogumyeri], [dtarihi], [ceptel], [sabittel], [eposta], [poliklinik]) VALUES (N'98954587785', N'Mert', N'Özel', N'ERKEK', N'Güngören', N'05.06.1985', N'0545 598 34 56', N'0212 548 65 87', N'mertozell@gmail.con', N'Ortapedi')
INSERT [dbo].[doktorlar] ([tc], [ad], [soyad], [cinsiyet], [dogumyeri], [dtarihi], [ceptel], [sabittel], [eposta], [poliklinik]) VALUES (N'32651548890', N'Ayaz', N'Aksu', N'ERKEK', N'Bakırköy', N'21.09.1991', N'0565 632 48 91', N'0212 983 15 65', N'ayazaksuu@yandex.com', N'Kardiyoloji')
INSERT [dbo].[doktorlar] ([tc], [ad], [soyad], [cinsiyet], [dogumyeri], [dtarihi], [ceptel], [sabittel], [eposta], [poliklinik]) VALUES (N'65985304485', N'Muhammed Eren', N'Gündoğmuş', N'ERKEK', N'Kağıthane', N'01.01.1983', N'0531 054 98 53', N'Yok', N'merengundogmus@gmail.com', N'Kalp Ve Damar Hastalıkları')
GO
INSERT [dbo].[hastalar] ([tc], [ad], [soyad], [cinsiyet], [dogumyeri], [dtarihi], [anneadi], [babaadi], [ceptel], [sabittel], [eposta]) VALUES (N'24275087765', N'Ahmet', N'Dursun', N'ERKEK', N'Bağcılar', N'01.06.2000', N'Pakize', N'Serdar', N'05369856578', N'Yok', N'ahmddursun@gmail.com')
INSERT [dbo].[hastalar] ([tc], [ad], [soyad], [cinsiyet], [dogumyeri], [dtarihi], [anneadi], [babaadi], [ceptel], [sabittel], [eposta]) VALUES (N'65981567785', N'Turgut', N'Yiğit', N'ERKEK', N'Esentepe', N'21.03.1991', N'Güllü', N'Mehmet', N'05369583245', N'Yok', N'Yok')
GO
SET IDENTITY_INSERT [dbo].[randevu] ON 

INSERT [dbo].[randevu] ([id], [tarih], [poliklinik], [doktor], [tc], [saat]) VALUES (7, N'29.05.2022 19:13:59', N'Akıl Ve Ruh Sağlığı', N'Mustafa Öztürk', N'35376789987', N'09:00')
INSERT [dbo].[randevu] ([id], [tarih], [poliklinik], [doktor], [tc], [saat]) VALUES (8, N'2.06.2022 21:13:40', N'Akıl Ve Ruh Sağlığı', N'Mustafa Öztürk', N'54572056698', N'12:50')
INSERT [dbo].[randevu] ([id], [tarih], [poliklinik], [doktor], [tc], [saat]) VALUES (9, N'15.05.2022 21:33:16', N'Akıl Ve Ruh Sağlığı', N'Mustafa Öztürk', N'12345678910', N'09:20')
SET IDENTITY_INSERT [dbo].[randevu] OFF
GO
INSERT [dbo].[uye] ([kadi], [sifre]) VALUES (N'admin', N'admin')
INSERT [dbo].[uye] ([kadi], [sifre]) VALUES (N'enver', N'hoca')
GO
USE [master]
GO
ALTER DATABASE [hastahane] SET  READ_WRITE 
GO
