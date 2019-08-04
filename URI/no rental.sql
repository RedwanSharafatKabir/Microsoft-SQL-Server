
select id, name
from customers
where not exists (select 1 from locations where customers.id = locations.id_customers);
