/****** 产品树结构表 Jack Xue 20150114 ******/

CREATE TABLE ProductTree
(
	NodeId int IDENTITY(1,1) NOT NULL,
	ParentNodeId int NOT NULL,
	NodeType int NOT NULL DEFAULT 0,
	NodeValue int NOT NULL DEFAULT 0
	
    CONSTRAINT PK_ProductTree_NodeId PRIMARY KEY CLUSTERED (NodeId) WITH (IGNORE_DUP_KEY = OFF)
)  ON [PRIMARY]

-- Index
CREATE NONCLUSTERED  INDEX Index_ProductTree_ParentNodeId ON ProductTree(ParentNodeId)
CREATE NONCLUSTERED  INDEX Index_ProductTree_NodeType ON ProductTree(NodeType)
CREATE NONCLUSTERED  INDEX Index_ProductTree_NodeValue ON ProductTree(NodeValue)