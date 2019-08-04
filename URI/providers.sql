
select pd.name, pr.name
from products pd, providers pr
where pr.id = pd.id_providers and pr.name = 'Ajax SA'

--Imported products
select pd.name, pr.name, c.name
from products pd, providers pr, categories c
where pr.id = pd.id_providers and c.id = pd.id_categories
      and pr.name = 'Sansul SA' and c.name = 'Imported';

--Super Luxury
select pd.name, pr.name, pd.price
from products pd, providers pr, categories c
where pr.id = pd.id_providers and c.id = pd.id_categories
      and pd.price > 1000 and c.name = 'Super Luxury';
