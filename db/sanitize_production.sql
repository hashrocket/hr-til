-- Sanitize devs
update developers
set username = concat('rocketeer', id),
email = concat('rocketeer', id, '@hashrocket.com'),
twitter_handle = concat('hashrocket', id),
admin = false,
slack_name = concat('rocketeer', id);

-- Clear sessions
delete from authem_sessions;

-- Limit the posts
delete from posts where id > 200;
