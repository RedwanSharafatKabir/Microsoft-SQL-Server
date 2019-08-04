
select m.id, m.name
from movies m, prices p
where p.id = m.id_prices and p.value < 2.00;
