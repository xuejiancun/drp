/****** 产品数据主表 Jack Xue 20150114 ******/

CREATE TABLE ProductMain
(
	ProductId int IDENTITY(1,1) NOT NULL,
	ProductName nvarchar(100) NOT NULL DEFAULT '',
	ProductDesc nvarchar(400) NOT NULL DEFAULT '',
	FieldGroupId int NOT NULL REFERENCES FieldGroup(FieldGroupId), 		-- 属性分组
		
	-- Configuration DRP2.0 --
	SelfDeveloped nvarchar(50) NOT NULL DEFAULT ''		-- 是否自主
	Model nvarchar(50) NOT NULL DEFAULT ''		-- 型号
	OrginalModel nvarchar(50) NOT NULL DEFAULT ''		-- 原型号
	MarketTime nvarchar(50) NOT NULL DEFAULT ''		-- 上市时间
	Dimension nvarchar(50) NOT NULL DEFAULT ''		-- 长宽高
	ChassisHeight nvarchar(50) NOT NULL DEFAULT ''		-- 底盘高度
	Weight nvarchar(50) NOT NULL DEFAULT ''		-- 整车重量
	Specification nvarchar(50) NOT NULL DEFAULT ''		-- 规格
	Speed nvarchar(50) NOT NULL DEFAULT ''		-- 速度
	Torque nvarchar(50) NOT NULL DEFAULT ''		-- 扭矩
	Mileage nvarchar(50) NOT NULL DEFAULT ''		-- 里程
	Power nvarchar(50) NOT NULL DEFAULT ''		-- 功率
	Climbing nvarchar(50) NOT NULL DEFAULT ''		-- 爬坡
	MaxLoad nvarchar(50) NOT NULL DEFAULT ''		-- 最大载重
	DisplaySystem nvarchar(50) NOT NULL DEFAULT ''		-- 显示系统
	Suspension nvarchar(50) NOT NULL DEFAULT ''		-- 避震
	Wheels nvarchar(50) NOT NULL DEFAULT ''		-- 车轮
	Tyre nvarchar(50) NOT NULL DEFAULT ''		-- 轮胎
	Brake nvarchar(50) NOT NULL DEFAULT ''		-- 制动
	Motor nvarchar(50) NOT NULL DEFAULT ''		-- 电机
	Controller nvarchar(50) NOT NULL DEFAULT ''		-- 控制器
	Battery nvarchar(50) NOT NULL DEFAULT ''		-- 电池
	Charger nvarchar(50) NOT NULL DEFAULT ''		-- 充电器
	Converter nvarchar(50) NOT NULL DEFAULT ''		-- 转换器
	Optional nvarchar(50) NOT NULL DEFAULT ''		-- 选配项目
	Security nvarchar(50) NOT NULL DEFAULT ''		-- 防盗系统
	AuxiliaryFuction nvarchar(50) NOT NULL DEFAULT ''		-- 辅助功能

	-- Configuration PPT 基本配置 --
	AuxiliaryFuction nvarchar(50) NOT NULL DEFAULT ''		-- 辅助功能
	Model nvarchar(50) NOT NULL DEFAULT ''		-- 型号
	Dimension nvarchar(50) NOT NULL DEFAULT ''		-- 长宽高
	PedalHeight nvarchar(50) NOT NULL DEFAULT ''		-- 脚踏板高度
	PedalHeight nvarchar(50) NOT NULL DEFAULT ''		-- 脚踏板高度
	Motor nvarchar(50) NOT NULL DEFAULT ''		-- 电机
	Battery nvarchar(50) NOT NULL DEFAULT ''		-- 电池
	Converter nvarchar(50) NOT NULL DEFAULT ''		-- 转换器
	Charger nvarchar(50) NOT NULL DEFAULT ''		-- 充电器
	Suspension nvarchar(50) NOT NULL DEFAULT ''		-- 避震
	Brake nvarchar(50) NOT NULL DEFAULT ''		-- 制动
	Security nvarchar(50) NOT NULL DEFAULT ''		-- 防盗
	Wheels nvarchar(50) NOT NULL DEFAULT ''		-- 车轮
	Udf1  nvarchar(50) NOT NULL DEFAULT ''		-- UDF
	Udf2  nvarchar(50) NOT NULL DEFAULT ''		-- UDF

	-- Configuration PPT 详细配置 --
	MarketTime nvarchar(50) NOT NULL DEFAULT ''		-- 上市时间
	Serial nvarchar(50) NOT NULL DEFAULT ''		-- 序列号
	DealerPrice nvarchar(50) NOT NULL DEFAULT ''		-- 经销价
	MarketPrice nvarchar(50) NOT NULL DEFAULT ''		-- 市场价	
	HandlebarHeight nvarchar(50) NOT NULL DEFAULT ''		-- 车把高度	
	SaddleHeight nvarchar(50) NOT NULL DEFAULT ''		-- 鞍座高度
	ChassisHeight nvarchar(50) NOT NULL DEFAULT ''		-- 底盘高度
	WheelBaseLength nvarchar(50) NOT NULL DEFAULT ''		-- 前后轮轮距
	Speed nvarchar(50) NOT NULL DEFAULT ''		-- 速度
	Mileage nvarchar(50) NOT NULL DEFAULT ''		-- 里程
	TurningRadius nvarchar(50) NOT NULL DEFAULT ''		-- 转弯半径
	Climbing nvarchar(50) NOT NULL DEFAULT ''		-- 爬坡
	MaxLoad nvarchar(50) NOT NULL DEFAULT ''		-- 最大载重
	Material nvarchar(50) NOT NULL DEFAULT ''		-- 车架材质
	Weight nvarchar(50) NOT NULL DEFAULT ''		-- 整车重量

    CONSTRAINT PK_ProductMain_ProductId PRIMARY KEY CLUSTERED (ProductId) WITH (IGNORE_DUP_KEY = OFF)
)  ON [PRIMARY]

-- Index
CREATE NONCLUSTERED  INDEX Index_ProductMain_ProductName ON ProductMain(ProductName)