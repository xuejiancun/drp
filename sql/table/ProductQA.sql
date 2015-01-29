/****** 属性分组表 Jack Xue 20150128 ******/

CREATE TABLE ProductQA
(
	QAId int IDENTITY(1,1) NOT NULL,
	ProductId int NOT NULL REFERENCES ProductMain(ProductId),
	Question nvarchar(200) NOT NULL DEFAULT '',
	Answer nvarchar(max) NOT NULL DEFAULT ''
	
    CONSTRAINT PK_ProductQA_QAId PRIMARY KEY CLUSTERED (QAId) WITH (IGNORE_DUP_KEY = OFF)
)  ON [PRIMARY]

-- Index
CREATE NONCLUSTERED  INDEX Index_ProductQA_QAScore ON ProductQA(QAScore)