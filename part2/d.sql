-- Below is a dummy query, if we leave it empty then the SQLITE package will throw a non-readable error
-- Change the query to pass the test :)
select 
    u.first_name
    , u.last_name
from 
    users u 
inner join
    favorites f
        on u.id = f.user_id
inner join
    dogs d
        on f.dog_id = d.id
where
    d.name = 'Zoey';
