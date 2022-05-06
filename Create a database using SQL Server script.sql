USE [master]
GO
/****** Object:  Database [Deklaravimas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE DATABASE [Deklaravimas]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Deklaravimas', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Deklaravimas.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Deklaravimas_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\Deklaravimas_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Deklaravimas] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Deklaravimas].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Deklaravimas] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Deklaravimas] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Deklaravimas] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Deklaravimas] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Deklaravimas] SET ARITHABORT OFF 
GO
ALTER DATABASE [Deklaravimas] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Deklaravimas] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Deklaravimas] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Deklaravimas] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Deklaravimas] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Deklaravimas] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Deklaravimas] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Deklaravimas] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Deklaravimas] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Deklaravimas] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Deklaravimas] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Deklaravimas] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Deklaravimas] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Deklaravimas] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Deklaravimas] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Deklaravimas] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Deklaravimas] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Deklaravimas] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Deklaravimas] SET  MULTI_USER 
GO
ALTER DATABASE [Deklaravimas] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Deklaravimas] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Deklaravimas] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Deklaravimas] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Deklaravimas] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Deklaravimas] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Deklaravimas] SET QUERY_STORE = OFF
GO
USE [Deklaravimas]
GO
/****** Object:  Default [D_0]    Script Date: 2022-05-06 18:27:20 ******/
CREATE DEFAULT [dbo].[D_0] 
AS
'0'
GO
/****** Object:  Rule [R_Adreso_tipas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Adreso_tipas] 
AS
@column in ('1','2','3')
GO
/****** Object:  Rule [R_Automobilio_statusas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Automobilio_statusas] 
AS
@column in ('0','1','2','3')
GO
/****** Object:  Rule [R_B2B_busena]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_B2B_busena] 
AS
@column in ('0','1','2','3','4')
GO
/****** Object:  Rule [R_Darbuotojo_statusas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Darbuotojo_statusas] 
AS
@column in ('0','1','2','3')
GO
/****** Object:  Rule [R_Deklaracijos_busena]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Deklaracijos_busena] 
AS
@column in ('0','1','2','3','4','5')
GO
/****** Object:  Rule [R_Dokumento_statusas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Dokumento_statusas] 
AS
@column in ('0','1')
GO
/****** Object:  Rule [R_Dokumento_tipas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Dokumento_tipas] 
AS
@column in ('1','2','3','4','5','6','7','8','9')
GO
/****** Object:  Rule [R_Kontakto_tipas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Kontakto_tipas] 
AS
@column in ('0','1','2','3')
GO
/****** Object:  Rule [R_Kryptis]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Kryptis] 
AS
@column in ('1','2')
GO
/****** Object:  Rule [R_Lytis]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Lytis] 
AS
@column in ('0','1')
GO
/****** Object:  Rule [R_Miestas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Miestas] 
AS
@column in ('0','1','2','3','4','5','6')
GO
/****** Object:  Rule [R_Reiso_busena]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Reiso_busena] 
AS
@column in ('0','1','2','3')
GO
/****** Object:  Rule [R_Role]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Role] 
AS
@column in ('0','1')
GO
/****** Object:  Rule [R_Skolos_busena]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Skolos_busena] 
AS
@column in ('0','1','2')
GO
/****** Object:  Rule [R_Skolos_tipas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Skolos_tipas] 
AS
@column in ('0','1','2','3','4','5')
GO
/****** Object:  Rule [R_Sutarties_pozymis]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Sutarties_pozymis] 
AS
@column in ('0','1')
GO
/****** Object:  Rule [R_Tiekejas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Tiekejas] 
AS
@column in ('0','1','2')
GO
/****** Object:  Rule [R_Vartotojo_statusas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Vartotojo_statusas] 
AS
@column in ('0','1')
GO
/****** Object:  Rule [R_Veikla]    Script Date: 2022-05-06 18:27:20 ******/
CREATE RULE [dbo].[R_Veikla] 
AS
@column in ('0','1','4','3')
GO
/****** Object:  UserDefinedDataType [dbo].[Adreso_tipas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Adreso_tipas] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Automobilio_statusas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Automobilio_statusas] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[B2B_busena]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[B2B_busena] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Darbuotojo_statusas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Darbuotojo_statusas] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Deklaracijos_busena]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Deklaracijos_busena] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Dokumento_statusas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Dokumento_statusas] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Dokumento_tipas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Dokumento_tipas] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Kontakto_tipas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Kontakto_tipas] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Kryptis]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Kryptis] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Lytis]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Lytis] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Miestas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Miestas] FROM [varchar](30) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Reiso_busena]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Reiso_busena] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Role]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Role] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Skolos_busena]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Skolos_busena] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Skolos_tipas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Skolos_tipas] FROM [varchar](30) NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Sutarties_pozymis]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Sutarties_pozymis] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Tiekejas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Tiekejas] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Vartotojo_statusas]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Vartotojo_statusas] FROM [varchar](30) NOT NULL
GO
/****** Object:  UserDefinedDataType [dbo].[Veikla]    Script Date: 2022-05-06 18:27:20 ******/
CREATE TYPE [dbo].[Veikla] FROM [varchar](30) NOT NULL
GO
/****** Object:  Table [dbo].[Adresas]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresas](
	[Adreso_ID] [int] NOT NULL,
	[Adreso_salies_ID] [int] NOT NULL,
	[Darbuotojo_ID] [int] NULL,
	[Imones_ID] [int] NULL,
	[Adreso_tipas] [dbo].[Adreso_tipas] NOT NULL,
	[Miestas] [varchar](100) NOT NULL,
	[Gatve_namas_butas] [varchar](100) NOT NULL,
	[Pasto_kodas] [varchar](100) NULL,
 CONSTRAINT [PK_ADRESAS] PRIMARY KEY CLUSTERED 
(
	[Adreso_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Automobilis]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Automobilis](
	[Automobilio_ID] [int] NOT NULL,
	[Imones_ID] [int] NOT NULL,
	[Automobilio_statusas] [dbo].[Automobilio_statusas] NOT NULL,
	[Automobilio_Nr] [varchar](100) NOT NULL,
 CONSTRAINT [PK_AUTOMOBILIS] PRIMARY KEY CLUSTERED 
(
	[Automobilio_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unikalus_automobilio_nr] UNIQUE NONCLUSTERED 
(
	[Automobilio_Nr] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[B2B]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[B2B](
	[B2B_ID] [int] NOT NULL,
	[Deklarcijos_ID] [int] NOT NULL,
	[Kryptis] [dbo].[Kryptis] NOT NULL,
	[B2B_busena] [dbo].[B2B_busena] NOT NULL,
	[Tiekejas] [dbo].[Tiekejas] NOT NULL,
	[Sukurta] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_B2B] PRIMARY KEY CLUSTERED 
(
	[B2B_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Darbuotojas]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Darbuotojas](
	[Darbuotojo_ID] [int] IDENTITY(1,1) NOT NULL,
	[Pilietybes_ID] [int] NOT NULL,
	[Gimimo_salies_ID] [int] NULL,
	[Kurejo_ID] [int] NOT NULL,
	[Pareigybes_ID] [int] NOT NULL,
	[Darbuotojo_kodas] [varchar](20) NULL,
	[Miestas] [dbo].[Miestas] NULL,
	[Stazas_nuo] [datetime2](7) NULL,
	[Lytis] [dbo].[Lytis] NOT NULL,
	[Vardas] [varchar](100) NOT NULL,
	[Pavarde] [varchar](100) NOT NULL,
	[Veikla] [dbo].[Veikla] NOT NULL,
	[Sukurta] [datetime2](7) NOT NULL,
	[Gimimo_vieta] [varchar](100) NULL,
	[Gimimo_data] [datetime2](7) NULL,
	[Darbuotojo_busena] [dbo].[Darbuotojo_statusas] NOT NULL,
 CONSTRAINT [PK_DARBUOTOJAS] PRIMARY KEY CLUSTERED 
(
	[Darbuotojo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [unikalus_darbuotojo_kodas] UNIQUE NONCLUSTERED 
(
	[Darbuotojo_kodas] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Darbuotojas_auditas]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Darbuotojas_auditas](
	[change_id] [int] IDENTITY(1,1) NOT NULL,
	[Darbuotojo_ID] [int] NOT NULL,
	[Pilietybes_ID] [int] NOT NULL,
	[Gimimo_salies_ID] [int] NULL,
	[Kurejo_ID] [int] NOT NULL,
	[Pareigybes_ID] [int] NOT NULL,
	[Darbuotojo_kodas] [varchar](20) NULL,
	[Miestas] [varchar](30) NULL,
	[Stazas_nuo] [datetime] NULL,
	[Lytis] [varchar](30) NOT NULL,
	[Vardas] [varchar](100) NOT NULL,
	[Pavarde] [varchar](100) NOT NULL,
	[Veikla] [varchar](30) NOT NULL,
	[Gimimo_data] [datetime] NULL,
	[Gimimo_vieta] [varchar](100) NULL,
	[Sukurta] [datetime] NOT NULL,
	[Darbuotojo_busena] [varchar](30) NOT NULL,
	[updated_at] [datetime] NOT NULL,
	[operation] [char](3) NOT NULL,
 CONSTRAINT [PK__Darbuotojas__auditas] PRIMARY KEY CLUSTERED 
(
	[change_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deklaracija]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deklaracija](
	[Deklarcijos_ID] [int] IDENTITY(1,1) NOT NULL,
	[Sutarties_ID] [int] NOT NULL,
	[Darbuotojo_ID] [int] NOT NULL,
	[Kurejo_ID] [int] NOT NULL,
	[Salies_ID] [int] NOT NULL,
	[Automobilio_ID] [int] NULL,
	[Reiso_ID] [int] NULL,
	[Deklaracijos_busena] [dbo].[Deklaracijos_busena] NOT NULL,
	[Deklaracija_nuo] [datetime2](7) NOT NULL,
	[Deklaracija_iki] [datetime2](7) NOT NULL,
	[Sukurta] [datetime2](7) NOT NULL,
	[Pastaba] [varchar](500) NULL,
	[Deklaracijos_dokumentas] [bit] NULL,
	[Imones_ID] [int] NULL,
 CONSTRAINT [PK_DEKLARACIJA] PRIMARY KEY CLUSTERED 
(
	[Deklarcijos_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deklaracijos_kurimas]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deklaracijos_kurimas](
	[Deklaracijos_kurimo_ID] [int] NOT NULL,
	[Salies_ID] [int] NOT NULL,
	[Galiojimas_d] [numeric](18, 0) NOT NULL,
	[Kurti_nuo_sutarties] [bit] NULL,
	[Kurti_nuo_reiso] [bit] NULL,
 CONSTRAINT [PK_DEKLARACIJOS_KURIMAS] PRIMARY KEY CLUSTERED 
(
	[Deklaracijos_kurimo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deklaracijos_pratesimas]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deklaracijos_pratesimas](
	[Deklaracijos_pratesimo_ID] [int] NOT NULL,
	[Salies_ID] [int] NOT NULL,
	[Imones_ID] [int] NOT NULL,
	[Pratesimas_pries_d] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_DEKLARACIJOS_PRATESIMAS] PRIMARY KEY CLUSTERED 
(
	[Deklaracijos_pratesimo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deklaracijos_skolos_kurimas]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deklaracijos_skolos_kurimas](
	[Deklaracijos_skolos_kurimo_ID] [int] NOT NULL,
	[Imones_ID] [int] NOT NULL,
	[Salies_ID] [int] NOT NULL,
	[Aprasymas] [varchar](100) NULL,
	[Deklaracijos_busena] [dbo].[Deklaracijos_busena] NOT NULL,
 CONSTRAINT [PK_DEKLARACIJOS_SKOLOS_KURIMAS] PRIMARY KEY CLUSTERED 
(
	[Deklaracijos_skolos_kurimo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deklaracijos_teikimas]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deklaracijos_teikimas](
	[Deklaracijos_teikimo_ID] [int] NOT NULL,
	[Salies_ID] [int] NOT NULL,
	[Imones_ID] [int] NOT NULL,
	[Tiekejas] [dbo].[Tiekejas] NOT NULL,
	[Deklaravimo_instrukcija] [varchar](5000) NOT NULL,
 CONSTRAINT [PK_DEKLARACIJOS_TEIKIMAS] PRIMARY KEY CLUSTERED 
(
	[Deklaracijos_teikimo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dokumentas]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dokumentas](
	[Dokumento_ID] [int] NOT NULL,
	[Nuorodos_ID] [int] NOT NULL,
	[Kurejo_ID] [int] NOT NULL,
	[Darbuotojo_ID] [int] NOT NULL,
	[Dokumento_tipas] [dbo].[Dokumento_tipas] NOT NULL,
	[Sukurta] [datetime2](7) NOT NULL,
	[Pavadinimas] [varchar](100) NULL,
	[Dokumento_statusas] [dbo].[Dokumento_statusas] NOT NULL,
 CONSTRAINT [PK_DOKUMENTAS] PRIMARY KEY CLUSTERED 
(
	[Dokumento_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Imone]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Imone](
	[Imones_ID] [int] NOT NULL,
	[Direktoriaus_ID] [int] NOT NULL,
	[Pavadinimas] [varchar](100) NOT NULL,
	[PVM_kodas] [varchar](100) NOT NULL,
	[Imones_kodas] [varchar](100) NOT NULL,
 CONSTRAINT [PK_IMONE] PRIMARY KEY CLUSTERED 
(
	[Imones_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kontaktas]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kontaktas](
	[Kontakto_ID] [int] NOT NULL,
	[Imones_ID] [int] NULL,
	[Darbuotojo_ID] [int] NULL,
	[Kontakto_tipas] [dbo].[Kontakto_tipas] NOT NULL,
	[Kontaktas] [varchar](100) NOT NULL,
	[Pastaba] [varchar](500) NULL,
 CONSTRAINT [PK_KONTAKTAS] PRIMARY KEY CLUSTERED 
(
	[Kontakto_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pareigybe]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pareigybe](
	[Pareigybes_ID] [int] NOT NULL,
	[Pareigybes_pavadinimas] [varchar](100) NOT NULL,
	[Lytis] [dbo].[Lytis] NOT NULL,
	[Galioja_nuo] [datetime2](7) NOT NULL,
	[Galioja_iki] [datetime2](7) NULL,
	[Isorinis_kodas] [varchar](100) NULL,
 CONSTRAINT [PK_PAREIGYBE] PRIMARY KEY CLUSTERED 
(
	[Pareigybes_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reisas]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reisas](
	[Reiso_ID] [int] NOT NULL,
	[Automobilio_ID] [int] NOT NULL,
	[Kurejo_ID] [int] NOT NULL,
	[Vadybininko_ID] [int] NOT NULL,
	[Vairuotojo_1_ID] [int] NOT NULL,
	[Vairuotojo_2_ID] [int] NULL,
	[Reiso_pradzios_data] [datetime] NULL,
	[Reiso_pabaigos_data] [datetime] NULL,
	[Sukurta] [datetime] NOT NULL,
	[Reiso_busena] [dbo].[Reiso_busena] NOT NULL,
 CONSTRAINT [PK_REISAS] PRIMARY KEY CLUSTERED 
(
	[Reiso_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Salis]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salis](
	[Salies_ID] [int] NOT NULL,
	[Dviraidis_kodas] [char](2) NOT NULL,
	[Pavadinimas] [varchar](100) NOT NULL,
	[ES_salis] [bit] NULL,
 CONSTRAINT [PK_SALIS] PRIMARY KEY CLUSTERED 
(
	[Salies_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skola]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skola](
	[Skolos_ID] [int] IDENTITY(1,1) NOT NULL,
	[Nuorodos_ID] [int] NOT NULL,
	[Kurejo_ID] [int] NOT NULL,
	[Atlikejo_ID] [int] NULL,
	[Darbuotojo_ID] [int] NOT NULL,
	[Imones_ID] [int] NOT NULL,
	[Skolos_busena] [dbo].[Skolos_busena] NOT NULL,
	[Aprasymas] [varchar](100) NULL,
	[Sukurta] [datetime] NOT NULL,
	[Atlikta] [datetime] NULL,
 CONSTRAINT [PK_SKOLA] PRIMARY KEY CLUSTERED 
(
	[Skolos_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sutartis]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sutartis](
	[Sutarties_ID] [int] IDENTITY(1,1) NOT NULL,
	[Kurejo_ID] [int] NOT NULL,
	[Darbuotojo_ID] [int] NOT NULL,
	[Pareigybes_ID] [int] NOT NULL,
	[Imones_ID] [int] NOT NULL,
	[Sutartis_nuo] [datetime] NOT NULL,
	[Sutartis_iki] [datetime] NULL,
	[Sutarties_pasirasymo_data] [datetime] NULL,
	[Sutarties_numeris] [varchar](100) NULL,
	[Pagrindine_sutartis] [bit] NULL,
	[Sutarties_pozymis] [dbo].[Sutarties_pozymis] NOT NULL,
	[Sukurta] [datetime] NOT NULL,
	[Alga] [decimal](10, 2) NOT NULL,
	[KF] [int] NULL,
 CONSTRAINT [PK_SUTARTIS] PRIMARY KEY CLUSTERED 
(
	[Sutarties_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vartotojas]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vartotojas](
	[Vartotojo_ID] [int] NOT NULL,
	[Vardas] [char](100) NOT NULL,
	[Pavarde] [char](100) NOT NULL,
	[Vartotojo_statusas] [dbo].[Vartotojo_statusas] NOT NULL,
	[Role] [dbo].[Role] NOT NULL,
 CONSTRAINT [PK_VARTOTOJAS] PRIMARY KEY CLUSTERED 
(
	[Vartotojo_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [Imone_Skola_FK]    Script Date: 2022-05-06 18:27:20 ******/
CREATE NONCLUSTERED INDEX [Imone_Skola_FK] ON [dbo].[Skola]
(
	[Imones_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2B] ADD  CONSTRAINT [DF__B2B__B2B_busena__3B75D760]  DEFAULT ('0') FOR [B2B_busena]
GO
ALTER TABLE [dbo].[Adresas]  WITH CHECK ADD  CONSTRAINT [FK_Adresas_Darbuotojas] FOREIGN KEY([Darbuotojo_ID])
REFERENCES [dbo].[Darbuotojas] ([Darbuotojo_ID])
GO
ALTER TABLE [dbo].[Adresas] CHECK CONSTRAINT [FK_Adresas_Darbuotojas]
GO
ALTER TABLE [dbo].[Adresas]  WITH CHECK ADD  CONSTRAINT [FK_Adresas_Imone] FOREIGN KEY([Imones_ID])
REFERENCES [dbo].[Imone] ([Imones_ID])
GO
ALTER TABLE [dbo].[Adresas] CHECK CONSTRAINT [FK_Adresas_Imone]
GO
ALTER TABLE [dbo].[Adresas]  WITH CHECK ADD  CONSTRAINT [FK_Adresas_Salis] FOREIGN KEY([Adreso_salies_ID])
REFERENCES [dbo].[Salis] ([Salies_ID])
GO
ALTER TABLE [dbo].[Adresas] CHECK CONSTRAINT [FK_Adresas_Salis]
GO
ALTER TABLE [dbo].[Automobilis]  WITH CHECK ADD  CONSTRAINT [FK_Automobilis_Imone] FOREIGN KEY([Imones_ID])
REFERENCES [dbo].[Imone] ([Imones_ID])
GO
ALTER TABLE [dbo].[Automobilis] CHECK CONSTRAINT [FK_Automobilis_Imone]
GO
ALTER TABLE [dbo].[B2B]  WITH CHECK ADD  CONSTRAINT [FK_B2B_Deklaracija] FOREIGN KEY([Deklarcijos_ID])
REFERENCES [dbo].[Deklaracija] ([Deklarcijos_ID])
GO
ALTER TABLE [dbo].[B2B] CHECK CONSTRAINT [FK_B2B_Deklaracija]
GO
ALTER TABLE [dbo].[Darbuotojas]  WITH CHECK ADD  CONSTRAINT [FK_Darbuotojas_Pareigybe] FOREIGN KEY([Pareigybes_ID])
REFERENCES [dbo].[Pareigybe] ([Pareigybes_ID])
GO
ALTER TABLE [dbo].[Darbuotojas] CHECK CONSTRAINT [FK_Darbuotojas_Pareigybe]
GO
ALTER TABLE [dbo].[Darbuotojas]  WITH CHECK ADD  CONSTRAINT [FK_Darbuotojas_Salis] FOREIGN KEY([Pilietybes_ID])
REFERENCES [dbo].[Salis] ([Salies_ID])
GO
ALTER TABLE [dbo].[Darbuotojas] CHECK CONSTRAINT [FK_Darbuotojas_Salis]
GO
ALTER TABLE [dbo].[Darbuotojas]  WITH CHECK ADD  CONSTRAINT [FK_Darbuotojas_Salis1] FOREIGN KEY([Gimimo_salies_ID])
REFERENCES [dbo].[Salis] ([Salies_ID])
GO
ALTER TABLE [dbo].[Darbuotojas] CHECK CONSTRAINT [FK_Darbuotojas_Salis1]
GO
ALTER TABLE [dbo].[Darbuotojas]  WITH CHECK ADD  CONSTRAINT [FK_Darbuotojas_Vartotojas] FOREIGN KEY([Kurejo_ID])
REFERENCES [dbo].[Vartotojas] ([Vartotojo_ID])
GO
ALTER TABLE [dbo].[Darbuotojas] CHECK CONSTRAINT [FK_Darbuotojas_Vartotojas]
GO
ALTER TABLE [dbo].[Deklaracija]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracija_Automobilis] FOREIGN KEY([Automobilio_ID])
REFERENCES [dbo].[Automobilis] ([Automobilio_ID])
GO
ALTER TABLE [dbo].[Deklaracija] CHECK CONSTRAINT [FK_Deklaracija_Automobilis]
GO
ALTER TABLE [dbo].[Deklaracija]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracija_Darbuotojas] FOREIGN KEY([Darbuotojo_ID])
REFERENCES [dbo].[Darbuotojas] ([Darbuotojo_ID])
GO
ALTER TABLE [dbo].[Deklaracija] CHECK CONSTRAINT [FK_Deklaracija_Darbuotojas]
GO
ALTER TABLE [dbo].[Deklaracija]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracija_Darbuotojas_1] FOREIGN KEY([Darbuotojo_ID])
REFERENCES [dbo].[Darbuotojas] ([Darbuotojo_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Deklaracija] CHECK CONSTRAINT [FK_Deklaracija_Darbuotojas_1]
GO
ALTER TABLE [dbo].[Deklaracija]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracija_Imone] FOREIGN KEY([Imones_ID])
REFERENCES [dbo].[Imone] ([Imones_ID])
GO
ALTER TABLE [dbo].[Deklaracija] CHECK CONSTRAINT [FK_Deklaracija_Imone]
GO
ALTER TABLE [dbo].[Deklaracija]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracija_Reisas] FOREIGN KEY([Reiso_ID])
REFERENCES [dbo].[Reisas] ([Reiso_ID])
GO
ALTER TABLE [dbo].[Deklaracija] CHECK CONSTRAINT [FK_Deklaracija_Reisas]
GO
ALTER TABLE [dbo].[Deklaracija]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracija_Salis] FOREIGN KEY([Salies_ID])
REFERENCES [dbo].[Salis] ([Salies_ID])
GO
ALTER TABLE [dbo].[Deklaracija] CHECK CONSTRAINT [FK_Deklaracija_Salis]
GO
ALTER TABLE [dbo].[Deklaracija]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracija_Sutartis] FOREIGN KEY([Sutarties_ID])
REFERENCES [dbo].[Sutartis] ([Sutarties_ID])
GO
ALTER TABLE [dbo].[Deklaracija] CHECK CONSTRAINT [FK_Deklaracija_Sutartis]
GO
ALTER TABLE [dbo].[Deklaracija]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracija_Vartotojas] FOREIGN KEY([Kurejo_ID])
REFERENCES [dbo].[Vartotojas] ([Vartotojo_ID])
GO
ALTER TABLE [dbo].[Deklaracija] CHECK CONSTRAINT [FK_Deklaracija_Vartotojas]
GO
ALTER TABLE [dbo].[Deklaracijos_kurimas]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracijos_kurimas_Salis] FOREIGN KEY([Salies_ID])
REFERENCES [dbo].[Salis] ([Salies_ID])
GO
ALTER TABLE [dbo].[Deklaracijos_kurimas] CHECK CONSTRAINT [FK_Deklaracijos_kurimas_Salis]
GO
ALTER TABLE [dbo].[Deklaracijos_pratesimas]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracijos_pratesimas_Imone] FOREIGN KEY([Imones_ID])
REFERENCES [dbo].[Imone] ([Imones_ID])
GO
ALTER TABLE [dbo].[Deklaracijos_pratesimas] CHECK CONSTRAINT [FK_Deklaracijos_pratesimas_Imone]
GO
ALTER TABLE [dbo].[Deklaracijos_pratesimas]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracijos_pratesimas_Salis] FOREIGN KEY([Salies_ID])
REFERENCES [dbo].[Salis] ([Salies_ID])
GO
ALTER TABLE [dbo].[Deklaracijos_pratesimas] CHECK CONSTRAINT [FK_Deklaracijos_pratesimas_Salis]
GO
ALTER TABLE [dbo].[Deklaracijos_skolos_kurimas]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracijos_skolos_kurimas_Imone] FOREIGN KEY([Imones_ID])
REFERENCES [dbo].[Imone] ([Imones_ID])
GO
ALTER TABLE [dbo].[Deklaracijos_skolos_kurimas] CHECK CONSTRAINT [FK_Deklaracijos_skolos_kurimas_Imone]
GO
ALTER TABLE [dbo].[Deklaracijos_skolos_kurimas]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracijos_skolos_kurimas_Salis] FOREIGN KEY([Salies_ID])
REFERENCES [dbo].[Salis] ([Salies_ID])
GO
ALTER TABLE [dbo].[Deklaracijos_skolos_kurimas] CHECK CONSTRAINT [FK_Deklaracijos_skolos_kurimas_Salis]
GO
ALTER TABLE [dbo].[Deklaracijos_teikimas]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracijos_teikimas_Imone] FOREIGN KEY([Imones_ID])
REFERENCES [dbo].[Imone] ([Imones_ID])
GO
ALTER TABLE [dbo].[Deklaracijos_teikimas] CHECK CONSTRAINT [FK_Deklaracijos_teikimas_Imone]
GO
ALTER TABLE [dbo].[Deklaracijos_teikimas]  WITH CHECK ADD  CONSTRAINT [FK_Deklaracijos_teikimas_Salis] FOREIGN KEY([Salies_ID])
REFERENCES [dbo].[Salis] ([Salies_ID])
GO
ALTER TABLE [dbo].[Deklaracijos_teikimas] CHECK CONSTRAINT [FK_Deklaracijos_teikimas_Salis]
GO
ALTER TABLE [dbo].[Dokumentas]  WITH CHECK ADD  CONSTRAINT [FK_Dokumentas_Darbuotojas] FOREIGN KEY([Darbuotojo_ID])
REFERENCES [dbo].[Darbuotojas] ([Darbuotojo_ID])
GO
ALTER TABLE [dbo].[Dokumentas] CHECK CONSTRAINT [FK_Dokumentas_Darbuotojas]
GO
ALTER TABLE [dbo].[Dokumentas]  WITH CHECK ADD  CONSTRAINT [FK_Dokumentas_Deklaracija] FOREIGN KEY([Nuorodos_ID])
REFERENCES [dbo].[Deklaracija] ([Deklarcijos_ID])
GO
ALTER TABLE [dbo].[Dokumentas] CHECK CONSTRAINT [FK_Dokumentas_Deklaracija]
GO
ALTER TABLE [dbo].[Dokumentas]  WITH CHECK ADD  CONSTRAINT [FK_Dokumentas_Deklaracija1] FOREIGN KEY([Nuorodos_ID])
REFERENCES [dbo].[Deklaracija] ([Deklarcijos_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Dokumentas] CHECK CONSTRAINT [FK_Dokumentas_Deklaracija1]
GO
ALTER TABLE [dbo].[Dokumentas]  WITH CHECK ADD  CONSTRAINT [FK_Dokumentas_Vartotojas] FOREIGN KEY([Kurejo_ID])
REFERENCES [dbo].[Vartotojas] ([Vartotojo_ID])
GO
ALTER TABLE [dbo].[Dokumentas] CHECK CONSTRAINT [FK_Dokumentas_Vartotojas]
GO
ALTER TABLE [dbo].[Imone]  WITH CHECK ADD  CONSTRAINT [FK_Imone_Darbuotojas] FOREIGN KEY([Direktoriaus_ID])
REFERENCES [dbo].[Darbuotojas] ([Darbuotojo_ID])
GO
ALTER TABLE [dbo].[Imone] CHECK CONSTRAINT [FK_Imone_Darbuotojas]
GO
ALTER TABLE [dbo].[Kontaktas]  WITH CHECK ADD  CONSTRAINT [FK_Kontaktas_Darbuotojas] FOREIGN KEY([Darbuotojo_ID])
REFERENCES [dbo].[Darbuotojas] ([Darbuotojo_ID])
GO
ALTER TABLE [dbo].[Kontaktas] CHECK CONSTRAINT [FK_Kontaktas_Darbuotojas]
GO
ALTER TABLE [dbo].[Kontaktas]  WITH CHECK ADD  CONSTRAINT [FK_Kontaktas_Imone] FOREIGN KEY([Imones_ID])
REFERENCES [dbo].[Imone] ([Imones_ID])
GO
ALTER TABLE [dbo].[Kontaktas] CHECK CONSTRAINT [FK_Kontaktas_Imone]
GO
ALTER TABLE [dbo].[Reisas]  WITH CHECK ADD  CONSTRAINT [FK_Reisas_Automobilis] FOREIGN KEY([Automobilio_ID])
REFERENCES [dbo].[Automobilis] ([Automobilio_ID])
GO
ALTER TABLE [dbo].[Reisas] CHECK CONSTRAINT [FK_Reisas_Automobilis]
GO
ALTER TABLE [dbo].[Reisas]  WITH CHECK ADD  CONSTRAINT [FK_Reisas_Darbuotojas] FOREIGN KEY([Vadybininko_ID])
REFERENCES [dbo].[Darbuotojas] ([Darbuotojo_ID])
GO
ALTER TABLE [dbo].[Reisas] CHECK CONSTRAINT [FK_Reisas_Darbuotojas]
GO
ALTER TABLE [dbo].[Reisas]  WITH CHECK ADD  CONSTRAINT [FK_Reisas_Darbuotojas1] FOREIGN KEY([Vairuotojo_1_ID])
REFERENCES [dbo].[Darbuotojas] ([Darbuotojo_ID])
GO
ALTER TABLE [dbo].[Reisas] CHECK CONSTRAINT [FK_Reisas_Darbuotojas1]
GO
ALTER TABLE [dbo].[Reisas]  WITH CHECK ADD  CONSTRAINT [FK_Reisas_Darbuotojas2] FOREIGN KEY([Vairuotojo_2_ID])
REFERENCES [dbo].[Darbuotojas] ([Darbuotojo_ID])
GO
ALTER TABLE [dbo].[Reisas] CHECK CONSTRAINT [FK_Reisas_Darbuotojas2]
GO
ALTER TABLE [dbo].[Reisas]  WITH CHECK ADD  CONSTRAINT [FK_Reisas_Vartotojas] FOREIGN KEY([Kurejo_ID])
REFERENCES [dbo].[Vartotojas] ([Vartotojo_ID])
GO
ALTER TABLE [dbo].[Reisas] CHECK CONSTRAINT [FK_Reisas_Vartotojas]
GO
ALTER TABLE [dbo].[Skola]  WITH CHECK ADD  CONSTRAINT [FK_Skola_Darbuotojas] FOREIGN KEY([Darbuotojo_ID])
REFERENCES [dbo].[Darbuotojas] ([Darbuotojo_ID])
GO
ALTER TABLE [dbo].[Skola] CHECK CONSTRAINT [FK_Skola_Darbuotojas]
GO
ALTER TABLE [dbo].[Skola]  WITH CHECK ADD  CONSTRAINT [FK_Skola_Deklaracija] FOREIGN KEY([Nuorodos_ID])
REFERENCES [dbo].[Deklaracija] ([Deklarcijos_ID])
GO
ALTER TABLE [dbo].[Skola] CHECK CONSTRAINT [FK_Skola_Deklaracija]
GO
ALTER TABLE [dbo].[Skola]  WITH CHECK ADD  CONSTRAINT [FK_Skola_Deklaracija1] FOREIGN KEY([Nuorodos_ID])
REFERENCES [dbo].[Deklaracija] ([Deklarcijos_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Skola] CHECK CONSTRAINT [FK_Skola_Deklaracija1]
GO
ALTER TABLE [dbo].[Skola]  WITH CHECK ADD  CONSTRAINT [FK_Skola_Imone] FOREIGN KEY([Imones_ID])
REFERENCES [dbo].[Imone] ([Imones_ID])
GO
ALTER TABLE [dbo].[Skola] CHECK CONSTRAINT [FK_Skola_Imone]
GO
ALTER TABLE [dbo].[Skola]  WITH CHECK ADD  CONSTRAINT [FK_Skola_Vartotojas] FOREIGN KEY([Kurejo_ID])
REFERENCES [dbo].[Vartotojas] ([Vartotojo_ID])
GO
ALTER TABLE [dbo].[Skola] CHECK CONSTRAINT [FK_Skola_Vartotojas]
GO
ALTER TABLE [dbo].[Skola]  WITH CHECK ADD  CONSTRAINT [FK_Skola_Vartotojas1] FOREIGN KEY([Atlikejo_ID])
REFERENCES [dbo].[Vartotojas] ([Vartotojo_ID])
GO
ALTER TABLE [dbo].[Skola] CHECK CONSTRAINT [FK_Skola_Vartotojas1]
GO
ALTER TABLE [dbo].[Sutartis]  WITH CHECK ADD  CONSTRAINT [FK_Sutartis_Darbuotojas] FOREIGN KEY([Darbuotojo_ID])
REFERENCES [dbo].[Darbuotojas] ([Darbuotojo_ID])
GO
ALTER TABLE [dbo].[Sutartis] CHECK CONSTRAINT [FK_Sutartis_Darbuotojas]
GO
ALTER TABLE [dbo].[Sutartis]  WITH CHECK ADD  CONSTRAINT [FK_Sutartis_Darbuotojas1] FOREIGN KEY([Darbuotojo_ID])
REFERENCES [dbo].[Darbuotojas] ([Darbuotojo_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sutartis] CHECK CONSTRAINT [FK_Sutartis_Darbuotojas1]
GO
ALTER TABLE [dbo].[Sutartis]  WITH CHECK ADD  CONSTRAINT [FK_Sutartis_Imone] FOREIGN KEY([Imones_ID])
REFERENCES [dbo].[Imone] ([Imones_ID])
GO
ALTER TABLE [dbo].[Sutartis] CHECK CONSTRAINT [FK_Sutartis_Imone]
GO
ALTER TABLE [dbo].[Sutartis]  WITH CHECK ADD  CONSTRAINT [FK_Sutartis_Pareigybe] FOREIGN KEY([Pareigybes_ID])
REFERENCES [dbo].[Pareigybe] ([Pareigybes_ID])
GO
ALTER TABLE [dbo].[Sutartis] CHECK CONSTRAINT [FK_Sutartis_Pareigybe]
GO
ALTER TABLE [dbo].[Sutartis]  WITH CHECK ADD  CONSTRAINT [FK_Sutartis_Vartotojas] FOREIGN KEY([Kurejo_ID])
REFERENCES [dbo].[Vartotojas] ([Vartotojo_ID])
GO
ALTER TABLE [dbo].[Sutartis] CHECK CONSTRAINT [FK_Sutartis_Vartotojas]
GO
ALTER TABLE [dbo].[Darbuotojas_auditas]  WITH CHECK ADD CHECK  (([operation]='INS' OR [operation]='DEL'))
GO
ALTER TABLE [dbo].[Salis]  WITH CHECK ADD  CONSTRAINT [CKC_ES_SALIS_SALIS] CHECK  (([ES_salis] IS NULL OR ([ES_salis]=(1) OR [ES_salis]=(0))))
GO
ALTER TABLE [dbo].[Salis] CHECK CONSTRAINT [CKC_ES_SALIS_SALIS]
GO
ALTER TABLE [dbo].[Sutartis]  WITH CHECK ADD  CONSTRAINT [CKC_PAGRINDINE_SUTART_SUTARTIS] CHECK  (([Pagrindine_sutartis] IS NULL OR ([Pagrindine_sutartis]=(1) OR [Pagrindine_sutartis]=(0))))
GO
ALTER TABLE [dbo].[Sutartis] CHECK CONSTRAINT [CKC_PAGRINDINE_SUTART_SUTARTIS]
GO
ALTER TABLE [dbo].[Sutartis]  WITH CHECK ADD  CONSTRAINT [galiojanti_pasirasymo_data] CHECK  (([Sutarties_pasirasymo_data]<=[Sutartis_nuo]))
GO
ALTER TABLE [dbo].[Sutartis] CHECK CONSTRAINT [galiojanti_pasirasymo_data]
GO
/****** Object:  StoredProcedure [dbo].[GautiVairuotojusAktyvius]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GautiVairuotojusAktyvius]
AS
BEGIN
SET NOCOUNT ON

SELECT d.[Darbuotojo_ID],d.[Vardas],d.[Pavarde],d.[Miestas],p.Pareigybes_pavadinimas
FROM [dbo].[Darbuotojas] as d
INNER JOIN [dbo].[Pareigybe] as p on d.Pareigybes_ID=p.Pareigybes_ID
WHERE d.[Darbuotojo_busena]=0 and (d.[Pareigybes_ID]=0 or d.Pareigybes_ID=1)

END
GO
/****** Object:  StoredProcedure [dbo].[GautiVairuotojusAktyvius_suparametru]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GautiVairuotojusAktyvius_suparametru]
(@PID INT)
AS
BEGIN
SET NOCOUNT ON

SELECT d.[Darbuotojo_ID],d.[Vardas],d.[Pavarde],d.[Miestas],p.Pareigybes_pavadinimas
FROM [dbo].[Darbuotojas] as d
INNER JOIN [dbo].[Pareigybe] as p on d.Pareigybes_ID=p.Pareigybes_ID
WHERE d.Darbuotojo_ID=@PID and d.[Darbuotojo_busena]=0 and (d.[Pareigybes_ID]=0 or d.Pareigybes_ID=1)

END
GO
/****** Object:  StoredProcedure [dbo].[Prc_Deklaracija_Delete]    Script Date: 2022-05-06 18:27:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Prc_Deklaracija_Delete]
AS
BEGIN
SET NOCOUNT ON
DELETE FROM [dbo].[Deklaracija]
--atfiltruoti Deklaracijos_iki datas senesnes nei 2 metai
WHERE [Deklaracija_iki] <= DATEADD(yy, -2, Getdate());
END;
GO
USE [master]
GO
ALTER DATABASE [Deklaravimas] SET  READ_WRITE 
GO
