use e_commerce;

-- create table category
create table category(
category_id int primary key,
category_name varchar(50) not null,
description varchar(150));

-- create table product
create table product(
product_id int primary key,
product_name varchar(50) not null,
p_cat_id int references category(category_id),
price int not null,
stock_quantity int );

-- insert category details into category table
insert into category values(101, "School Supplies", "Products used by students such as pencil, pen, notebook...etc"),
(102, "Home Appliances", "Home Appliances such as fan, oven, kettle, air conditioner...etc"),
(103, "Clothes", "Clothes such as pant, shirt, saree...etc"),
(104, "Home Decors", "Home Decors such as paintings, wall hangings, indoor plants...etc"),
(105, "Art Supplies", "Art supplies such as watercolour, canvas, painting brushes, watercolour paper, acrylic paint,...etc"),
(106, "Accessories", "Accessories such as watch, earrings, rings..etc"),
(107, "Footwear", "Footwears such as shoes, snickers, slippers, flip flops, crocs...etc");

-- insert products into product table
insert into product values(001, "Pen", 101, 10, 1000),
(002, "Glitters", 101, 10, 200),
(003, "Cotton Salwar", 103, 999, 50),
(004, "Cotton Shirt", 103, 500, 20),
(005, "Watercolor", 105, 50, 100),
(006, "Paint Brush",105, 30, 100),
(007, "Comfy footwear", 107, 200, 50),
(008, "Indoor Plant", 104, 200, 10),
(009, "kurti", 103, 300, 200),
(010, "Electric Kettle", 102, 800, 50);

insert into product values(011, "Pilot Pen", 101, 50, 50);
insert into product values(012, "Long Drop Earrings", 106, 70, 10);

-- modify product price (Modify pilot pen price from 50 to 60)
update product set price=60 where product_id=011;

-- update stock quantity (update stock_quantity of electric kettle from 50 to 100 after new shippment)
update product set stock_quantity=100 where product_id=010;

-- remove discontinued products (remove kurti from product list since it is discontinued)
delete from product where product_id=009;

-- Report Generation (Category-wise Product Reports)
-- display all products under each category
-- School Supplies Category
select * from product where p_cat_id=101;

-- Home Appliances Category
select * from product where p_cat_id=102;

-- Clothes Category
select * from product where p_cat_id=103;

-- Home Decors Category
select * from product where p_cat_id=104;

-- Art Supplies Category
select * from product where p_cat_id=105;

-- Accessories Category
select * from product where p_cat_id=106;

-- Footwear Category
select * from product where p_cat_id=107;

-- count no. of products in each category
-- School Supplies Category
select count(product_id) from product where p_cat_id=101;

-- Home Appliances Category
select count(product_id) from product where p_cat_id=102;

-- Clothes Category
select count(product_id) from product where p_cat_id=103;

-- Home Decors Category
select count(product_id) from product where p_cat_id=104;

-- Art Supplies Category
select count(product_id) from product where p_cat_id=105;

-- Accessories Category
select count(product_id) from product where p_cat_id=106;

-- Footwear Category
select count(product_id) from product where p_cat_id=107;

-- Highest-priced product in each category

-- School Supplies Category
select max(price) from product where p_cat_id=101;

-- Home Appliances Category
select max(price) from product where p_cat_id=102;

-- Clothes Category
select max(price) from product where p_cat_id=103;

-- Home Decors Category
select max(price) from product where p_cat_id=104;

-- Art Supplies Category
select max(price) from product where p_cat_id=105;

-- Accessories Category
select max(price) from product where p_cat_id=106;

-- Footwear Category
select max(price) from product where p_cat_id=107;

-- Display categories having more than 2 products
select category_name from category 
join product
on category.category_id=product.p_cat_id
group by category_id
having count(product_id)>2;

-- average product price category-wise
-- School Supplies Category
select avg(price) from product where p_cat_id=101;

-- Home Appliances Category
select avg(price) from product where p_cat_id=102;

-- Clothes Category
select avg(price) from product where p_cat_id=103;

-- Home Decors Category
select avg(price) from product where p_cat_id=104;

-- Art Supplies Category
select avg(price) from product where p_cat_id=105;

-- Accessories Category
select avg(price) from product where p_cat_id=106;

-- Footwear Category
select avg(price) from product where p_cat_id=107;
