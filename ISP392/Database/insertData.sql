
use OnlineShop

------ Insert into UserStatus ------------------------
INSERT INTO UserStatus VALUES (N'Active');
INSERT INTO UserStatus VALUES (N'Locked');
INSERT INTO UserStatus VALUES (N'Gmail Login');
INSERT INTO UserStatus VALUES (N'Unverified');

------ Insert into role ------------

INSERT INTO [Role] VALUES (N'Admin');
INSERT INTO Role VALUES (N'Seller');
INSERT INTO Role VALUES (N'Customer');
INSERT INTO Role VALUES (N'Marketing');
INSERT INTO Role VALUES (N'Shipper');

------ Insert into Users ------------

INSERT INTO Users VALUES(N'admin','123456','admin@fpt.edu.vn',1,1);
INSERT INTO Users VALUES(N'tu','1234567','tulqhe160053@fpt.edu.vn',3,1);
INSERT INTO Users VALUES(N'thanh','654321','thanh01@gmail.com',2,1);
INSERT INTO Users VALUES(N'mkt','mkt123','mkt@gmail.com',4,1);
INSERT INTO Users VALUES(N'shipper','shipper','shipper@fpt.edu.vn',5,1);

------ Insert into Ship ------------

INSERT INTO Ship VALUES (N'An Giang', 30000);
INSERT INTO Ship VALUES (N'Bà Rịa-Vũng Tàu', 30000);
INSERT INTO Ship VALUES (N'Bạc Liêu', 30000);
INSERT INTO Ship VALUES (N'Bắc Kạn', 30000);
INSERT INTO Ship VALUES (N'Bắc Giang', 30000);
INSERT INTO Ship VALUES (N'Bắc Ninh', 30000);
INSERT INTO Ship VALUES (N'Bến Tre', 30000);
INSERT INTO Ship VALUES (N'Bình Dương', 30000);
INSERT INTO Ship VALUES (N'Bình Định', 30000);
INSERT INTO Ship VALUES (N'Bình Phước', 30000);
INSERT INTO Ship VALUES (N'Bình Thuận', 30000);
INSERT INTO Ship VALUES (N'Cà Mau', 30000);
INSERT INTO Ship VALUES (N'Cao Bằng', 30000);
INSERT INTO Ship VALUES (N'Cần Thơ', 30000);
INSERT INTO Ship VALUES (N'Đà Nẵng', 30000);
INSERT INTO Ship VALUES (N'Đắk Lắk', 30000);
INSERT INTO Ship VALUES (N'Đắk Nông', 30000);
INSERT INTO Ship VALUES (N'Điện Biên', 30000);
INSERT INTO Ship VALUES (N'Đồng Nai', 30000);
INSERT INTO Ship VALUES (N'Đồng Tháp', 30000);
INSERT INTO Ship VALUES (N'Gia Lai', 30000);
INSERT INTO Ship VALUES (N'Hà Giang', 30000);
INSERT INTO Ship VALUES (N'Hà Nam', 30000);
INSERT INTO Ship VALUES (N'Hà Nội', 20000);
INSERT INTO Ship VALUES (N'Hà Tĩnh', 30000);
INSERT INTO Ship VALUES (N'Hải Dương', 30000);
INSERT INTO Ship VALUES (N'Hải Phòng', 30000);
INSERT INTO Ship VALUES (N'Hòa Bình', 30000);
INSERT INTO Ship VALUES (N'Hồ Chí Minh', 30000);
INSERT INTO Ship VALUES (N'Hậu Giang', 30000);
INSERT INTO Ship VALUES (N'Hưng Yên', 30000);
INSERT INTO Ship VALUES (N'Khánh Hòa', 30000);
INSERT INTO Ship VALUES (N'Kiên Giang', 30000);
INSERT INTO Ship VALUES (N'Kon Tum', 30000);
INSERT INTO Ship VALUES (N'Lai Châu', 30000);
INSERT INTO Ship VALUES (N'Lào Cai', 30000);
INSERT INTO Ship VALUES (N'Lạng Sơn', 30000);
INSERT INTO Ship VALUES (N'Lâm Đồng', 30000);
INSERT INTO Ship VALUES (N'Long An', 30000);
INSERT INTO Ship VALUES (N'Nam Định', 30000);
INSERT INTO Ship VALUES (N'Nghệ An', 30000);
INSERT INTO Ship VALUES (N'Ninh Bình', 30000);
INSERT INTO Ship VALUES (N'Ninh Thuận', 30000);
INSERT INTO Ship VALUES (N'Phú Thọ', 30000);
INSERT INTO Ship VALUES (N'Phú Yên', 30000);
INSERT INTO Ship VALUES (N'Quảng Bình', 30000);
INSERT INTO Ship VALUES (N'Quảng Nam', 30000);
INSERT INTO Ship VALUES (N'Quảng Ngãi', 30000);
INSERT INTO Ship VALUES (N'Quảng Ninh', 30000);
INSERT INTO Ship VALUES (N'Quảng Trị', 30000);
INSERT INTO Ship VALUES (N'Sóc Trăng', 30000);
INSERT INTO Ship VALUES (N'Sơn La', 30000);
INSERT INTO Ship VALUES (N'Tây Ninh', 30000);
INSERT INTO Ship VALUES (N'Thái Bình', 30000);
INSERT INTO Ship VALUES (N'Thái Nguyên', 30000);
INSERT INTO Ship VALUES (N'Thanh Hóa', 30000);
INSERT INTO Ship VALUES (N'Thừa Thiên - Huế', 30000);
INSERT INTO Ship VALUES (N'Tiền Giang', 30000);
INSERT INTO Ship VALUES (N'Trà Vinh', 30000);
INSERT INTO Ship VALUES (N'Tuyên Quang', 30000);
INSERT INTO Ship VALUES (N'Vĩnh Long', 30000);
INSERT INTO Ship VALUES (N'Vĩnh Phúc', 30000);
INSERT INTO Ship VALUES (N'Yên Bái', 30000);

------ Insert into UserAddress ------------

insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (1, 'admin', N'119 Đường Láng', 24);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID],[PhoneNum]) values (2, 'Giao hang tiet kiem', N'Đại học Fpt', 24, '09154291');
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID],[PhoneNum]) values (3, 'Giao hang nhanh', N'180 Cầu Giấy', 24, '0123123');
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID]) values (4, 'Grabship', N'92 Đống Đa', 10);
insert into dbo.[UserAddress] ([UserID], [ShipName], [ShipAddress], [ShipCityID],[PhoneNum]) values (5, 'VNExpress', N'119 Lê Thánh Tông', 24,'0123456789');

------ Insert into Category ------------

INSERT INTO dbo.Category(CategoryName)VALUES('Jeans')
INSERT INTO dbo.Category(CategoryName)VALUES('Pants & Chinos')
INSERT INTO dbo.Category(CategoryName)VALUES('Shorts')
INSERT INTO dbo.Category(CategoryName)VALUES('Jean Jackets & Outerwear')
INSERT INTO dbo.Category(CategoryName)VALUES('Sweatshirts & Sweaters');
INSERT INTO dbo.Category(CategoryName)VALUES('Shirts & T-Shirts');
INSERT INTO dbo.Category(CategoryName)VALUES('Accessories');

------ Insert into [SubCategory] ------------

INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Straight Jeans',1)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Slim Jeans',1)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Skinny Jeans',1)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Tapered Jeans',1)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'XX Chino Pants',2)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Taper Pants',2)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Straight Pants',2)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Denim Shorts',3)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES (N'Cargo Shorts',3);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES (N'XX Chino Shorts',3);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Hoodie Jacket',4)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES (N'Trucker Jacket',4);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES (N'Zip-up Hoodie',5);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Sweatshirt',5)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES (N'Hoodie Sweatshirt',5);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES (N'Crewneck Sweatshirt',5);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES (N'Western & Denim Shirts',6);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES (N'Graphic T-Shirts',6);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES(N'Button-Up Shirts',6)
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES (N'Socks',7);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES (N'Cap',7);
INSERT INTO dbo.SubCategory(SubCategoryName,CategoryID)VALUES (N'Bag',7);

------ Insert into ProductStatus ------------

INSERT INTO ProductStatus VALUES ( N'Available');
INSERT INTO ProductStatus VALUES ( N'StopBusiness');

------ Insert into Brand ------------

INSERT INTO dbo.Brand(BrandName)VALUES(N'Tokyo Life')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Zombie')
INSERT INTO dbo.Brand(BrandName)VALUES(N'FREAKERS')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Karihada')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Icon Denim')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Hyperdenim VN')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Davies')
INSERT INTO dbo.Brand(BrandName)VALUES(N'EnvyLook')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Nike')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Vans')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Adidas')
INSERT INTO dbo.Brand(BrandName)VALUES(N'Flaans')


--------- Insert into Product -----------
INSERT INTO Product VALUES (
	N'ORIGINAL FIT MEN''S JEANS',
	N'a classic straight leg and iconic styling, they’re literally
	the blueprint for every pair of jeans in existence — burned into 
	the world’s collective cortex ever since Levi Strauss (the man himself!) invented them in 1873.',
	70,
	65,
	10,
	1,
	3,
	100,
	1,
	11
);



--------- Insert into ProductImg ----------


--------- Insert into Cart ----------

INSERT INTO Cart VALUES (2, 1, 1);

--------- Insert into [OrderStatus] ----------

INSERT [dbo].[OrderStatus] ([Name]) VALUES (N'Waiting for Confirmation')
INSERT [dbo].[OrderStatus] ([Name]) VALUES (N'Packaging')
INSERT [dbo].[OrderStatus] ([Name]) VALUES (N'Delivering')
INSERT [dbo].[OrderStatus] ([Name]) VALUES (N'Canceled')
INSERT [dbo].[OrderStatus] ([Name]) VALUES (N'Completed')

--------- Insert into Orders ----------

--------- Insert into [OrderDetail] ------------

