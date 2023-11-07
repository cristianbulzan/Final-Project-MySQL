# display all products available in the store
select productName from products;
# display the types of product categories in the store
select * from category;
# display the transport value for the products in the store
select transportValue from transport;
# display the products, the list price and the billing price related to them
select idProducts, listPrice, billingPrice from billingPrices;
# display the products for which the price is less than 5 ron
select * from billingPrices where billingPrice<5;
# display the products for which the price is between 5 and 50 ron
select * from billingPrices where billingPrice>= 5 and billingPrice<= 50;
# display the products that have a discount price between 1 and 5 ron and a promo between 10 and 20
select * from discountPrices where 
(discountPrice between 1 and 5) and 
(promo between 10 and 20);
# display the number of products that have a discount of 10
select count(*) from discountPrices where promo = 10;
# display the name of the products and their billing prices
select products.productName, billingPrices.billingPrice
from products inner join billingPrices
on billingPrices.idProducts = products.id;
# display the name of the products and their producer prices
select products.productName, producerPrices.producerPrice
from products inner join producerPrices
on producerPrices.idProducts = products.id;
# display the name of the products, the billing price, the discount price, the producer price and the
# gross margin
select products.productName,billingPrices.billingPrice,discountPrices.discountPrice,
producerPrices.producerPrice,grossMargin.grossMarginValue
from products inner join billingPrices inner join discountPrices inner join producerPrices inner join grossMargin
on billingPrices.idProducts = products.id and discountPrices.idProducts = products.id and
discountPrices.idBillingPrices = billingPrices.id and producerPrices.idProducts = products.id and
grossMargin.idProducts = products.id and grossMargin.idDiscountPrices = discountPrices.id;
# display the name of the products, the billing price, the discount price, the producer price and
# the net margin in ascending order according to the net margin
select products.productName,billingPrices.billingPrice,discountPrices.discountPrice,
producerPrices.producerPrice,netMargin.netMarginValue
from products inner join billingPrices inner join discountPrices inner join producerPrices inner join netMargin
on billingPrices.idProducts = products.id and discountPrices.idProducts = products.id and
discountPrices.idBillingPrices = billingPrices.id and producerPrices.idProducts = products.id and
netMargin.idProducts = products.id and netMargin.idBillingPrices = billingPrices.id and 
netMargin.idDiscountPrices = discountPrices.id and netMargin.idProducerPrices = producerPrices.id
order by netMargin.netMarginValue asc;
# display the name of the products, the billing price, the discount price, the producer price and
# the net margin in descending order according to the net margin
select products.productName,billingPrices.billingPrice,discountPrices.discountPrice,
producerPrices.producerPrice,netMargin.netMarginValue
from products inner join billingPrices inner join discountPrices inner join producerPrices inner join netMargin
on billingPrices.idProducts = products.id and discountPrices.idProducts = products.id and
discountPrices.idBillingPrices = billingPrices.id and producerPrices.idProducts = products.id and
netMargin.idProducts = products.id and netMargin.idBillingPrices = billingPrices.id and 
netMargin.idDiscountPrices = discountPrices.id and netMargin.idProducerPrices = producerPrices.id
order by netMargin.netMarginValue desc;
# display the name of the products, the billing price, the discount price, the producer price and
# the net margin in descending order according to the net margin for the first 3 products
select products.productName,billingPrices.billingPrice,discountPrices.discountPrice,
producerPrices.producerPrice,netMargin.netMarginValue
from products inner join billingPrices inner join discountPrices inner join producerPrices inner join netMargin
on billingPrices.idProducts = products.id and discountPrices.idProducts = products.id and
discountPrices.idBillingPrices = billingPrices.id and producerPrices.idProducts = products.id and
netMargin.idProducts = products.id and netMargin.idBillingPrices = billingPrices.id and 
netMargin.idDiscountPrices = discountPrices.id and netMargin.idProducerPrices = producerPrices.id
order by netMargin.netMarginValue desc
limit 3;
 
# display the name of the products and their billing prices using left join
select products.productName, billingPrices.billingPrice
from products left join billingPrices
on billingPrices.idProducts = products.id;

# display the name of the products and their billing prices using right join
select products.productName, billingPrices.billingPrice
from products right join billingPrices
on billingPrices.idProducts = products.id;

# display the name of the products and their billing prices using cross join
select products.productName, billingPrices.billingPrice
from products cross join billingPrices
on billingPrices.idProducts = products.id;
