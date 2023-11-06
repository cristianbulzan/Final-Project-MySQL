# <h1 align="center">MySQL-Final-Project<h1>
## Purpose of the Project

  The purpose of this project is to create a database that contains DDL, DML and DQL instructions.

  The project has 3 sections: **Store SQL database DDL**, **Store SQL database DML** and **Store SQL database DQL**
  
  The tools used in the project were: MySQL Workbench
  
## Functional specifications of the project

  A database will be created on a topic of your choice.
  
  It must contain the following components:
- **DDL instructions** (at least one of CREATE, ALTER, DROP, TRUNCATE).
- **DML instructions** (INSERT, DELETE, UPDATE).
- **DQL instructions** (select all, select some columns, filtering with where, filtering with like, filtering with AND and OR, aggregate functions,
filters on aggregate functions, joins - inner join, left join, right join, cross join, limits, order by, primary keys, secondary keys).

Each instruction will have to have associated an explanation of the covered scenario.

Example scenarios:
- Creation of an entity table to store all the information about the company's employees;
- Creation of a connection table between the products table and the orders table;
- The return of all employees who had a performance bonus greater than $1000;
- The return of all customers who did not have orders in the previous month.
  
Also, each two tables linked by primary keys and secondary keys will have to have an explanation related to the type of in which they are linked (which is the primary key, which is the secondary key) and respectively what is the relationship between the two tables (1:1, 1,n,
n,n).

## Section Store SQL database DDL - *[Store SQL database DDL](https://github.com/cristianbulzan/Proiect-Final-MySQL/blob/main/Magazin%20SQL%20database%20DDL.sql)*

In this section the structure of the database was made, it can be accessed here: [Store Structure Design](https://github.com/cristianbulzan/Proiect-Final-MySQL/blob/main/Magazin%20SQL%20database.docx) , the database was created, the tables in its structure were created, the primary and secondary keys and the links between the tables were established.

The name of the database is: **Store** and it was created under the following structure that can be accessed here: [Store Database Structure](https://github.com/cristianbulzan/Proiect-Final-MySQL/blob/ main/Diagram%20Store%20SQL%20database.mwb)

![image](https://github.com/cristianbulzan/Proiect-Final-MySQL/blob/main/Reverse%20Engineer%20Database.jpg)

The created tables have the following details, and their structure can be accessed here: [Store Table Structure](https://github.com/cristianbulzan/Proiect-Final-MySQL/blob/main/Diagram%20Magazin%20SQL%20database.mwb)

  * **Products Table** (Id, Product Code, Product Name, IdCategory).

  * **Category Table** (Id, Product Category).

  * **Billing Prices Table** (Id, IdProducts, List Price, Basic Discount, Billing Price).

  * **Discount Prices Table** (Id, IdProducts, IdBillingPrices, Discount After Delivery, Logistics, Promo, Price with Discount).

  * **Gross Margin Table** (Id, IdProducts, IdDiscountPrices, Gross Margin Value).

  * **Net Margin Table** (Id, IdProducts, IdBillingPrices, IdDiscountPrices, IdProducerPrices, IdTransport, IdMerchandising, Net Margin Value).

  * **Transport Table** (Id, IdProducts, Transport Value).

  * **Merchandising Table** (Id, IdProducts, Merchandising Value).

  * **Producer Prices Table** (Id, IdProducts, Producer Price).


For all tables the **primary keys** columns named **'id'** have been established.

**Secondary keys** and links between tables were established as follows:

  * In the **Products Table** the secondary key is IdCategory which brings from the Category Table the product category to which the product from the Products Table is a part.

  * In the **Billing Prices Table** the secondary key is the IdProducts which brings the details of the product (Product Code, Product Name, Product Category) from the Products Table.

  * In the **Discount Prices Table** the secondary keys are the IdProducts which brings the details of the product from the Products Table (Product Code, Product Name, Product Category) and the IdBillingPrices which brings from the Billing Prices Table the details related to the product's invoice price (List Price, Basic Discount, Billing Price).

  * In the **Gross Margin Table** the secondary keys are IdProducts which brings the details of the product (Product Code, Product Name, Product Category) from the Products Table and IdDiscountPrices which brings from the Discount Prices Table the details related to the discount price of the product (Discount After Delivery, Logistics, Promo, Price with Discount).

  * In the **Net Margin Table** the secondary keys are IdProducts which brings the details of the product from the Products Table (Product Code, Product Name, Product Category), IdBillingPrices which brings from the Billing Prices Table the details related to the product's invoice price (List Price, Basic Discount, Billing Price),
IdDiscountPrices which brings from the Discount Prices Table the details related to the discount price of the product (Discount After Delivery, Logistics, Promo, Price with Discount), IdProducerPrices which brings from the Producer Prices Table the producer price (Producer Price), IdTransport which brings from the Transport Table the value of the transport related to the product (Transport Value) and the IdMerchandising which brings from the Merchandising Table the value of the merchandising service related to the product (Merchandising Value).

  * In the **Transport Table** the secondary key is the IdProducts which brings the details of the product (Product Code, Product Name, Product Category) from the Products Table.

  * In the **Merchandising Table** the secondary key is IdProducts which brings the details of the product (Product Code, Product Name, Product Category) from the Products Table.

  * In the **Producer Prices Table** the secondary key is the IdProducts which brings the details of the product (Product Code, Product Name, Product Category) from the Products Table.

## Section Store SQL database DML - *[Store SQL database DML](https://github.com/cristianbulzan/Proiect-Final-MySQL/blob/main/Magazin%20SQL%20database%20DML.sql)*

In this section, the tables were populated with the existing data in the file that can be accessed here: [Store Tables Information](https://github.com/cristianbulzan/Proiect-Final-MySQL/blob/main/Baza%20de%20Date% 20Shop.xlsx)
  
## Section Store SQL database DQL - *[Store SQL database DQL](https://github.com/cristianbulzan/Proiect-Final-MySQL/blob/main/Magazin%20SQL%20database%20DQL.sql)*

In this section, the created database and tables populated with the information from the previous section were queried, the instructions for solving the scenarios can be accessed here: [DQL scenario instructions](https://github.com/cristianbulzan/Proiect-Final-MySQL/ blob/main/Store%20SQL%20database%20DQL.sql)

The **scenarios** following which the query was made are the following:

  * display all products available in the store.
  * display the types of product categories in the store.
  * display the trasnport value for the products in the store.
  * display the products, the list price and the billing price related to them.
  * display the products for which the price is less than 5 ron.
  * display the products for which the price is between 5 and 50 ron.
  * display the products that have a discount price between 1 and 5 ron and a promo between 10 and 20.
  * display the number of products that have a discount of 10.
  * display the name of the products and their billing prices.
  * display the name of the products and their producer prices.
  * display the name of the products, the billing price, the discount price, the producer price and the gross margin.
  * display the name of the products, the billing price, the discount price, the producer price and the net margin in ascending order according to the net margin.
  * display the name of the products, the billing price, the discount price, the producer price and the net margin in descending order according to the net margin.
  * display the name of the products, the billing price, the discount price, the producer price and the net margin in descending order according to the net margin              for the first 3 products.
  * display the name of the products and their billing prices using left join.
  * display the name of the products and their billing prices using right join.
  * display the name of the products and their billing prices using cross join.

