/****** 产品特殊卖点表 Jack Xue 20150116 ******/

CREATE TABLE ProductFeature
(
	ProductId int NOT NULL REFERENCES ProductMain(ProductId),
	FeatureId int NOT NULL REFERENCES Feature(FeatureId)

    CONSTRAINT PK_ProductFeature_ProductId_FeatureId PRIMARY KEY CLUSTERED (ProductId, FeatureId) WITH (IGNORE_DUP_KEY = OFF)
)  ON [PRIMARY]