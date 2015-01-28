/****** Ãÿ ‚¬Ùµ„±Ì Jack Xue 20150114 ******/

CREATE TABLE Feature
(
	FeatureId int IDENTITY(1,1) NOT NULL,
	FeatureTitle nvarchar(100) NOT NULL DEFAULT '',
	FeatureDesc nvarchar(500) NOT NULL DEFAULT '',
	FeatureImage nvarchar(100) NOT NULL DEFAULT ''
	
    CONSTRAINT PK_Feature_FeatureId PRIMARY KEY CLUSTERED (FeatureId) WITH (IGNORE_DUP_KEY = OFF)
)  ON [PRIMARY]

-- Index
CREATE NONCLUSTERED  INDEX Index_Feature_FeatureTitle ON Feature(FeatureTitle)