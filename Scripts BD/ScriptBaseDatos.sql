CREATE DATABASE RestauranteBD

GO

USE [RestauranteBD]
GO
/****** Object:  Table [dbo].[CategoriaAlimento]    Script Date: 02/12/2021 05:59:28 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CategoriaAlimento](
	[Id] [uniqueidentifier] NOT NULL,
	[Descripcion] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CategoriaAlimento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DescripcionPlatillo]    Script Date: 02/12/2021 05:59:36 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DescripcionPlatillo](
	[Id] [uniqueidentifier] NOT NULL,
	[IdCategoria] [uniqueidentifier] NOT NULL,
	[NombrePlatillo] [varchar](250) NOT NULL,
	[Ingredientes] [nvarchar](500) NOT NULL,
	[Peso] [decimal](10, 2) NULL,
	[Calorias] [decimal](10, 2) NULL,
	[Precio] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_DescripcionPlatillo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CategoriaAlimento] ([Id], [Descripcion]) VALUES (N'f42f94fc-bec7-4f5d-92ac-6bc0427a4bdb', N'Bebidas')
INSERT [dbo].[CategoriaAlimento] ([Id], [Descripcion]) VALUES (N'f83a5001-2c3a-4b52-9363-bdb85447769b', N'Comidas')
INSERT [dbo].[CategoriaAlimento] ([Id], [Descripcion]) VALUES (N'9a30af3f-6f59-4271-803e-bfd7adb995d7', N'Postres')
INSERT [dbo].[CategoriaAlimento] ([Id], [Descripcion]) VALUES (N'1cd3336f-abd9-4f38-8166-c51d3ce02588', N'Desayunos')
INSERT [dbo].[CategoriaAlimento] ([Id], [Descripcion]) VALUES (N'c40215f4-901a-443a-824a-cf63c64fab73', N'Cenas')
GO
INSERT [dbo].[DescripcionPlatillo] ([Id], [IdCategoria], [NombrePlatillo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'e7b14fb2-30eb-4330-920b-09aa1ccf2228', N'1cd3336f-abd9-4f38-8166-c51d3ce02588', N'Huevos rancheros', N'Tortillas – 2 Huevos – Salsa verde', CAST(125.00 AS Decimal(10, 2)), CAST(550.00 AS Decimal(10, 2)), CAST(55.00 AS Decimal(10, 2)))
INSERT [dbo].[DescripcionPlatillo] ([Id], [IdCategoria], [NombrePlatillo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'2a8cd7c0-32fe-488c-a5f0-1977e9bad9b6', N'9a30af3f-6f59-4271-803e-bfd7adb995d7', N'Crepa de nutella', N'Nutella y duraznos', CAST(150.00 AS Decimal(10, 2)), CAST(380.00 AS Decimal(10, 2)), CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[DescripcionPlatillo] ([Id], [IdCategoria], [NombrePlatillo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'ed183288-d3e7-4579-a403-2148cd62a2c6', N'f83a5001-2c3a-4b52-9363-bdb85447769b', N'Sopa Azteca', N'Jitomate – Pollo – Tortilla – Aguacate', CAST(200.00 AS Decimal(10, 2)), CAST(800.00 AS Decimal(10, 2)), CAST(80.00 AS Decimal(10, 2)))
INSERT [dbo].[DescripcionPlatillo] ([Id], [IdCategoria], [NombrePlatillo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'352ac4c4-f286-42f6-9075-25dbc82d97b1', N'f42f94fc-bec7-4f5d-92ac-6bc0427a4bdb', N'Té manzanilla', N'Agua, azúcar y manzanilla', CAST(180.00 AS Decimal(10, 2)), CAST(120.00 AS Decimal(10, 2)), CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[DescripcionPlatillo] ([Id], [IdCategoria], [NombrePlatillo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'668f77a0-13ca-4d66-9e1a-3500729cbc4b', N'c40215f4-901a-443a-824a-cf63c64fab73', N'Molletes', N'Pan, frijoles y queso', CAST(200.00 AS Decimal(10, 2)), CAST(400.00 AS Decimal(10, 2)), CAST(67.00 AS Decimal(10, 2)))
INSERT [dbo].[DescripcionPlatillo] ([Id], [IdCategoria], [NombrePlatillo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'2a344cd7-178d-4787-a946-3903e26cc92e', N'f83a5001-2c3a-4b52-9363-bdb85447769b', N'Milanesa de res', N'Milanesa de res – Papas a la francesa', CAST(230.00 AS Decimal(10, 2)), CAST(900.00 AS Decimal(10, 2)), CAST(110.00 AS Decimal(10, 2)))
INSERT [dbo].[DescripcionPlatillo] ([Id], [IdCategoria], [NombrePlatillo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'3bfe84d0-5b21-4a52-9d30-3d975aa2f2ae', N'9a30af3f-6f59-4271-803e-bfd7adb995d7', N'Flan', N'Leche y vainilla', CAST(180.00 AS Decimal(10, 2)), CAST(120.00 AS Decimal(10, 2)), CAST(38.00 AS Decimal(10, 2)))
INSERT [dbo].[DescripcionPlatillo] ([Id], [IdCategoria], [NombrePlatillo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'c1dae578-1922-4c62-b882-43bcbac88005', N'1cd3336f-abd9-4f38-8166-c51d3ce02588', N'Huevo revuelto con jamón', N'Huevos – Jamón', CAST(160.00 AS Decimal(10, 2)), CAST(600.00 AS Decimal(10, 2)), CAST(65.00 AS Decimal(10, 2)))
INSERT [dbo].[DescripcionPlatillo] ([Id], [IdCategoria], [NombrePlatillo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'37b81a56-e77f-44eb-ab14-8d7db66487a1', N'f42f94fc-bec7-4f5d-92ac-6bc0427a4bdb', N'Licuado de Fresa', N'Lecha y fresas', CAST(400.00 AS Decimal(10, 2)), CAST(600.00 AS Decimal(10, 2)), CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[DescripcionPlatillo] ([Id], [IdCategoria], [NombrePlatillo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'aad1702d-9942-4337-a946-9897017bfacf', N'c40215f4-901a-443a-824a-cf63c64fab73', N'Emparedado de jamón', N'Pan, jamón, queso y jitomate', CAST(100.00 AS Decimal(10, 2)), CAST(350.00 AS Decimal(10, 2)), CAST(45.00 AS Decimal(10, 2)))
INSERT [dbo].[DescripcionPlatillo] ([Id], [IdCategoria], [NombrePlatillo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'805a37d4-b7ae-4e2a-a078-ada8347ed05c', N'f83a5001-2c3a-4b52-9363-bdb85447769b', N'Pechuga de pollo rostizada', N'Pechuga de pollo', CAST(160.00 AS Decimal(10, 2)), CAST(600.00 AS Decimal(10, 2)), CAST(65.00 AS Decimal(10, 2)))
INSERT [dbo].[DescripcionPlatillo] ([Id], [IdCategoria], [NombrePlatillo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'13fdae0c-a9bb-43dd-87a3-b87be9e2c7a7', N'9a30af3f-6f59-4271-803e-bfd7adb995d7', N'string', N'string', CAST(200.00 AS Decimal(10, 2)), CAST(200.00 AS Decimal(10, 2)), CAST(25.00 AS Decimal(10, 2)))
INSERT [dbo].[DescripcionPlatillo] ([Id], [IdCategoria], [NombrePlatillo], [Ingredientes], [Peso], [Calorias], [Precio]) VALUES (N'825fbad6-f76d-43bb-bbeb-e779794a5940', N'1cd3336f-abd9-4f38-8166-c51d3ce02588', N'Chilaquiles', N'Tortillas – Salsa Verde – Huevo – Cebolla – Crema – Queso', CAST(200.00 AS Decimal(10, 2)), CAST(550.00 AS Decimal(10, 2)), CAST(60.00 AS Decimal(10, 2)))
GO
ALTER TABLE [dbo].[DescripcionPlatillo]  WITH CHECK ADD  CONSTRAINT [FK_DescripcionPlatillo_CategoriaAlimento] FOREIGN KEY([IdCategoria])
REFERENCES [dbo].[CategoriaAlimento] ([Id])
GO
ALTER TABLE [dbo].[DescripcionPlatillo] CHECK CONSTRAINT [FK_DescripcionPlatillo_CategoriaAlimento]
GO
/****** Object:  StoredProcedure [dbo].[uspActualizarPlatillo]    Script Date: 02/12/2021 05:59:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jorge Cepeda
-- Create date: 01/12/2021
-- Description:	Actualizar platillo 
-- =============================================
CREATE PROCEDURE [dbo].[uspActualizarPlatillo]
(
	@Id uniqueidentifier,
	@IdCategoria uniqueidentifier,
	@NombrePlatillo VARCHAR(250),
	@Ingredientes VARCHAR(500),
	@Peso DECIMAL(10,2),
	@Calorias DECIMAL (10,2),
	@Precio DECIMAL (10,2)
)
AS
BEGIN
	SET NOCOUNT ON;

	UPDATE [dbo].[DescripcionPlatillo]
	SET
		[IdCategoria]		= @IdCategoria,
		[NombrePlatillo]	= @NombrePlatillo,
		[Ingredientes]		= @Ingredientes,
		[Peso]				= @Peso,
		[Calorias]			= @Calorias,
		[Precio]			= @Precio
	WHERE [Id] = @Id
	   
END
GO
/****** Object:  StoredProcedure [dbo].[uspEliminarPlatillo]    Script Date: 02/12/2021 05:59:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jorge Cepeda
-- Create date: 01/12/2021
-- Description:	Eliminar platillo 
-- =============================================
CREATE PROCEDURE [dbo].[uspEliminarPlatillo]
(
	@Id uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON;

	DELETE [dbo].[DescripcionPlatillo]
	WHERE [Id] = @Id
	   
END
GO
/****** Object:  StoredProcedure [dbo].[uspInsertarPlatillo]    Script Date: 02/12/2021 05:59:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jorge Cepeda
-- Create date: 01/12/2021
-- Description:	Insertar platillo 
-- =============================================
CREATE PROCEDURE [dbo].[uspInsertarPlatillo]
(
	@Id uniqueidentifier,
	@IdCategoria uniqueidentifier,
	@NombrePlatillo VARCHAR(250),
	@Ingredientes VARCHAR(500),
	@Peso DECIMAL(10,2),
	@Calorias DECIMAL (10,2),
	@Precio DECIMAL (10,2)

)
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO [dbo].[DescripcionPlatillo]
	VALUES
	(
		@Id,
		@IdCategoria,
		@NombrePlatillo,
		@Ingredientes,
		@Peso,
		@Calorias,
		@Precio
	)    
END
GO
/****** Object:  StoredProcedure [dbo].[uspObtenerPlatilloPorCategoria]    Script Date: 02/12/2021 05:59:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jorge Cepeda
-- Create date: 01/12/2021
-- Description:	Obtener platillos por categoria
-- =============================================
CREATE PROCEDURE [dbo].[uspObtenerPlatilloPorCategoria]
(
	@Id uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT a.*, b.Descripcion FROM [dbo].[DescripcionPlatillo] a
	INNER JOIN [dbo].[CategoriaAlimento] b ON a.[IdCategoria] = b.[Id]
	WHERE IdCategoria = @Id
    
END
GO
/****** Object:  StoredProcedure [dbo].[uspObtenerPlatilloPorId]    Script Date: 02/12/2021 05:59:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jorge Cepeda
-- Create date: 01/12/2021
-- Description:	Obtener platillo por id
-- =============================================
CREATE PROCEDURE [dbo].[uspObtenerPlatilloPorId]
(
	@Id uniqueidentifier
)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM [dbo].[DescripcionPlatillo]
	WHERE [Id] = @Id
    
END
GO
/****** Object:  StoredProcedure [dbo].[uspObtenerPlatillos]    Script Date: 02/12/2021 05:59:51 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

-- =============================================
-- Author:		Jorge Cepeda
-- Create date: 01/12/2021
-- Description:	Obtener todos los platillos
-- =============================================
CREATE PROCEDURE [dbo].[uspObtenerPlatillos]
AS
BEGIN
	SET NOCOUNT ON;

	SELECT * FROM [dbo].[DescripcionPlatillo]
    
END
GO
