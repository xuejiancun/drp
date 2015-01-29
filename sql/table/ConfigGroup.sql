/****** 属性分组表 Jack Xue 20150128 ******/

CREATE TABLE ConfigGroup
(
	ConfigGroupId int IDENTITY(1,1) NOT NULL,
	ConfigGroupTitle nvarchar(50) NOT NULL DEFAULT '',
	ConfigGroupDesc nvarchar(100) NOT NULL DEFAULT ''
	
    CONSTRAINT PK_ConfigGroup_ConfigGroupId PRIMARY KEY CLUSTERED (ConfigGroupId) WITH (IGNORE_DUP_KEY = OFF)
)  ON [PRIMARY]

-- Index
CREATE NONCLUSTERED  INDEX Index_ConfigGroup_ConfigGroupTitle ON ConfigGroup(ConfigGroupTitle)