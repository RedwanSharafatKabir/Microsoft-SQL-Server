
select c.name
from customers c, legal_person l
where c.id = l.id_customers
