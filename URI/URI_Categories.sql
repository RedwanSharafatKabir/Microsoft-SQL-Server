
select prd.id, prd.name from products prd, categories c where prd.id_categories = c.id and c.name like 'super%';
