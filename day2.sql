select distinct c.*
from customers c
    join orders o using(customerid), 
    orders_items oi using(orderid), orders_items oi2 using(orderid),
    products p on(p.sku = oi.sku), products p2 on(p2.sku = oi2.sku)
where 
    p.desc like '%coffee%'
    and p2.desc like '%bagel%'
    and c.name like 'J%'
    and c.name like '%D%'
