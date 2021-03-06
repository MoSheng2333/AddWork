USE [master]
GO
/****** Object:  Database [4/26demo]    Script Date: 2022/5/15 20:03:22 ******/
CREATE DATABASE [4/26demo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'4_26demo', FILENAME = N'D:\AddWork.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'4_26demo_log', FILENAME = N'D:\AddWork.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [4/26demo] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [4/26demo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [4/26demo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [4/26demo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [4/26demo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [4/26demo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [4/26demo] SET ARITHABORT OFF 
GO
ALTER DATABASE [4/26demo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [4/26demo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [4/26demo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [4/26demo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [4/26demo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [4/26demo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [4/26demo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [4/26demo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [4/26demo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [4/26demo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [4/26demo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [4/26demo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [4/26demo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [4/26demo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [4/26demo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [4/26demo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [4/26demo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [4/26demo] SET RECOVERY FULL 
GO
ALTER DATABASE [4/26demo] SET  MULTI_USER 
GO
ALTER DATABASE [4/26demo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [4/26demo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [4/26demo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [4/26demo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [4/26demo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [4/26demo] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'4/26demo', N'ON'
GO
ALTER DATABASE [4/26demo] SET QUERY_STORE = OFF
GO
USE [4/26demo]
GO
/****** Object:  Table [dbo].[CInfo]    Script Date: 2022/5/15 20:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CInfo](
	[CID] [int] IDENTITY(1,1) NOT NULL,
	[CTitle] [nvarchar](50) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
	[WID] [int] NOT NULL,
 CONSTRAINT [PK_C] PRIMARY KEY CLUSTERED 
(
	[CID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FInfo]    Script Date: 2022/5/15 20:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FInfo](
	[FID] [int] IDENTITY(1,1) NOT NULL,
	[FName] [nvarchar](100) NOT NULL,
	[FRName] [nvarchar](100) NOT NULL,
	[FPath] [nvarchar](100) NOT NULL,
	[FType] [int] NOT NULL,
	[WID] [int] NOT NULL,
 CONSTRAINT [PK_FInfo] PRIMARY KEY CLUSTERED 
(
	[FID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TInfo]    Script Date: 2022/5/15 20:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TInfo](
	[TID] [int] IDENTITY(1,1) NOT NULL,
	[TName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_T] PRIMARY KEY CLUSTERED 
(
	[TID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UInfo]    Script Date: 2022/5/15 20:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UInfo](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[UName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_U] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WInfo]    Script Date: 2022/5/15 20:03:23 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WInfo](
	[WID] [int] IDENTITY(1,1) NOT NULL,
	[WName] [nvarchar](50) NOT NULL,
	[TID] [int] NOT NULL,
	[UID] [int] NOT NULL,
 CONSTRAINT [PK_W] PRIMARY KEY CLUSTERED 
(
	[WID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[CInfo] ON 

INSERT [dbo].[CInfo] ([CID], [CTitle], [Content], [WID]) VALUES (4, N'简介', N'香樟(Cinnamomum camphora (Linn) Presl)，是樟目、樟科、樟属常绿大乔木，为亚热带常绿阔叶树种。主要分布于长江以南，尤以台湾、福建、江西、湖南、四川等栽培较多。
性喜温暖湿润的气候条件，不耐寒冷。
适生于年平均温度16～17℃以上,绝对低温-7℃以上地域。香樟对土壤要求不严,于深厚肥沃的粘壤土、砂壤土及酸性土、中性土中发育均佳，在含盐量0.2%以下的盐碱土内亦可生长。
香樟树形雄伟壮观，四季常绿，树冠开展，枝叶繁茂，浓荫覆地，枝叶秀丽而有香气，是作为行道树、庭荫树、风景林、防风林和隔音林带的优良树种。香樟对氯气、二氧化碳、氟等有毒气体的抗性较强，也是工厂绿化的好材料。
香樟的枝叶破裂散发香气，对蚊、虫有一定的驱除作用，生长季节病虫害少，又是重要的环保树种。', 2)
INSERT [dbo].[CInfo] ([CID], [CTitle], [Content], [WID]) VALUES (5, N'形态特征', N'常绿大乔木，高可达30米，直径可达3米，树冠广卵形；枝、叶及木材均有樟脑气味；树皮黄褐色，有不规则的纵裂。顶芽广卵形或圆球形，鳞片宽卵形或近圆形，外面略被绢状毛。枝条圆柱形，淡褐色，无毛。叶互生，卵状椭圆形，长6～12厘米，宽2.5～5.5厘米，先端急尖，基部宽楔形至近圆形，边缘全缘，软骨质，有时呈微波状，上面绿色或黄绿色，有光泽，下面黄绿色或灰绿色，晦暗，两面无毛或下面幼时略被微柔毛，具离基三出脉，有时过渡到基部具不显的5脉，中脉两面明显，上部每边有侧脉1～3～5(7)条。基生侧脉向叶缘一侧有少数支脉，侧脉及支脉脉腋上面明显隆起下面有明显腺窝，窝内常被柔毛；叶柄纤细，长2～3厘米，腹凹背凸，无毛。幼时树皮绿色，平滑，老时渐变为黄褐色或灰褐色纵裂；冬芽卵圆形。 [3] 
香樟
香樟(5张)
圆锥花序腋生，长3.5～7厘米，具梗，总梗长2.5～4.5厘米，与各级序轴均无毛或被灰白至黄褐色微柔毛，被毛时往往在节上尤为明显。花绿白或带黄色，长约3毫米；花梗长1～2毫米，无毛。花被外面无毛或被微柔毛，内面密被短柔毛，花被筒倒锥形，长约1毫米，花被裂片椭圆形，长约2毫米。能育雄蕊9，长约2毫米，花丝被短柔毛。退化雄蕊3，位于最内轮，箭头形，长约1毫米，被短柔毛。 [3] 
子房球形，长约1毫米，无毛，花柱长约1毫米。果卵球形或近球形，直径6～8毫米，紫黑色；果托杯状，长约5毫米，顶端截平，宽达4毫米，基部宽约1毫米，具纵向沟纹。花期4～5月，果期8～11月。 ', 2)
INSERT [dbo].[CInfo] ([CID], [CTitle], [Content], [WID]) VALUES (6, N'生长环境', N'适应海拔高度在1800米以下 ，在长江以南及西南生长区域海拔可达1000米。主要生长于亚热带土壤肥沃的向阳山坡、谷地及河岸平地。山坡或沟谷中，也常有栽培的。 [3] 
喜光，稍耐阴；喜温暖湿润气候，耐寒性不强。适生于深厚肥沃的酸性或中性砂壤土，根系发达，深根性，抗倒能力强。', 2)
INSERT [dbo].[CInfo] ([CID], [CTitle], [Content], [WID]) VALUES (7, N'主要价值', N'有很强的吸烟滞尘、涵养水源、固土防沙和美化环境的能力，香樟冠大荫浓，树姿雄伟，是城市绿化的优良树种。 [4] 
木材及根、枝、叶可提取樟脑和樟油，樟脑和樟油供医药及香料工业用。果核含脂肪，含油量约40%，油供工业用。根、果、枝和叶入药，有祛风散寒、强心镇痉和杀虫等功能。木材又为造船、橱箱和建筑等用材。', 2)
INSERT [dbo].[CInfo] ([CID], [CTitle], [Content], [WID]) VALUES (8, N'病虫防治', N'虫害
①樟叶蜂。1年发生1～2代，5月上旬、6月上旬分别为第1、2幼虫期，取食嫩叶。防治方法：可喷施90%晶体敌百虫或50%马拉松乳剂2000倍液，也可用闹羊花或雷公藤粉末0.5kg对水75～100kg喷杀。 [4] 
②樟天牛。主要为害主枝和侧枝，采用人工捕杀，或用敌敌畏填塞排泄孔。 [4] 
③樟梢卷叶蛾。1年发生数代，幼虫蛀食嫩梢。防治方法：3月樟树抽发新梢后，第1代幼虫孵化时喷施50%二溴磷乳剂、50%马拉松乳剂1000倍液，5d喷1次，连续2～3次。还可用40%乐果200～300倍液喷杀幼虫；当幼虫大量化蛹期间，苗圃或小面积林地可在冬季收集枯枝落叶烧毁，结合抚育进行林地除草培土，杀死虫蛹。 [4] 
④樟巢螟。1年发生2代，5月底到7月中旬为第1代幼虫期。幼虫于新梢上取食叶芽，并吐丝包住顶芽，造成新梢枯死甚至全株死亡。防治方法：于第2代幼虫尚未结成网巢时，喷施90%晶体敌百虫4000～5000倍液，如已结成网巢，可人工摘除烧掉。 [4] 
病害
①白粉病。注意清洁苗圃，适当疏苗，拔除病株，显症时用0.3～0.5°Bé石硫合剂喷防，每10d喷1次，连续3～4次。 [4] 
②黑斑病。播种时做好种子、土壤及覆盖物等消毒工作。发病时，先拔除烧毁病苗，并喷施2～3次0.5%高锰酸钾或福尔马林。', 2)
SET IDENTITY_INSERT [dbo].[CInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[TInfo] ON 

INSERT [dbo].[TInfo] ([TID], [TName]) VALUES (1, N'种子植物')
INSERT [dbo].[TInfo] ([TID], [TName]) VALUES (2, N'被子植物')
INSERT [dbo].[TInfo] ([TID], [TName]) VALUES (3, N'苔藓植物')
INSERT [dbo].[TInfo] ([TID], [TName]) VALUES (4, N'藻类植物')
INSERT [dbo].[TInfo] ([TID], [TName]) VALUES (5, N'其他')
SET IDENTITY_INSERT [dbo].[TInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[UInfo] ON 

INSERT [dbo].[UInfo] ([UID], [UName]) VALUES (1, N'张三')
SET IDENTITY_INSERT [dbo].[UInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[WInfo] ON 

INSERT [dbo].[WInfo] ([WID], [WName], [TID], [UID]) VALUES (2, N'香樟 （樟科樟属植物）', 2, 1)
SET IDENTITY_INSERT [dbo].[WInfo] OFF
GO
ALTER TABLE [dbo].[CInfo]  WITH CHECK ADD  CONSTRAINT [FK_CInfo_WInfo] FOREIGN KEY([WID])
REFERENCES [dbo].[WInfo] ([WID])
GO
ALTER TABLE [dbo].[CInfo] CHECK CONSTRAINT [FK_CInfo_WInfo]
GO
ALTER TABLE [dbo].[FInfo]  WITH CHECK ADD  CONSTRAINT [FK_FInfo_WInfo] FOREIGN KEY([WID])
REFERENCES [dbo].[WInfo] ([WID])
GO
ALTER TABLE [dbo].[FInfo] CHECK CONSTRAINT [FK_FInfo_WInfo]
GO
ALTER TABLE [dbo].[WInfo]  WITH CHECK ADD  CONSTRAINT [FK_WInfo_TInfo] FOREIGN KEY([TID])
REFERENCES [dbo].[TInfo] ([TID])
GO
ALTER TABLE [dbo].[WInfo] CHECK CONSTRAINT [FK_WInfo_TInfo]
GO
ALTER TABLE [dbo].[WInfo]  WITH CHECK ADD  CONSTRAINT [FK_WInfo_UInfo] FOREIGN KEY([UID])
REFERENCES [dbo].[UInfo] ([UID])
GO
ALTER TABLE [dbo].[WInfo] CHECK CONSTRAINT [FK_WInfo_UInfo]
GO
ALTER TABLE [dbo].[FInfo]  WITH CHECK ADD  CONSTRAINT [CK_FInfo] CHECK  (([FType]=(0) OR [FType]=(1)))
GO
ALTER TABLE [dbo].[FInfo] CHECK CONSTRAINT [CK_FInfo]
GO
USE [master]
GO
ALTER DATABASE [4/26demo] SET  READ_WRITE 
GO
