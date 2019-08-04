
select c.name, sum(p.amount) as sum
from products p, categories c
where c.id = p.id_categories
group by c.name
