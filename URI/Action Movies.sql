
select m.id, m.name from movies m, genres g
where g.id = m.id_genres and g.description = 'Action';
