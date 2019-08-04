
select distinct m.id, m.name 
from movies m, genres g, actors a, movies_actors ma
where g.id = m.id_genres and m.id = ma.id_movies and a.id = ma.id_actors and
	  g.description = 'Action' and (a.name = 'Marcelo Silva' or a.name = 'Miguel Silva');
