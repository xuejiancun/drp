/****** 自定义栏位表 Jack Xue 20150114 ******/

CREATE TABLE UdfField
(
	FieldId int IDENTITY(1,1) NOT NULL,
	FieldName nvarchar(50) NOT NULL DEFAULT '',
	FieldDesc nvarchar(100) NOT NULL DEFAULT '',
	FieldWeight int NOT NULL DEFAULT 0,
	FieldAppear nvarchar(50) NOT NULL DEFAULT ''	-- WEBSITE / DRP / APP
	
    CONSTRAINT PK_UdfField_FieldId PRIMARY KEY CLUSTERED (FieldId) WITH (IGNORE_DUP_KEY = OFF)
)  ON [PRIMARY]

-- Index
CREATE NONCLUSTERED  INDEX Index_UdfField_FieldName ON UdfField(FieldName)