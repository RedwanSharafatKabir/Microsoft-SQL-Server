
select name, cast(((salary*10)/100) as decimal(10,2)) as tax
from people
where salary > 3000
