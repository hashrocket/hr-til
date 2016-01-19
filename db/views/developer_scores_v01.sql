select
 developers.id,
 username,
 posts,
 likes,
 round(likes::numeric / posts, 2) as avg_likes,
 round(log(2, (1022 * ((score - min(score) over ()) / ((max(score) over ()) - (min(score) over ()))) + 2)::numeric), 1) as hotness
from developers
join (
        select developer_id as id, sum(score) as score
        from hot_posts
        group by developer_id
) developer_scores using(id)
join (
        select
        developer_id as id,
        count(*) as posts,
        sum(likes) as likes
        from posts
        group by developer_id
) stats using(id)
;
