
select pd.name
from products pd, providers pr
where pr.id = pd.id_providers and (pd.amount between 10 and 20)
      and pr.name like 'P%';
