
use OnlineShop

---------------------------------------------- Table user status -------------------------------

CREATE TABLE UserStatus (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	StatusName nvarchar(1000)
)
GO

-- select * from UserStatus

-------------------------------------------------- Table role -------------------------------

Create table [Role](
	RoleID int IDENTITY(1, 1) primary key,
	RoleName nvarchar (20),
	-- Admin,marketing, seller, customer
);

GO

--select * from Role

---------------------------- table Users ---------------------------------
create table Users
(
	UserID int PRIMARY KEY identity(1,1),
	Username nvarchar(50),
	[Password] varchar(50),
	Email nvarchar(100),
	[RoleID] int default 3,
	statusId int,
	FOREIGN KEY(RoleID) REFERENCES [Role](RoleID),
	FOREIGN KEY (statusId)
	REFERENCES UserStatus (id)
)

--select * from Users
------------------------------------------------ Table Ship --------------------------------
CREATE TABLE Ship (
	id int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	CityName nvarchar(1000) ,
	ShipPrice int
)

--select * from Ship

----------------------------- Table UserAddress -------------------

CREATE TABLE UserAddress (
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	UserID int,
	ShipName nvarchar(500),
	ShipAddress nvarchar(1000),
	ShipCityID int,
	PhoneNum varchar(20),
	constraint userID_in_user_address FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint ship_city_in_ship_address FOREIGN KEY(ShipCityID) REFERENCES Ship(id)
)

--select * from UserAddress

----------------------------- Table Category -------------------

CREATE TABLE Category (
	CategoryID int PRIMARY KEY identity(1,1),
	CategoryName nvarchar(1000),
)

--select * from Category

----------------------------- Table subcategory ----------------------------

CREATE TABLE [dbo].[SubCategory](
	[SubCategoryID] [int] PRIMARY KEY  IDENTITY(1,1) ,
	[SubCategoryName] [nvarchar](255),
	[CategoryID] [int] ,
	constraint CategoryID FOREIGN KEY (CategoryID)  REFERENCES Category(CategoryID)
)

--select * from [SubCategory]

------------------------------- Table ProductStatus -------------------------

CREATE TABLE ProductStatus (
	StatusID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	StatusName nvarchar(1000)
)

--select * from ProductStatus

------------------------------- Table Brand -------------------------

CREATE TABLE Brand (
	BrandID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	BrandName nvarchar(1000)
) 

--select * from Brand

------------------------------- Table Product -------------------------

CREATE TABLE Product (
	ProductID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	ProductName nvarchar(1000),
	[Description] text,
	OriginalPrice int, 
	SellPrice int,	
	SalePercent int CHECK (SalePercent>=0 AND SalePercent<=100),
	SubCategoryID int,
	SellerID int,
	Amount int,
	StatusID int,
	BrandID int,
	constraint product_in_subCategory FOREIGN KEY(SubCategoryID) REFERENCES SubCategory(SubCategoryID),
	constraint SellerID_in_Users FOREIGN KEY(SellerID) REFERENCES Users(UserID),
	constraint StatusID_in_Status FOREIGN KEY(StatusID) REFERENCES ProductStatus(StatusID),
	constraint BrandID_in_Brand FOREIGN KEY(BrandID) REFERENCES Brand(BrandID)
)

--select * from Product

--------------------- Table ProductImg -------------------

CREATE TABLE [dbo].[ProductImg](
	[ProductID] [int]  ,
	[ProductImgURL] [varchar](255) ,
	constraint ProductImg_ID FOREIGN KEY([ProductID])
	REFERENCES [dbo].[Product] ([ProductID])
)


--------------------- Table cart ---------------------

CREATE TABLE Cart (
	UserID int,
	ProductID int,
	Amount int
	constraint userID_in_cart FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint productID_in_cart FOREIGN KEY(ProductID) REFERENCES Product(ProductID),
)

--select * from Cart

--------------------- Table OrderStatus -----------------

CREATE TABLE [dbo].[OrderStatus](
	[ID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[Name] [nvarchar](50) NOT NULL,
 )

 -------------------- Table Orders ----------------------

 CREATE TABLE [dbo].[Orders](
	[ID] [int] IDENTITY(1,1) NOT NULL PRIMARY KEY,
	[UserID] [int] NULL,
	[TotalPrice] [int] NULL,
	[Note] [nvarchar](2000) NULL,
	[Status] [int] NULL,
	[Date] [DATETIME] NULL ,
	constraint userID_in_order_status FOREIGN KEY(UserID) REFERENCES Users(UserID),
	constraint statusID_in_order_status FOREIGN KEY(Status) REFERENCES OrderStatus(ID)
)

--------------------- Table OrderDetail ---------------------

CREATE TABLE [dbo].[OrderDetail](
	ID int NOT NULL IDENTITY(1, 1) PRIMARY KEY,
	[OrderID] [int] NOT NULL ,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](1000) NOT NULL,
	[ProductPrice] [int] NOT NULL,	
	[Quantity] [int] NOT NULL,
	constraint orderID_in_order_detail FOREIGN KEY(OrderID) REFERENCES Orders(ID),
	constraint productID_in_order_detail FOREIGN KEY(ProductID) REFERENCES Product(ProductID)	
)