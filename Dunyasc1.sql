
ALTER DATABASE [DunyaTarihiDb] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [DunyaTarihiDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [DunyaTarihiDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [DunyaTarihiDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [DunyaTarihiDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [DunyaTarihiDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [DunyaTarihiDb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [DunyaTarihiDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET RECOVERY FULL 
GO
ALTER DATABASE [DunyaTarihiDb] SET  MULTI_USER 
GO
ALTER DATABASE [DunyaTarihiDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [DunyaTarihiDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [DunyaTarihiDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [DunyaTarihiDb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [DunyaTarihiDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'DunyaTarihiDb', N'ON'
GO
ALTER DATABASE [DunyaTarihiDb] SET QUERY_STORE = OFF
GO
USE [DunyaTarihiDb]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 23.06.2019 23:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 23.06.2019 23:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 23.06.2019 23:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 23.06.2019 23:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 23.06.2019 23:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 23.06.2019 23:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Durumlar]    Script Date: 23.06.2019 23:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Durumlar](
	[DurumID] [int] IDENTITY(1,1) NOT NULL,
	[Durumu] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_dbo.Durumlar] PRIMARY KEY CLUSTERED 
(
	[DurumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kategori]    Script Date: 23.06.2019 23:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategori](
	[KategoriID] [int] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_dbo.Kategori] PRIMARY KEY CLUSTERED 
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Kitaplik]    Script Date: 23.06.2019 23:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kitaplik](
	[KitaplikID] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciID] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.Kitaplik] PRIMARY KEY CLUSTERED 
(
	[KitaplikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KitaplikTarihiOlay]    Script Date: 23.06.2019 23:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KitaplikTarihiOlay](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TarihiOlayID] [int] NOT NULL,
	[KitaplikID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.KitaplikTarihiOlay] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TarihiOlaylar]    Script Date: 23.06.2019 23:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TarihiOlaylar](
	[TarihiOlayID] [int] IDENTITY(1,1) NOT NULL,
	[Baslik] [nvarchar](50) NOT NULL,
	[KategoriID] [int] NOT NULL,
	[Icerik] [nvarchar](2000) NOT NULL,
	[BaslangicTarihi] [datetime2](7) NOT NULL,
	[BitisTarihi] [datetime2](7) NULL,
	[YazarID] [nvarchar](128) NOT NULL,
	[DurumID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TarihiOlaylar] PRIMARY KEY CLUSTERED 
(
	[TarihiOlayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TarihiOlayUlke]    Script Date: 23.06.2019 23:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TarihiOlayUlke](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UlkeID] [int] NOT NULL,
	[TarihiOlayID] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TarihiOlayUlke] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ulkeler]    Script Date: 23.06.2019 23:31:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ulkeler](
	[UlkeID] [int] IDENTITY(1,1) NOT NULL,
	[UlkeAd] [nvarchar](50) NOT NULL,
	[UlkeKod] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Ulkeler] PRIMARY KEY CLUSTERED 
(
	[UlkeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'201906221642104_AutomaticMigration', N'DAL.Migrations.Configuration', 0x1F8B0800000000000400ED1D6B6FDCB8F17B81FE07613FB585CF1BDB4D7A0DD677D8B3E3D648620759E7D07E0A64895E0BD14A7B7AE4EC16FD65FDD09FD4BF50524FBE1F12F5D8A038E010AFC8E170389C19CE9033FFFDF77F563F3EED42E72B48D2208ECE1727C72F160E88BCD80FA2EDF922CF1EBEFB7EF1E30FBFFDCDEA8DBF7B727EAEDB9DA176B067949E2F1EB36CFF7AB94CBD47B073D3E35DE025711A3F64C75EBC5BBA7EBC3C7DF1E2CFCB9393258020161096E3AC3EE65116EC40F107FCF3228E3CB0CF72377C1FFB204CABDFE1974D01D5B9717720DDBB1E385F5CAEDF2D9C7518B870E80D081F168E1B4571E66610B1D79F52B0C99238DA6EF6F00737BC7BDE03D8EEC10D535021FCBA6DAE8BFB8B5384FBB2ED5883F2F2348B7786004FCE2A622CE9EE9D48BA688805C9F50692357B46B32E4806A99527F96EE1D023BDBE0813D40A91F36E7D5CB43A72D0BFD747CD2A436640FF1D39177998E509388F409E256E78E47CC8EFC3C07B0B9EEFE22F203A8FF230C4D18088C06FC40FF0A70F49BC0749F6FC113CE0C85D5F2E9C25D97949F76EFAD21DCB395C47D9D9E9C2B98168B8F72168D61B9BEF268B13F0171081C4CD80FFC1CD3290C0E5BAF64141310605DE80793D1E6431B83D16CE7BF7E91D88B6D9E3F9E225DC0F57C113F0EB1F2A143E4501DC4CB04F96E480832235EC8DFB35D816185308DCB949F018DC86EE73E8260BE723088B56E963B02FB7C171DBE273B5E85749BCFB188744EFF2DB67F8C31664703EB1A0C126CE138FC26FB56CD94BCA742D3425E7B54DC767BF76EC2E3C48F61E8B117F72D330F8323C2352C3BE85C86EE324504F550EE7DA0389147D28D8069900A29B1B6D03AF5CB61A834B38AF3BA888CCE10559908A60C9BBFEDDFD879BB484E410E1E4F4FB2168A029357545D27ABF87BBB0F802D5AE522831CDB9E2896AD5C8218EA0A29BD6324D17FF4A4AF615A5120C4959AB8B57BDD754A8B5EDB8D8D59F6508366D8C710C321752FF8B5A2DB12D3FE3EAA1455DDA905158F2D63CEDA5A75D3F855F40A86466D44A300D612389CEA55BF652BECC3E536860AAFDF86AF8DA3757BEA8CFD8E2F3CDCE0D4299EA7AF94A6B588D51E079E8214876A099E54F3164193732C6F9839BA6BFC689FF57377D94A00EFF6901F50DF0F20432E3267377FBC147FBF01847E026DFDD231E1F6F2C6B4B73F76B7CE57AD01A7C13A15EBDE1BD8BBD2F719EBD897C64887CCA3C53BBA40160059DB5E78134BD82CC0CFC8B181EF7FB198E4834A17F59D87F9D0D9E8BD00D76295735D0B648DDB4D50BFC168C721634EBAA9F555A59669589DA0875B1D078D3C5FA5DBC0D223D02D74DC5042E5B28095C3533253002A68769D5528C68D1408967D9CA144D23B741370B5DE24AD0E1076DBBA63E212348C5AE905936EF1B8FD93ADDDF80ECB8EE7D5CC2BD4A204CA818BF1C33608F1CEDCEAD9174AA6B249D9DDC3F9C7DFFF295EB9FBDFA23387B39BEC134BC8F0291720A03AD583E34E8E0F64031D2CF6E98DB1E4A7B37D4325769DED70DC7B7EBEB91BB38D7F0BE63B1ED5B041A2E4D308A6FA6975BA597FAA6358D52CF8FE21468195AEA126890D57008346D7BE91D16B0F69E9BD2B9DD65D78DB9DB4CDCE78A7DAB2D2B4C197928DE15ED40199F9B5B7C43BAE33466C0F17CF5B6FB0A63DDBEDD57809DBFDD57A0097FFE1AF848D42FD53DEAC610BC56FBDA7233151C1466631B7EC434C71E7C1C6BB7D376417BD3FE6E4150E7BF59F8ACCC6D8A26D485EBA73AE7D4F8CE84E3DA3894CA2CAA1A4E7014C1C2D7C64711EDD0B7C5A34835E65AB6CA6773BA72A21B8C94788B988065CFBB2728AA6670FF0435FFBF99CEC8384895BE067A0F53BFAB99DB33542B0E998B82BABA78974CA9C6B86C27C4B5F89F02CB1AD5EEA6B7D60E9A66DFD47C69ACB3B5F8D9EEFE914AF161EE6BA161DFC6B2713B3A42ED5EA1D0E172C5B5096227F4B298ED5BCB8761291FCAFD8BA9C3BFC8DCE787FCF0F5FE5C356B999AFDCA486E4E1313C1BD4ED3D80B0AACF84EE43A1E4DCEF44DE43B7AC1E992E69CE8265C01C8A101FA0DE205977E41F3DB6D7409A541069CB557DE90BF7053CFF559BAC3B9F986F835A2A1C58F13252431FC033330DC092041BD5C74EF2685FB2C883276DB049117ECDD508B62546FCD6D8788D08C437FB9047B10A1C96991440701E10979D98C45AD908A52AB25C6897206154630442CA00E67B44CD0FA63556BAF019FC364636E824EDCA99ACC08FCA95A2F1D148888DCA46CCA73F6AB3849EAF96799153FA398B3AD3444A6DE192776A4A206365AEB2E8C1C776241C942F4C7661A26C498C580337827DC01199177F7B91D4E3CCC7CE4A774323ABC237B62D49797D9D5B481D108FC2CB8CBA76BFCD117FBE6669C52370A05C66915CA1CC53825293681714A9264F6C629FF0AA7EEFA53F739E7C69EE44552017796BE9051989320D704BC49D063F6AC29B9AE2B62009DD7753A6A59A6FD75EE071FD0F9493D9D111855BD6E3A4834AF4DA766D7F225A5060351CF2A2DB226F5F6BD855CBDF29C311B12A8EBACBB20B742570E2416A5E7F8E3F25D1399D66010F6CDAC45EE6363E0D8D9AB099FCF9807E909681D9E85372FBA7222BD46FDB118951FE978B49A7184C1691E6F9611B52EFC297CAE7C184776E544463DAE2B57EF408EEABC78AD262B91571406E055323ADC0EC0033B3BFEC491D73A7470EF3BF4E1497C7DFA6130021F7222AC222E91855BD9C32EEFA03BD0415C12E41DFF142EA6D208271B31257406E75FD71D8411CB703BEC93C11E20A95FFFC1BFC153C6B92B02E7525D1749ABEB06343320781B90E1467271BBB20DEC93471246189200A83B9A0C145C632B4055F7161810CC615D018789C0F38072C2F40AB0C48B76065E1BD7D204A3221C2F186230F1FA79BA74E2950BD8006CF5965C0AB5141A2A32540671714F8B9D7C731AD166BFE6D29784054BC5AC62432120ADEE2A0A71A983EDFE169228A503D6589EFC81164FDAD76D9A39359B921175DA57633058BC8D49AB2F92121A5412BF4465E9A477E7C3E14515859E4B6C7E848490504C79D34345FF1E64E23E1A14534A79ED803B31D9C5030EBD2851A84139D96503BD05B143425C386B115174EE56CD9273FAB64D48CEC91B1B420ABA033145E954D4C28D17AC950A242A5CDB4BB851A1558170AB27639D4A95725113891330D488C959211119DE1350A89A486F0249A2511C2AE9C6AE4CA357BAFBC4346235801E60E22172327162267A5193BE2421232518B4F6C4629316ADC1292507DF95AFEDCCEF4B14C6818FEB00DCA0B6481AE6F9928C4052DFB2A177994BACC638D72298C8A33CA05EE3F92BD52463DD9ADA8E4D5B64229C99B8E0E183EA401ADE230596322A479BAEAB0D9B0257D9E87AC62C29B0FAE544E3CA69BEAD96658981EA87D552508B60F5DEDDEF83688BD526A87E71366561828BEF36E609FC77258CA547D099763C35236571E26E01F51579A47C7015246976E966EEBD8B5EB55CF83B4EB3D271253842D7A350BE2976DDEAB375DD01FDBBEAB47E77CC555A2DB9AEE00C76C81758BCACA3550BDBCF4145205C8888289BF5451CE6BB48117556C0C93960721E94D5929A06E38464C8C3788849726B2D0629274D5744AC12349645D659445332728553561ED31243ACF3DEE3B0EADFF4A1E071601C922C3E2C865627B3C721D5BF99CD8CC84C4F4F91F8680017CF504FC0C43FE8C36B2E12E1B084B78BC4704CF7ED443B4EA4FBE43B4D71AED1D86E4A08426EF4294EE48448C4BDABE4D63880EA274318587E640618F64D1F2A99C21A87497ED18748E5A9C641529F0CB0C4B3511348E21F3AC1135094DF427F0436FF3421A799AFFA903999A871D09CCF1D607370A6BFE943E524ABC601733EEBC36E3357E320DB5F6723F138F10153F1C786F5CC05A0068C6144607DAF9B5E26332858125A1C10F6B321AC2ACD2C03ACFA7D36EC837BFB4DF94614DCD060177157A11188BDE7238C40C93B3F0934FC8D2A014EF67875F255EA77A0E044C7BBAF5C9703064D6CB335B37F3CE9C6533310F4C2708EBEA02FAF31F413F40218622B80C837491A01D224996298441249C2D09225D114C333532733600551D04A9F138ACB15FD18810F6258955D5F28C3A1882E994D27B8B10083B1B816C44D7484B4B0EB383E163C13220FDA7A4E6BC44600BA7BEA783109236F1D1FC0300AB5BE1B4CEC43C17D613194EE6A792A1F51C755EEB8B6662B6A674DEAFC753414FEBE934129D2D1D1608A1F67B39EFD34604FED67A6F9FA1D75597FC424BE08262A473769466FA27354146E5545C4D465C3991059D964E1D4E6DDF962F39C6660778C1A1C6F7E092FC20020574FDDE03D3CCD3D80342B33EF2D4E5F9C9C5285C8E753147C99A63E915753BF32F875E483A7F3C53F9D7F4D59D23B409457E6DEEC5200B7A9E21D7D7513EF115D3BA0D271DA498B8D5FDAB04C64993AEC56B87A107293B5AABB919B85CAE6E32E90179318757BED5CFFED73DBF3C8B94DE08E7EEDBC800BD0AF8635775A65156B3B25AA7D887516ECC0299244C00B8A04A18B3FD9A858AD015AA71A1655D0BAA588C69A547DC905A17389F6AB73ADCB1E553703DEE85C93B7C39EEF97A595CBA55D684B14C1E5F33ECAC36AC640FC9AB7F74166A5DE6D8DE5EF76EED3EF4D51E3D6B4ED059153B7D6163C2B2414D5A5ED024B5893B6963CA693E5D7A8ED829AB03E6D212E7A56A7D5178175CFE2E723E73AFD1405BFE4F0C31DA406250BA99D65AB4A0C27C83686481AC4E4204BB21869A2B2AB5545C414A4ECB5D1D9A29306E06C1496EC67B4DA2D073908F7702A401AB110D6BF071FD9AD4CD86FD1FA952719649184C7178D05C2FBF63A0308185287479A9E43189A3AC5F2FA71C48115A1B366F87E606BCC59833DA5D6B25958AE1F678D5EB16D6AF380ACE366844DD9751425C34F9F3641D9B561543E53698DBBABCF06700B7292291DAA4E26AB2AE9AAC2B2572F3D3C8131D0B77A564F2169A5EED5604CA0D8461DDCBD5425AB218E3CE208DC41B9E6BA3920D0A4877740D8AE503483BCDA9C1446F204476364D31E337B97EC92B7817537CB6A43F363B7D62FC34D7BF5AD3097E42638C7BE3CE8FA401D0BF3C8B2C8F4AEE7D2AB5ACAB4B57DBEE55A3E82151E291FEFFC38CE70D5ADA5F5EDC8753348E4AB93C669D6FA8FE3D994A755FC5634A2CE538B99995BBDEAE7CC8CD74A57A734D7E6B7C86982CBAC336334DD8C62B3E63663E57EB81C66A8370FA4764D7593165BBBE1EBC94CCF3EA2343FDA778287E49CC3A93ED3A6BEC30DE931CAC14CCF4292776926C1A42119E9A02BC74C7B58A4137F7371D1AB0172508744E51BBE591E10952911B19565D673F0922BF3E12AED35B55EB1E59BADD23297C22C531EF7148F08E771D69B41E5153ACF25BDA6D55B43F28D5B1B9324EDF3F209E0F9C2BF8FE19A97414D6182631A36AE4F9901F08FBC51E4796FE9A1987329331ED38237E83ADDDF808C9FCA9A1E9213BF6406E5B4910F2BA83A418FDDC6429821DB4FBC917A5481D12C01231B156F6740DDCA5D29A56ED5464E5D41DA7BD9D8A540930E5D36918FCCCFC6CB10BD39D4B0A46E3E7109DCAD1C8D462D1AF9D6D4AE57232C56C3832FCAE82C5A27C51AA9D687BF361357BC21F23A2B0A4C095535219604A9E31833606E056E6C11869699646E347B64E005BAAD17B0D19A04B7272BD045A9C60621893C517FD7823482498927333969C62B2F634592102A58909BCC3E5186AA26638524B8D6E127E9EA4F9011AAC7D8228DF1169CBE360C71F6C112ECCF689AF6CABED0B62599BB6C3E531EBC9C4B170DC1379B79E9C4AC93C24E8116066D1EB2934D79E0C22B5C29CD93D0A3C87A83422B6CEAA6D5F2631EA1B400E55F97200DB62D88158419018FF014356DAEA387B876585118D54DA8EBF2EF41E6FA6EE6AE932C7870BD0C7E4619018268BB708A57D6282FC53DF0AFA3DB3CDBE7199C32D8DD87C456428E2FD9F845351912E7D5ED1EFD95DA980244334099146EA39FF220F41BBCAF3817F305209047AD7A0382D632436F41B6CF0DA49B38D2045491AF7104DE81DD3E84C0D2DB68E37E055D7083ECF70E6C5DEFB97DD42902A25E0892ECABCBC0DD26EE2EAD60B4FDE19F9087FDDDD30FFF033E81884D1EC90000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'9b052548-98e0-4735-bdda-1b16c5feda1c', N'admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'4063fbc4-a72d-4990-b508-4c97f2528574', N'kullanıcı')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'509a158f-c2b7-4adb-b547-9febdf77a8fb', N'moderator')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'79f72ecc-6775-4190-bbe2-c9e63a45bd31', N'509a158f-c2b7-4adb-b547-9febdf77a8fb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'928018c2-5f93-42c5-ba0a-92ac14e25197', N'509a158f-c2b7-4adb-b547-9febdf77a8fb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd2ecaccb-3aa0-450f-9881-2aa9713d9f79', N'509a158f-c2b7-4adb-b547-9febdf77a8fb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'ffddd54e-49ca-43f7-8e8f-be1de08323b1', N'509a158f-c2b7-4adb-b547-9febdf77a8fb')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'4f8867d0-9039-4f23-9788-c54a357d437c', N'9b052548-98e0-4735-bdda-1b16c5feda1c')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0f2caab2-5f55-4ef8-83ce-3ad8088d4317', N'c@c.com', 0, N'APKgQ46tyBPXWMA0pwwlRrydhmvkKdXjnwMIVi7gZJlKNBgQv4IYTxlIijBLivwu0A==', N'8f70559c-7b90-4dd5-9885-61d81f2acc77', NULL, 0, 0, NULL, 1, 0, N'c@c.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4f8867d0-9039-4f23-9788-c54a357d437c', N'admin@admin.com', 0, N'ANCtozqkRD9PKUd1/fSUBBdKG1gc7vzJw9U/6r9uiBtpDOWIN8/+vJ7RrHXGBII2cA==', N'2e3f3e4b-501f-4e20-81d1-fc39ef50d293', NULL, 0, 0, NULL, 0, 0, N'admin@admin.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'689a9d98-6347-4f34-8ea0-8c00d4eb1fe0', N'a@a.com', 0, N'ALgS8kGHmVZxnxv6I3JWVutqPpjwM/FEYHiaaDqCxYe5BAH1/omMNn0EbUuBirJh7Q==', N'e9ddff04-4ec1-466e-b3a5-6f5f46d438a1', NULL, 0, 0, NULL, 1, 0, N'a@a.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'79f72ecc-6775-4190-bbe2-c9e63a45bd31', N'merve@merve.com', 0, N'AESUe1aFHpAN/dnC++pEKzzhQI72WiiTM0rHDkWGn8q5dQ0JQJ5fQ0LUgtT0HE/YNA==', N'a12fa008-21e0-4920-829a-a9c8c4694674', NULL, 0, 0, NULL, 1, 0, N'merve@merve.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'928018c2-5f93-42c5-ba0a-92ac14e25197', N'kerim@kerim.com', 0, N'AG9GSRTGSvj2Q+RaUZE3Mfn/Uz0JaBMbB/PRR7WVxvplVhcTvseKkbVOup3BlFk0Gg==', N'327aad96-7cbc-4485-a1ba-6aadf979e50a', NULL, 0, 0, NULL, 1, 0, N'kerim@kerim.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'd2ecaccb-3aa0-450f-9881-2aa9713d9f79', N'musa@musa.com', 0, N'AFJ9W5BcfUIrBssOPPsr0fPz0N/SdRQhypowt8pHHtviyd5rD65CnQ5tHMzmn60lkw==', N'b67c36a2-4e82-4d0f-a6f7-e479ce9c8f7d', NULL, 0, 0, NULL, 1, 0, N'musa@musa.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'efb7879c-442e-45e1-991d-a6afa24ddc26', N'b@b.com', 0, N'AGlBAQMUOlC1nThddVeXcpxMKqLYlzb6nf9m9QX+UT2zutgtjhdLPyUh9Nm2fb4tMQ==', N'9ce1907d-a68c-40d4-9188-6f21ad06d2b5', NULL, 0, 0, NULL, 1, 0, N'b@b.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ffddd54e-49ca-43f7-8e8f-be1de08323b1', N'rabia@rabia.com', 0, N'AD7ENrA4XdEzAbEPE8H0ANoNNbQlZIWH1daCQNLEXlEAYubgEJ1PrwCOE2ZUGhqJ3g==', N'185b7903-8deb-44fa-9fe7-36ec0f609821', NULL, 0, 0, NULL, 1, 0, N'rabia@rabia.com')
SET IDENTITY_INSERT [dbo].[Durumlar] ON 

INSERT [dbo].[Durumlar] ([DurumID], [Durumu]) VALUES (1, N'Bekleyen')
INSERT [dbo].[Durumlar] ([DurumID], [Durumu]) VALUES (2, N'Onaylanan')
INSERT [dbo].[Durumlar] ([DurumID], [Durumu]) VALUES (3, N'Reddedilen')
SET IDENTITY_INSERT [dbo].[Durumlar] OFF
SET IDENTITY_INSERT [dbo].[Kategori] ON 

INSERT [dbo].[Kategori] ([KategoriID], [KategoriAd]) VALUES (1, N'Fetihler')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAd]) VALUES (2, N'Eylemler')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAd]) VALUES (3, N'Buluslar')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAd]) VALUES (4, N'Savaslar')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAd]) VALUES (5, N'Tarihi Olaylar')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAd]) VALUES (6, N'Antlasmalar')
INSERT [dbo].[Kategori] ([KategoriID], [KategoriAd]) VALUES (7, N'Saldirilar')
SET IDENTITY_INSERT [dbo].[Kategori] OFF
SET IDENTITY_INSERT [dbo].[Kitaplik] ON 

INSERT [dbo].[Kitaplik] ([KitaplikID], [KullaniciID]) VALUES (1, N'4f8867d0-9039-4f23-9788-c54a357d437c')
INSERT [dbo].[Kitaplik] ([KitaplikID], [KullaniciID]) VALUES (3, N'928018c2-5f93-42c5-ba0a-92ac14e25197')
INSERT [dbo].[Kitaplik] ([KitaplikID], [KullaniciID]) VALUES (2, N'd2ecaccb-3aa0-450f-9881-2aa9713d9f79')
SET IDENTITY_INSERT [dbo].[Kitaplik] OFF
SET IDENTITY_INSERT [dbo].[KitaplikTarihiOlay] ON 

INSERT [dbo].[KitaplikTarihiOlay] ([ID], [TarihiOlayID], [KitaplikID]) VALUES (1, 2, 1)
INSERT [dbo].[KitaplikTarihiOlay] ([ID], [TarihiOlayID], [KitaplikID]) VALUES (2, 3, 2)
INSERT [dbo].[KitaplikTarihiOlay] ([ID], [TarihiOlayID], [KitaplikID]) VALUES (3, 9, 3)
INSERT [dbo].[KitaplikTarihiOlay] ([ID], [TarihiOlayID], [KitaplikID]) VALUES (4, 1, 3)
SET IDENTITY_INSERT [dbo].[KitaplikTarihiOlay] OFF
SET IDENTITY_INSERT [dbo].[TarihiOlaylar] ON 

INSERT [dbo].[TarihiOlaylar] ([TarihiOlayID], [Baslik], [KategoriID], [Icerik], [BaslangicTarihi], [BitisTarihi], [YazarID], [DurumID]) VALUES (1, N'İstanbul''un Fethi', 1, N'İstanbul''un Fethi 29 Mayıs 1453 tarihinde dönemin Osmanlı padişahı 21 yaşındaki Fatih Sultan Mehmet (Sultan 2. Mehmet) ve komutasındaki Yeniçeri Ordusu tarafından gerçekleştirilmiştir. 6 Nisan 1453 tarihinde Osmanlı Ordusu tarafından kuşatılan İstanbul, 53 günlük kuşatmanın ardından fethedilmiştir. Fatih Sultan Mehmet ve komutasındaki askerler, Bizans İmparatorluğu lideri XI. Konstantinos ve ordusuna karşı mücadele etmiştir. İstanbul''un Fethi''nin ardından Osmanlı İmparatorluğu''nun yeni başkenti İstanbul olmuştur.', CAST(N'1453-04-06T00:00:00.0000000' AS DateTime2), CAST(N'1453-05-29T00:00:00.0000000' AS DateTime2), N'689a9d98-6347-4f34-8ea0-8c00d4eb1fe0', 2)
INSERT [dbo].[TarihiOlaylar] ([TarihiOlayID], [Baslik], [KategoriID], [Icerik], [BaslangicTarihi], [BitisTarihi], [YazarID], [DurumID]) VALUES (2, N'Dünya Ticaret Merkezi Saldırısı', 2, N'11 Eylül saldırıları, El Kaide tarafından 11 Eylül 2001 tarihinde düzenlenen Amerika Birleşik Devletleri''nde yaşayan sivil ve askerleri hedef alan bir dizi terör saldırısı.
Yerel saatle 08:46:30 da Amerikan Hava Yolları''na ait kaçırılan bir yolcu uçağı Dünya Ticaret Merkezi Kuzey Kulesi 94.-98. katları arasına kulenin kuzey tarafından çarptı. Bina çarpmadan 102 dakika sonra yıkıldı.
Yerel saatle 09:02:59 da ikinci bir uçak Dünya Ticaret Merkezi güney Kulesi 77.-85. katları arasına kulenin güney tarafından çarptı. Bina çarpmadan 56 dakika sonra yıkıldı.
Yerel saatle 10:03:11 de Washington D.C.''un 240 km kuzey batısına, Pensilvanya Shanksville kırsalıda dördüncü bir uçağın düştüğü açıklandı. Olay yerinde büyük bir uçak enkazına rastlanmadığı söylentileri dolaştı. Resmi makamlarca uçak enkazının olduğu vurgulanmıştır. Ayrıca birçok uçak parçası da bulunmuştur.
ABD hükümetinin açıklamalarına göre olaylar şöyle gelişti: 11 Eylül 2001 Salı günü ABD''de dört yolcu uçağının ikisi New York''taki Dünya Ticaret Merkezi gökdelenlerine, bir diğeri Washington D.C.''de Pentagon''a çarptı. Sonuncu uçak ise yolcular ve uçağı kaçıranlar arasındaki mücadeleden sonra 150 mil uzakta, Pensilvanya kırsalında düştü.
Olaylarda 19 hava korsanı ile uçaklarda ve yerde bulunan 2,974 kişi hayatını kaybettiği açıklanmıştır.', CAST(N'2001-10-11T00:00:00.0000000' AS DateTime2), CAST(N'2011-10-10T00:00:00.0000000' AS DateTime2), N'689a9d98-6347-4f34-8ea0-8c00d4eb1fe0', 2)
INSERT [dbo].[TarihiOlaylar] ([TarihiOlayID], [Baslik], [KategoriID], [Icerik], [BaslangicTarihi], [BitisTarihi], [YazarID], [DurumID]) VALUES (3, N'Bostwana', 1, N'Bu bir denemedir..', CAST(N'2019-06-23T00:00:00.0000000' AS DateTime2), CAST(N'2019-06-23T00:00:00.0000000' AS DateTime2), N'689a9d98-6347-4f34-8ea0-8c00d4eb1fe0', 2)
INSERT [dbo].[TarihiOlaylar] ([TarihiOlayID], [Baslik], [KategoriID], [Icerik], [BaslangicTarihi], [BitisTarihi], [YazarID], [DurumID]) VALUES (4, N'Berlin Duvarı''nın Yıkılması', 5, N'Berlin Duvarı, Doğu Almanya vatandaşlarının Batı Almanya''ya kaçmalarını önlemek için Doğu Alman meclisinin kararı ile 13 Ağustos 1961 yılında Berlin''de yapımına başlanan 46 km uzunluğundaki duvar.
Batı''da yıllarca "Utanç duvarı" olarak da anılan ve Batı Berlin''i abluka altına alan bu betondan sınır, 9 Kasım 1989''da Doğu Almanya''nın, isteyen vatandaşların Batı''ya gidebileceğini açıklamasının ardından tüm tesisleriyle birlikte yıkıldı.', CAST(N'1989-11-09T00:00:00.0000000' AS DateTime2), CAST(N'1989-11-09T00:00:00.0000000' AS DateTime2), N'efb7879c-442e-45e1-991d-a6afa24ddc26', 1)
INSERT [dbo].[TarihiOlaylar] ([TarihiOlayID], [Baslik], [KategoriID], [Icerik], [BaslangicTarihi], [BitisTarihi], [YazarID], [DurumID]) VALUES (5, N'Çernobil Faciası', 5, N'Çernobil reaktör kazası, bir deney sırasında meydana gelen 20. yüzyılın ilk büyük nükleer kazasıdır. Ukrayna''nın Kiev iline bağlı Çernobil kentindeki Nükleer Güç Reaktörünün 4. ünitesinde 26 Nisan 1986 günü erken saatlerde meydana gelen nükleer kaza sonrasında atmosfere büyük miktarda fisyon ürünleri salındığı 30 Nisan 1986 günü tüm dünya tarafından öğrenildi.
Bağımsız kaynaklar yüzlerce yıl boyunca Pripyat ve komşu bölgelerde yerleşimin güvenli olmadığını söylemektedirler. Ayrıca bölgeye giriş çıkışlar hala polis kontrolünde olup bazı bölgelere giriş yapılamamaktadır.', CAST(N'1986-04-26T00:00:00.0000000' AS DateTime2), CAST(N'2019-06-23T00:00:00.0000000' AS DateTime2), N'efb7879c-442e-45e1-991d-a6afa24ddc26', 2)
INSERT [dbo].[TarihiOlaylar] ([TarihiOlayID], [Baslik], [KategoriID], [Icerik], [BaslangicTarihi], [BitisTarihi], [YazarID], [DurumID]) VALUES (6, N'Birleşmiş Milletler (BM)''in Kurulması', 1, N'Birleşmiş Milletler (BM), 24 Ekim 1945''te kurulmuş dünya barışını, güvenliğini korumak ve uluslar arasında ekonomik, toplumsal ve kültürel bir iş birliği oluşturmak için kurulan uluslararası bir örgüttür.
Birleşmiş Milletler kendini "adalet ve güvenliği, ekonomik kalkınma ve sosyal eşitliği uluslararasında tüm ülkelere sağlamayı amaç edinmiş küresel bir kuruluş" olarak tanımlamaktadır. Uluslararası ilişkilerde, kuvvet kullanılmasını ilk olarak evrensel düzeyde yasaklayan ilk antlaşma Birleşmiş Milletler Antlaşması''dır.', CAST(N'1945-10-24T00:00:00.0000000' AS DateTime2), CAST(N'1945-10-24T00:00:00.0000000' AS DateTime2), N'efb7879c-442e-45e1-991d-a6afa24ddc26', 2)
INSERT [dbo].[TarihiOlaylar] ([TarihiOlayID], [Baslik], [KategoriID], [Icerik], [BaslangicTarihi], [BitisTarihi], [YazarID], [DurumID]) VALUES (7, N'Hiroşima ve Nagasaki Atom Bombaları Saldırıları', 7, N'Amerika Birleşik Devletleri''nin II. Dünya Savaşı''nın son günlerinde Japonya''nın Nagazaki şehrine atom bombası atması olayıdır. Bomba atıldıktan 3 gün sonra, 9 Ağustos 1945 (Amerikan kaydına göre 10:58''de, Japon kaydına göre saat 11:02''de), Plütonyum-239 tipi atom bombası "Fat Man" (Şişman Adam, resmî adıyla Mark III) ile ikinci katliâmı gerçekleştirdi. Bu atom bombasıyla Nagazaki''nin toplam nüfusu yaklaşık 240.000 kişi içinde 74.000 kişi hayatını kaybetti ve binaların yüzde 36''sı tamamen yok edildi. 2007''de, Nagazaki belediyesinin resmî listesine göre, o an öldürülen veya daha sonra atom bombasının etkisiyle ölenlerin toplam sayısı 143.124''a ulaşmıştı.', CAST(N'1945-08-09T00:00:00.0000000' AS DateTime2), CAST(N'2019-06-23T00:00:00.0000000' AS DateTime2), N'0f2caab2-5f55-4ef8-83ce-3ad8088d4317', 2)
INSERT [dbo].[TarihiOlaylar] ([TarihiOlayID], [Baslik], [KategoriID], [Icerik], [BaslangicTarihi], [BitisTarihi], [YazarID], [DurumID]) VALUES (8, N'Nazilerin Polonya''yı İşgali', 4, N'Polonya Seferi ya da Polonya''nın işgali, Polonya topraklarının Almanya, Sovyetler Birliği ve Slovakya tarafından işgal edilmesidir. İşgal harekatı Alman-Sovyet Saldırmazlık Paktı''nın (Molotov-Ribbentrop Paktı) imzalanmasından bir hafta sonra, 1 Eylül 1939''da başlamış ve 6 Ekim 1939''da Almanya ve Sovyetler Birliğinin Polonya''nın tamamını işgal etmeleriyle son bulmuştur.
Alman saldırısı, savaş ilanı olmadan yapılmıştı. Bu saldırı bu yüzden uluslararası hukuka aykırı bir saldırı savaşıdır. Polonya''nın işgaliyle II. Dünya Savaşı resmen başlamış oldu.', CAST(N'1939-09-01T00:00:00.0000000' AS DateTime2), CAST(N'2019-06-23T00:00:00.0000000' AS DateTime2), N'0f2caab2-5f55-4ef8-83ce-3ad8088d4317', 2)
INSERT [dbo].[TarihiOlaylar] ([TarihiOlayID], [Baslik], [KategoriID], [Icerik], [BaslangicTarihi], [BitisTarihi], [YazarID], [DurumID]) VALUES (9, N'Çanakkale Savaşı', 4, N'Çanakkale Savaşı, I. Dünya Savaşı sırasında 1915-1916 yılları arasında Gelibolu Yarımadası''nda Osmanlı İmparatorluğu ile İtilaf Devletleri arasında yapılan deniz ve kara muharebeleridir.
İtilaf Devletleri; Osmanlı İmparatorluğu''nun başkenti konumundaki İstanbul''u alarak İstanbul ve Çanakkale boğazlarının kontrolünü ele geçirmek, Rusya''yla güvenli bir erzak tedarik ve askeri ikmal yolu açmak, başkent İstanbul′u zaptetmek suretiyle Almanya′nın müttefiklerinden birini savaş dışı bırakarak İttifak Devletlerini zayıflatmak amaçları ile ilk hedef olarak Çanakkale Boğazı''nı seçmişlerdir. Ancak saldırıları başarısız olmuş ve geri çekilmek zorunda kalmışlardır. Savaş sonucunda Rusya''ya yardım gitmemiş ve Çarlık rejimi çökmüştür.', CAST(N'1915-02-19T00:00:00.0000000' AS DateTime2), CAST(N'1916-01-09T00:00:00.0000000' AS DateTime2), N'd2ecaccb-3aa0-450f-9881-2aa9713d9f79', 2)
INSERT [dbo].[TarihiOlaylar] ([TarihiOlayID], [Baslik], [KategoriID], [Icerik], [BaslangicTarihi], [BitisTarihi], [YazarID], [DurumID]) VALUES (10, N'Rönesans', 2, N'Rönesans "yeniden doğuş" anlamına gelen bir süreçtir. 15. yüzyılda başlayan bu süreç, aynı yüzyıl içinde bütün Avrupa''ya yayıldı. Bu yenilikte, Roma ve Grek başarılarının yeniden cezalandırılması istemi vardır. Rönesans şu temel anlayışlara dayanıyordu.
 • Yeryüzü ilgi çekici ve araştırılmaya değer bir yerdir.
 • İnsan güçlüdür ve bu gücüyle büyük başarılar elde edebilir.
 • İnsanın sürekli faal olması şerefli bir şeydir ve "gerçek" güzeldir. Bu anlayışlara bağlı olarak da yaşadığımız dünya o kadar ilgi çekici bir yerdir ki, başka dünyaları düşünmenin hiçbir anlamı yoktur, anlayışı hakimdir.

Rönesansın Sonuçları
1. Bilim ve teknik alanında gelişmeler oldu.
2. Hür düşünce ve yeni sanat anlayışları ortaya çıktı.
3. Skolastik düşünce yerini bilimsel düşünceye bıraktı. Gözlem ve deney önem kazandı.Akılcılık egemen olmaya başladı.
4. Avrupa’da gelişmenin ve ilerlemenin hız kazanmasına neden oldu.
5. Avrupa’da bilim ve teknik alandaki gelişmelerin önünü açtı.
 
Rönesans, İtalya''da başlamış, Fransa, Almanya, İngiltere, XVII.yy.da da İspanya ve Hollanda'' ya yayılmıştır.
', CAST(N'1400-01-01T00:00:00.0000000' AS DateTime2), CAST(N'2019-06-23T00:00:00.0000000' AS DateTime2), N'd2ecaccb-3aa0-450f-9881-2aa9713d9f79', 1)
SET IDENTITY_INSERT [dbo].[TarihiOlaylar] OFF
SET IDENTITY_INSERT [dbo].[TarihiOlayUlke] ON 

INSERT [dbo].[TarihiOlayUlke] ([ID], [UlkeID], [TarihiOlayID]) VALUES (1, 1, 1)
INSERT [dbo].[TarihiOlayUlke] ([ID], [UlkeID], [TarihiOlayID]) VALUES (2, 177, 2)
INSERT [dbo].[TarihiOlayUlke] ([ID], [UlkeID], [TarihiOlayID]) VALUES (3, 32, 3)
INSERT [dbo].[TarihiOlayUlke] ([ID], [UlkeID], [TarihiOlayID]) VALUES (4, 51, 4)
INSERT [dbo].[TarihiOlayUlke] ([ID], [UlkeID], [TarihiOlayID]) VALUES (5, 175, 5)
INSERT [dbo].[TarihiOlayUlke] ([ID], [UlkeID], [TarihiOlayID]) VALUES (6, 177, 6)
INSERT [dbo].[TarihiOlayUlke] ([ID], [UlkeID], [TarihiOlayID]) VALUES (7, 96, 7)
INSERT [dbo].[TarihiOlayUlke] ([ID], [UlkeID], [TarihiOlayID]) VALUES (8, 140, 8)
INSERT [dbo].[TarihiOlayUlke] ([ID], [UlkeID], [TarihiOlayID]) VALUES (9, 1, 9)
INSERT [dbo].[TarihiOlayUlke] ([ID], [UlkeID], [TarihiOlayID]) VALUES (10, 93, 10)
SET IDENTITY_INSERT [dbo].[TarihiOlayUlke] OFF
SET IDENTITY_INSERT [dbo].[Ulkeler] ON 

INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (1, N'Turkiye', N'TR')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (10, N'United Arab Emirates
', N'AE')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (11, N'Afghanistan
', N'AF')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (12, N'Albania
', N'AL')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (13, N'Armenia
', N'AM')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (14, N'Angola', N'AO')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (15, N'Argentina
', N'AR')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (16, N'Austria
', N'AT')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (17, N'Australia
', N'AU')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (18, N'Azerbaidjan
', N'AZ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (19, N'Bosnia-Herzegovina
', N'BA')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (20, N'Bangladesh
', N'BD')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (21, N'Belgium
', N'BE')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (22, N'Burkina Faso
', N'BF')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (23, N'Bulgaria
', N'BG')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (24, N'Bahrain
', N'BH')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (25, N'Burundi
', N'BI')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (26, N'Benin
', N'BJ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (27, N'Brunei Darussalam
', N'BN')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (28, N'Bolivia
', N'BO')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (29, N'Brazil
', N'BR')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (30, N'Bahamas
', N'BS')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (31, N'Bhutan
', N'BT')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (32, N'Botswana
', N'BW')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (33, N'Belarus
', N'BY')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (34, N'Belize
', N'BZ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (35, N'Canada
', N'CA')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (36, N'Congo
', N'CD')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (37, N'Central African Republic
', N'CF')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (38, N'Congo
', N'CG')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (39, N'Switzerland
', N'CH')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (40, N'Ivory Coast
', N'CI')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (42, N'Chile
', N'CL')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (43, N'Cameroon
', N'CM')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (44, N'China
', N'CN')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (45, N'Colombia
', N'CO')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (46, N'Costa Rica
', N'CR')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (47, N'Cuba
', N'CU')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (48, N'Cape Verde
', N'CV')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (49, N'Cyprus
', N'CY')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (50, N'Czech Republic
', N'CZ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (51, N'Germany
', N'DE')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (52, N'Djibouti
', N'DJ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (53, N'Denmark
', N'DK')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (54, N'Dominican Republic
', N'DO')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (55, N'Algeria
', N'DZ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (56, N'Ecuador
', N'EC')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (57, N'Estonia
', N'EE')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (58, N'Egypt
', N'EG')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (59, N'Western Sahara
', N'EH')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (60, N'Eritrea
', N'ER')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (61, N'Spain
', N'ES')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (62, N'Ethiopia
', N'ET')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (63, N'Finland
', N'FI')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (64, N'Fiji
', N'FJ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (65, N'Falkland Islands
', N'FK')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (66, N'France
', N'FR')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (67, N'Gabon
', N'GA')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (68, N'Great Britain
', N'GB')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (69, N'Georgia
', N'GE')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (70, N'French Guyana
', N'GF')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (71, N'Ghana
', N'GH')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (72, N'Greenland
', N'GL')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (73, N'Gambia
', N'GM')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (74, N'Guinea
', N'GN')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (75, N'Equatorial Guinea
', N'GQ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (76, N'Greece
', N'GR')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (77, N'S. Georgia & S. Sandwich Isls.
', N'GS')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (78, N'Guatemala
', N'GT')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (79, N'Guinea Bissau
', N'GW')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (80, N'Guyana
', N'GY')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (81, N'Honduras
', N'HN')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (82, N'Croatia
', N'HR')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (83, N'Haiti
', N'HT')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (84, N'Hungary
', N'HU')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (85, N'Canary Islands
', N'IC')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (86, N'Indonesia
', N'ID')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (87, N'Ireland
', N'IE')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (88, N'Israel
', N'IL')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (89, N'India
', N'IN')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (90, N'Iraq
', N'IQ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (91, N'Iran
', N'IR')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (92, N'Iceland
', N'IS')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (93, N'Italy
', N'IT')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (94, N'Jamaica
', N'JM')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (95, N'Jordan
', N'JO')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (96, N'Japan
', N'JP')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (97, N'Kenya
', N'KE')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (98, N'Kyrgyzstan
', N'KG')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (99, N'Cambodia
', N'KH')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (100, N'North Korea
', N'KP')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (101, N'South Korea
', N'KR')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (102, N'Kuwait
', N'KW')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (103, N'Kazakhstan
', N'KZ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (104, N'Laos
', N'LA')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (105, N'Sri Lanka
', N'LK')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (106, N'Liberia
', N'LR')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (107, N'Lesotho
', N'LS')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (108, N'Lithuania
', N'LT')
GO
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (109, N'Luxembourg
', N'LU')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (110, N'Latvia
', N'LV')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (111, N'Libya
', N'LY')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (112, N'Morocco
', N'MA')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (113, N'Moldavia
', N'MD')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (114, N'Montenegro
', N'ME')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (115, N'Madagascar
', N'MG')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (116, N'Macedonia
', N'MK')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (117, N'Mali
', N'ML')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (118, N'Myanmar
', N'MM')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (119, N'Mongolia
', N'MN')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (120, N'Mauritania
', N'MR')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (121, N'Malawi
', N'MW')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (122, N'Mexico
', N'MX')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (123, N'Malaysia
', N'MY')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (124, N'Mozambique
', N'MZ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (125, N'Namibia
', N'NA')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (126, N'New Caledonia (French)
', N'NC')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (127, N'Niger
', N'NE')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (128, N'Nigeria
', N'NG')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (129, N'Nicaragua
', N'NI')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (130, N'Netherlands
', N'NL')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (131, N'Norway
', N'NO')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (132, N'Nepal
', N'NP')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (133, N'New Zealand
', N'NZ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (134, N'Oman
', N'OM')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (135, N'Panama
', N'PA')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (136, N'Peru
', N'PE')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (137, N'Papua New Guinea
', N'PG')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (138, N'Philippines
', N'PH')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (139, N'Pakistan
', N'PK')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (140, N'Poland
', N'PL')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (141, N'Puerto Rico
', N'PR')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (142, N'Palestine
', N'PS')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (143, N'Portugal
', N'PT')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (144, N'Paraguay
', N'PY')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (145, N'Qatar
', N'QA')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (146, N'Romania
', N'RO')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (147, N'Serbia
', N'RS')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (148, N'Russia
', N'RU')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (149, N'Rwanda
', N'RW')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (150, N'Saudi Arabia
', N'SA')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (151, N'Solomon Islands', N'SB')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (152, N'Sudan
', N'SD')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (153, N'Sweden
', N'SE')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (154, N'Slovenia
', N'SI')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (155, N'Slovak Republic
', N'SK')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (156, N'Sierra Leone
', N'SL')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (157, N'Senegal
', N'SN')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (158, N'Somalia
', N'SO')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (159, N'Suriname
', N'SR')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (160, N'South Sudan
', N'SS')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (161, N'El Salvador
', N'SV')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (162, N'Syria
', N'SY')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (163, N'Swaziland
', N'SZ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (164, N'Chad
', N'TD')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (165, N'Togo
', N'TG')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (166, N'Thailand
', N'TH')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (167, N'Tadjikistan
', N'TJ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (168, N'East Timor
', N'TL')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (169, N'Turkmenistan
', N'TM')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (170, N'Tunisia
', N'TN')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (172, N'Trinidad and Tobago
', N'TT')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (173, N'Taiwan
', N'TW')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (174, N'Tanzania
', N'TZ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (175, N'Ukraine
', N'UA')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (176, N'Uganda
', N'UG')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (177, N'United States
', N'US')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (178, N'Uruguay
', N'UY')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (179, N'Uzbekistan
', N'UZ')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (180, N'Venezuela
', N'VE')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (181, N'Vietnam
', N'VN')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (182, N'Vanuatu
', N'VU')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (183, N'Yemen
', N'YE')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (184, N'South Africa
', N'ZA')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (185, N'Zambia
', N'ZM')
INSERT [dbo].[Ulkeler] ([UlkeID], [UlkeAd], [UlkeKod]) VALUES (186, N'Zimbabwe
', N'ZW')
SET IDENTITY_INSERT [dbo].[Ulkeler] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 23.06.2019 23:31:42 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 23.06.2019 23:31:42 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 23.06.2019 23:31:42 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_RoleId]    Script Date: 23.06.2019 23:31:42 ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_UserId]    Script Date: 23.06.2019 23:31:42 ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 23.06.2019 23:31:42 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_KullaniciID]    Script Date: 23.06.2019 23:31:42 ******/
CREATE NONCLUSTERED INDEX [IX_KullaniciID] ON [dbo].[Kitaplik]
(
	[KullaniciID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_KitaplikID]    Script Date: 23.06.2019 23:31:42 ******/
CREATE NONCLUSTERED INDEX [IX_KitaplikID] ON [dbo].[KitaplikTarihiOlay]
(
	[KitaplikID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TarihiOlayID]    Script Date: 23.06.2019 23:31:42 ******/
CREATE NONCLUSTERED INDEX [IX_TarihiOlayID] ON [dbo].[KitaplikTarihiOlay]
(
	[TarihiOlayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_DurumID]    Script Date: 23.06.2019 23:31:42 ******/
CREATE NONCLUSTERED INDEX [IX_DurumID] ON [dbo].[TarihiOlaylar]
(
	[DurumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_KategoriID]    Script Date: 23.06.2019 23:31:42 ******/
CREATE NONCLUSTERED INDEX [IX_KategoriID] ON [dbo].[TarihiOlaylar]
(
	[KategoriID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_YazarID]    Script Date: 23.06.2019 23:31:42 ******/
CREATE NONCLUSTERED INDEX [IX_YazarID] ON [dbo].[TarihiOlaylar]
(
	[YazarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_TarihiOlayID]    Script Date: 23.06.2019 23:31:42 ******/
CREATE NONCLUSTERED INDEX [IX_TarihiOlayID] ON [dbo].[TarihiOlayUlke]
(
	[TarihiOlayID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_UlkeID]    Script Date: 23.06.2019 23:31:42 ******/
CREATE NONCLUSTERED INDEX [IX_UlkeID] ON [dbo].[TarihiOlayUlke]
(
	[UlkeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Kitaplik]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Kitaplik_dbo.AspNetUsers_KullaniciID] FOREIGN KEY([KullaniciID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Kitaplik] CHECK CONSTRAINT [FK_dbo.Kitaplik_dbo.AspNetUsers_KullaniciID]
GO
ALTER TABLE [dbo].[KitaplikTarihiOlay]  WITH CHECK ADD  CONSTRAINT [FK_dbo.KitaplikTarihiOlay_dbo.Kitaplik_KitaplikID] FOREIGN KEY([KitaplikID])
REFERENCES [dbo].[Kitaplik] ([KitaplikID])
GO
ALTER TABLE [dbo].[KitaplikTarihiOlay] CHECK CONSTRAINT [FK_dbo.KitaplikTarihiOlay_dbo.Kitaplik_KitaplikID]
GO
ALTER TABLE [dbo].[KitaplikTarihiOlay]  WITH CHECK ADD  CONSTRAINT [FK_dbo.KitaplikTarihiOlay_dbo.TarihiOlaylar_TarihiOlayID] FOREIGN KEY([TarihiOlayID])
REFERENCES [dbo].[TarihiOlaylar] ([TarihiOlayID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[KitaplikTarihiOlay] CHECK CONSTRAINT [FK_dbo.KitaplikTarihiOlay_dbo.TarihiOlaylar_TarihiOlayID]
GO
ALTER TABLE [dbo].[TarihiOlaylar]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TarihiOlaylar_dbo.AspNetUsers_YazarID] FOREIGN KEY([YazarID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TarihiOlaylar] CHECK CONSTRAINT [FK_dbo.TarihiOlaylar_dbo.AspNetUsers_YazarID]
GO
ALTER TABLE [dbo].[TarihiOlaylar]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TarihiOlaylar_dbo.Durumlar_DurumID] FOREIGN KEY([DurumID])
REFERENCES [dbo].[Durumlar] ([DurumID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TarihiOlaylar] CHECK CONSTRAINT [FK_dbo.TarihiOlaylar_dbo.Durumlar_DurumID]
GO
ALTER TABLE [dbo].[TarihiOlaylar]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TarihiOlaylar_dbo.Kategori_KategoriID] FOREIGN KEY([KategoriID])
REFERENCES [dbo].[Kategori] ([KategoriID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TarihiOlaylar] CHECK CONSTRAINT [FK_dbo.TarihiOlaylar_dbo.Kategori_KategoriID]
GO
ALTER TABLE [dbo].[TarihiOlayUlke]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TarihiOlayUlke_dbo.TarihiOlaylar_TarihiOlayID] FOREIGN KEY([TarihiOlayID])
REFERENCES [dbo].[TarihiOlaylar] ([TarihiOlayID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TarihiOlayUlke] CHECK CONSTRAINT [FK_dbo.TarihiOlayUlke_dbo.TarihiOlaylar_TarihiOlayID]
GO
ALTER TABLE [dbo].[TarihiOlayUlke]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TarihiOlayUlke_dbo.Ulkeler_UlkeID] FOREIGN KEY([UlkeID])
REFERENCES [dbo].[Ulkeler] ([UlkeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TarihiOlayUlke] CHECK CONSTRAINT [FK_dbo.TarihiOlayUlke_dbo.Ulkeler_UlkeID]
GO
USE [master]
GO
ALTER DATABASE [DunyaTarihiDb] SET  READ_WRITE 
GO
