/****** 属性分组表 Jack Xue 20150128 ******/

CREATE TABLE ProductComment
(
	CommentId int IDENTITY(1,1) NOT NULL,
	ProductId int NOT NULL REFERENCES ProductMain(ProductId),
	CommentScore int NOT NULL DEFAULT 0,
	CommentTitle nvarchar(50) NOT NULL DEFAULT '',
	CommentDesc nvarchar(max) NOT NULL DEFAULT '',
	CommentMan nvarchar(50) NOT NULL DEFAULT '',
	CommentDate datetime NOT NULL DEFAULT '19000101',
	CommentUseful int NOT NULL DEFAULT 0,
	CommentUseless int NOT NULL DEFAULT 0
	
    CONSTRAINT PK_ProductComment_CommentId PRIMARY KEY CLUSTERED (CommentId) WITH (IGNORE_DUP_KEY = OFF)
)  ON [PRIMARY]

-- Index
CREATE NONCLUSTERED  INDEX Index_ProductComment_CommentScore ON ProductComment(CommentScore)