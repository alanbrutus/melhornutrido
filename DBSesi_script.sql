USE [master]
GO
/****** Object:  Database [DBSesi]    Script Date: 08/03/2018 14:29:38 ******/
CREATE DATABASE [DBSesi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'DBSesi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\DBSesi.mdf' , SIZE = 4160KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'DBSesi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS01\MSSQL\DATA\DBSesi_log.ldf' , SIZE = 1600KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [DBSesi] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DBSesi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DBSesi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DBSesi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DBSesi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DBSesi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DBSesi] SET ARITHABORT OFF 
GO
ALTER DATABASE [DBSesi] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [DBSesi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DBSesi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DBSesi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DBSesi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DBSesi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DBSesi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DBSesi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DBSesi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DBSesi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [DBSesi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DBSesi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DBSesi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DBSesi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DBSesi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DBSesi] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DBSesi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DBSesi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [DBSesi] SET  MULTI_USER 
GO
ALTER DATABASE [DBSesi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DBSesi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DBSesi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DBSesi] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [DBSesi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [DBSesi] SET QUERY_STORE = OFF
GO
USE [DBSesi]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [DBSesi]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 08/03/2018 14:29:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria_Noticias]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria_Noticias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Cat_Noticia] [int] NOT NULL,
	[Id_Noticia] [int] NOT NULL,
 CONSTRAINT [PK_Categoria_Noticias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categoria_Videos]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categoria_Videos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Cat_Video] [int] NOT NULL,
	[Id_Videos] [int] NOT NULL,
 CONSTRAINT [PK_Categoria_Videos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias_Noticias]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias_Noticias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Categorias_Noticias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categorias_Videos]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorias_Videos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Imagem_Cat_Video] [nvarchar](100) NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Categorias_Videos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cidade]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cidade](
	[cidade_id] [int] IDENTITY(1,1) NOT NULL,
	[cidade_descricao] [varchar](50) NOT NULL,
	[cidade_uf] [char](2) NOT NULL,
 CONSTRAINT [pk_cidade] PRIMARY KEY CLUSTERED 
(
	[cidade_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comentario_Postagem]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comentario_Postagem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Data_Criacao] [datetime2](7) NOT NULL,
	[Descricao] [nvarchar](100) NOT NULL,
	[Id_Postagem] [int] NOT NULL,
	[Id_Usuario] [int] NOT NULL,
 CONSTRAINT [PK_Comentario_Postagem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[device]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[device](
	[device_id] [int] IDENTITY(1,1) NOT NULL,
	[device_serialnumber] [varchar](50) NOT NULL,
 CONSTRAINT [pk_device] PRIMARY KEY CLUSTERED 
(
	[device_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[device_pj]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[device_pj](
	[device_pj_id] [int] IDENTITY(1,1) NOT NULL,
	[pj_id] [int] NOT NULL,
	[device_id] [int] NOT NULL,
	[device_pj_dt_instalation] [datetime] NOT NULL,
	[device_pj_dt_desinstalation] [datetime] NULL,
	[device_pj_status] [bit] NULL,
 CONSTRAINT [pk_device_pj] PRIMARY KEY CLUSTERED 
(
	[device_pj_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[endereco]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[endereco](
	[endereco_id] [int] IDENTITY(1,1) NOT NULL,
	[endereco_bairro] [varchar](50) NOT NULL,
	[cidade_id] [int] NOT NULL,
 CONSTRAINT [pk_endereco] PRIMARY KEY CLUSTERED 
(
	[endereco_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Eventos]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Eventos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Data_Criacao] [datetime2](7) NOT NULL,
	[Descricao] [nvarchar](100) NOT NULL,
	[Id_Usuario] [int] NOT NULL,
	[Localizacao] [nvarchar](100) NOT NULL,
	[Titulo] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Eventos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Forum_Postagem]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Forum_Postagem](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Data_Criacao] [datetime2](7) NOT NULL,
	[Titulo] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Forum_Postagem] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[imagens]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[imagens](
	[imagens_id] [bigint] IDENTITY(1,1) NOT NULL,
	[referencia_id] [int] NOT NULL,
	[referencia] [varchar](20) NOT NULL,
	[url_image] [varchar](100) NOT NULL,
 CONSTRAINT [pk_imagens] PRIMARY KEY CLUSTERED 
(
	[imagens_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[links]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[links](
	[link_id] [bigint] IDENTITY(1,1) NOT NULL,
	[referencia_id] [int] NOT NULL,
	[referencia] [varchar](20) NOT NULL,
	[link] [varchar](100) NOT NULL,
 CONSTRAINT [pk_links] PRIMARY KEY CLUSTERED 
(
	[link_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Noticias]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Noticias](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Data_Criacao] [datetime2](7) NOT NULL,
	[Descricao] [nvarchar](100) NOT NULL,
	[Titulo] [nvarchar](100) NOT NULL,
	[Id_Usuario] [int] NOT NULL,
	[url_video] [varchar](100) NULL,
	[headline] [varchar](256) NOT NULL,
 CONSTRAINT [PK_Noticias] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissoes]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissoes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descricao] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Permissoes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pessoa_juridica]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pessoa_juridica](
	[pj_id] [int] IDENTITY(1,1) NOT NULL,
	[pj_razaosocial] [varchar](50) NOT NULL,
	[pj_fantasia] [varchar](50) NOT NULL,
	[pj_cnpj] [bigint] NOT NULL,
	[pj_endereco] [varchar](80) NOT NULL,
	[pj_numero] [varchar](15) NOT NULL,
	[pj_complemento] [varchar](80) NULL,
	[endereco_id] [int] NOT NULL,
	[pj_cep] [int] NOT NULL,
 CONSTRAINT [pk_pessoa_juridica] PRIMARY KEY CLUSTERED 
(
	[pj_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pj_contato]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pj_contato](
	[pj_contato_id] [int] IDENTITY(1,1) NOT NULL,
	[pj_id] [int] NOT NULL,
	[pj_contato_nome] [varchar](80) NOT NULL,
	[pj_contato_ddd] [int] NULL,
	[pj_contato_fone] [int] NULL,
	[pj_contato_email] [varchar](80) NULL,
 CONSTRAINT [pk_pj_contato] PRIMARY KEY CLUSTERED 
(
	[pj_contato_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pj_restaurante]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pj_restaurante](
	[pj_id_restaurante] [int] IDENTITY(1,1) NOT NULL,
	[pj_id] [int] NOT NULL,
 CONSTRAINT [pk_pj_restaurante] PRIMARY KEY CLUSTERED 
(
	[pj_id_restaurante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Postagem_Tags]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Postagem_Tags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Postagem] [int] NOT NULL,
	[Id_Tag] [int] NOT NULL,
 CONSTRAINT [PK_Postagem_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quest_answer]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quest_answer](
	[quest_answer_id] [int] IDENTITY(1,1) NOT NULL,
	[quest_question_id] [int] NOT NULL,
	[quest_answer_description] [varchar](250) NOT NULL,
	[quest_answer_order] [int] NOT NULL,
	[quest_answer_point] [int] NOT NULL,
 CONSTRAINT [pk_quest_answer] PRIMARY KEY CLUSTERED 
(
	[quest_answer_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quest_pj_dev_get]    Script Date: 08/03/2018 14:29:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quest_pj_dev_get](
	[questionary_id] [int] NOT NULL,
	[pj_id_restaurante] [int] NOT NULL,
	[device_id] [int] NOT NULL,
	[quest_pj_dev_get_dt_get] [datetime] NOT NULL,
 CONSTRAINT [pk_quest_pj_dev_get] PRIMARY KEY CLUSTERED 
(
	[questionary_id] ASC,
	[pj_id_restaurante] ASC,
	[device_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quest_question]    Script Date: 08/03/2018 14:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quest_question](
	[quest_question_id] [int] IDENTITY(1,1) NOT NULL,
	[questionary_id] [int] NOT NULL,
	[quest_question_description] [varchar](250) NOT NULL,
	[quest_question_order] [int] NOT NULL,
 CONSTRAINT [pk_quest_question] PRIMARY KEY CLUSTERED 
(
	[quest_question_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[quest_response_session]    Script Date: 08/03/2018 14:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[quest_response_session](
	[quest_response_session_id] [int] IDENTITY(1,1) NOT NULL,
	[response_session_id] [int] NOT NULL,
	[quest_answer_id] [int] NOT NULL,
 CONSTRAINT [pk_quest_response_session] PRIMARY KEY CLUSTERED 
(
	[quest_response_session_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questionary]    Script Date: 08/03/2018 14:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questionary](
	[questionary_id] [int] IDENTITY(1,1) NOT NULL,
	[questionary_name] [varchar](250) NOT NULL,
	[questionary_dt_start] [datetime] NOT NULL,
	[questionary_dt_finish] [datetime] NOT NULL,
	[questionary_status] [bit] NULL,
 CONSTRAINT [pk_questionary] PRIMARY KEY CLUSTERED 
(
	[questionary_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[questionary_pj]    Script Date: 08/03/2018 14:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[questionary_pj](
	[questionary_id] [int] NOT NULL,
	[pj_id_restaurante] [int] NOT NULL,
	[quest_pj_dt_insert] [datetime] NOT NULL,
 CONSTRAINT [pk_questionary_pj] PRIMARY KEY CLUSTERED 
(
	[questionary_id] ASC,
	[pj_id_restaurante] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[response_session]    Script Date: 08/03/2018 14:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[response_session](
	[response_session_id] [int] IDENTITY(1,1) NOT NULL,
	[device_pj_id] [int] NOT NULL,
	[response_session_dt_start] [datetime] NOT NULL,
	[response_session_dt_finish] [datetime] NULL,
 CONSTRAINT [pk_response_session] PRIMARY KEY CLUSTERED 
(
	[response_session_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags_Forum]    Script Date: 08/03/2018 14:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags_Forum](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Tags_Forum] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Unidades_Sesi]    Script Date: 08/03/2018 14:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Unidades_Sesi](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo_Unidade] [nvarchar](100) NOT NULL,
	[Localizacao] [nvarchar](100) NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[Telefone] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Unidades_Sesi] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 08/03/2018 14:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Nome] [nvarchar](100) NOT NULL,
	[Senha] [nvarchar](100) NOT NULL,
	[Ativo] [int] NOT NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario_Permissao]    Script Date: 08/03/2018 14:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario_Permissao](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Id_Permissoes] [int] NOT NULL,
	[Id_Usuario] [int] NOT NULL,
 CONSTRAINT [PK_Usuario_Permissao] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 08/03/2018 14:29:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Videos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Data_Criacao] [datetime2](7) NOT NULL,
	[Descricao] [nvarchar](100) NOT NULL,
	[Titulo] [nvarchar](100) NOT NULL,
	[URL] [nvarchar](100) NOT NULL,
	[Id_Usuario] [int] NOT NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [IX_Categoria_Noticias_Id_Cat_Noticia]    Script Date: 08/03/2018 14:29:40 ******/
CREATE NONCLUSTERED INDEX [IX_Categoria_Noticias_Id_Cat_Noticia] ON [dbo].[Categoria_Noticias]
(
	[Id_Cat_Noticia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Categoria_Noticias_Id_Noticia]    Script Date: 08/03/2018 14:29:40 ******/
CREATE NONCLUSTERED INDEX [IX_Categoria_Noticias_Id_Noticia] ON [dbo].[Categoria_Noticias]
(
	[Id_Noticia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Categoria_Videos_Id_Cat_Video]    Script Date: 08/03/2018 14:29:40 ******/
CREATE NONCLUSTERED INDEX [IX_Categoria_Videos_Id_Cat_Video] ON [dbo].[Categoria_Videos]
(
	[Id_Cat_Video] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Categoria_Videos_Id_Videos]    Script Date: 08/03/2018 14:29:40 ******/
CREATE NONCLUSTERED INDEX [IX_Categoria_Videos_Id_Videos] ON [dbo].[Categoria_Videos]
(
	[Id_Videos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comentario_Postagem_Id_Postagem]    Script Date: 08/03/2018 14:29:40 ******/
CREATE NONCLUSTERED INDEX [IX_Comentario_Postagem_Id_Postagem] ON [dbo].[Comentario_Postagem]
(
	[Id_Postagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comentario_Postagem_Id_Usuario]    Script Date: 08/03/2018 14:29:40 ******/
CREATE NONCLUSTERED INDEX [IX_Comentario_Postagem_Id_Usuario] ON [dbo].[Comentario_Postagem]
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Eventos_Id_Usuario]    Script Date: 08/03/2018 14:29:40 ******/
CREATE NONCLUSTERED INDEX [IX_Eventos_Id_Usuario] ON [dbo].[Eventos]
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Noticias_Id_Usuario]    Script Date: 08/03/2018 14:29:40 ******/
CREATE NONCLUSTERED INDEX [IX_Noticias_Id_Usuario] ON [dbo].[Noticias]
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Postagem_Tags_Id_Postagem]    Script Date: 08/03/2018 14:29:40 ******/
CREATE NONCLUSTERED INDEX [IX_Postagem_Tags_Id_Postagem] ON [dbo].[Postagem_Tags]
(
	[Id_Postagem] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Postagem_Tags_Id_Tag]    Script Date: 08/03/2018 14:29:40 ******/
CREATE NONCLUSTERED INDEX [IX_Postagem_Tags_Id_Tag] ON [dbo].[Postagem_Tags]
(
	[Id_Tag] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Usuario_Permissao_Id_Permissoes]    Script Date: 08/03/2018 14:29:40 ******/
CREATE NONCLUSTERED INDEX [IX_Usuario_Permissao_Id_Permissoes] ON [dbo].[Usuario_Permissao]
(
	[Id_Permissoes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Usuario_Permissao_Id_Usuario]    Script Date: 08/03/2018 14:29:40 ******/
CREATE NONCLUSTERED INDEX [IX_Usuario_Permissao_Id_Usuario] ON [dbo].[Usuario_Permissao]
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Videos_Id_Usuario]    Script Date: 08/03/2018 14:29:40 ******/
CREATE NONCLUSTERED INDEX [IX_Videos_Id_Usuario] ON [dbo].[Videos]
(
	[Id_Usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[device_pj] ADD  DEFAULT ((0)) FOR [device_pj_status]
GO
ALTER TABLE [dbo].[Noticias] ADD  DEFAULT ((0)) FOR [Id_Usuario]
GO
ALTER TABLE [dbo].[quest_answer] ADD  DEFAULT ((0)) FOR [quest_answer_point]
GO
ALTER TABLE [dbo].[questionary] ADD  DEFAULT ((0)) FOR [questionary_status]
GO
ALTER TABLE [dbo].[Videos] ADD  DEFAULT ((0)) FOR [Id_Usuario]
GO
ALTER TABLE [dbo].[Categoria_Noticias]  WITH CHECK ADD  CONSTRAINT [FK_Categoria_Noticias_Categorias_Noticias_Id_Cat_Noticia] FOREIGN KEY([Id_Cat_Noticia])
REFERENCES [dbo].[Categorias_Noticias] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Categoria_Noticias] CHECK CONSTRAINT [FK_Categoria_Noticias_Categorias_Noticias_Id_Cat_Noticia]
GO
ALTER TABLE [dbo].[Categoria_Noticias]  WITH CHECK ADD  CONSTRAINT [FK_Categoria_Noticias_Noticias_Id_Noticia] FOREIGN KEY([Id_Noticia])
REFERENCES [dbo].[Noticias] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Categoria_Noticias] CHECK CONSTRAINT [FK_Categoria_Noticias_Noticias_Id_Noticia]
GO
ALTER TABLE [dbo].[Categoria_Videos]  WITH CHECK ADD  CONSTRAINT [FK_Categoria_Videos_Categorias_Videos_Id_Cat_Video] FOREIGN KEY([Id_Cat_Video])
REFERENCES [dbo].[Categorias_Videos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Categoria_Videos] CHECK CONSTRAINT [FK_Categoria_Videos_Categorias_Videos_Id_Cat_Video]
GO
ALTER TABLE [dbo].[Categoria_Videos]  WITH CHECK ADD  CONSTRAINT [FK_Categoria_Videos_Videos_Id_Videos] FOREIGN KEY([Id_Videos])
REFERENCES [dbo].[Videos] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Categoria_Videos] CHECK CONSTRAINT [FK_Categoria_Videos_Videos_Id_Videos]
GO
ALTER TABLE [dbo].[Comentario_Postagem]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_Postagem_Forum_Postagem_Id_Postagem] FOREIGN KEY([Id_Postagem])
REFERENCES [dbo].[Forum_Postagem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comentario_Postagem] CHECK CONSTRAINT [FK_Comentario_Postagem_Forum_Postagem_Id_Postagem]
GO
ALTER TABLE [dbo].[Comentario_Postagem]  WITH CHECK ADD  CONSTRAINT [FK_Comentario_Postagem_Usuario_Id_Usuario] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comentario_Postagem] CHECK CONSTRAINT [FK_Comentario_Postagem_Usuario_Id_Usuario]
GO
ALTER TABLE [dbo].[device_pj]  WITH CHECK ADD  CONSTRAINT [fk_device] FOREIGN KEY([device_id])
REFERENCES [dbo].[device] ([device_id])
GO
ALTER TABLE [dbo].[device_pj] CHECK CONSTRAINT [fk_device]
GO
ALTER TABLE [dbo].[device_pj]  WITH CHECK ADD  CONSTRAINT [fk_pj_dev] FOREIGN KEY([pj_id])
REFERENCES [dbo].[pessoa_juridica] ([pj_id])
GO
ALTER TABLE [dbo].[device_pj] CHECK CONSTRAINT [fk_pj_dev]
GO
ALTER TABLE [dbo].[endereco]  WITH CHECK ADD  CONSTRAINT [fk_cidade] FOREIGN KEY([cidade_id])
REFERENCES [dbo].[cidade] ([cidade_id])
GO
ALTER TABLE [dbo].[endereco] CHECK CONSTRAINT [fk_cidade]
GO
ALTER TABLE [dbo].[Eventos]  WITH CHECK ADD  CONSTRAINT [FK_Eventos_Usuario_Id_Usuario] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Eventos] CHECK CONSTRAINT [FK_Eventos_Usuario_Id_Usuario]
GO
ALTER TABLE [dbo].[Noticias]  WITH CHECK ADD  CONSTRAINT [FK_Noticias_Usuario_Id_Usuario] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Noticias] CHECK CONSTRAINT [FK_Noticias_Usuario_Id_Usuario]
GO
ALTER TABLE [dbo].[pessoa_juridica]  WITH CHECK ADD  CONSTRAINT [fk_endereco] FOREIGN KEY([endereco_id])
REFERENCES [dbo].[endereco] ([endereco_id])
GO
ALTER TABLE [dbo].[pessoa_juridica] CHECK CONSTRAINT [fk_endereco]
GO
ALTER TABLE [dbo].[pj_contato]  WITH CHECK ADD  CONSTRAINT [fk_pj] FOREIGN KEY([pj_id])
REFERENCES [dbo].[pessoa_juridica] ([pj_id])
GO
ALTER TABLE [dbo].[pj_contato] CHECK CONSTRAINT [fk_pj]
GO
ALTER TABLE [dbo].[pj_restaurante]  WITH CHECK ADD  CONSTRAINT [fk_pj_rest] FOREIGN KEY([pj_id])
REFERENCES [dbo].[pessoa_juridica] ([pj_id])
GO
ALTER TABLE [dbo].[pj_restaurante] CHECK CONSTRAINT [fk_pj_rest]
GO
ALTER TABLE [dbo].[Postagem_Tags]  WITH CHECK ADD  CONSTRAINT [FK_Postagem_Tags_Forum_Postagem_Id_Postagem] FOREIGN KEY([Id_Postagem])
REFERENCES [dbo].[Forum_Postagem] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Postagem_Tags] CHECK CONSTRAINT [FK_Postagem_Tags_Forum_Postagem_Id_Postagem]
GO
ALTER TABLE [dbo].[Postagem_Tags]  WITH CHECK ADD  CONSTRAINT [FK_Postagem_Tags_Tags_Forum_Id_Tag] FOREIGN KEY([Id_Tag])
REFERENCES [dbo].[Tags_Forum] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Postagem_Tags] CHECK CONSTRAINT [FK_Postagem_Tags_Tags_Forum_Id_Tag]
GO
ALTER TABLE [dbo].[quest_answer]  WITH CHECK ADD  CONSTRAINT [fk_quest_quest] FOREIGN KEY([quest_question_id])
REFERENCES [dbo].[quest_question] ([quest_question_id])
GO
ALTER TABLE [dbo].[quest_answer] CHECK CONSTRAINT [fk_quest_quest]
GO
ALTER TABLE [dbo].[quest_pj_dev_get]  WITH CHECK ADD  CONSTRAINT [fk_device_quest_pj_dev] FOREIGN KEY([device_id])
REFERENCES [dbo].[device] ([device_id])
GO
ALTER TABLE [dbo].[quest_pj_dev_get] CHECK CONSTRAINT [fk_device_quest_pj_dev]
GO
ALTER TABLE [dbo].[quest_pj_dev_get]  WITH CHECK ADD  CONSTRAINT [fk_pj_restaurante_quest_pj_dev] FOREIGN KEY([pj_id_restaurante])
REFERENCES [dbo].[pj_restaurante] ([pj_id_restaurante])
GO
ALTER TABLE [dbo].[quest_pj_dev_get] CHECK CONSTRAINT [fk_pj_restaurante_quest_pj_dev]
GO
ALTER TABLE [dbo].[quest_pj_dev_get]  WITH CHECK ADD  CONSTRAINT [fk_questionary_quest_pj_dev] FOREIGN KEY([questionary_id])
REFERENCES [dbo].[questionary] ([questionary_id])
GO
ALTER TABLE [dbo].[quest_pj_dev_get] CHECK CONSTRAINT [fk_questionary_quest_pj_dev]
GO
ALTER TABLE [dbo].[quest_question]  WITH CHECK ADD  CONSTRAINT [fk_quest_question] FOREIGN KEY([questionary_id])
REFERENCES [dbo].[questionary] ([questionary_id])
GO
ALTER TABLE [dbo].[quest_question] CHECK CONSTRAINT [fk_quest_question]
GO
ALTER TABLE [dbo].[quest_response_session]  WITH CHECK ADD  CONSTRAINT [fk_quest_answer_q] FOREIGN KEY([quest_answer_id])
REFERENCES [dbo].[quest_answer] ([quest_answer_id])
GO
ALTER TABLE [dbo].[quest_response_session] CHECK CONSTRAINT [fk_quest_answer_q]
GO
ALTER TABLE [dbo].[quest_response_session]  WITH CHECK ADD  CONSTRAINT [fk_response_session] FOREIGN KEY([response_session_id])
REFERENCES [dbo].[response_session] ([response_session_id])
GO
ALTER TABLE [dbo].[quest_response_session] CHECK CONSTRAINT [fk_response_session]
GO
ALTER TABLE [dbo].[questionary_pj]  WITH CHECK ADD  CONSTRAINT [fk_pj_restaurante] FOREIGN KEY([pj_id_restaurante])
REFERENCES [dbo].[pj_restaurante] ([pj_id_restaurante])
GO
ALTER TABLE [dbo].[questionary_pj] CHECK CONSTRAINT [fk_pj_restaurante]
GO
ALTER TABLE [dbo].[questionary_pj]  WITH CHECK ADD  CONSTRAINT [fk_quest_quest_pj] FOREIGN KEY([questionary_id])
REFERENCES [dbo].[questionary] ([questionary_id])
GO
ALTER TABLE [dbo].[questionary_pj] CHECK CONSTRAINT [fk_quest_quest_pj]
GO
ALTER TABLE [dbo].[response_session]  WITH CHECK ADD  CONSTRAINT [fk_device_pj] FOREIGN KEY([device_pj_id])
REFERENCES [dbo].[device_pj] ([device_pj_id])
GO
ALTER TABLE [dbo].[response_session] CHECK CONSTRAINT [fk_device_pj]
GO
ALTER TABLE [dbo].[Usuario_Permissao]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Permissao_Permissoes_Id_Permissoes] FOREIGN KEY([Id_Permissoes])
REFERENCES [dbo].[Permissoes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuario_Permissao] CHECK CONSTRAINT [FK_Usuario_Permissao_Permissoes_Id_Permissoes]
GO
ALTER TABLE [dbo].[Usuario_Permissao]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_Permissao_Usuario_Id_Usuario] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Usuario_Permissao] CHECK CONSTRAINT [FK_Usuario_Permissao_Usuario_Id_Usuario]
GO
ALTER TABLE [dbo].[Videos]  WITH CHECK ADD  CONSTRAINT [FK_Videos_Usuario_Id_Usuario] FOREIGN KEY([Id_Usuario])
REFERENCES [dbo].[Usuario] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Videos] CHECK CONSTRAINT [FK_Videos_Usuario_Id_Usuario]
GO
USE [master]
GO
ALTER DATABASE [DBSesi] SET  READ_WRITE 
GO
