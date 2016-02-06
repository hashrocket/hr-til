with posts_with_age as (
	select *,
	greatest(extract(epoch from (current_timestamp - published_at)) / 3600, 0.1) as hour_age
	from posts
	where published_at is not null
)
select (likes / hour_age ^ 0.8) as score, *
from posts_with_age
order by 1 desc
;
