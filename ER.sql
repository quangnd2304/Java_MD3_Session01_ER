-- Tạo một cơ sở dữ liệu có tên là Java_08_Demo
Create database Java_08_Demo;
-- Sử dụng cơ dở dữ liệu Java_08_Demo để tạo bảng
use Java_08_Demo;
-- Tạo bảng danh mục sản phẩm
Create table Catalog(
	CatalogId int primary key auto_increment,
    CatalogName nvarchar(30) unique not null,
    Priority int default(1) check(Priority>0),
    CatalogStatus bit
);
-- Tạo bảng sản phẩm
Create table Product(
	ProductId varchar(5),
    ProductName nvarchar(50) not null,
    Price float check(Price>0) not null,
    CatalogId int not null,
    primary key (ProductId),
    foreign key (CatalogId) references Catalog(CatalogId)
);
-- Cách 1: Tạo bảng ProductDetail - Product: 1:1
Create table ProductDetail(
	ProductDetailId int primary key,
    ProductId varchar(5) not null unique,
    foreign key (ProductId) references Product(ProductId)
);
-- Cách 2: Tạo bảng ProductDetail2 - Product: 1:1
Create table ProductDetail2(
	ProductDetailId varchar(5) primary key,
    foreign key (ProductDetailId) references Product(ProductId)
);

create table Test(
	id int primary key,
    Ngayban date check(Ngayban>=curdate())
)







