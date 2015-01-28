/****** 产品自定义数据表 Jack Xue 20150114 ******/

CREATE TABLE ProductUdf
(
	ProductId int NOT NULL REFERENCES ProductMain(ProductId),
	FieldId int NOT NULL REFERENCES UdfField(FieldId),
	FieldValue nvarchar(max) NOT NULL DEFAULT ''
	
    CONSTRAINT PK_ProductUdf_ProductId_FieldId PRIMARY KEY CLUSTERED (ProductId, FieldId) WITH (IGNORE_DUP_KEY = OFF)
)  ON [PRIMARY]

-- Index
CREATE NONCLUSTERED  INDEX Index_ProductUdf_FieldValue ON ProductUdf(FieldValue)