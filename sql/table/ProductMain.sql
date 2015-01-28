/****** ��Ʒ�������� Jack Xue 20150114 ******/

CREATE TABLE ProductMain
(
	ProductId int IDENTITY(1,1) NOT NULL,
	ProductName nvarchar(100) NOT NULL DEFAULT '',
	ProductDesc nvarchar(400) NOT NULL DEFAULT '',
	FieldGroupId int NOT NULL REFERENCES FieldGroup(FieldGroupId), 		-- ���Է���
		
	-- Configuration DRP2.0 --
	SelfDeveloped nvarchar(50) NOT NULL DEFAULT ''		-- �Ƿ�����
	Model nvarchar(50) NOT NULL DEFAULT ''		-- �ͺ�
	OrginalModel nvarchar(50) NOT NULL DEFAULT ''		-- ԭ�ͺ�
	MarketTime nvarchar(50) NOT NULL DEFAULT ''		-- ����ʱ��
	Dimension nvarchar(50) NOT NULL DEFAULT ''		-- �����
	ChassisHeight nvarchar(50) NOT NULL DEFAULT ''		-- ���̸߶�
	Weight nvarchar(50) NOT NULL DEFAULT ''		-- ��������
	Specification nvarchar(50) NOT NULL DEFAULT ''		-- ���
	Speed nvarchar(50) NOT NULL DEFAULT ''		-- �ٶ�
	Torque nvarchar(50) NOT NULL DEFAULT ''		-- Ť��
	Mileage nvarchar(50) NOT NULL DEFAULT ''		-- ���
	Power nvarchar(50) NOT NULL DEFAULT ''		-- ����
	Climbing nvarchar(50) NOT NULL DEFAULT ''		-- ����
	MaxLoad nvarchar(50) NOT NULL DEFAULT ''		-- �������
	DisplaySystem nvarchar(50) NOT NULL DEFAULT ''		-- ��ʾϵͳ
	Suspension nvarchar(50) NOT NULL DEFAULT ''		-- ����
	Wheels nvarchar(50) NOT NULL DEFAULT ''		-- ����
	Tyre nvarchar(50) NOT NULL DEFAULT ''		-- ��̥
	Brake nvarchar(50) NOT NULL DEFAULT ''		-- �ƶ�
	Motor nvarchar(50) NOT NULL DEFAULT ''		-- ���
	Controller nvarchar(50) NOT NULL DEFAULT ''		-- ������
	Battery nvarchar(50) NOT NULL DEFAULT ''		-- ���
	Charger nvarchar(50) NOT NULL DEFAULT ''		-- �����
	Converter nvarchar(50) NOT NULL DEFAULT ''		-- ת����
	Optional nvarchar(50) NOT NULL DEFAULT ''		-- ѡ����Ŀ
	Security nvarchar(50) NOT NULL DEFAULT ''		-- ����ϵͳ
	AuxiliaryFuction nvarchar(50) NOT NULL DEFAULT ''		-- ��������

	-- Configuration PPT �������� --
	AuxiliaryFuction nvarchar(50) NOT NULL DEFAULT ''		-- ��������
	Model nvarchar(50) NOT NULL DEFAULT ''		-- �ͺ�
	Dimension nvarchar(50) NOT NULL DEFAULT ''		-- �����
	PedalHeight nvarchar(50) NOT NULL DEFAULT ''		-- ��̤��߶�
	PedalHeight nvarchar(50) NOT NULL DEFAULT ''		-- ��̤��߶�
	Motor nvarchar(50) NOT NULL DEFAULT ''		-- ���
	Battery nvarchar(50) NOT NULL DEFAULT ''		-- ���
	Converter nvarchar(50) NOT NULL DEFAULT ''		-- ת����
	Charger nvarchar(50) NOT NULL DEFAULT ''		-- �����
	Suspension nvarchar(50) NOT NULL DEFAULT ''		-- ����
	Brake nvarchar(50) NOT NULL DEFAULT ''		-- �ƶ�
	Security nvarchar(50) NOT NULL DEFAULT ''		-- ����
	Wheels nvarchar(50) NOT NULL DEFAULT ''		-- ����
	Udf1  nvarchar(50) NOT NULL DEFAULT ''		-- UDF
	Udf2  nvarchar(50) NOT NULL DEFAULT ''		-- UDF

	-- Configuration PPT ��ϸ���� --
	MarketTime nvarchar(50) NOT NULL DEFAULT ''		-- ����ʱ��
	Serial nvarchar(50) NOT NULL DEFAULT ''		-- ���к�
	DealerPrice nvarchar(50) NOT NULL DEFAULT ''		-- ������
	MarketPrice nvarchar(50) NOT NULL DEFAULT ''		-- �г���	
	HandlebarHeight nvarchar(50) NOT NULL DEFAULT ''		-- ���Ѹ߶�	
	SaddleHeight nvarchar(50) NOT NULL DEFAULT ''		-- �����߶�
	ChassisHeight nvarchar(50) NOT NULL DEFAULT ''		-- ���̸߶�
	WheelBaseLength nvarchar(50) NOT NULL DEFAULT ''		-- ǰ�����־�
	Speed nvarchar(50) NOT NULL DEFAULT ''		-- �ٶ�
	Mileage nvarchar(50) NOT NULL DEFAULT ''		-- ���
	TurningRadius nvarchar(50) NOT NULL DEFAULT ''		-- ת��뾶
	Climbing nvarchar(50) NOT NULL DEFAULT ''		-- ����
	MaxLoad nvarchar(50) NOT NULL DEFAULT ''		-- �������
	Material nvarchar(50) NOT NULL DEFAULT ''		-- ���ܲ���
	Weight nvarchar(50) NOT NULL DEFAULT ''		-- ��������

    CONSTRAINT PK_ProductMain_ProductId PRIMARY KEY CLUSTERED (ProductId) WITH (IGNORE_DUP_KEY = OFF)
)  ON [PRIMARY]

-- Index
CREATE NONCLUSTERED  INDEX Index_ProductMain_ProductName ON ProductMain(ProductName)