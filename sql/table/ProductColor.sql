/****** 产品标签数据表 Jack Xue 20150114 ******/

CREATE TABLE ProductColor
(
	ProductId int NOT NULL REFERENCES ProductMain(ProductId),
	ColorId int IDENTITY(1,1) NOT NULL,
	ColorName nvarchar(100) NOT NULL DEFAULT '',
	ColorImage nvarchar(100) NOT NULL DEFAULT ''
	
    CONSTRAINT PK_ProductColor_ProductId_ColorId PRIMARY KEY CLUSTERED (ProductId, ColorId) WITH (IGNORE_DUP_KEY = OFF)
)  ON [PRIMARY]

-- Index
CREATE NONCLUSTERED  INDEX Index_Color_ColorName ON Color(ColorName)