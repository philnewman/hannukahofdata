select c.name, c.phone, p.desc, c.citystatezip
from orders o
join orders_items oi using(orderid), products p using(sku), customers c using(customerid)
where p.desc like '%Cat%'
and c.citystatezip like 'Queens Village%'
order by 1
