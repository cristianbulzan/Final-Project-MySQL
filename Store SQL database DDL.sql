#create a database with products, prices and margins
create database store;
drop database store;
create database store;
#create Products Table (Id, Product Code, Product Name, IdCategory)
create table products
(
	id int not null auto_increment primary key,
    productCode varchar(20) not null,
    productName varchar(100) not null,
    idCategory int not null
);
#create Category Table (Id, Product Category)
create table category
(
	id int not null auto_increment primary key,
    productCategory varchar(100) not null
);
#create Billing Prices Table (Id, IdProducts, List Price, Basic Discount, Billing Price)
create table billingPrices
(
	id int not null auto_increment primary key,
    idProducts int not null,
    listPrice float not null,
    basicDiscount float not null,
    billingPrice float not null
);
#create Discount Prices Table (Id, IdProducts, IdBillingPrices, Discount After Delivery, 
#Logistics, Promo, Discount Price)
create table discountPrices
(
	id int not null auto_increment primary key,
    idProducts int not null,
    idBillingPrices int not null,
    discountAfterDelivery float not null,
    logistics float not null,
    promo float,
    discountPrice float not null
);
#create Gross Margin Table (Id, IdProducts, IdDiscountPrices, Gross Margin Value)
create table grossMargin
(
	id int not null auto_increment primary key,
    idProducts int not null,
    idDiscountPrices int not null,
    grossMarginValue float not null
);
#create Net Margin Table (Id, IdProducts, IdBillingPrices, IdDiscountPrices, IdProducerPrices,
#IdTransport, IdMerchandising, Net Margin Value)
create table netMargin
(
	id int not null auto_increment primary key,
    idProducts int not null,
    idBillingPrices int not null,
    idDiscountPrices int not null,
    idProducerPrices int not null,
    idTransport int not null,
    idMerchandising int not null,
    netMarginValue float not null
);
#create Transport Table (Id, IdProducts, Transport Value)
create table transport
(
	id int not null auto_increment primary key,
    idProducts int not null,
    transportValue float not null
);
#create Merchandising Table (Id, IdProducts, Merchandising Value)
create table merchandising
(
	id int not null auto_increment primary key,
    idProducts int not null,
    merchandisingValue float not null
);
#create Producer Prices Table (Id, IdProducts, Producer Price)
create table producerPrices
(
	id int not null auto_increment primary key,
    idProducts int not null,
    producerPrice float not null
);
#changing the name of a column in the Producer prices table
alter table producerPrices
change producerPrice sellerPrice float not null;
alter table producerPrices
change sellerPrice producerPrice float not null;
#after changes in a table, it is recommended to check through the description function of table
#structure
#desc producerPrices;
#the addition of secondary keys according to the links between the above tables
#
alter table products
add foreign key(idCategory) references category(id);
#
alter table billingPrices
add foreign key(idProducts) references products(id);
#
alter table discountPrices
add foreign key(idProducts) references products(id);
#
alter table discountPrices
add foreign key(idBillingPrices) references billingPrices(id);
#
alter table grossMargin
add foreign key(idProducts) references products(id);
#
alter table grossMargin
add foreign key(idDiscountPrices) references discountPrices(id);
#
alter table netMargin
add foreign key(idProducts) references products(id);
#
alter table netMargin
add foreign key(idBillingPrices) references billingPrices(id);
#
alter table netMargin
add foreign key(idDiscountPrices) references discountPrices(id);
#
alter table netMargin
add foreign key(idProducerPrices) references producerPrices(id);
#
alter table netMargin
add foreign key(idTransport) references transport(id);
#
alter table netMargin
add foreign key(idMerchandising) references merchandising(id);
#
alter table transport
add foreign key(idProducts) references products(id);
#
alter table merchandising
add foreign key(idProducts) references products(id);
#
alter table producerPrices
add foreign key(idProducts) references products(id);














    
