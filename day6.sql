select
  c.customerid,
  c.name,
  c.phone
from
  customers c
  join orders o on c.customerid = o.customerid
  join orders_items oi on o.orderid = oi.orderid
  join products p on oi.sku = p.sku
where oi.unit_price <= p.wholesale_cost
group by 2,3
order by count(*)desc
limit 1
