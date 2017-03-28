--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.0
-- Dumped by pg_dump version 9.5.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;

SET search_path = public, pg_catalog;

--
-- Data for Name: authem_sessions; Type: TABLE DATA; Schema: public; Owner: jwworth
--

SET SESSION AUTHORIZATION DEFAULT;

ALTER TABLE authem_sessions DISABLE TRIGGER ALL;



ALTER TABLE authem_sessions ENABLE TRIGGER ALL;

--
-- Name: authem_sessions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jwworth
--

SELECT pg_catalog.setval('authem_sessions_id_seq', 851, true);


--
-- Data for Name: channels; Type: TABLE DATA; Schema: public; Owner: jwworth
--

ALTER TABLE channels DISABLE TRIGGER ALL;

INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (1, 'vim', '2015-04-13 18:58:36.380627', '2015-04-13 18:58:36.380627', 'vim');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (3, 'design', '2015-04-13 18:58:36.412272', '2015-04-13 18:58:36.412272', 'design');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (5, 'rails', '2015-04-13 18:58:36.433943', '2015-04-13 18:58:36.433943', 'rails');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (6, 'ruby', '2015-04-13 18:58:36.444324', '2015-04-13 18:58:36.444324', 'ruby');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (8, 'testing', '2015-04-13 18:58:36.46678', '2015-04-13 18:58:36.46678', 'testing');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (10, 'git', '2015-04-13 18:58:36.488584', '2015-04-13 18:58:36.488584', 'git');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (13, 'javascript', '2015-04-13 18:58:36.520224', '2015-04-13 18:58:36.520224', 'javascript');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (14, 'clojure', '2015-04-13 18:58:36.530512', '2015-04-13 18:58:36.530512', 'clojure');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (20, 'devops', '2015-04-13 18:58:36.601519', '2015-04-13 18:58:36.601519', 'devops');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (25, 'mobile', '2015-06-10 16:18:47.238389', '2015-06-10 16:18:47.238389', 'mobile');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (26, 'sql', '2015-06-10 16:18:47.256892', '2015-06-10 16:18:47.256892', 'sql');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (27, 'html-css', '2015-06-10 16:18:47.267253', '2015-06-10 16:18:47.267253', 'htmlcss');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (30, 'emberjs', '2015-10-09 16:31:56.698955', '2015-10-09 16:31:56.698955', 'emberjs');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (33, 'workflow', '2016-03-04 21:43:45.280138', '2016-03-04 21:43:45.280138', 'workflow');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (34, 'command-line', '2016-03-04 21:43:45.306682', '2016-03-04 21:43:45.306682', 'commandline');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (35, 'react', '2016-04-09 20:17:03.521047', '2016-04-09 20:17:03.521047', 'react');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (36, 'erlang', '2016-06-02 14:57:09.058508', '2016-06-02 14:57:09.058508', 'erlang');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (37, 'computer-science', '2016-06-21 21:12:14.10229', '2016-06-21 21:12:14.10229', 'computerscience');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (21, 'go', '2015-04-13 21:51:38.244165', '2015-04-13 21:51:38.244165', 'golang');
INSERT INTO channels (id, name, created_at, updated_at, twitter_hashtag) VALUES (29, 'elixir', '2015-10-07 16:49:53.554553', '2015-10-07 16:49:53.554553', 'myelixirstatus');


ALTER TABLE channels ENABLE TRIGGER ALL;

--
-- Name: channels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jwworth
--

SELECT pg_catalog.setval('channels_id_seq', 37, true);


--
-- Data for Name: developers; Type: TABLE DATA; Schema: public; Owner: jwworth
--

ALTER TABLE developers DISABLE TRIGGER ALL;

INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (6, 'rocketeer6@hashrocket.com', 'rocketeer6', '2015-04-13 19:36:42.755524', '2015-04-13 19:36:42.755524', 'hashrocket6', false, 'Text Field', 'rocketeer6');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (4, 'rocketeer4@hashrocket.com', 'rocketeer4', '2015-04-13 19:16:50.928752', '2015-04-30 20:02:45.931962', 'hashrocket4', false, 'Text Field', 'rocketeer4');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (3, 'rocketeer3@hashrocket.com', 'rocketeer3', '2015-04-13 19:16:46.117351', '2015-05-18 18:07:42.613978', 'hashrocket3', false, 'Text Field', 'rocketeer3');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (10, 'rocketeer10@hashrocket.com', 'rocketeer10', '2015-04-29 17:56:52.682861', '2015-05-26 15:58:03.921884', 'hashrocket10', false, 'Text Field', 'rocketeer10');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (12, 'rocketeer12@hashrocket.com', 'rocketeer12', '2015-05-26 18:48:12.31517', '2015-05-26 18:48:12.31517', 'hashrocket12', false, 'Text Field', 'rocketeer12');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (14, 'rocketeer14@hashrocket.com', 'rocketeer14', '2015-06-12 13:49:19.942736', '2015-06-12 13:49:19.942736', 'hashrocket14', false, 'Text Field', 'rocketeer14');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (13, 'rocketeer13@hashrocket.com', 'rocketeer13', '2015-05-27 21:01:06.808312', '2015-06-19 19:51:35.867153', 'hashrocket13', false, 'Text Field', 'rocketeer13');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (16, 'rocketeer16@hashrocket.com', 'rocketeer16', '2015-06-24 18:24:11.178833', '2015-06-24 18:24:11.178833', 'hashrocket16', false, 'Text Field', 'rocketeer16');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (17, 'rocketeer17@hashrocket.com', 'rocketeer17', '2015-06-30 14:09:28.509773', '2015-06-30 14:09:28.509773', 'hashrocket17', false, 'Text Field', 'rocketeer17');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (19, 'rocketeer19@hashrocket.com', 'rocketeer19', '2015-07-08 19:06:50.046987', '2015-07-08 19:07:07.963551', 'hashrocket19', false, 'Text Field', 'rocketeer19');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (20, 'rocketeer20@hashrocket.com', 'rocketeer20', '2015-08-04 21:30:43.37856', '2015-08-04 21:30:43.37856', 'hashrocket20', false, 'Text Field', 'rocketeer20');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (21, 'rocketeer21@hashrocket.com', 'rocketeer21', '2015-08-07 19:55:15.649162', '2015-08-07 19:55:15.649162', 'hashrocket21', false, 'Text Field', 'rocketeer21');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (22, 'rocketeer22@hashrocket.com', 'rocketeer22', '2015-08-07 19:55:15.89867', '2015-08-07 19:55:15.89867', 'hashrocket22', false, 'Text Field', 'rocketeer22');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (24, 'rocketeer24@hashrocket.com', 'rocketeer24', '2015-08-26 17:46:47.107677', '2015-08-26 17:46:47.107677', 'hashrocket24', false, 'Text Field', 'rocketeer24');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (25, 'rocketeer25@hashrocket.com', 'rocketeer25', '2015-08-28 15:37:55.465948', '2015-09-23 13:46:29.394924', 'hashrocket25', false, 'Text Field', 'rocketeer25');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (1, 'rocketeer1@hashrocket.com', 'rocketeer1', '2015-04-13 19:11:33.987492', '2015-10-07 16:50:50.826646', 'hashrocket1', false, 'Text Field', 'rocketeer1');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (5, 'rocketeer5@hashrocket.com', 'rocketeer5', '2015-04-13 19:17:40.732842', '2015-10-09 14:00:37.611824', 'hashrocket5', false, 'Text Field', 'rocketeer5');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (23, 'rocketeer23@hashrocket.com', 'rocketeer23', '2015-08-25 20:15:46.717283', '2015-11-05 19:43:34.666835', 'hashrocket23', false, 'Text Field', 'rocketeer23');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (27, 'rocketeer27@hashrocket.com', 'rocketeer27', '2015-12-17 15:34:41.150862', '2015-12-17 15:34:41.150862', 'hashrocket27', false, 'Text Field', 'rocketeer27');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (29, 'rocketeer29@hashrocket.com', 'rocketeer29', '2016-02-10 02:39:36.466458', '2016-08-22 12:43:28.806058', 'hashrocket29', false, 'Text Field', 'rocketeer29');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (33, 'rocketeer33@hashrocket.com', 'rocketeer33', '2016-10-21 19:56:25.170317', '2016-10-21 19:56:25.170317', 'hashrocket33', false, 'Text Field', 'rocketeer33');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (15, 'rocketeer15@hashrocket.com', 'rocketeer15', '2015-06-15 19:31:41.583498', '2016-11-24 16:38:20.152559', 'hashrocket15', false, 'Text Field', 'rocketeer15');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (2, 'rocketeer2@hashrocket.com', 'rocketeer2', '2015-04-13 19:12:58.120227', '2016-12-29 16:53:30.074368', 'hashrocket2', false, 'Text Field', 'rocketeer2');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (8, 'rocketeer8@hashrocket.com', 'rocketeer8', '2015-04-13 21:04:32.584373', '2016-02-05 22:53:16.051983', 'hashrocket8', false, 'Text Field', 'rocketeer8');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (26, 'rocketeer26@hashrocket.com', 'rocketeer26', '2015-09-17 21:46:24.271496', '2016-02-20 03:53:54.690497', 'hashrocket26', false, 'Ace (w/ Vim)', 'rocketeer26');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (30, 'rocketeer30@hashrocket.com', 'rocketeer30', '2016-04-01 18:55:45.381858', '2016-04-01 18:56:16.242687', 'hashrocket30', false, 'Text Field', 'rocketeer30');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (7, 'rocketeer7@hashrocket.com', 'rocketeer7', '2015-04-13 19:38:28.307105', '2016-04-25 13:28:21.062756', 'hashrocket7', false, 'Ace (w/ Vim)', 'rocketeer7');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (18, 'rocketeer18@hashrocket.com', 'rocketeer18', '2015-07-01 14:30:01.672278', '2016-05-18 13:54:57.936156', 'hashrocket18', false, 'Ace (w/ Vim)', 'rocketeer18');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (32, 'rocketeer32@hashrocket.com', 'rocketeer32', '2016-04-26 07:37:05.468065', '2016-05-18 13:58:24.0591', 'hashrocket32', false, 'Text Field', 'rocketeer32');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (11, 'rocketeer11@hashrocket.com', 'rocketeer11', '2015-05-26 16:15:35.897153', '2016-07-11 21:39:42.338809', 'hashrocket11', false, 'Ace (w/ Vim)', 'rocketeer11');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (31, 'rocketeer31@hashrocket.com', 'rocketeer31', '2016-04-25 14:25:00.609656', '2016-07-13 14:18:48.120453', 'hashrocket31', false, 'Ace (w/ Vim)', 'rocketeer31');
INSERT INTO developers (id, email, username, created_at, updated_at, twitter_handle, admin, editor, slack_name) VALUES (9, 'rocketeer9@hashrocket.com', 'rocketeer9', '2015-04-14 18:55:52.863391', '2016-07-15 14:43:28.31586', 'hashrocket9', false, 'Ace (w/ Vim)', 'rocketeer9');


ALTER TABLE developers ENABLE TRIGGER ALL;

--
-- Name: developers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jwworth
--

SELECT pg_catalog.setval('developers_id_seq', 33, true);


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: jwworth
--

ALTER TABLE posts DISABLE TRIGGER ALL;

INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (12, 2, '`rails s -e production`', '2015-04-17 04:04:53.142287', '2016-05-12 17:30:19.77037', 5, 'Start rails server in production mode', '97e26f5f68', 2, true, '2015-04-16 23:04:53.142287-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (156, 2, 'Tmux 1.8 introduced a great feature, zoom. Zoom expands the current pane to temporarily fill whole screen. It''s helpful when you want to focus or read long lines of code.

The long way to this function is `resize-pane -Z -t target-pane` in the Tmux bar.

By default it is also mapped to `prefix + z`.

A cool alternative is to map `Up` and `Down` to toggle the zoom. That''s how it works in the [Hashrocket Dotmatrix](https://github.com/hashrocket/dotmatrix/blob/master/.tmux.conf):

```
# tmux.conf
unbind Up; bind Up resize-pane -Z; unbind Down; bind Down resize-pane -Z
```

h/t Chris Erin', '2015-06-24 20:52:27.934518', '2016-05-30 18:04:58.223885', 33, 'Tmux Zoom', 'ae1fb8fe62', 3, true, '2015-06-24 15:52:27.934518-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (67, 2, 'You can store a SQL query with `prepare`.

```
db=# prepare posts_search as select title from posts limit 5;
PREPARE
```

Call the method with `execute`.

```
db=# execute posts_search;
               title
-----------------------------------
 Hello World!
 My First Pull Request: HAML
 My First Pull Request: Sinatra
 My First Pull Request: Capistrano
 My First Pull Request: SASS
(5 rows)
```

Deallocate the query with `deallocate`, and you can set it again.

```
db=# deallocate posts_search;
DEALLOCATE
db=# prepare posts_search as select title from posts limit 10;
PREPARE
```', '2015-05-22 20:31:22.099056', '2016-09-21 17:30:49.106714', 26, 'Prepare / Execute', '4a4f20787e', 3, true, '2015-05-22 15:31:22.099056-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (22, 4, 'Start a process, exit the current shell, process continues.

`$ nohup rake qc:work &`

`nohup` enables your program to ignore the HUP signal a controlling process sends.

# Example

```
$ nohup cat &                                                                                                              
> [1] 2766
> appending output to nohup.out
$ kill -1 2766
$ ps -A | grep 2766
> 2766 ttys003    0:00.00 cat
```', '2015-04-25 01:17:01.964465', '2016-04-17 17:30:57.223656', 34, 'Ignore hang ups when starting a process', 'b2ac76c41e', 1, true, '2015-04-24 20:17:01.964465-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (6, 9, 'according to this guy, http://davidcel.is/blog/2012/09/06/stop-validating-email-addresses-with-regex/ 

this is a valid email address: "Look at all these spaces!"@example.com', '2015-04-14 18:57:15.264284', '2016-08-05 17:30:34.842099', 20, '"Look at all these spaces!"@example.com', '71cecc596b', 1, true, '2015-04-14 13:57:15.264284-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (9, 2, 'Adding `| pbcopy` to the end of any command will send the standard output to your clipboard.

`ls -al | pbcopy` inside a rails project directory allowed me to paste this:

```
Gemfile
Gemfile.lock
README.md
Rakefile
app
bin
config
config.ru
db
features
lib
log
public
script
spec
test
tmp
vendor
```', '2015-04-16 01:00:33.49713', '2016-05-27 21:01:38.973738', 34, 'Standard output to clipboard buffer', '868f4e31c1', 3, true, '2015-04-15 20:00:33.49713-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (52, 8, 'If you want to see all the environment variables defined on your machine,
you can list them all out with `printenv`. If you are like me, you probably
have a ton of them. Pipe it through `less` to make it easier to navigate and
search through (i.e. `printenv | less`).', '2015-05-17 22:46:19.210907', '2016-07-06 18:02:55.397231', 34, 'All The Environment Variables', 'dbde2a27a5', 3, true, '2015-05-17 17:46:19.210907-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (59, 2, 'You can move the cursor without arrow keys. Here is the keyboard equivalent for each.

* Up (''previous''): `CTRL + P`
* Down (''next''): `CTRL + N`
* Left (''back''): `CTRL + B`
* Right (''forward''): `CTRL + F`

Mapping `caps lock` to `CTRL` makes these combinations very accessible.', '2015-05-19 22:11:44.419877', '2016-08-30 20:04:16.780754', 34, 'Directional Commands', '5482818ea5', 3, true, '2015-05-19 17:11:44.419877-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (68, 8, 'If you''ve installed a couple versions of a program via brew and you''d like to switch from the currently linked version to the other installed version, you can use the `switch` command. For instance, if you are on version `1.8.2` of `phantomjs` and you''d like to switch to `1.9.0`, you can simply invoke:

```
$ brew switch phantomjs 1.9.0
```

More generically:

```
$ brew switch <formula> <version>
```', '2015-05-22 21:05:43.941338', '2016-03-24 17:30:22.913935', 34, 'Switch Version of a Brew Formula', '0ce3a405c8', 2, true, '2015-05-22 16:05:43.941338-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (40, 4, 'With a new commit to our environment to enable project specific tmux configurations its been fun to dig into tmux automation.

```
tmux send-keys -t seq27:0.0 ''vim .'' C-m
```

Will send the keys ''vim .'' to a very specific target `-t seq27:0.0`

    seq27 = the name of the session

    0 = the first window of that session

    0 = the first pane of that window

Thats how you can open vim in a specific pane in your tmux session automatically!', '2015-05-12 01:06:02.438758', '2016-03-22 17:31:11.631056', 34, 'Tmux command targets', '8ec8cc4ea3', 2, true, '2015-05-11 20:06:02.438758-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (48, 4, 'When starting a docker dir, you can map a dir on the host system to a dir in the container with the `-v` option.

`docker start my-image -v /var/logs/app:/app/log`

In this case the host dir is on the left side of the colon and the docker container dir is on the right.', '2015-05-15 03:08:54.021643', '2016-04-19 17:30:46.508542', 34, 'Docker volume binding', 'b91dda09cb', 1, true, '2015-05-14 22:08:54.021643-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (49, 8, 'You can quickly view a file using `cat`

```
$ cat Gemfile
source ''https://rubygems.org''


# Bundle edge Rails instead: gem ''rails'', github: ''rails/rails''
gem ''rails'', ''4.2.0''
# Use postgresql as the database for Active Record
gem ''pg''
```

With the `-n` flag you can view that file with line numbers

```
$ cat -n Gemfile
 1  source ''https://rubygems.org''
 2  
 3  
 4  # Bundle edge Rails instead: gem ''rails'', github: ''rails/rails''
 5  gem ''rails'', ''4.2.0''
 6  # Use postgresql as the database for Active Record
 7  gem ''pg''
```', '2015-05-15 13:23:12.068834', '2016-05-04 17:30:36.757069', 34, 'Cat A File With Line Numbers', 'd08857acec', 2, true, '2015-05-15 08:23:12.068834-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (41, 8, 'When I need to quickly test something out in Ruby, I will often reach for
`irb`. However, there is an even quicker way to send a line of code to ruby for
evaluation. Use the `ruby` binary with the `-e` flag followed by your line
of ruby. For instance,

```
$ ruby -e ''puts Class.ancestors''
[Class, Module, Object, Kernel, BasicObject]
```', '2015-05-12 13:51:31.1851', '2016-08-16 17:30:22.58119', 6, 'Evaluating One-Off Commands', 'e492573018', 1, true, '2015-05-12 08:51:31.1851-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (33, 8, 'Process substitution can be used to create a file descriptor from the
evaluation of a shell command. The syntax for process substitution is
`<(LIST)` where `LIST` is one or more bash commands.

```
$ cat <(echo ''hello, world'')
hello, world
```

This is particularly useful for commands that expect files, such as diff:

```
$ diff <(echo ''hello, world'') <(echo ''hello, mars'')
1c1
< hello, world
---
> hello, mars
```

Sources: [Brian Dunn](https://twitter.com/higgaion) and
[Bash Guide for Beginners](http://tldp.org/LDP/Bash-Beginners-Guide/html/sect_03_04.html#sect_03_04_07)', '2015-05-07 03:33:01.003559', '2016-06-16 17:30:29.39787', 34, 'Create A File Descriptor With Process Substitution', '54bb0f29fe', 1, true, '2015-05-06 22:33:01.003559-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (39, 4, 'We needed to inspect that a return code made it back from docker''s exec command today.

``` bash
  docker exec -it <docker-container> "true" && echo "TRUE"
```
Will print TRUE

``` bash
  docker exec -it <docker-container> "! true" && echo "WONT GET PRINTED"
```

Won''t print anything!  Return codes FTW.  "true" returns 0.  "! true" returns 1.', '2015-05-12 00:59:18.698449', '2016-07-24 17:31:36.551838', 34, 'Bash true!', '690835d612', 2, true, '2015-05-11 19:59:18.698449-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (55, 4, 'http://www.tldp.org/LDP/abs/html/process-sub.html

```
Process substitution feeds the output of a process (or processes) into the stdin of another process.
```

`<()` creates a file descriptor and is most useful when using a command that takes two files as arguments like `diff` or `comm` but you want to use output from commands rather than files.

```
comm <(ls dirA) <(ls dirB)
```', '2015-05-19 01:48:45.338593', '2016-08-19 01:14:57.759127', 34, 'Bird Beak Bash (or process substitution)', 'e1a3a9fa24', 3, true, '2015-05-18 20:48:45.338593-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (54, 4, '`mkdir` throws errors if you try to create a directory that already exists.

`mkdir -p` is cool with not creating and not throwing an error if you try to create a dir that already exists.

From the man page: 

```
On the other hand, with this option specified, no error will be reported if a directory given as an operand already exists.
```

That feels a lot better than `if [ ! -f myDir ]; then mkdir myDir end; fi`', '2015-05-19 01:28:23.486986', '2016-09-14 17:30:16.117506', 34, 'mkdir -p throws no errors', 'b8b34c40bf', 2, true, '2015-05-18 20:28:23.486986-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (72, 8, 'If you have attached to a tmux session whose dimensions are being
constrained by another connection, you may find an L-shaped portion of your
window filled with dots. tmux defers to the session with smaller dimensions.
The easiest way to reclaim the entire window for your session is to attach
to the session while forcing all other sessions to detach. The `-d` flag will
help with that.

```bash
$ tmux attach-session -d -t my-session
```

By detaching all other sessions, you are ensuring that your machine''s
dimensions are the ones that tmux uses when drawing the window. This is a
great quick fix if you''re working on your own, but probably not what you
want to do if you are in a pair programming situation.

[source](http://stackoverflow.com/questions/7814612/is-there-any-way-to-redraw-tmux-window-when-switching-smaller-monitor-to-bigger)', '2015-05-24 16:06:15.946386', '2016-09-23 18:29:24.172438', 34, 'Reclaiming The Entire Window in tmux', '68544ddcd8', 4, true, '2015-05-24 11:06:15.946386-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (198, 8, 'The `say` command can be a fun party trick.

```bash
$ say Get ready for the bass to drop
```

Your friends will be even more impressed when you use some of the alternate
voices.

```bash
$ say -v Daniel Would you like a cup of tea?
```

To see all the alternate voices available, type the following

```bash
$ say -v ''?''
```

[source](http://stackoverflow.com/questions/1489800/getting-list-of-mac-text-to-speech-voices-programmatically)', '2015-07-17 02:22:15.478092', '2016-10-24 17:30:34.121473', 34, 'List All The Say Voices', 'a1a73bd5fc', 4, true, '2015-07-16 21:22:15.478092-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (161, 2, 'Today I learned how to interpolate a timestamp at the command line. Here are two examples:

For a file:

```
$ touch test_$(date +%s).md
$ ls
test_1435435401.md
```

For a git branch:

```
$ git checkout -b pull_request_$(date +%s)
Switched to a new branch ''pull_request_1435435344''
```

The timestamp represents seconds since the UNIX epoch.', '2015-06-27 20:06:22.779242', '2016-10-20 00:38:25.195291', 34, 'Create with Timestamp', '192721096f', 5, true, '2015-06-27 15:06:22.779242-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (149, 8, 'The `watch` command is a simple way to repeatedly run a particular command.
I''ll sometimes use it to monitor the response from some endpoint. `watch`
can make monitoring responses even easier when the `-d` flag is employed.
This flag instructs `watch` to highlight the parts of the output that are
*different* from the previous run of the command.

So if I run

```
$ watch -d curl -LIs localhost:3000
```

I can easily see if the http status of the request changes.', '2015-06-22 13:23:38.154483', '2016-07-14 17:30:34.935198', 34, 'Watch The Difference', 'ba25dce765', 3, true, '2015-06-22 08:23:38.154483-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (76, 10, 'This might be old news, but it''s relatively new to me, so here: you can move/copy files using curly braces; the text before the comma is replaced with the text after, so instead of this:

```bash
$ mv awesome/explosion.gif rad/explosion.gif
```

Do this:

```bash
$ mv {awesome,rad}/explosion.gif
```

Works great for any subset of the argument (even partial file/folder names).', '2015-05-26 16:07:33.992198', '2016-03-15 18:12:28.963056', 34, 'Moving / Copying with Curly Braces', 'c32f2c4f86', 2, true, '2015-05-26 11:07:33.992198-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (11, 2, 'To upgrade rubygems:

    gem install rubygems-update
    update_rubygems
    gem update --system
', '2015-04-17 01:19:13.618277', '2016-07-29 17:30:40.937951', 33, 'Upgrade Rubygems', '2715dfb6fe', 1, true, '2015-04-16 20:19:13.618277-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (31, 9, 'Give this a shot on your ec2 instance:

    while true; do echo ''try!'' &&  nc -w0 $SMTP_HOST 25; done

I get

    try!
    try!


And then an infinite hang.

If you are working with SES like I was, a workaround is to connect to port 587 instead.', '2015-05-05 21:40:50.296951', '2016-08-21 17:32:39.137691', 20, 'EC2 throttles outbound port 25 connections', 'f232ecc097', 2, true, '2015-05-05 16:40:50.296951-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (79, 2, 'I use HTTP Basic auth in non-production environments because it ships with Rails and is easy to implement. The first time I used it, I set it up like this:

```ruby
# app/controllers/application_controller.rb
if ENV[''http_basic_auth'']
  http_basic_authenticate_with name: ENV[''username''], password: ENV[''password'']
end
```

I used environmental variables so that no credentials were hard-coded, and so I could toggle it without deploying.

Today I learned you can also implement it like this:

```ruby
# app/controllers/application_controller.rb
if creds = ENV[''basic_auth_credentials'']
  username, password = creds.split('':'', 2)
  http_basic_authenticate_with name: username, password: password
end
```

This requires an environmental variable called `basic_auth_credentials`, set to `<username>:<password>`. I prefer this because it allows one variable to serve two purposes: it toggles the feature and also contains the information the feature needs to work.

It''s a tradeoff; slightly less explicit, but simpler to set and unset (one variable versus three).', '2015-05-27 02:21:35.960214', '2016-07-30 17:30:25.407355', 5, 'Multipurpose Environmental Variables', 'e21fa5d173', 3, true, '2015-05-26 21:21:35.960214-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (106, 8, 'There are a couple ways to list all the tmux key bindings. If you are not
currently in a tmux session, you can still access the list from the terminal
with

```bash
$ tmux list-keys
```

If you are currently in a tmux session, then you can take advantage of the
tmux environment by either using

```
<prefix>:list-keys
```

or

```
<prefix>?
```

Any of these will bring up a list of all key bindings available to you
within a tmux session on your machine.', '2015-06-05 05:41:12.37872', '2017-01-11 15:53:21.051798', 34, 'List All tmux Key Bindings', '385fee97f3', 4, true, '2015-06-05 00:41:12.37872-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (180, 8, 'The `pg_typeof()` function allows you to determine the data type of anything
in Postgres.

```sql
> select pg_typeof(1);
 pg_typeof
-----------
 integer
(1 row)

> select pg_typeof(true);
 pg_typeof
-----------
 boolean
(1 row)
```

If you try it on an arbitrary string, it is unable to disambiguate which
string type (e.g. `text` vs `varchar`).

```sql
> select pg_typeof(''hello'');
 pg_typeof
-----------
 unknown
(1 row)
```

You just have to be a bit more specific.

```sql
> select pg_typeof(''hello''::varchar);
     pg_typeof
-------------------
 character varying
(1 row)
```

[source](http://www.postgresql.org/docs/9.3/static/functions-info.html#FUNCTIONS-INFO-CATALOG-TABLE)', '2015-07-05 15:51:35.763618', '2016-09-22 21:32:13.741814', 26, 'Checking The Type Of A Value', '4159783cdf', 3, true, '2015-07-05 10:51:35.763618-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (166, 2, 'Ruby''s `==` is pretty straightforward. From the Object class documentation:

*Equality — At the Object level, == returns true only if obj and other are the same object. Typically, this method is overridden in descendant classes to provide class-specific meaning.*

Some examples from the  String class:

```ruby
irb > ''foo'' == ''foo''
 => true
irb > ''foo'' == :foo
 => false
irb > ''foo'' == ''bar''
 => false
```

The triple equals, `===`, sometimes called a ‘threequals’ or ‘case equality operator’, is different (again from the Object docs):

*Case Equality – For class Object, effectively the same as calling #==, but typically overridden by descendants to provide meaningful semantics in case statements.*

The threequals compares the type of two arguments. One way to think about `a === b` is: ''does `b` belong in a box `a`’?

A few examples:

```ruby
irb > String === ''foo''
 => true
irb > Array === %w(one two three)
 => true
irb > Range === (1..10)
 => true
irb > /car/ === ''carpool''
 => true
```

All of these evaluate `false` when the `==` operator is used.

Ruby''s `case` statement operator uses the threequals for its control flow.

h/t Chris Erin

http://ruby-doc.org/docs/keywords/1.9/Object.html#method-i-case
http://stackoverflow.com/questions/7156955/whats-the-difference-between-equal-eql-and', '2015-06-30 01:30:13.200611', '2016-03-05 18:11:41.107131', 6, 'Ruby Threequals', 'e8532ed4a9', 5, true, '2015-06-29 20:30:13.200611-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (64, 8, 'If you use a number of tmux windows as part of your daily workflow, you may find that they get to be a bit of a mess from time to time. There are gaps in the numbering and they aren''t laid out in the order you''d prefer. The `movew` command makes it easy to rearrange these windows.

If you have a window indexed at 2 and you want it to be the 4th window, then you can:

```
:movew -s 2 -t 4
```

If you have a gap such that the 4th and 5th windows are numbered 4 and 7, then you can focus the 7 window and simply invoke:

```
:movew
```

And that window will be reinserted at the next available slot, in this case, window 5.', '2015-05-21 16:05:53.643742', '2016-09-04 21:56:23.454588', 34, 'Organizing tmux windows', '5126217ec4', 3, true, '2015-05-21 11:05:53.643742-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (50, 8, 'When using git to deploy your app to Heroku, it is expected that you push
to the `master` branch. When you run the following command

```
$ git push heroku master
```

Heroku will attempt to build and run your app. However, if you have a
`staging` branch for your application that you want to push to your
staging environment on Heroku, you cannot simply run

```
$ git push heroku staging
```

Heroku will only perform a build on pushes to the remote `master` branch.
You can get around this, though, by specifying that your `staging` branch
should be pushed to the remote `master` branch, like so

```
$ git push heroku staging:master
```

[source](https://coderwall.com/p/1xforw/make-heroku-run-a-non-master-branch)', '2015-05-16 22:59:00.00475', '2016-02-26 17:25:31.034369', 20, 'Push Non-master Branch To Heroku', '7019a27ad8', 2, true, '2015-05-16 17:59:00.00475-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (96, 2, 'The gem `htmltohaml` provides an easy method to convert your ERB files into HAML files. It generates a new converted file with the `.haml` extension for each `.erb` file, leaving you with both copies.

Today I used this command to quickly remove about twenty of these redundant `.erb` files, after adding the `.haml` files.

```
$ find . -name \*.erb | xargs git rm
```', '2015-05-31 16:32:28.209864', '2016-06-15 22:52:31.655639', 34, 'Replace ERB files with HAML', 'c09fb6ea77', 2, true, '2015-05-31 11:32:28.209864-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (97, 8, '[FactoryGirl sequences](https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md#sequences)
are often used inline for unique values such as emails:

```ruby
factory :user do
  sequence(:email) { |n| "person#{n}@example.com" }
end
```

However, a sequence can be defined on its own

```ruby
FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end
end
```

That means it can be invoked outside the context of a factory

```ruby
> FactoryGirl.generate :email
=> "person1@example.com"
> FactoryGirl.generate :email
=> "person2@example.com"
```

Or it can be used as a shared sequence across multiple factories

```ruby
factory :customer do
  ...
  email
end

factory :admin do
  ...
  email
end
```', '2015-06-01 13:04:09.990916', '2016-08-24 17:30:43.216362', 6, 'FactoryGirl Sequences', '5a10f2bb1a', 2, true, '2015-06-01 08:04:09.990916-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (60, 4, 'HashWithIndifferentAccess is a cool hash-like object that allows you to access values with either a symbol OR a string.  But you can''t pass it to a method that expects keyword arguments.

``` ruby
def foo(a:, b:); return a, b; end
h = HashWithIndifferentAccess.new({a: 1, b: 2})
foo(h)
=> ArgumentError: wrong number of arguments (1 for 0)
```

Fear not!

``` ruby
foo(h.symbolize_keys)
=> 1, 2
```

Calling `symbolize_keys` on a HashWithIndifferentAccess object will create a hash that can be used for keyword arguments.

http://apidock.com/rails/v4.2.1/Hash/symbolize_keys', '2015-05-20 01:24:02.027635', '2016-02-26 18:13:03.569571', 5, 'HashWithIndifferentAccess for keyword arguments', 'd66e55091c', 2, true, '2015-05-19 20:24:02.027635-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (195, 16, '`1 < 1.000000000000001   => true`

`1 < 1.0000000000000001 => false`

Because REASONS! #javascript', '2015-07-15 20:42:16.095062', '2017-02-15 00:31:06.708416', 13, 'Because JavaScript', 'e04ffe1d76', 50, true, '2015-07-15 15:42:16.095062-05', 50);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (112, 10, 'We have a little jQuery plugin that makes entire table rows clickable by catching a click event on a table row and assigning `window.location` to the `href` of the anchor in that row – here''s a simplified example:

```coffeescript
$(''table'').on ''click'', ''tbody tr'', (e) ->
  $a = $(e.target).closest(''tr'').find(''a'')
  location.href = $a.attr(''href'')
```

... but this doesn''t account for users who might want to hold down `command` and click on a row to open it in a new tab. In order to do that, we check the `e.metaKey` property that jQuery has so helpfully provided:

```coffeescript
$(''table'').on ''click'', ''tbody tr'', (e) ->
  $a = $(e.target).closest(''tr'').find(''a'')
  href = $a.attr(''href'')
  if e.metaKey
    open(href, ''_blank'')
  else
    location.href = href
```

Voila! (Disclaimer: If you use something like this in the wild, make sure to do some other checks, like for multiple links in rows, the existence of checkboxes, that sort of thing – but this is the core to get you started.)

*thanks to [Pavel](https://twitter.com/rwz/status/608024137936830465) for correcting my initial implementation, in which I failed to realize metaKey is available on any jQuery event type)*', '2015-06-08 14:30:44.35759', '2016-03-15 18:12:36.711627', 13, 'Cmd-click a link open in a new tab with JavaScript', 'a2c54cc97a', 4, true, '2015-06-08 09:30:44.35759-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (126, 8, 'Imagine I have a file with `foo` and `bar` all over the place. The tables
have turned and now I want all occurrences of `foo` to be `bar` and all
occurrences of `bar` to be `foo`.

Reaching for a simple substitution won''t work because after flipping all the
occurrences of `foo` to `bar`. I will no longer be able to distinguish
between the new `bar`s and the `bar`s that need to be flipped.

[Abolish.vim](https://github.com/tpope/vim-abolish) enhances Vim''s
substitution capabilities making it easy to flip these strings in one
relatively simple command.

```
:%S/{foo,bar}/{bar,foo}/g
```

Notice the uppercase `S` as well as the ordering of `foo` and `bar` in the before
and after sequences.', '2015-06-12 21:11:42.377488', '2016-04-04 01:51:34.434062', 1, 'Swap Occurrences Of Two Words', '6ac9a25526', 5, true, '2015-06-12 16:11:42.377488-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (170, 10, 'Let''s talk a specific use case: if you''re looking to position something a fixed amount from the bottom edge of an area, you''ll end up with something like this:

```css
.foo {
  position: absolute;
  top: 100%;
}
```

... but if you want the element to be offset a fixed amount from the bottom edge, the standard methodology used to be to just add some margin:

```css
.foo {
  position: absolute;
  top: 100%;
  margin-top: 10px;
}
```

However, with `calc()`, you can just throw a fixed amount onto your percentage:

```scss
.foo {
  top: calc(100% + 5px)
}
```

There are countless other uses, but for me that''s the one that comes up the most, so there you go. As always, check [caniuse.com](http://caniuse.com/#feat=calc) for browser caveats (you''re basically safe everywhere except <IE10).', '2015-07-01 14:45:33.796361', '2016-12-14 21:34:19.32168', 27, 'Smarter CSS positioning with calc()', '078103dea0', 5, true, '2015-07-01 09:45:33.796361-05', 6);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (95, 8, 'The comparator methods (`<`,`>`, etc.) can be useful for a lot of things. In
Ruby, they can be used to compare classes in order to understand how they
relate to one another on the class hierarchy.

```ruby
# Fixnum is a subclass of Integer
> Fixnum < Integer
=> true
# Integer is not a subclass of Fixnum
> Integer < Fixnum
=> false
# Fixnum and String are not related to one another
> Fixnum < String
=> nil
```

The `<` operator will tell you if there is a subclass relationship. The `>`
operator will tell you if there is an ancestor relationship. When `nil`
results, it means the two classes do not have a direct relationship.

There are a few more of [these types of
operators](http://ruby-doc.org/core-2.2.2/Module.html#method-i-3C) on the
Module class.

[source](http://kerrizor.com/blog/2015/05/14/serendipity-and-ruby-objects/)', '2015-05-31 15:15:28.893308', '2016-05-18 17:30:55.795859', 6, 'Comparing Class Hierarchy Relationships', '61a604ad15', 2, true, '2015-05-31 10:15:28.893308-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (164, 8, 'Create a temporary table in Postgres like so

```sql
create temp table posts (
    ...
);
```

This table (and its data) will only last for the duration of the session.
It is created on a schema specific to temporary tables. It is also worth
noting that it won''t be autovacuumed, so this must be done manually as
necessary.', '2015-06-29 02:37:17.351434', '2016-10-14 17:30:37.945311', 26, 'Temporary Tables', 'd842ab2d0f', 2, true, '2015-06-28 21:37:17.351434-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (107, 8, '[FactoryGirl sequences](https://github.com/thoughtbot/factory_girl/blob/master/GETTING_STARTED.md#sequences)
can be defined with an initial starting value

```ruby
FactoryGirl.define do
  sequence :email, 1000 do |n|
    "person#{n}@example.com"
  end
end
```

thus:

```ruby
> FactoryGirl.generate :email
=> "person1000@example.com"
> FactoryGirl.generate :email
=> "person1001@example.com"
```', '2015-06-05 15:35:18.405275', '2016-03-16 17:42:17.259091', 6, 'Override The Initial Sequence Value', '6b3d810fbf', 4, true, '2015-06-05 10:35:18.405275-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (28, 8, 'You can use the search and replace functionality in vim to count the number of matches for that search like so:

```
:%s/transaction_id//n
```

You will see the result in the command tray like so:

```
8 matches on 8 lines
```

If you want to find matches global (that is, counting multiples per line), you can add the `g` flag:

```
:%s/transaction_id//gn
```

for a response like:

```
13 matches on 8 lines
```', '2015-04-30 19:39:41.507885', '2016-05-24 14:47:16.623955', 1, 'Count number of matches', '5f3edbd78f', 8, true, '2015-04-30 14:39:41.507885-05', 8);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (3, 8, 'Typing `gv` in normal mode will re-select the previous visual selection. This is great for when you are doing a search and replace on a visual selection and don''t get the regex quite right on the first try.', '2015-04-13 21:06:51.841496', '2016-10-15 20:14:55.852603', 1, 'Previous Visual Select', '062c131645', 3, true, '2015-04-13 16:06:51.841496-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (91, 4, 'A subquery may or may not return results.  And you may want to make decisions for your data set based on that.

```
select ''Here exists a record'' as word where not exists (select 1 where false);
      word
-----------------
 Here exists a record
(1 row)

select ''no record :('' as word where not exists (select 1 where true);
 word
------
(0 rows)
```', '2015-05-30 02:52:29.214207', '2016-10-31 23:38:56.620861', 26, 'Check to see if a subquery returns any records', 'e1032f818b', 2, true, '2015-05-29 21:52:29.214207-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (190, 8, 'Postgres has all the mathematical operators you might expect in any
programming language (e.g. `+`,`-`,`*`,`/`,`%`). It also has a few extras
that you might not be expecting.

Factorial Operator:

```sql
> select 5!;
 ?column?
----------
      120
(1 row)
```

Square Root Operator:

```sql
> select |/81;
 ?column?
----------
        9
(1 row)
```

Absolute Value Operator:

```sql
> select @ -23.4;
 ?column?
----------
     23.4
(1 row)
```', '2015-07-12 21:31:20.634474', '2016-02-29 17:30:21.318926', 26, 'Special Math Operators', '05ba251569', 2, true, '2015-07-12 16:31:20.634474-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (82, 10, 'Say you have a set of colors that correspond to class names:

```scss
$category-colors: (
  "bananas": "yellow",
  "oranges": "orange",
  "blue-milk": "cyan",
  "cabbage": "lime",
  "sour-warheads": "magenta"
);
```

And sometimes those class names recolor a background, but sometimes they might override something else, like a border or text color. Try this mixin on for size:

```scss
@mixin category-colors($attr:color)
  @each $class, $color in $category-colors
    &.#{$class}
      #{$attr}: #{$color}
```

So this call will output subclasses of `.widget.bananas`, etc., each with the appropriate text color ...

```sass
.widget
  @include category-colors
```

And this one will output subclasses with the appropriate background color (or whatever other attribute you''d like).

```sass
.widget
  @include category-colors(background-color)
```', '2015-05-27 13:51:04.927889', '2016-07-10 17:38:43.422542', 27, 'Generating subclasses with Sass Maps', '7f164312bb', 4, true, '2015-05-27 08:51:04.927889-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (128, 4, 'Lets get value ''a'':

``` sql
select ''{"a": "b"}''::json->>''a'';
  ?column?  
------------
 b
```

Howbout a nested value ''b''?

``` sql
select (''{"a": {"b": "c"}}''::json->>''a'')::json->>''b'';
 ?column? 
----------
 c
```

Howbout the first value of an array?

``` sql
select (''{"a": [{"b": "c"}]}''::json->>''a'')::json->>0;
  ?column?  
------------
 {"b": "c"}
```

There''s a better way to get a nested path

``` sql
select json_extract_path(''{"a": {"b": "c"}}'', ''a'', ''b'');
 json_extract_path 
-------------------
 "c"
(1 row)
```

But you can''t grab a value from an array with that method.  But at least `json_extract_path` returns a value of type json so you don''t have to cast it before using the feather (->>) operator.

``` sql
select json_extract_path(''{"a": {"b": ["c"]}}'', ''a'', ''b'')->>0;
 json_extract_path 
-------------------
 "c"
(1 row)
```', '2015-06-13 14:33:28.221201', '2016-06-29 17:30:43.773738', 26, 'Extracting values from Postgres json blob', '9ccb505902', 2, true, '2015-06-13 09:33:28.221201-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (184, 2, 'Commenting out a range of code is easy with the plugin [commentary.vim](https://github.com/tpope/vim-commentary).

Simply highlight the range of code in visual mode and type `gc`.

Undo the action with `u`, or by repeating the same `gc` command on your range.

h/t Josh Branchaud', '2015-07-08 02:36:31.633329', '2016-10-04 17:30:38.925994', 1, 'Comment with Commentary', '48444e2f94', 3, true, '2015-07-07 21:36:31.633329-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (143, 8, 'Postgres has a `generate_series` function that can be used to, well,
generate a series of something. The simplest way to use it is by giving it
`start` and `stop` arguments

```sql
> select generate_series(1,5);
 generate_series 
-----------------
               1
               2
               3
               4
               5
```

The default step is 1, so if you want to count backwards, you need to
specify a negative step


```sql
> select generate_series(5,1,-1);
 generate_series 
-----------------
               5
               4
               3
               2
               1
```

You can use a larger step value to, for instance, get only multiples of 3

```sql
> select generate_series(3,17,3);
 generate_series 
-----------------
               3
               6
               9
              12
              15
```

Trying this out with timestamps is left as an exercise for the reader.', '2015-06-19 13:29:43.145576', '2016-03-21 17:30:33.938697', 26, 'Generate Series Of Numbers', '88b587b725', 3, true, '2015-06-19 08:29:43.145576-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (103, 8, 'If you are storing nested JSON data in a postgres JSON column, you are
likely going to find yourself in a situation where you need to access some
of those nested values in your database code. For instance, you may need to
get at the license number in this JSON column

```sql
  owner
--------------------------------------------------------------------------------
''{ "name": "Jason Borne", "license": { "number": "T1234F5G6", "state": "MA" } }''
```

Unfortunately, the `->` operator isn''t going to do the trick. You need the
`json_extract_path` function

```sql
> select json_extract_path(owner, ''license'', ''number'') from some_table;

 json_extract_path
-------------------
   ''T1234F5G6''
```

Read more about [JSON Functions and
Operators](http://www.postgresql.org/docs/9.4/static/functions-json.html).', '2015-06-03 13:43:04.882589', '2016-03-02 17:30:20.810209', 26, 'Extracting Nested JSON Data', '52eee59180', 3, true, '2015-06-03 08:43:04.882589-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (121, 8, 'The `lsof` command is used to *list open files*. This includes listing
network connections. This means I can check if a particular port is in use
and what process is using that port. For instance, I can check if my rails
application is currently running on port 3000.

```
$ lsof -i TCP:3000
COMMAND   PID       USER   FD   TYPE             DEVICE SIZE/OFF NODE NAME
ruby    13821 jbranchaud   12u  IPv6 0xdf2e9fd346cc12b5      0t0  TCP localhost:hbci (LISTEN)
ruby    13821 jbranchaud   13u  IPv4 0xdf2e9fd33ca74d65      0t0  TCP localhost:hbci (LISTEN)
```

I can see that a ruby process (my rails app) is using port 3000. The PID
and a number of other details are included.

See more details with `man lsof`.

h/t [Mike Chau](https://twitter.com/money_mikec)', '2015-06-12 13:14:43.173084', '2016-03-04 21:43:45.588836', 34, 'Check If A Port Is In Use', 'c42d6a1b3b', 6, true, '2015-06-12 08:14:43.173084-05', 6);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (30, 8, 'From within a vim session, if you create a buffer for a new file in a
directory that doesn''t exist. For instance, let''s say that `/features`
doesn''t exist and the new file is `my_latest_feature_spec.rb`:

```
:e spec/features/my_latest_feature_spec.rb
```

Vim''s command line will inform you that this is a buffer for a `[New
DIRECTORY]`. If you then make some changes and subsequently try to save the
file, Vim will present you with:

```
"spec/features/my_latest_feature_spec.rb" E212: Can''t open file for writing
```

This is because the containing directory doesn''t exist. You can quickly
create that directory with a combination of Vim filename shorthands and
shelling out to the `mkdir` command.

```
:!mkdir -p %:h
```

The `%` is shorthand for the qualified path of the current file. The `:h` is
a filename modifier that returns the *head of the filename*, that is, it
resolves to the path with everything except the name of the file.

Thus, this command is essentially resolving to:

```
:!mkdir -p spec/features/
```

Vim will shell out with this command making directories for all non-existent
directories in the given path. Now you can happily save your new file.', '2015-05-05 17:03:06.205494', '2016-11-28 08:36:53.017909', 1, 'Create A New File In A New Directory', 'd2bed4a1e5', 5, true, '2015-05-05 12:03:06.205494-05', 6);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (174, 16, 'CoffeeScript has no ternary operator! This blew me away, since CoffeeScript is so similar to Ruby.

In Ruby, `a ? b : c`  translates to: Is `a` true? Ok, then return `b`, otherwise I''ll return `c`.

In CoffeeScript, `a ? b : c` translates to pure madness. If `a` is not `null` or `"undefined"`, return `a`. Otherwise, return an object literal `({ b: c })`...!?!

That''s crazy.....so instead of using a ternary (which doesn''t exist in CoffeeScript), call it a day with:

`if a then b else c`', '2015-07-02 13:26:39.883035', '2017-02-15 16:57:32.390116', 13, 'CoffeeScript doesn''t have a ternary operator', '0fc9f690bb', 9, true, '2015-07-02 08:26:39.883035-05', 9);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (135, 15, 'SSH has some nice security features like password-less authentication. For the sysadmin who wants even more fine-grained control, the ssh configuration has a setting for what users are allowed to authenticate based on their IP address.

```bash
# /etc/ssh/sshd_config
AllowUsers admin@127.0.0.1 deployer@127.0.0.1 git@*
```

This configuration says that `admin` & `deployer` are only allowed to login from `127.0.0.1`, but `git` can login from any IP address. You can also use wildcards the other way:

```bash
AllowUsers *@127.0.0.1
```
The most useful thing here is the ability to use `*` to match users and hosts.

h/t  [Chris Erin](http://til.hashrocket.com/authors/chriserin)
', '2015-06-16 23:20:45.135515', '2016-08-07 17:09:05.623579', 20, 'Limit SSH by IP address', '7a13cfbcca', 4, true, '2015-06-16 18:20:45.135515-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (179, 8, 'When creating a new tmux session

```bash
$ tmux new
```

a default name of `0` will be given to the session.

If you''d like to give your session a name with a bit more meaning, use the
`-s` flag

```bash
$ tmux new -s burrito
```

[source](https://robots.thoughtbot.com/a-tmux-crash-course)', '2015-07-04 13:28:16.061654', '2016-09-13 17:30:35.831345', 34, 'Create A Named tmux Session', '8608c63aae', 4, true, '2015-07-04 08:28:16.061654-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (186, 4, 'If you''re a clever kind of javascript dev you create functions with variables from outside the function definition.

``` javascript
var i = 5;
function printSomething() {console.log(i);}
printSomething();
> 5
```

But you should watch yourself when using a closure within a loop.

``` javascript
> fns = []
> for(var i = 0; i < 3; i++) {fns.push(function () {console.log(i); })};
> fns[0]();
3
> fns[1]();
3
> fns[2]();
3
```

Yikes!  The closure references the variable as it is now, not the variable as it was.  You should only reference the variable if you don''t expect it to change (or if you want it to change).

``` javascript
> fns = []
> function createFn(i) { return function() { console.log(i); };}
> for (var i = 0; i < 3; i++) {fns.push(createFn(i))};
> fns[0]();
0
> fns[1]();
1
> fns[2]();
2
```
', '2015-07-09 05:00:11.86115', '2016-06-05 17:30:29.043627', 13, 'Javascript closures bind to the variable', '4c4bc8873f', 3, true, '2015-07-09 00:00:11.86115-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (122, 4, 'When you need a timezone offset in the database use

``` sql
select utc_offset from pg_timezone_names where name = ''Asia/Hong_Kong'';
```

But in this case utc_offset is an interval and maybe you want an integer

``` sql
select ''1 hour''::interval::integer;   -- << THROWS ERROR
```

Throws an error `cannot cast type interval to integer`

But you can extract the hour from an interval

``` sql
select extract(hour from utc_offset) from pg_timezone_names where name = ''Asia/Hong_Kong'';

-[ RECORD 1 ]
date_part | 8
```

This operation can be unexpectedly expensive to run (100ms) so be careful where you run it or maybe put this rarely changing information into a materialized view.', '2015-06-12 13:21:37.005328', '2016-11-01 21:01:56.311763', 26, 'Time Zone offsets in the DB', '2668700a33', 4, true, '2015-06-12 08:21:37.005328-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (146, 2, 'The ES5 specification defined a new native method, `trim()`. It works just like Ruby''s `strip`:

```javascript
''   value   ''.trim()
=> "value"
```

This is great for stripping extra whitespace from a user''s input.', '2015-06-20 23:42:50.530813', '2016-07-26 17:30:52.161336', 13, 'JavaScript Trim', '34ff3c52b7', 3, true, '2015-06-20 18:42:50.530813-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (157, 8, 'Use the `repeat` command to repeat some other command.

You can repeat a command any number of times like so

```
$ repeat 5 say Hello World
```', '2015-06-25 13:30:51.859023', '2016-07-16 17:32:28.511708', 34, 'Repeat Yourself', '3ead348be3', 5, true, '2015-06-25 08:30:51.859023-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (123, 14, 'So you want to find all the rocketeers who wrote blog posts in a date range.

```ruby
Blog::Post.where(published_at: 15.years.ago..4.years.ago).includes(:rocketeer).map(&:rocketeer)
  # Blog::Post Load (0.6ms)  SELECT "blog_posts".* FROM "blog_posts"
  #   WHERE ("blog_posts"."published_at" BETWEEN ''2000-06-12 14:40:06.429288'' AND ''2011-06-12 14:40:06.429498'')
  # Rocketeer Load (0.7ms)  SELECT "rocketeers".* FROM "rocketeers"
  #   WHERE "rocketeers"."id" IN (12, 13, 14, 16)  ORDER BY "rocketeers"."name"
```

But you want to do it in one query!

```ruby
Rocketeer.where(
  id: Blog::Post.where(published_at: 15.years.ago..4.years.ago).select(:rocketeer_id)
)
  # Rocketeer Load (0.9ms)  SELECT "rocketeers".* FROM "rocketeers"
  #   WHERE "rocketeers"."id" IN (
  #     SELECT "blog_posts"."rocketeer_id" FROM "blog_posts"
  #       WHERE ("blog_posts"."published_at" BETWEEN ''2000-06-12 14:42:20.005077'' AND ''2011-06-12 14:42:20.005317''))  ORDER BY "rocketeers"."name"
```', '2015-06-12 14:54:30.164364', '2016-10-05 18:07:43.099984', 5, 'ActiveRecord subselects', '53fa4e867f', 12, true, '2015-06-12 09:54:30.164364-05', 12);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (21, 4, 'RVM binaries are stored at:

https://rvm.io/binaries

They have binaries for 9 operating systems, the versions of each operating system, and the system architecture that each version supports.', '2015-04-24 19:33:38.467062', '2016-04-06 17:30:19.070702', 6, 'RVM binaries storage', 'f1f7c2f956', 1, true, '2015-04-24 14:33:38.467062-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (34, 2, 'To save a snapshot of your current work in git, try this command:

```shell
git stash save "snapshot: $(date)" && git stash apply "stash@{0}"
```

This saves your current work in a timestamped stash, without removing it. In Hashrocket''s dotmatrix this command is aliased to `git snapshot`.', '2015-05-07 15:33:16.104325', '2016-06-13 17:30:34.932452', 10, 'Git snapshot', '7e37ac74e4', 3, true, '2015-05-07 10:33:16.104325-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (71, 4, 'Flattening an array with nested arrays (2 dimensional array) in javascript is relatively easy if unintuitive.

``` javascript
> [].concat.apply([], [[1],[2,3],[4]])
[ 1, 2, 3, 4 ]
```

But an array with 3 or more dimensions or levels of nesting gets messy.

``` javascript
> [].concat.apply([], [[1], [2, [3]]])
[ 1, 2, [ 3 ] ]
```

This [Stack Overflow](http://stackoverflow.com/a/15397506/335559) thread has some solutions.  This underscore [implementation](http://underscorejs.org/docs/underscore.html#section-56) is a good reference as well.', '2015-05-24 02:57:24.001901', '2016-05-24 17:30:22.84093', 13, 'Flatten array in javascript', '48c1e489a4', 1, true, '2015-05-23 21:57:24.001901-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (4, 4, '__Documentation__

```
\h [NAME]              help on syntax of SQL commands, * for all commands
```

__Example__

```
\h ROLLBACK TO SAVE POINT
```

__Output__

```
Command:     ROLLBACK TO SAVEPOINT
```

```
Description: roll back to a savepoint
```

```
Syntax:
```

```
ROLLBACK [ WORK | TRANSACTION ] TO [ SAVEPOINT ] savepoint_name
```

/ht Brian', '2015-04-14 02:09:02.93742', '2016-12-10 20:30:51.243361', 26, 'command line SQL help', 'a33cfe055d', 4, true, '2015-04-13 21:09:02.93742-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (140, 4, 'If you''re curious about the time delta between two lines of code in javascript, you can use the `console.time` and `console.timeEnd` functions to get that delta.

``` javscript
> console.time("a")
undefined
> console.timeEnd("a")
a: 8136ms
undefined
```

The string passed in is just a token for the section you want to time.

h/t [Chase McCarthy](https://twitter.com/code0100fun)', '2015-06-18 22:02:54.889814', '2016-03-27 22:04:19.223143', 13, 'Log timings with javascript console', '14db716b9f', 6, true, '2015-06-18 17:02:54.889814-05', 6);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (74, 2, 'Ruby''s `puts` can take multiple arguments!

```ruby
2.2.0 :002 > puts ''so'', ''many'', ''statements'', ''to'', ''puts''
so
many
statements
to
puts
 => nil
```', '2015-05-26 01:02:52.541982', '2016-04-05 17:30:49.690906', 6, 'Puts Multiple Lines', '1bcf851c68', 3, true, '2015-05-25 20:02:52.541982-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (69, 2, 'Ruby strings are truthy, and they evaluate to zero, unless they start with a number.

```ruby
> ''nine to five''.to_i
 => 0
> ''9 to 5''.to_i
 => 9
```', '2015-05-23 16:27:26.88569', '2016-08-03 18:37:02.788958', 6, 'Truthy Strings', '158882226c', 3, true, '2015-05-23 11:27:26.88569-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (32, 8, 'Get some Vim tips with:

```
:h tips
```', '2015-05-06 13:31:30.118263', '2016-09-24 17:49:55.849307', 1, 'Vim Tips', 'a3b8f5f528', 3, true, '2015-05-06 08:31:30.118263-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (25, 4, 'Given an array with many empty strings

```
arr = ["a", "", "b", "", "c", "", "d"];
```

To get rid of the empty strings call `filter` and pass the `Boolean` method.

```
arr.filter(Boolean);
> ["a", "b", "c", "d"]
```

https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Boolean
', '2015-04-29 03:57:17.653167', '2016-05-05 17:30:58.31441', 13, 'Filter empty strings from array', '29f762eb48', 2, true, '2015-04-28 22:57:17.653167-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (23, 8, 'Remove all the excess spaces from a string using the `squeeze` method:

```ruby
> "this  is   a string".squeeze('' '')
=> "this is a string"
```', '2015-04-27 19:54:32.166061', '2016-09-17 20:48:15.411462', 6, 'Squeeze out the extra space', '4920b2bc68', 2, true, '2015-04-27 14:54:32.166061-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (1, 2, 'Rails logs your server''s activity, which is useful for development and debugging. However, often the server handles sensitive information that should not be logged.

A few examples are authentication credentials, personal data, and financial information.

To prevent Rails from logging such data, add this to your application configuration:

```ruby
config.filter_parameters << :param_a, :param_b
```

When the named parameters are handled by the server, they will be logged as `[FILTERED]` instead of their actual value. Add this configuration by environment if you want to keep the parameters unfiltered in development.', '2015-04-13 19:14:51.177284', '2015-10-05 20:16:17.975318', 5, 'Parameters Filtering', 'ee0a1bc878', 4, true, '2015-04-13 14:14:51.177284-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (44, 2, 'The HTML date input tag allows you to request dates in a web form.

```html
<input type="date">
```

This tag is more semantic for date input than text, and provides a side benefit: Google Chrome will automatically display a calendar selector on the page.', '2015-05-14 00:27:30.117136', '2016-05-26 17:30:29.475323', 27, 'Date Input Tag', '515d9a059d', 2, true, '2015-05-13 19:27:30.117136-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (13, 2, '`:g/^\s*#/d` will remove comment lines from a file with Vim.', '2015-04-17 19:41:06.50016', '2016-10-26 15:21:12.722474', 1, 'Delete comments with Vim', '979e28feb5', 3, true, '2015-04-17 14:41:06.50016-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (14, 5, 'With ember-cli
```
ember test --server
```
will run your tests on every file change. ', '2015-04-18 00:13:55.158606', '2016-07-13 17:30:39.540805', 13, 'ember test --server', 'e8f5f7b4b3', 1, true, '2015-04-17 19:13:55.158606-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (20, 9, 'Need to turn up the connection pool size via environment variables? Append a query param like

    "postgresql://foo:bar@localhost:9000/foo_test?pool=5&timeout=3000"

[Check out the source on github](https://github.com/rails/rails/blob/8c82ee838ec10fcfde45f99129c4376f8435dd06/activerecord/lib/active_record/connection_adapters/connection_specification.rb#L21)', '2015-04-24 17:02:09.19736', '2015-11-17 18:59:34.201121', 5, 'Set ActiveRecord conn. pool size via DATABASE_URL', '9a754a1ea0', 1, true, '2015-04-24 12:02:09.19736-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (24, 4, 'The Check constraint is the most generic type of constraint.

```
alter table things add CONSTRAINT corners_must_be_greater_than_0 CHECK (corners > 0);
```', '2015-04-28 01:05:00.546675', '2016-05-03 17:30:52.041467', 26, 'The most generic type of constraint', '67679e753c', 1, true, '2015-04-27 20:05:00.546675-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (8, 4, '`Time.at(Time.now.to_i)`', '2015-04-15 19:23:09.01669', '2016-06-03 17:30:27.299233', 6, 'Convert interger to time', '898a902e45', 2, true, '2015-04-15 14:23:09.01669-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (2, 4, '`:retab` resets the tabs dependent on shift width and tab stop.', '2015-04-13 19:19:40.324259', '2016-08-29 20:10:10.288421', 1, 'Retab', 'e9efd4e059', 5, true, '2015-04-13 14:19:40.324259-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (5, 2, 'If you use buffers to navigate Vim, and you open a file you didn''t mean to edit or won''t need later, wipe it from the buffer with `:bw`.

This will prevent that file from showing up in your buffers list. It will also delete any changes to the file; use with caution.', '2015-04-14 15:58:48.801555', '2015-11-10 18:59:41.011782', 1, 'Buffer Wipe', '6f7c8a3655', 2, true, '2015-04-14 10:58:48.801555-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (7, 8, 'Any mark set with a capital letter (that is, `A-Z`) is called a *file mark*.
File marks can be used to move from file to file. File marks will also be
written to the Vim Info file (`~/.viminfo`) which means that if you close
Vim and open it again, it will still know about those file marks. This means
that your file marks are persisted across vim sessions which will save you
the trouble of having to redefine them each time.

A more detailed description of marks is at `:help marks`.', '2015-04-15 13:30:04.806443', '2016-03-30 17:41:00.827005', 1, 'Marks Across Vim Sessions', '42421df159', 2, true, '2015-04-15 08:30:04.806443-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (16, 8, 'The majority of your time in vim will be spent in normal mode. You will
often look to the documentation for help on any number of commands and
bindings available in normal mode. For instance, to find out more about
*goto file*, you may do `:h gf`. And if you want to read more about
*yanking* lines of code, you may do `:h y`.

But what about commands and bindings that aren''t found in normal mode? What
if you want to read about *yanking* text from visual mode? What if you want
to get more details on insert''s x-mode? Doing `:h y` and `:h ctrl-x`,
respectively, won''t do the trick because vim thinks you are talking about
normal mode bindings.

The docs for these and other non-normal mode features can be found by
prepending `i_` and `v_` to the binding in question.

To get at the docs for *yanking* from visual mode:

```
:h v_y
```

And to read up on insert''s x-mode:

```
:h i_ctrl-x
```', '2015-04-21 13:46:57.366401', '2016-08-02 17:30:41.039203', 1, 'Help For Non-Normal Mode Features', '24a2a36d21', 2, true, '2015-04-21 08:46:57.366401-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (66, 4, 'When you get to a psql command line prompt and enter \dt psql will output all the tables in the current schema.

But if you open psql with

```
psql -E database_name
```

postgres will show you the query it runs to satisfy \dt.

```
SELECT n.nspname as "Schema",
  c.relname as "Name",
  CASE c.relkind WHEN ''r'' THEN ''table'' WHEN ''v'' THEN ''view'' WHEN ''m'' THEN ''materialized view'' WHEN ''i'' THEN ''index'' WHEN ''S'' THEN ''sequence'' WHEN ''s'' THEN ''special'' WHEN ''f'' THEN ''foreign table'' END as "Type",
  pg_catalog.pg_get_userbyid(c.relowner) as "Owner"
FROM pg_catalog.pg_class c
     LEFT JOIN pg_catalog.pg_namespace n ON n.oid = c.relnamespace
WHERE c.relkind IN (''r'','''')
      AND n.nspname <> ''pg_catalog''
      AND n.nspname <> ''information_schema''
      AND n.nspname !~ ''^pg_toast''
  AND pg_catalog.pg_table_is_visible(c.oid)
ORDER BY 1,2;
```

', '2015-05-22 20:20:25.740331', '2016-08-09 17:30:56.701696', 26, 'How does postgres get its meta data?', '38a0368da3', 2, true, '2015-05-22 15:20:25.740331-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (15, 4, 'Included in the ruby std lib is a timeout lib.  It provides the capacity to auto-terminate a potentially long running operation.

http://ruby-doc.org/stdlib-2.2.1/libdoc/timeout/rdoc/Timeout.html

```ruby
require ''timeout''
status = Timeout::timeout(5) {
  # Something that should be interrupted if it takes more than 5 seconds...
}
```', '2015-04-19 14:15:53.454778', '2016-10-20 17:30:39.413514', 6, 'Ruby timeout', '5cf7a057be', 2, true, '2015-04-19 09:15:53.454778-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (27, 2, 'In this example, we want to allow users to enter a twitter handle with or without an at-sign (''@''), just like Twitter, but save it without the at-sign. `twitter_handle` is already an attribute on the class.

~~~ruby
class User < ActiveRecord::Base
  def twitter_handle=(handle)
    write_attribute(:twitter_handle, handle.to_s.gsub(/^@/, ''''))
  end
end
~~~', '2015-04-30 16:58:58.914709', '2016-06-04 17:30:22.600358', 5, 'Modify attribute on set', '5403e5faf2', 2, true, '2015-04-30 11:58:58.914709-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (17, 2, '`git reflog` is a record of your commands in Git. With it, you can undo almost mistake you make with Git.

    $ git reflog

    4bd0090 HEAD@{0}: <bad change>
    46bd839 HEAD@{1}: <bad change>
    967e214 HEAD@{2}: <last good change>
    46bd839 HEAD@{3}: <good change>
    967e214 HEAD@{4}: <good change>

Now:

```
$ git reset --hard HEAD@{2}
```

Or:

```
$ git reset --hard 46bd839
```', '2015-04-21 19:19:56.766184', '2016-02-12 15:35:20.019403', 10, 'Undo a git mistake', '9c3ea5a6f6', 5, true, '2015-04-21 14:19:56.766184-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (26, 4, 'Of course I should know this but I didn''t, 3rd value of radio_button_tag is whether the input is checked or not.

``` ruby
radio_button_tag("name", "value", isChecked)
```

#stilllearningrails

', '2015-04-30 00:28:52.899465', '2016-04-26 22:18:02.198866', 5, 'The third argument of radio_button_tag is checked!', '25469f276e', 4, true, '2015-04-29 19:28:52.899465-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (18, 8, 'To get whole line auto-completion in Vim, you don''t need a fancy plugin. It
is built right in. There is a sub-mode of insert mode called *X mode* that
allows you to do various kinds of special insertions. The `ctrl-x ctrl-l`
binding corresponds to whole line completion. So, if you start typing a few
characters and then (while still in insert mode) hit `ctrl-x ctrl-l` you
will see a completed line that matches the initial characters you typed as
well as a list of subsequent matches. You can cycle through the matches
using `ctrl-n` and `ctrl-p` (going forward and backward, respectively).

The completion is done based on the configured completion sources.
Generally, the completion sources will include the current buffer, other
loaded and unloaded buffers, plus others. You can see which sources are
configured with `:set complete?` and read more about the completion
configuration at `:h ''complete''`.', '2015-04-23 02:49:57.744769', '2016-08-12 17:30:45.018035', 1, 'Whole Line Auto-Completion', '048f93d280', 1, true, '2015-04-22 21:49:57.744769-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (29, 2, '~~~ruby
class AddDefaultFalseToDeveloperAdminFlag < ActiveRecord::Migration
  def change
    change_column_default :developers, :admin, false
  end
end
~~~', '2015-05-01 14:48:14.055159', '2016-01-13 19:00:00.717795', 5, 'Change column default', '101daf128b', 2, true, '2015-05-01 09:48:14.055159-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (19, 8, 'Often times when I open a new buffer, it is with the intention of moving to
a particular line. For example, if I am trying to move to line 55 in the
file, then I will hit `55j`\*. This works fine when I am dealing with a
freshly opened buffer. That is, this works fine if I am starting from the
top of the buffer.

In general, there is a better approach. I can move to an exact line number
from normal mode with `:{N}` where `{N}` is the line number. So, if I want
to get to line 55 regardless of where I am currently positioned in the
buffer, I can simply hit `:55<cr>`.

\* *This actually is slightly inaccurate, it moves me to line 56, not 55.
If I need to be precise, this doesn''t cut it.*

\** Also, `55G` apparently does the same thing.', '2015-04-23 14:06:01.89808', '2016-06-17 17:30:25.086892', 1, 'Moving To A Specific Line', '6f470ca154', 1, true, '2015-04-23 09:06:01.89808-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (92, 8, 'Vim ships with a number of different color schemes. There is also a plethora
of color schemes built by the open source community. If you''d like to know
what color scheme you are currently using, you can check with

```
:echo g:colors_name
```

So more details at both `:h g:colors_name` and `:h colorscheme`.', '2015-05-30 19:33:02.304467', '2016-09-15 17:30:35.913364', 1, 'Check Your Current Color Scheme', '064628d47b', 2, true, '2015-05-30 14:33:02.304467-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (42, 4, 'Imagine you''re selling time in a room, but that room has a limited capacity.  Anybody can book an arbitrary amount of time in the future, but there can only be 5 people in the room at any given time.  You''ll want to query the db to ask it how many people are in the room for a certain amount of time before you sell that time.

For many many rooms and many many slices of time, you''ll get a query like

```
select count(*) from rooms r join slices s on s.room_id = r.id where r.id = ? and tstzrange(''2016-01-02'', ''2016-01-05'') && s.time_range;
```

This is going to take in the many hundreds of ms to run, but never fear, an index is near.

```
alter table slices create index speed_things_up gist(room_id, time_range);
```

And now the above query takes 10s of ms to run!', '2015-05-13 00:55:19.892887', '2016-05-10 17:30:43.11347', 26, 'Gist indexes understand ranges', 'e8d91a3358', 1, true, '2015-05-12 19:55:19.892887-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (35, 8, 'Vim has a variety of registers for storing and moving around text. Vim also
has a special register called the *black hole register*. This black hole
register is associated with the `_` character.

> When writing to this register, nothing happens.  This can be used to delete
> text without affecting the normal registers.  When reading from this register,
> nothing is returned.

As stated in the docs, if you don''t want to overwrite the unnamed register or
some other register when deleting text, you can use the black hole register.
For instance, deleting the current line without any register side-effects
looks like this:

```
"_dd
```

See `:h registers` for more info on Vim''s registers.', '2015-05-07 16:49:21.197886', '2016-05-06 17:31:50.242532', 1, 'The Black Hole Register', 'bb38b8ba90', 2, true, '2015-05-07 11:49:21.197886-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (43, 8, 'To get an idea of what a `rails generate` command is going to to
*generate*, you can do a dry run with the `-p` flag or
the `--pretend` flag. If you run

```
$ rails generate model post -p
```

then you will see the following output

```
    invoke  active_record
    create    db/migrate/20150513132556_create_posts.rb
    create    app/models/post.rb
    invoke    rspec
    create      spec/models/post_spec.rb
    invoke      factory_girl
    create        spec/factories/posts.rb
```

though those files will not have actually been created. You now know
precisely what rails will generate for you.

[source](http://rubyquicktips.com/post/19223887750/pretend-to-generate)', '2015-05-13 13:35:07.930626', '2016-06-10 23:39:02.060806', 5, 'Pretend Generations', '52419b69dc', 3, true, '2015-05-13 08:35:07.930626-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (37, 8, 'Assuming I have a database with a posts table:

```sql
> select * from posts where id = 1;
 id |  title   |              content               
----+----------+------------------------------------
  1 | My Title | This is the content of my article. 
```

I can compute the word count of the content of a given post like so:

```sql
> select sum(array_length(regexp_split_to_array(content, ''\s+''), 1)) from posts where id = 1;
 sum 
-----
   7 
```

[source](http://blog.lingohub.com/2013/07/sql-word-count-character-count-postgres/)', '2015-05-09 16:48:11.921755', '2016-08-10 06:01:11.668295', 26, 'Word Count for a Column', 'aa79c7ceac', 2, true, '2015-05-09 11:48:11.921755-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (99, 8, 'Vim ships with a number of standard color schemes for both light and dark
backgrounds. You can also find and install many others. To set your color
scheme, you can use the `:colorscheme` command. You can quickly see what
color schemes are available by typing `:colorscheme` and then tabbing for
completion. For instance, you can set the *delek* color scheme by entering

```
:colorscheme delek
```

See `:h colorscheme` for more details.', '2015-06-02 13:20:45.729574', '2016-06-19 17:57:40.109978', 1, 'Set Your Color Scheme', '0a33311a92', 4, true, '2015-06-02 08:20:45.729574-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (38, 8, 'You can assign a class selector to a tag in HAML like so:

```ruby
%div.active
```

You can conditionally assign a class selector in a concise manner like so:

```ruby
%div{ class: ( "active" if @thing.active? ) }
```

You can do multiple conditional class selectors with array syntax:

```ruby
%div{ class: [ ("active" if @thing.active?), ("highlight" if @thing.important?) ] }
```

[source](http://stackoverflow.com/questions/3453560/append-class-if-condition-is-true-in-haml-with-rails)', '2015-05-12 00:40:49.763256', '2016-08-06 18:48:58.549967', 5, 'Conditional Class Selectors in Haml', '59955464da', 2, true, '2015-05-11 19:40:49.763256-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (113, 9, '[Abolish](https://github.com/tpope/vim-abolish) brings us some outlandish powers. Change `snake_case` to `snakeCase` by putting your cursor on it in normal mode and entering `crc.` The pneumonic here is "CoeRce Camel." Stupid potent.', '2015-06-08 16:24:44.999925', '2016-05-29 02:33:10.037067', 1, 'Change to snake, pascal, or camel case in vim', '8f9ddd69e1', 6, true, '2015-06-08 11:24:44.999925-05', 6);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (51, 8, 'In [Quick Man Pages](https://github.com/jbranchaud/til/blob/master/vim/quick-man-pages.md), I introduced `K` which shells
out to the man page for the unix command under the cursor. It gets better
though. Vim has a built-in plugin, `man.vim`, that you can enable which
allows you to view man pages without shelling out.

Add the following to your `.vimrc` file

```vimscript
runtime! ftplugin/man.vim
" grep
```

Then save it and re-source the configuration with `:source %`.

With the `man.vim` plugin enabled, you can now move your cursor over the
word `grep` and hit `<leader>K` which will pop open the man page for `grep`
in a unnamed, split buffer.

Not only does this prevent context-switching when viewing a man page, but it
also gives you the full power of vim over the content of the man page. You
can search, you can yank text, or you can even pop open the man page for
another command.

See `:h ft-man-plugin` for more details.', '2015-05-17 13:09:14.164338', '2016-07-24 14:50:52.880735', 1, 'Viewing Man Pages with man.vim', '035198679e', 3, true, '2015-05-17 08:09:14.164338-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (46, 2, 'Check the value of any Vim setting by adding a `?` to the end of its name.

```
# Validate spelling is turned off
:set spell?
=> nospell

# Validate incremental search is turned on
:set incsearch?
=> :incsearch
```', '2015-05-14 16:00:49.081642', '2016-04-08 17:31:21.326573', 1, 'Current Value of a Setting', '389a2c18ef', 4, true, '2015-05-14 11:00:49.081642-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (45, 8, 'If you are running tmux locally and you shell into another machine to
access tmux remotely, you will suddenly find yourself in tmux inception.
You will have a tmux instance running within your local tmux instance. If
you have the same prefix key set for both, then you may be wondering how
you can send a tmux command to the *inner* tmux instance.

If you press your prefix twice (e.g. `<C-a> <C-a>`), then the second prefix
will be sent to the inner tmux instance which will then be listening for
the rest of your command. So, to open a new window within the inner tmux
instance, you can hit `<C-a> <C-a> c`.', '2015-05-14 14:04:41.56882', '2016-04-22 17:30:37.724286', 34, 'tmux in your tmux', 'c1258b395a', 1, true, '2015-05-14 09:04:41.56882-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (53, 8, 'If you want to start up vim without loading all the usual plugins, you
can supply the `--noplugin` flag

```
$ vim --noplugin coffee.rb
```

You can take things even further by instead telling vim to open without
loading any plugins or configuration files. That is, you can tell vim to
skip all initializations.

```
$ vim -u NONE coffee.rb
```

If you are used to lots of syntax highlighting, custom bindings, and
other niceties, this may feel rather foreign.

h/t [Jake Worth](https://twitter.com/jwworth)', '2015-05-18 13:46:52.47725', '2016-06-22 18:06:29.164163', 1, 'Vim Without The Extras', '89358f3feb', 3, true, '2015-05-18 08:46:52.47725-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (57, 4, 'The key to iterating over a javascript Iterator is that `next` returns a javascript object with two entries, `value` and `done`.  If done is false, then calling `next` on the iterator will yield another object with a value.  When `done` is `true` then you''re done!

``` javascript
while(object = objectIterator.next(); !object.done) {
  myValue = object.value
}
```', '2015-05-19 02:42:23.715471', '2016-08-28 17:30:42.415245', 13, 'Using while to iterate a javascript iterator', '09a89c2706', 1, true, '2015-05-18 21:42:23.715471-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (58, 8, 'If you have pasted some poorly formatted code or you''ve written a portion
of code in a way that mangled the indentation, you can quickly re-indent
that code for you. Or at least do its best to try and indent it correctly.

Make a visual selection of the code that you want to re-indent and then
hit `=`.

For instance, this ruby code

```ruby
if this_thing
p something
else
p nothing
end
```

will be indented by Vim as

```ruby
if this_thing
  p something
else
  p nothing
end
```

See `:h =` for more details on how vim decides what formatting and
indenting it will do.

h/t [Chris Erin](https://twitter.com/MCNormalMode)', '2015-05-19 13:23:37.27943', '2016-06-11 21:10:09.705033', 1, 'Re-indenting Your Code', '805e863186', 4, true, '2015-05-19 08:23:37.27943-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (47, 4, 'Does a user exist on the system?

`$ id -u <username>`

That''ll give you the id, like 1006.

`$ groups <username>`

That''ll give you the groups a user is a member of, like `ssh staff admin`', '2015-05-15 00:20:30.023731', '2016-10-29 19:38:03.203236', 34, '*nix user ids and groups', 'e6b0174b55', 2, true, '2015-05-14 19:20:30.023731-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (61, 2, 'The command `md5 <file>` generates a unique 32-digit hexadecimal number. This can serve as a signature for a file in its particular state, letting you know when it has changed.

Example usage:

```shell
$ touch test.txt
$ md5 test.txt
  MD5 (test.txt) = d41d8cd98f00b204e9800998ecf8427e
$ echo ''some content'' > test.txt
$ md5 test.txt
  MD5 (test.txt) = eb9c2bf0eb63f3a7bc0ea37ef18aeba5
```', '2015-05-20 20:35:58.778483', '2016-03-14 17:30:46.112258', 34, 'MD5 File Signatures', '63d2a39816', 2, true, '2015-05-20 15:35:58.778483-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (124, 14, 'When your cukes fail, you might want to take a screenshot, or automatically open a pry.  This can help when debugging flaky tests.

```ruby
After do |scenario|
  if scenario.failed?
    # take a screen shot, or open a pry
  end
end
```', '2015-06-12 20:37:17.31787', '2016-04-13 17:31:33.173036', 6, 'Do something when a cucumber scenario fails', 'c2fde02c34', 4, true, '2015-06-12 15:37:17.31787-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (63, 2, 'Vim can find and replace strings across files, just like other text editors. It''s really (sort of) easy.

First, load all the files you want to change into the Vim buffer with a splatted directory.

```
:args path/to/files/*/*
```

Then, execute the substitution.

```
:argdo %s/old_string/new_string/ge | update
```

The `e` flag is important; it tells Vim not to issue an error if the search pattern fails. This will prevent `No Match` errors from breaking the chain.', '2015-05-21 14:38:41.250953', '2016-07-02 01:58:16.707509', 1, 'Find and Replace Across Files', 'ee97710692', 6, true, '2015-05-21 09:38:41.250953-05', 6);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (62, 8, 'The `git show` command will list all changes for a given reference
including the diffs. With diffs included, this can get rather verbose at
times. If you just want to see the list of files involved (excluding the
diffs), you can use the `--name-only` flag. For instance,

```
$ git show HEAD --name-only
commit c563bafb511bb984c4466763db7e8937e7c3a509
Author: jbranchaud <jbranchaud@gmail.com>
Date:   Sat May 16 20:56:07 2015 -0500

    This is my sweet commit message

app/models/user.rb
README.md
spec/factories/user.rb
```', '2015-05-20 22:02:32.973192', '2016-10-28 17:30:43.46995', 10, 'List Filenames Without The Diffs', '0e1b29b434', 1, true, '2015-05-20 17:02:32.973192-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (88, 4, 'Jake has covered in the past how to see connections and their queries in postgres with 

``` sql
select * from pg_stat_activity;
```

It returns a pid column and now you can use that pid to do these processes harm.

```sql
select pg_terminate_backend(pid) from pg_stat_activity where THERES THAT QUERY GET IT
```', '2015-05-29 02:44:49.654181', '2016-09-26 18:32:38.347753', 26, 'Some connections are just hangin''  KILL THEM', '2582d28d6f', 3, true, '2015-05-28 21:44:49.654181-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (78, 4, 'Josh looked at disassembling ruby [recently](http://til.hashrocket.com/posts/d540395f41-disassemble-some-codes).

It outputs code like:

```
0000 trace            1                                               (   1)
0002 putobject_OP_INT2FIX_O_1_C_
0003 dup
0004 setlocal_OP__WC__0 2
0006 leave
```

The first instruction `trace` tells ruby to emit a trace event (trace system detailed [here](http://ruby-doc.org/core-2.0.0/TracePoint.html)).

The trace instructions may not be useful when examining disassembled code and as such you can compile the code without the trace instructions.

``` ruby
RubyVM::InstructionSequence.compile_option = {
  trace_instruction: false
}
```', '2015-05-27 01:59:08.814779', '2016-05-31 17:30:27.747753', 6, 'You don''t need those traces!', '2b4d9d33e5', 1, true, '2015-05-26 20:59:08.814779-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (130, 2, 'Rails has a method for skipping records in a query, ''offset''. It is available through the `ActiveRecord::QueryMethods` library.

```ruby
User.offset(15) # generated SQL has "OFFSET 15"
```

The docs recommend using it with ''order''. I used the two methods today to return all blog posts, excluding the ten most recent:

```ruby
Post.order(''created_at desc'').offset(10)
```', '2015-06-14 20:35:09.158594', '2016-04-10 17:30:29.04166', 5, 'Rails offset method', '7e22046545', 2, true, '2015-06-14 15:35:09.158594-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (84, 2, 'This conditional tells Ruby to execute the code within if the current file is the file running the code.

```ruby
# exec.rb
if __FILE__ == $0
  puts ''shown when exec.rb is run directly; not when required''
end
```

This works by comparing the current file (`__FILE__`) with the file that started the program (`$0`). If they aren''t the same (`exec.rb`), the statement will not be printed.', '2015-05-28 00:35:01.922734', '2016-10-07 16:08:27.188096', 6, 'Run Code if Current File is Calling File', '6863d290f9', 3, true, '2015-05-27 19:35:01.922734-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (81, 11, 'Create a migration to add the extension

```ruby

class CreateUuidExtension < ActiveRecord::Migration
  def change
    create_table :uuid_extensions do |t|
      enable_extension ''uuid-ossp''
    end
  end
end

```

Add a column to your table with a data type of `:uuid`. Don''t forget to add a default of `uuid_generate_v4()`

```ruby
class AddUuidToAccounts < ActiveRecord::Migration
  def change
    add_column :accounts, :uuid, :uuid, default: ''uuid_generate_v4()''
  end
end
```', '2015-05-27 12:13:41.857671', '2016-03-28 06:26:42.693711', 5, 'Add a UUID Datatype to Your Rails App', 'd7a1cda579', 2, true, '2015-05-27 07:13:41.857671-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (77, 10, 'If you''re using [Middleman data files](https://middlemanapp.com/advanced/data_files/) (which are awesome), you might run into an issue where you want to store text intended for Markdown processing within a .yaml file. To do so, just use `|`:

```yaml
widget:
  content: |
    # This is some markdown content in YAML that will be output as an <h1>.

    This will be output as a paragraph tag.

    So will this!
```

Technically you can use `>` instead of `|`, but `>` does not output linebreaks when the YAML is parsed, which can create issues when the text is processed through Markdown.', '2015-05-26 20:59:51.292276', '2016-06-15 15:01:10.950648', 6, 'Multiline strings in YAML', 'd7c96e2ee7', 2, true, '2015-05-26 15:59:51.292276-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (93, 8, 'When the pager is enabled in `psql`, commands that produce larger output
will be opened in a pager. The pager can be enabled within `psql` by running
`\pset pager on`.

If you''d like to retain the output of commands, perhaps as reference for
subsequent commands, you can turn the pager off. As you might expect, the
pager can be disabled with `\pset pager off`.

[source](http://stackoverflow.com/questions/11180179/postgresql-disable-more-output)', '2015-05-30 21:15:01.820395', '2016-07-04 17:30:48.661028', 26, 'Toggling The Pager In PSQL', 'dd416e67ad', 3, true, '2015-05-30 16:15:01.820395-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (94, 2, 'The Rails `find_or_create_by` method is great for bringing something into existence only once. I like to use it for database seeds, so you get the basic objects you need to make your development site useable, but don''t keep creating them over and over again.

One feature I recently learned is that this method takes a block.

```ruby
User.find_or_create_by(first_name: ''Jake'') do |user|
  user.last_name = ''Worth''
end
```

This lets you find the object, and if it doesn''t exist, create it with whatever attributes you need.', '2015-05-30 21:51:59.067383', '2016-08-16 19:04:27.240949', 5, 'Find Or Create By With Block', 'f1f421613e', 3, true, '2015-05-30 16:51:59.067383-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (98, 2, 'To remove a `belongs_to` association using the Rails migration DSL, use the `remove_references` method. This method is aliased to `remove_reference` and `remove_belongs_to`.

```ruby
class RemoveTagReferences < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.remove_references :tag
    end
  end
end
```', '2015-06-01 22:03:00.71779', '2016-03-18 17:30:21.564572', 5, 'Remove Belongs To Association', 'a0ad9b5123', 3, true, '2015-06-01 17:03:00.71779-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (73, 4, 'A distinctive feature of the font this site uses is the Q with the long tail that swoops under the next letter and the letter after that.

## ROSARIO is the font with the Q

So when you see Q in SQL you know its Rosario.', '2015-05-24 22:40:39.901107', '2016-10-19 17:30:27.486757', 3, 'This site uses the Rosario font', '004b78e6f0', 1, true, '2015-05-24 17:40:39.901107-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (100, 10, 'If you''ve opened a file with Vim and it has a weird extension (or you''ve just pasted code into a new file with no extension yet), you might need to set your highlighting manually. Just use `:set syntax:[language]`, for example:

```
:set syntax:javascript
```', '2015-06-02 17:48:27.418196', '2016-04-14 17:30:51.625347', 1, 'Set Syntax Highlighting Manually', '11b5bc3a88', 2, true, '2015-06-02 12:48:27.418196-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (90, 8, 'You can do a text-based search on the contents of your current buffer by
hitting `/` and then beginning to type a pattern (including regex). The
`incsearch` feature makes searching for text even easier. As you type your
pattern, the first valid match will be located and highlighted. As you
continue to type the pattern, it will continue to update the highlighted
match. Incremental searching makes it easy to see when you''ve made
a typo in your pattern. By default `incsearch` is turned off in Vim. You
can enable it with `:set incsearch`.

See `:h incsearch` for more details.', '2015-05-30 02:38:35.199463', '2016-06-28 19:46:18.696363', 1, 'Incremental Searching', '4acc268b99', 4, true, '2015-05-29 21:38:35.199463-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (89, 2, 'The Vim command `:e` edits a file. Add a bang, `:e!`, to edit the current file ''always'', discarding any changes to the current buffer.

This is useful if you rename a file with a new file extension (i.e. `.txt` to `.rb`). `:e!` reloads the file in Vim, picking up any customizations you have in your configuration files such as syntax highlighting.', '2015-05-29 05:34:07.588081', '2016-09-16 17:30:26.610032', 1, 'Edit the Current File Always', 'b36b577432', 2, true, '2015-05-29 00:34:07.588081-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (86, 4, 'Linux talks about core utilization in terms of "Load Average".  This is, the average load over 1 minute or over 5 minutes or over 15 minutes.

For a 1 core machine a Load Average of 1.00 is 100%.  For an 8 core machine 8.00 is 100%.  On my 4 core mac I can check my Load Average with `uptime`

```
chriserin@:~% uptime
20:48  up 17 days,  1:42, 7 users, load averages: 1.23 1.53 1.59
```

Over the last 1 minute, 1.23.
Over the last 5 minutes, 1.53.
Over the last 15 minutes, 1.59.

My CPU is doing great!  You can also see the same numbers in `htop`.
[Source](http://blog.scoutapp.com/articles/2009/07/31/understanding-load-averages)', '2015-05-28 01:50:17.566302', '2016-08-09 01:55:03.591734', 20, 'How busy are your cores?', '98a57907ce', 4, true, '2015-05-27 20:50:17.566302-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (87, 8, 'In a Linux environment, you can quickly check the status of a number of
different services. By running `[sudo] service --status-all`, the status
command will be invoked for all services under the `/etc/init.d/` directory.

So, if you want to check the status of something like `nginx` or `apache`,
just run `service --status-all` and find it in the list. The `-` symbol
means it isn''t running, the `+` symbol means it is up, and the `?` symbol
means that it cannot determine the status.', '2015-05-28 22:57:46.063679', '2016-09-20 14:41:39.636633', 20, 'Check The Status Of All Services', '1ab7f5df4a', 3, true, '2015-05-28 17:57:46.063679-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (85, 8, 'If you have some sort of non-production version of an application running on
Heroku, you may encounter a time when you need to wipe your database and
start fresh. For a rails project, it may be tempting to do `heroku run rake
db:drop db:setup`. Heroku doesn''t want you to accidentally do anything
stupid, so it prevents you from running `rake db:drop`. Instead, you must
send a more explicit command

```
$ heroku pg:reset DATABASE_URL
```

Heroku will ask you to confirm that you indeed want to wipe out the database
and will then proceed.

For the curious reader, running `heroku config` will list the values of a
number of variables including `DATABASE_URL`.', '2015-05-28 01:41:56.061231', '2016-09-27 17:30:35.052305', 20, 'Wipe A Heroku Postgres Database', '175a11796c', 3, true, '2015-05-27 20:41:56.061231-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (104, 2, 'Metaprogramming! Today I created a variable `event` that calls a serializer unique to the value of `event`.  Along the way I learned about the Rails methods `classify` and `constantize`.

`classify` takes a plural table name and returns a class name.

```ruby
> ''some_things''.classify
=> "SomeThing"
```

`constantize` tries to find a constant with the name specified in the argument string.

```ruby
> "Module".constantize
=> Module

> "Nothing".constantize
NameError: uninitialized constant Nothing
```

Here''s a sample of how I used these methods today (on the ''Today I Learned'' app itself):

```ruby
# app/models/post.rb
event = ''some_important_event''

# app/workers/event_notifier.rb
"#{event.classify}Serializer".constantize.new
```

This will new up an instance of `SomeImportantEventSerializer`, if such a class exists.', '2015-06-03 22:10:50.633729', '2015-12-23 18:59:47.150661', 5, 'Classify and Constantize', 'ec4cadaf8d', 2, true, '2015-06-03 17:10:50.633729-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (75, 8, 'Tired of being prompted for confirmation by command-line utilities? Wish you
could blindly respond ''yes'' to whatever it is they are bugging you about?
The `yes` command is what you''ve been looking for.

```
$ yes | rm -r ~/some/dir
```

This will respond `y` as `rm` asks for confirmation on removing each and
every file in that directory.

`yes` is just as good at saying *no*. Give it `no` as an argument and it
will happily (and endlessly) print `no`.

```
$ yes no
```

h/t [Chris Erin](https://twitter.com/MCNormalMode)', '2015-05-26 02:33:54.602321', '2016-08-25 17:31:22.252968', 34, 'Saying Yes', '21f4073a92', 3, true, '2015-05-25 21:33:54.602321-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (111, 8, 'Rails'' Active Support provides the `blank?` and `present?` convenience
methods as extensions to many objects. It also extends the Object class by
providing the [`presence`](http://api.rubyonrails.org/classes/Object.html#method-i-presence)
method. This method returns the *receiver* if it is not blank, otherwise
it returns nil.

Instead of doing

```ruby
User.nickname.present? ? User.nickname : User.firstname
```

I can simply do

```ruby
User.nickname.presence || User.firstname
```', '2015-06-08 13:29:41.83932', '2016-07-05 17:30:22.974972', 5, 'Retrieve An Object If It Exists', 'ba148c0331', 2, true, '2015-06-08 08:29:41.83932-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (109, 2, 'Check out the Rails `to_sentence` method, which takes an array and returns a stringified sentence.

```ruby
pry(main)> %w(one two three).to_sentence
=> "one, two, and three"
```

Really handy in the view layer. This method also accepts some interesting options like `:words_connector` and `:locale`.', '2015-06-07 03:15:54.695207', '2016-07-25 17:50:06.55473', 5, 'To Sentence', 'c864c4bc6a', 4, true, '2015-06-06 22:15:54.695207-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (101, 10, 'Here''s a Vim 101 thing that I went without knowing for far too long, so maybe it''ll help you as well:

Say you have 3 lines of code ...

```
T-2000
John Connor''s Foster Mom
Random Policeman
```

And you want to replace the second two lines with the first. You might type `yy` to yank `T-2000`, then type `shift-v` and `p` on line 2 to replace `John Connor''s Foster Mom` with `T-2000`:

```
T-2000
T-2000
Random Policeman
```

But if you go to line 3 and type `shift-v` and `p` again, you''ll paste `John Connor''s Foster Mom`, because Vim replaces the default buffer with the previously removed line.

Fortunately, `T-2000` is still available in that scenario – it''s automatically placed into the `0` buffer. To continue to paste `T-2000`, just type:

```
"0 p
```

to paste from the `0` buffer instead of the default buffer.', '2015-06-02 18:01:03.446715', '2016-09-02 17:38:28.871824', 1, 'The 0 Buffer', '20104ec614', 2, true, '2015-06-02 13:01:03.446715-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (115, 8, 'Word-based movement can serve as a quick way to get around locally in Vim. I
most often use `w` and `b` for this kind of movement. While `w` and `b` move
me to the beginning of the next and previous word, respectively, I find that
sometimes it would be more convenient if I were at the end of a word.

The `e` and `ge` commands serve this purpose well. `e` will move me to the
end of the next word and `ge` will move me to the end of the previous word.', '2015-06-09 13:52:38.180944', '2016-09-06 18:34:45.287626', 1, 'End Of The Word', '43bb8c45aa', 5, true, '2015-06-09 08:52:38.180944-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (125, 13, 'If you''re tired of exporting SVG icons individually, follow these 5 easy steps:

1. Size your icons to scale in one artboard (make sure all elements of each icon are grouped)
2. Select your "Artboard" tool in the menu and then click each of your icons, which will assign their own respective artboard.
3. Open Artboards window (Window > Artboards) and name each icon''s artboard (this will become the filename suffix)
4. Save As > Select "SVG" as format and make sure "Use Artboards" and "All" are both selected. Your file name will become your prefix (AI adds a "_" to separate your suffixes).
5. Pick up the pieces after your mind is blown.', '2015-06-12 20:55:42.442259', '2016-03-28 17:30:55.141648', 3, 'Export SVGs with Ease in AI', '3cd4bff828', 4, true, '2015-06-12 15:55:42.442259-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (120, 2, 'The Vim command `:only`, or `:on`, closes all windows except the one you are currently in.', '2015-06-11 22:08:35.161876', '2016-04-04 17:30:35.912399', 1, 'Close All Windows', '48cf8bffc5', 4, true, '2015-06-11 17:08:35.161876-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (116, 2, 'Rails has a method for triggering a callback conditionally: `<column>_changed?`. In the case of my current project, I want to trigger a Slack web hook only if a specific attribute, ''likes'', has changed.

```ruby
# app/models/post.rb
after_update :notify_slack, if: :likes_changed?
```

Of course, this logic could be moved into the callback method definition, but I like that it''s stated upfront at the top of the class.', '2015-06-09 16:11:33.093169', '2016-04-24 19:08:45.698288', 5, 'Conditional Callbacks', '6c7cde2b5b', 3, true, '2015-06-09 11:11:33.093169-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (118, 11, '```Ruby
Account.select(:account_type).group(:account_type).count

#=> {"Employee"=>35, "Manager"=>41, "SuperAdmin"=>1, "Admin"=>8}

```', '2015-06-10 14:34:23.722969', '2016-09-11 17:30:24.452507', 5, 'Count Records by Type with ActiveRecord', '529547532d', 6, true, '2015-06-10 09:34:23.722969-05', 6);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (136, 4, 'I `git clone` github repositories all the time but I didn''t realize you could clone a git repo on the file system.

```
git clone myproject myproject2
```

And what''s crazier, I can clone the .git dir directly and I get the same result.

```
git clone myproject/.git myproject2
```

This is important because Capistrano creates a ''repo'' dir on the target server that is a copy of the .git directory but is detached from any working tree (the set of files you''d normally see in a git repo).

To clone from a capistrano server you can copy the `repo` dir locally and `git clone` it. ', '2015-06-17 12:34:51.666835', '2016-06-14 17:32:47.083574', 10, 'Clone local git repo', '9e9d63e272', 5, true, '2015-06-17 07:34:51.666835-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (144, 2, 'RSpec includes an easy way to measure test speed, the `-p` (profile) flag. It takes an argument `[COUNT]` representing the number of blocks to measure, defaulting to 10.

Here''s some sample output:

```sh
Top 3 slowest examples (0.03332 seconds, 57.9% of total time):
  Developer should have a valid factory
    0.0199 seconds ./spec/models/developer_spec.rb:4
  Post should have a valid factory
    0.00816 seconds ./spec/models/post_spec.rb:4
  Post should require a body
    0.00525 seconds ./spec/models/post_spec.rb:16
```', '2015-06-19 22:26:54.481585', '2016-06-30 18:17:23.755556', 8, 'RSpec Profile', '62270fdc02', 2, true, '2015-06-19 17:26:54.481585-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (117, 8, 'If you have a table with some sort of type column on it, you can come up
with a count of the records in that table by type. You just need to take
advantage of `group by`:

```sql
> select type, count(*) from pokemon group by type;

  type   | count 
-----------------
 fire    |    10
 water   |     4
 plant   |     7
 psychic |     3
 rock    |    12
```', '2015-06-10 13:31:39.891476', '2016-10-18 21:52:49.620683', 26, 'Count Records By Type', 'a28997b32e', 5, true, '2015-06-10 08:31:39.891476-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (127, 2, 'Looking to source dive? This command opens the source directory for the provided gem.

```
bundle open GEM
```

', '2015-06-12 22:09:19.212666', '2015-12-16 19:00:01.824947', 6, 'Bundle Open', 'dd4bff8127', 2, true, '2015-06-12 17:09:19.212666-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (129, 2, 'When you create a window in tmux, it will be named ''zsh'', or ''bash'', or whatever your shell is. I think it''s important that each tmux tab have an appropriate name. A tab running server should be called ''server''; a tab running sidekiq should be called ''sidekiq''.

You can rename your windows a bunch of ways. For the window you are in:

```
$ tmux rename-window newname
```

For another window in your session:

```
$ tmux rename-window -t otherwindow newname
```

Using the tmux bar:

```
prefix + rename-window newname
```

And my favorite, the tmux bar with a keyboard shortcut:

```
prefix + , newname
```', '2015-06-13 17:23:00.784593', '2016-10-11 17:30:26.569771', 33, 'Rename Tmux Windows', '18b63da9d2', 2, true, '2015-06-13 12:23:00.784593-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (134, 2, 'The vim ''syntax.txt'' plugin includes an awesome command called `:TOhtml`.

Highlight a range of code in Vim and run the command. Default range is the entire buffer.

You''ll get an HTML document based on the code and its highlighting. Write the file and it is ready for a browser, a presentation, or anyplace else.', '2015-06-16 22:17:38.318544', '2016-04-30 17:47:59.194342', 1, 'Code to HTML', '6848de36bf', 6, true, '2015-06-16 17:17:38.318544-05', 6);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (181, 8, 'Get a list of all your plugins (and other sourced scripts) with

```
:scriptnames
```

See `:h scriptnames` for more details.', '2015-07-06 22:20:49.946451', '2016-09-20 17:30:42.609325', 1, 'List Of Plugins', 'fcabfefe57', 3, true, '2015-07-06 17:20:49.946451-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (176, 8, 'It is pretty common to use hours or days when creating a Postgres
interval. However, intervals can also be created in week-sized chunks

```sql
> select ''2 weeks''::interval;
 interval
----------
 14 days
(1 row)

> select make_interval(0,0,7,0,0,0,0);
 make_interval
---------------
 49 days
(1 row)
```', '2015-07-02 13:47:36.524663', '2016-07-09 17:55:33.168945', 26, 'Intervals Of Time By Week', 'bd020363ca', 3, true, '2015-07-02 08:47:36.524663-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (194, 8, 'Poltergeist with PhantomJS (<2.0) does not support JavaScript''s `bind()`
method. This means that when executing an integration test that exercises
JavaScript with the `bind()` method, an error will occur. If you cannot
simply upgrade to a version of PhantomJS that supports `bind()`, then what
can you do?

Ignore the error!

This can be achieved by placing the following rescue block in the
appropriate place.

```ruby
rescue Capybara::Poltergeist::JavascriptError
```

Use this in moderation. You want to make sure you don''t ignore actual
JavaScript errors.

[source](http://stackoverflow.com/questions/22020680/temporarily-set-js-errors-to-false-in-poltergeist)', '2015-07-14 23:59:50.236003', '2016-07-11 17:30:35.959827', 5, 'Ignore Poltergeist JavaScript Errors', '2ec6211f93', 3, true, '2015-07-14 18:59:50.236003-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (133, 8, 'In postgres, running `show timezone;` will reveal the timezone for your
connection. If you want to change the timezone for the duration of the
connection, you can run something like

```
> set timezone=''America/New_York'';
SET
> show timezone;
 TimeZone
------------------
 America/New_York
(1 row)
```

Now, if you run a command such as `select now();`, the time will be in
Eastern time.

h/t Jack Christensen', '2015-06-16 13:46:24.193411', '2016-10-22 17:30:22.957052', 26, 'Configure The Timezone', 'd947e849ba', 2, true, '2015-06-16 08:46:24.193411-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (142, 4, 'Everyone knows (or does not know) that `gf` when the cursor is over a word in vim will try to find a file on the system to navigate to that matches that word or path.  

Rails overrides this to be used on constants and to navigate to the file where a constant is defined if the constant name matches the file name (matches in the rails sense).

When you''re in the Gemfile, `gf` on a gem will take you to that gem, just like `bundle open`.  Brilliant!', '2015-06-19 12:30:54.653693', '2016-03-17 22:11:01.481069', 1, '`gf` go-to-file mapping goes-to-gem-source', 'fcbdb9603e', 6, true, '2015-06-19 07:30:54.653693-05', 6);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (139, 8, 'In my project, I have a `README.md` file that I haven''t modified in a while.
I''d like to take a look at the last commit that modified it. The `git log`
command can be used here with few arguments to narrow it down.

```
$ git log -1 -- README.md
commit 6da76838549a43aa578604f8d0eee7f6dbf44168
Author: jbranchaud <jbranchaud@gmail.com>
Date:   Sun May 17 12:08:02 2015 -0500

    Add some documentation on configuring basic auth.
```

This same command will even work for files that have been deleted if you
know the path and name of the file in question. For instance, I used to have
an `ideas.md` file and I''d like to find the commit that removed it.

```
$ git log -1 -- docs/ideas.md
commit 0bb1d80ea8123dd12c305394e61ae27bdb706434
Author: jbranchaud <jbranchaud@gmail.com>
Date:   Sat May 16 14:53:57 2015 -0500

    Remove the ideas doc, it isn''t needed anymore.
```', '2015-06-18 13:27:11.20957', '2016-04-01 17:30:23.679429', 10, 'Last Commit A File Appeared In', '177896dd94', 3, true, '2015-06-18 08:27:11.20957-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (141, 2, 'Somehow the Vim `:map` command eluded me until today. `:map` with no arguments lists you all your Vim mappings. If you have a lot of plugins, you have a lot of mappings.

Explore them and reap the benefits!', '2015-06-18 22:12:52.425064', '2016-06-21 17:30:42.928789', 1, 'View Vim Mappings', '006f99733c', 3, true, '2015-06-18 17:12:52.425064-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (137, 8, 'In postgres, you can check if a string *contains* another string using the `position`
function.

```sql
> select position(''One'' in ''One Two Three'');
 position
----------
        1
```

It returns the 1-based index of the first character of the first match of
that substring.

```sql
> select position(''Four'' in ''One Two Three'');
 position
----------
        0
```

If the substring doesn''t appear within the string, then the result is 0.

Thus, you can determine if a string *contains* another string by checking if
the value resulting from `position` is greater than 0.', '2015-06-17 13:29:05.041277', '2016-07-28 08:43:49.74441', 26, 'String Contains Another String', 'e076caf416', 4, true, '2015-06-17 08:29:05.041277-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (148, 2, 'There are more ways to create a test block with RSpec than `it`. One is `specify`, and you can use it to make your tests more readable. Consider this block:

```ruby
describe ''doing everything'' do

  it ''in space'' do
    # actions
  end
```

The sentence ''it in space'' is awkward. You can replace it with ''specify'', which brings us very close to a grammatically correct sentence. This is Ruby after all; we try to make it readable.

```ruby
describe ''doing everything'' do

  specify ''in space'' do
    # actions
  end
```', '2015-06-21 15:54:47.688485', '2016-09-12 17:30:50.049116', 8, 'RSpec Specify', 'edefa42db2', 2, true, '2015-06-21 10:54:47.688485-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (131, 8, 'If you''ve modified or replaced the configuration file, nginx will not immediately start using the updated nginx configuration. Once a `restart` or `reload` signal is received by nginx, it
will apply the changes. The `reload` signal

```
$ service nginx reload
```

tells nginx to reload the configuration. It will check the validity of the
configuration file and then spawn new worker processes for the latest
configuration. It then sends requests to shut down the old worker processes.
This means that during a *reload* nginx is always up and processing
requests.

[source](http://nginx.org/en/docs/beginners_guide.html)', '2015-06-15 13:41:06.565156', '2016-09-20 14:41:37.541016', 20, 'Reload The nginx Configuration', '714e96633c', 4, true, '2015-06-15 08:41:06.565156-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (145, 8, 'By default, postgres has expanded display turned off. This means that
results of a query are displayed *horizontally*.
At times, the results of a query can be so wide that line wrapping occurs.
This can make the results and their corresponding column names rather
difficult to read. In these situations, it is preferable to turn on expanded
display so that results are displayed *vertically*.
The `\x` command can be used to toggle expanded display on and off.

Having to toggle expanded display on and off depending on the way a
particular set of results is going to display can be a bit tedious.
Fortunately, running `\x auto` will turn on auto expanded display. This
means postgres will display the results normally when they fit and only
switch to expanded display when it is necessary.

h/t Jack Christensen', '2015-06-20 22:52:18.645799', '2016-10-10 17:30:33.118997', 26, 'Auto Expanded Display', 'a926d258e1', 4, true, '2015-06-20 17:52:18.645799-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (159, 8, 'Schemas can be used to organize tables within a database. In postgres, we can see all
the schemas our database has like so

```sql
> select schema_name from information_schema.schemata;
    schema_name
--------------------
 pg_toast
 pg_temp_1
 pg_toast_temp_1
 pg_catalog
 public
 information_schema
(6 rows)
```

When you create a new table, it will need to be placed under one of these
schemas. So if we have a `create table posts (...)`, how does postgres know
what schema to put it under?

Postgres checks your `search_path` for a default.

```sql
> show search_path;
   search_path
-----------------
 "$user", public
(1 row)
```

From our first select statement, we see that there is no schema with my user
name, so postgres uses public as the default schema.

If we set the search path to something that won''t resolve to a schema name,
postgres will complain

```sql
> set search_path = ''$user'';
SET
> create table posts (...);
ERROR:  no schema has been selected to create in
```', '2015-06-26 13:11:39.91479', '2016-04-20 17:30:30.839715', 26, 'Default Schema', 'e62c6408e5', 3, true, '2015-06-26 08:11:39.91479-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (147, 8, 'You can limit the amount of time that postgres will execute a statement
by setting a hard timeout. By default the timeout is 0 (see `show
statement_timeout;`) which means statements will be given as much time as
they need.

If you do want to limit your statements, to say, 1 second, you can set the
execution time like so

```sql
> set statement_timeout = ''1s'';
SET
> show statement_timeout;
 statement_timeout
-------------------
 1s
(1 row)
```

Any queries taking longer than 1 second will be aborted with the following
message output

```
ERROR:  canceling statement due to statement timeout
```', '2015-06-21 15:05:27.304879', '2015-12-30 19:00:07.885245', 26, 'Limit Execution Time Of Statements', '3f8ddbd2b9', 3, true, '2015-06-21 10:05:27.304879-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (152, 11, 'Create a new session in vim:

```
:mksession ~/session_file_name.vim
```

Open it up later in terminal:

```
$ vim -S ~/session_file_name.vim
```

Or from vim:

```
:source ~/session_file_name.vim
```

I learned this from [@hogihung](https://twitter.com/hogihung). [Full post](http://www.oldguynewtrick.com/blog/2015/06/23/learnings-from-the-front/)
', '2015-06-23 14:17:58.513645', '2016-04-27 22:37:00.273407', 1, 'Save your vim sessions for later', 'efd1a73936', 8, true, '2015-06-23 09:17:58.513645-05', 8);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (153, 2, 'The ES5 spec defined two methods for changing the case of a string, `.toUpperCase()` and `.toLowerCase()`. They work just like Ruby''s `upcase` and `downcase`.

```javascript
''test''.toUpperCase()
=> "TEST"
''TEST''.toLowerCase()
=> "test"
```

There are two similar methods called `.toLocaleUpperCase()` and `.toLocaleLowerCase()` which are intended to yield the correct result based on the host environment''s locale. I have not seen these methods in the wild but I''m curious if they are used.', '2015-06-24 01:45:53.460118', '2016-05-29 17:30:18.952222', 13, 'JavaScript Casing', 'ae030b2773', 4, true, '2015-06-23 20:45:53.460118-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (182, 4, 'You can use squares to access or set a value in an object, but that key is just getting converted to a string.  And you can''t loop through the keys and expect the keys to be objects... they''re strings!

``` javascript
> a = {1: "x"}
{ ''1'': ''x'' }
> a[/x/] = "y"
''y''
> a[1]
''x''
> a[/x/]
''y''
> a[''1'']
''x''
> a[''/x/'']
''y''
> for (var i in a) { console.log(i === 1); console.log(i === /x/) }
false
false
false
false
```', '2015-07-07 01:41:05.738938', '2016-10-03 17:30:29.809707', 13, 'Javascript keys are only strings!', '0ea16d4de4', 2, true, '2015-07-06 20:41:05.738938-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (177, 2, 'Code that is never executed is bad. Try this on your brownfield test suite:

```sh
$ cucumber --dry-run -f stepdefs
```

The `stepdefs` flag reports the location of each step, and also which steps aren''t being used by any test. Delete those dusty old steps!

`--dry-run` skips running the actual steps, a significant time-saver.', '2015-07-02 20:00:07.699786', '2016-06-09 22:53:14.10348', 8, 'Cleanup Cucumber Steps', '50a4b972d7', 4, true, '2015-07-02 15:00:07.699786-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (183, 8, 'You can send a command to `psql` to be executed by using the `-c` flag

```bash
$ psql -c "select ''Hello, World!'';"
   ?column?
---------------
 Hello, World!
(1 row)
```

Specify a particular database as needed

```bash
$ psql blog_prod -c ''select count(*) from posts;''
 count 
-------
     8 
(1 row)
```

h/t Jack Christensen', '2015-07-08 00:45:51.961009', '2016-06-18 18:41:57.893593', 26, 'Send A Command To psql', '9fe260961a', 3, true, '2015-07-07 19:45:51.961009-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (151, 8, 'In general, you are always going to want your triggers to fire. That''s why
they are there. Though special circumstances may arise where you need to
temporarily disable them. In postgres, you can use

```sql
> set session_replication_role = ''replica'';
SET
```

By changing the
[replication role](http://www.postgresql.org/docs/9.4/static/runtime-config-client.html#GUC-SESSION-REPLICATION-ROLE)
from `origin` to
`replica` you are essentially disabling all non-replica triggers across the
database (for that session). When you are done, you can simply set the
replication role back so that normal trigger behavior can resume

```sql
> set session_replication_role = ''origin'';
SET
```

A more direct and fine-grained approach to disabling triggers is to use an
`alter table` command that targets a specific trigger.

h/t Jack Christensen', '2015-06-23 13:48:27.263904', '2016-09-18 17:40:57.929134', 26, 'Temporarily Disable Triggers', 'bd8df15767', 5, true, '2015-06-23 08:48:27.263904-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (160, 2, 'Imagine you''ve typed ''recieve'' instead of ''receive'' in an RSpec test. This is will break things. I use this example because it''s a typo I make frequently.

To swap the letters, move to the first letter (''i'') and type `xp`. This will swap that letter with the next letter. It''s Vim for ''cut what''s under the cursor, then paste it after the cursor.''

There are more complex ways to do this; this is the simplest I know of.

h/t Matt Polito', '2015-06-27 03:36:11.982803', '2016-10-23 17:30:44.259542', 1, 'Swapping Letters With Vim', '7dae7c9648', 2, true, '2015-06-26 22:36:11.982803-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (168, 2, 'Ruby''s Array class has a method `&` which returns a new array containing elements common to two arrays, excluding duplicates.

I used this on a project today to compare a random number (17) to a set of numbers with special meaning to the program.

```ruby
2.2.2 :001 > (5..32).step(3).to_a & [17]
 => [17]
2.2.2 :002 > ((5..32).step(3).to_a & [17]).size > 0
 => true
```

The order is preserved from the original array:

```ruby
2.2.2 :003 > [2,3,1] & [1,2,3]
 => [2, 3, 1]
```

h/t Chris Erin', '2015-06-30 21:59:16.683077', '2016-03-08 17:36:32.439966', 6, 'Ruby Array Set Intersection', 'e85b9fe990', 3, true, '2015-06-30 16:59:16.683077-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (165, 4, 'Postgres is cool with returning a value from a query.

```
select 1;
```

And also returning a value from a subquery.

```
select (select 1);
```

Turtles all the way down.

```
select (select (select 1));
```

But that subquery can only return one row or you''ll get an error.

```
select (select unnest(''{1, 2}''::integer[]));
ERROR:  more than one row returned by a subquery used as an expression
```

This is used sometimes when you need to use a count in an expression.

```
select round((select count(*) from pg_class where reltype = 0) / (select count(*)::float from pg_class) * 100) as percent_with_zero_reltype;
 percent_with_zero_reltype 
---------------------------
                        39
```', '2015-06-29 13:25:18.903105', '2016-05-09 17:30:49.476022', 26, 'Treat a subquery like a value', '0b6934dd6d', 2, true, '2015-06-29 08:25:18.903105-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (172, 2, 'Ruby has a keyword `redo` that you might see inside a block. It causes the unconditional re-execution of the block, with the same parameter bindings as the current execution.

Here it is, causing an endless loop:

```ruby
n = 0
until n == 1 do
  puts n
  n += 1
  redo
end
```
`redo` does not evaluate the ''until'' condition, so the likelihood of it causing an endless loop is high.

I''d love to see a practical application. It seems to me that `redo` would have to be inside a conditional, based on some information coming from outside the loop-- information we are certain will eventually be false.

That''s a lot to ask; I would avoid `redo` in most cases.', '2015-07-01 22:08:10.168405', '2016-05-23 17:30:49.219847', 6, 'Ruby Redo', '95ba159cf8', 2, true, '2015-07-01 17:08:10.168405-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (162, 8, 'In learning about CTEs (common table expressions) in postgres, I discovered
that you can do some interesting and powerful things using the `with
recursive` construct. The following solves the fizzbuzz problem for integers
up to 100

```sql
with recursive fizzbuzz (num,val) as (
    select 0, ''''
    union
    select (num + 1),
      case
      when (num + 1) % 15 = 0 then ''fizzbuzz''
      when (num + 1) % 5  = 0 then ''buzz''
      when (num + 1) % 3  = 0 then ''fizz''
      else (num + 1)::text
      end
    from fizzbuzz
    where num < 100
)
select val from fizzbuzz where num > 0;
```

Check out [With Queries (Common Table Expressions)](http://www.postgresql.org/docs/9.4/static/queries-with.html) for more details on CTEs.', '2015-06-27 23:28:28.681912', '2016-07-28 17:50:17.61436', 26, 'Fizzbuzz With Common Table Expressions', '1002396d66', 4, true, '2015-06-27 18:28:28.681912-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (185, 14, 'While your acceptance tests are running you can use `pauseTest()` to pause the test suite and interact with your app. NOTE: this does not halt execution like `debugger`, it only pauses the test suite.

```javascript
test("my acceptance test", function(assert) {
  visit(''/'');
  pauseTest();  // returns a promise that will never resolve
  andThen(function(){
    // make assertions
  });
});
```', '2015-07-08 19:11:37.56608', '2016-09-07 17:30:48.835428', 13, 'Pause Ember acceptance tests', '727117d102', 5, true, '2015-07-08 14:11:37.56608-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (173, 8, 'In Postgres, each of the arguments you specify in a `select` statement has a
1-based index tied to it. You can use these indexes in the `order by` and
`group by` parts of the statement.

Instead of writing

```sql
select id, updated_at from posts order by updated_at;
```

you can write

```sql
select id, updated_at from posts order by 2;
```

If you want to group by a table''s `type` and then order by the counts from
highest to lowest, you can do the following

```sql
select type, count(*) from transaction group by 1 order by 2 desc;
```', '2015-07-02 01:08:53.231797', '2016-10-17 17:30:13.019655', 26, 'Use Argument Indexes', 'ae108ebc5f', 2, true, '2015-07-01 20:08:53.231797-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (175, 4, '`Date.now` will give you milliseconds since the epoch, but maybe what you really want is the time since the page started loading.  

``` js
> performance.now()
162374.73599999974
```

Essentially that is the microseconds since the page started loading, but really its the microseconds since `performance.timing.navigationStart` which itself is defined as the:

```
time immediately after the user agent finishes prompting to unload 
```

which is defined [here](http://www.w3.org/TR/html5/browsers.html#prompt-to-unload-a-document).', '2015-07-02 13:35:57.076618', '2016-09-10 18:25:11.644058', 13, 'The microseconds since navigation started', '816c79fb11', 3, true, '2015-07-02 08:35:57.076618-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (163, 2, 'The `not null` constraint is a great way to ensure data integrity. If a Rails model `validates_presence_of` an attribute, that column should be `not null` in the database.

Rails has a special migration method for setting this constraint.

```ruby
change_column_null :users, :mandatory_attribute, false
```

You could also use the `change_column` method. The reason `change_column_null` is a better choice is that `change_column` requires you to state the type of the column; `change_column_null` does not.

```ruby
change_column(table_name, column_name, type, options)
change_column_null(table_name, column_name, null, default = nil)
```', '2015-06-28 17:36:31.38521', '2016-10-27 17:30:20.001502', 5, 'Change Column Null', 'f0e86c1d7d', 2, true, '2015-06-28 12:36:31.38521-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (187, 2, 'Today I used the Vim command `:88t143` to copy a `let` block from one unit test to another. Vim has a few terse commands that work on whole lines like this. Here are two:

```
:[range]co[py] {address}        :co :copy
:[range]m[ove] {address}        :m :mo :move
```

`:t` is an alias for `:copy`, so the command I used copied line 88 and pasted it below line 143. It''s all about saving those keystrokes!

h/t Josh Davey & Josh Branchaud', '2015-07-09 22:37:29.053644', '2016-08-15 17:30:34.629257', 1, 'Vim Range Copy And Move', '0dfebe01c2', 6, true, '2015-07-09 17:37:29.053644-05', 6);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (189, 8, 'Arranging a series of split windows in tmux can take some time. Once those
splits windows are arranged, it is difficult to set them up in a new way.
There is a way of cycling through layouts that might be able to help though.
Hit `<prefix><space>` over and over to cycle through the layouts until you
find the arrangement that you want.

[source](http://superuser.com/questions/493048/how-to-convert-2-horizontal-panes-to-vertical-panes-in-tmux)', '2015-07-10 18:39:45.768835', '2016-03-04 21:43:45.755491', 34, 'Cycle Through tmux Layouts', 'f03b648ded', 2, true, '2015-07-10 13:39:45.768835-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (196, 4, 'This [website](https://www.digitalocean.com/community/tutorials/how-to-edit-the-sudoers-file-on-ubuntu-and-centos) says: Because improper syntax in the sudoers file can leave you with a system where it is impossible to obtain elevated privileges, it is important to use the `visudo` command to edit the file.

RIGHT.  If you screw up the syntax you may remove access to the system.  `visudo` checks the syntax for you and won''t let you save a file with incorrect syntax.  It responds to the EDITOR env variable so you can edit it in an editor of your choice. 

Another command that helps you edit a resource with safety restrictions is `vipw`.', '2015-07-16 13:27:30.792758', '2016-06-27 17:30:40.562093', 20, 'Be careful when editing the sudoers file', '4b3ee8cb18', 5, true, '2015-07-16 08:27:30.792758-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (191, 4, '[Map](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Map) is a new key/value data structure in es6 (and its available in your chrome browser RIGHT NOW).  But getting values out of a Map without using a key is complicated a little by having to go through a javascript iterator.

``` javascript
> m = new Map([[1,"a"],[2,"b"]])
Map {1 => "a", 2 => "b"}
> m.values()[0]
undefined
> m.values()
MapIterator {"a", "b"}
```

Its all good though, the `next()` function of a fresh iterator will always return the first value.  Well, not really the first value but a value wrapped in an object with two values, the value you are looking for represented by "value" and "done" which tells you whether the iterator has run out of elements or not.

``` javascript
> m = new Map([[1,"a"],[2,"b"]])
Map {1 => "a", 2 => "b"}
> m.values().next().value
"a"
```', '2015-07-13 13:13:53.168092', '2016-05-15 21:01:27.827271', 13, 'Get first value from javascript Map', 'c8e6611985', 5, true, '2015-07-13 08:13:53.168092-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (188, 8, 'When you make a visual selection, Vim stores the position of the first
character of the selection in the `<` mark and the position of the last
character of the selection in the `>` mark.

Thus moving to the edges of your previous selection is easy. To move to the
beginning of the selection, press

    `<

To move to the end, press

    `>', '2015-07-10 02:47:15.208889', '2016-09-05 22:39:47.130092', 1, 'Edges Of The Selection', '61ccc16fa3', 5, true, '2015-07-09 21:47:15.208889-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (178, 8, 'Ruby has a question mark (`?`) operator that works like so

```ruby
> ?a
=> "a"
> ?\s
=> " "
> ??
=> "?"
> ?a + ?b + ?c
=> "abc"
```

It essentially creates single character strings. At least in Ruby 1.9+ it
does. In versions of Ruby before 1.9, the `?` operator could be used to get
the ascii character code of the operand character.

h/t Josh Davey

[source](http://stackoverflow.com/questions/16641205/what-does-the-question-mark-operator-do)', '2015-07-03 21:02:06.600174', '2016-09-28 18:19:03.027391', 6, 'Question Mark Operator', '21b31b56ae', 3, true, '2015-07-03 16:02:06.600174-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (197, 2, 'One cool way to chop through a Ruby string is the `partition` String method. This uses regex to search for a match in a string. If it finds one, it returns what came before the match, the match, and what came after as elements in an array.

```ruby
2.2.2 :001 > ''foo bar baz bat''.partition ''bar''
 => ["foo ", "bar", " baz bat"]
```

This is not to be confused with the `partition` Array method, which takes a block. Any elements that evaluate true are returned first, followed by the elements that evaluate false.

```ruby
2.2.2 :002 > [1,2,3,4,5].partition(&:even?)
 => [[2, 4], [1, 3, 5]]
```', '2015-07-16 14:04:18.289329', '2016-07-19 02:12:13.090442', 6, 'Ruby Partition Methods', 'bac161425e', 3, true, '2015-07-16 09:04:18.289329-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (200, 2, 'Resetting a Postgres user''s password with `alter role` is fine, but there is a better way! Try:

```
\password [ username ]
```

This changes the password of the specified user, defaulting to the current user. I like this because it prompts you for a password, encrypts it (security!), and sends it to the server as `alter role`. Your password will not appear as cleartext in the command history, server log, or anywhere else.

[Source](http://www.postgresql.org/docs/current/static/app-psql.html)

h/t Jack Christensen', '2015-07-21 02:18:34.831499', '2015-12-09 19:00:15.200932', 26, 'Reset Postgres User Password', '65e013b87e', 2, true, '2015-07-20 21:18:34.831499-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (199, 11, '
You can use `.none`  in a scope to short circuit the query in the event you don''t have all the data.

Imagine this query but the `project_type` on a `Project` is `nil`

```ruby

class User

  scope :active -> { where(archived: nil }

  scope :by_project, -> (project) do
    return none unless project.type.present?
    where(project_guid: project.guid, role: project.type)
  end

end

```

Just return `none`.

The cool thing about this is it''s chainable. So you can still do something like:

```ruby

project = Project.new(project_type: nil)

User.by_project(project).active

```', '2015-07-20 15:27:35.624307', '2016-06-30 02:13:27.33446', 5, 'Return an Empty Active Record Collection', 'ef629b4101', 11, true, '2015-07-20 10:27:35.624307-05', 11);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (154, 4, 'Remember, `def` is just a special function in ruby and as such it has a return value that is a symbol that is the name of the function being defined.  

That allows us to do some cool (weird?) looking things with class methods that take a symbol that refers to a function, like the `helper_method` call in a controller.

``` ruby
  class DataController < BaseController
  
  #actions and whatever

  private

  helper_method def format_that_data(data)
    "#{data[0]} X #{data[1]}"
  end

  end
```', '2015-06-24 12:11:17.672824', '2016-05-16 17:30:50.87411', 5, 'Inline your helper_method declaration', 'bdc4c3d36f', 5, true, '2015-06-24 07:11:17.672824-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (155, 8, 'In postgres, we can access information about all the columns in our database through the
`information_schema` tables; in particular, the `columns` table. After
connecting to a particular database, we can list all columns (across all our
tables) of a specific type. We just need to know the schema of the tables we
are interested in and the type that we want to track down.

My application''s tables are under the `public` schema and I want to track
down all `timestamp` columns. My query can look something like this

```sql
> select table_name, column_name, data_type from information_schema.columns where table_schema = ''public'' and data_type = ''timestamp without time zone'';
   table_name    | column_name |          data_type
-----------------+-------------+-----------------------------
 articles        | created_at  | timestamp without time zone
 articles        | updated_at  | timestamp without time zone
 users           | created_at  | timestamp without time zone
 users           | updated_at  | timestamp without time zone
(4 rows)
```

Alternatively, I could look for both `timestamp` and `timestamptz` with a
query like this

```sql
> select table_name, column_name, data_type from information_schema.columns where table_schema = ''public'' and data_type like ''%timestamp%'';
```', '2015-06-24 18:30:17.221194', '2015-10-28 18:00:03.184575', 26, 'List All Columns Of A Specific Type', '30701430dd', 2, true, '2015-06-24 13:30:17.221194-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (10, 2, 'While in less (terminal pager program), `h` or `H` brings up a summary of commands.', '2015-04-16 21:56:47.453053', '2016-07-19 17:30:56.855981', 34, 'less help', '5c64462d9d', 2, true, '2015-04-16 16:56:47.453053-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (108, 2, 'A powerful flag available during a git rebase is `-x`, or `exec`. It allows you to run a command, or multiple commands, on each commit in the rebase.

At Hashrocket we have an alias called `reset-authors` that sets your last commit''s authors to the state of your current git config. Sometimes I need to do this on more than one commit in the past, and this is where `-x` shines:

```
git rebase -i HEAD^^^ -x git reset-authors
```

The opens a rebase TODO list with the following details:

```
pick c246420 Fix README
exec reset-authors
pick cc32abc Clarify routes
exec reset-authors
pick 27b6c62 Convert HAML to ERB
exec reset-authors
```

Save and close, and `reset-authors` will run on each commit in the list.', '2015-06-06 00:26:47.521034', '2015-12-15 19:30:01.664995', 10, 'Rebase with Execution', 'a6cb39501b', 3, true, '2015-06-05 19:26:47.521034-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (36, 8, 'We can consider the truthiness of `[1]` as follows:

```javascript
> [1] == true
=> true
> Boolean(true)
=> true
> Boolean([1])
=> true
```

We can consider the truthiness of `[0]` as follows:

```javascript
> [0] == false
=> true
> Boolean(false)
=> false
> Boolean([0])
=> true
```

The truthiness of `[0]` does not seem to be consistent.

See this [JavaScript Equality Table](https://dorey.github.io/JavaScript-Equality-Table/)
for more details.', '2015-05-09 00:29:00.012574', '2015-12-29 19:00:10.4479', 13, 'Truthiness of Integer Arrays', '20605d3471', 1, true, '2015-05-08 19:29:00.012574-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (105, 2, 'You can rebase all the way back to your root (initial) commit with:

```
git rebase -i --root
```

Attempting this without the `--root` flag will raise this error:

```
fatal: Needed a single revision
invalid upstream
```', '2015-06-04 21:47:28.274527', '2016-11-02 12:49:08.619628', 10, 'Rebase to Root Commit', '0537119a8b', 5, true, '2015-06-04 16:47:28.274527-05', 5);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (83, 10, 'If you haven''t used CSS viewport units like `vw` and `vh` yet, you''re missing out on some really fun ways to solve responsive problems. A `vw` and a `vh` are equal to 1% of the viewport width and height, respectively.

- use `vw` for padding to scale your padding responsively without having to use `@media` breakpoints
- set a font-size in `vw` to allow fonts to scale with the viewport (the TODAY I LEARNED page heading is set using `vw`)
- use `vw` for `box-shadow` to let your box-shadows scale down with the page (also a feature of the TIL site)

For more sweet viewport unit tricks, check out [Rye Mason''s post](http://hashrocket.com/blog/posts/responsifying-with-viewport-units) on the Hashrocket blog.', '2015-05-27 14:24:49.490924', '2016-07-20 17:30:48.608335', 27, 'VW FTW', '7cd6c56ba7', 3, true, '2015-05-27 09:24:49.490924-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (65, 8, 'If you have both staged and unstaged changes in your project, you can
perform a stash on just the unstaged ones by using the `-k` flag. The
staged changes will be left intact ready for a commit.

```
$ git status
On branch master
...
Changes to be committed:

    modified:   README.md

Changes not staged for commit:

    modified:   app/models/user.rb

$ git stash -k
Saved working directory and index state ...

$ git status
On branch master
...
Changes to be committed:

    modified:   README.md
```

h/t [Chris Erin](https://twitter.com/MCNormalMode)', '2015-05-22 14:06:51.929941', '2016-05-01 17:30:11.246772', 10, 'Stashing Only Unstaged Changes', '8b32f1cf6b', 3, true, '2015-05-22 09:06:51.929941-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (193, 2, 'Today I learned about the Postgres ''contains'' array operator (`@>`). This compares two arrays, returning true if the first array contains all of the elements of the second array.

```
myapp_development=# select array[1,2,3] @> array[1,3];
 ?column?
----------
 t
(1 row)

myapp_development=# select array[1,2,3] @> array[5,9];
 ?column?
----------
 f
(1 row)
```

It works in reverse via the ''is contained by'' array operator (`<@`).

```
myapp_development=# select array[1,3] <@ array[1,2,3,4];
 ?column?
----------
 t
(1 row)
```

A practical example might be comparing two arrays, one of names and one of common nicknames associated with that name.', '2015-07-14 23:10:11.268341', '2015-11-18 18:59:30.242315', 26, 'Postgres Contains/Contained By Array Operators', '4f6a382260', 4, true, '2015-07-14 18:10:11.268341-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (158, 2, 'Today I learned about the jQuery `.empty()` method.

`.empty()` removes all child nodes of the set of matched elements from the DOM. Consider it a delete button for whatever element you call it on.

`.empty()` is equivalent to `.html('''')` but much faster.

h/t Cameron Daigle', '2015-06-25 19:43:07.857923', '2015-10-06 18:03:21.922138', 13, 'jQuery Empty', '2dedfc48e3', 4, true, '2015-06-25 14:43:07.857923-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (132, 2, 'Capybara assertions can be very simple. Today I learned about the `assert_no_selector` and `assert_selector` methods.

```ruby
Then ''assert_no_selector works'' do
  assert_no_selector ''.nonexistent-text''
end

Then ''assert_selector works'' do
  assert_selector ''.existent-text''
end
```

And here''s the view that makes them pass:

```ruby
# app/views/home/index.html.haml
.existent-text
```

No RSpec required!', '2015-06-15 22:22:59.293081', '2016-05-25 17:49:32.622854', 8, 'Assert No Selector', '982127ca4d', 2, true, '2015-06-15 17:22:59.293081-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (70, 8, 'The
[`RubyVM::InstructionSequence`](http://ruby-doc.org/core-2.2.0/RubyVM/InstructionSequence.html)
class makes it easy to compile, disassemble, and inspect bits of Ruby code.
We can quickly take a peek under the hood at a simple ruby statement, such
as `a = 1 + 2`, like so:

```ruby
> ruby_code = ''a = 1 + 2''
=> a = 1 + 2
> compiled_code = RubyVM::InstructionSequence.compile(ruby_code)
=> <RubyVM::InstructionSequence:<compiled>@<compiled>>
> puts compiled_code.disasm
== disasm: <RubyVM::InstructionSequence:<compiled>@<compiled>>==========
local table (size: 2, argc: 0 [opts: 0, rest: -1, post: 0, block: -1, kw: -1@-1, kwrest: -1])
[ 2] a
0000 trace            1                                               (   1)
0002 putobject_OP_INT2FIX_O_1_C_
0003 putobject        2
0005 opt_plus         <callinfo!mid:+, argc:1, ARGS_SIMPLE>
0007 dup
0008 setlocal_OP__WC__0 2
0010 leave
=> nil
```

It is a bit archaic, but when we get to the line starting with `0002`, we
see values (`1` and then `2`) pushed onto the stack, then operated on, and
finally set on the local variable `a`. Fun!', '2015-05-23 21:51:26.871088', '2016-09-25 17:32:41.844204', 6, 'Disassemble Some Codes', 'd540395f41', 3, true, '2015-05-23 16:51:26.871088-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (167, 17, 'If you encounter a problem where fonts don''t work on production when using Bourbon CSS toolset, you need to replace the font declaration from:

```css
font-face("great-font","/assets/greatfont")
```

to

```css
@include font-face("greatfont", "greatfont", $asset-pipeline: true)
```

This will use asset pipeline fingerprinted URL in the font declaration and should work on all environments.

P.S.
With rails 4.0+ you only need to put font files in app/assets/fonts and they will be fingerprinted and zipped.', '2015-06-30 14:17:23.492889', '2016-09-29 19:17:55.761383', 5, 'Make fonts work with asset pipeline on production', '30faa41b10', 6, true, '2015-06-30 09:17:23.492889-05', 6);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (56, 4, 'All you need to implement an enumerator is the `each` method. 

```
class ChicagoDevs
  include Enumerable
      
  def each &block
    [''ce'',''jb'', ''jc'', ''jd'', ''jw'', ''bd'', ''dp''].each{|member| block.call(member)}
  end
end
```

h/t Brian Dunn', '2015-05-19 02:32:51.203553', '2016-03-15 17:31:02.312881', 6, 'Implementing an enumerator is easy', '4ce4af4fbc', 1, true, '2015-05-18 21:32:51.203553-05', 1);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (150, 2, 'I learned a couple of Homebrew commands today. The first is `brew info`, which tells you about your Homebrew installation. Pass it a package name, and Homebrew will tell you about that package.

The next is `brew doctor`. This will give you an overview of your Homebrew environment, including unexpected files and symlinks, and whether there is a newer version of Homebrew available than the one you have.

The third is `brew search`. Pass this a package name and Homebrew will tell you all the versions that are available. 

```
$ brew search phantomjs
homebrew/versions/phantomjs17	   homebrew/versions/phantomjs192
homebrew/versions/phantomjs182	   homebrew/versions/phantomjs198
Caskroom/cask/phantomjs
```

You can then `brew install homebrew/versions/phantomjs182` to get the version you need.', '2015-06-22 22:18:33.003646', '2016-07-17 18:47:12.238427', 33, 'Homebrew Info, Doctor, and Search', 'ce75d52e5f', 3, true, '2015-06-22 17:18:33.003646-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (110, 2, 'Git branches can evolve into roles they weren''t meant to fill. An example is an application with a branch called ''good-master'', where all current development is happening, despite the existence of a stale branch called ''master''. We can fix this!

One solution is to merge ''master'' into ''good-master''. But that can be tricky if you don''t want a lot of the changes.

You can also rename the branches. In our case, ''good-master'' is the true master branch, so ''master'' should be deleted (or preserved, if you prefer).

```
$ git branch -m master master-old # rename master to master-old
$ git push origin :master # delete master at origin
$ git push origin master-old # create master-old at origin (or delete it)

$ git checkout good-master
$ git branch -m good-master master # rename good-master to master
$ git push origin :good-master # delete good-master
$ git push origin master # create new master
```

Next, change your default Github branch to the new master. Anyone new the project will find a more logical repo to work with. Existing developers can reset their local repo with:

```
$ git fetch origin
$ git reset --hard origin/master
```', '2015-06-07 18:02:21.251953', '2017-01-12 02:14:29.805315', 10, 'Renaming Git Branches', 'b6f75721ce', 2, true, '2015-06-07 13:02:21.251953-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (192, 8, 'If you are like me and prefer writing raw SQL over the Arel DSL for counting
stuff in your database, then the `select_value` method will come in handy.
Write a command similar to the following with a type cast to get the count
of _whatever_.

```ruby
> sql = ''select count(*) from posts where published_at is not null''
=> "select count(*) from posts where published_at is not null"
> ActiveRecord::Base.connection.select_value(sql).to_i
   (0.6ms)  select count(*) from posts where published_at is not null
=> 42
```

Writing raw SQL for a simple query like this hardly seems like a win.
However when a count query starts to involve joins or other fanciness, I
find it much clearer to reason about the raw SQL.', '2015-07-14 03:29:32.134584', '2015-11-22 14:13:05.273352', 5, 'Select Value For SQL Counts', 'd6727640d8', 4, true, '2015-07-13 22:29:32.134584-05', 4);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (169, 8, 'Ruby has many uses for the `%` character. One of the more obscure uses is as
a notion for custom delimited strings. Use the percent notation with a
non-alphanumeric character to surround a string.

```ruby
> %=Jurassic Park=
=> "Jurassic Park"
> % Ghostbusters 
=> "Ghostbusters"
```

It even works with balanced characters

```ruby
> %(The Goonies)
=> "The Goonies"
```

This is useful for defining a string that has both types of quotes

```ruby
> %[That''ll be the "day"]
=> "That''ll be the \"day\""
```

It''s also useful for creating horribly obfuscated code

```ruby
> %=what===%?what?
=> true
```

h/t [Josh Davey](https://twitter.com/joshuadavey/status/615613617099046912)', '2015-07-01 02:25:28.239027', '2016-03-12 17:52:23.624492', 6, 'Percent Notation', '573b9ca030', 12, true, '2015-06-30 21:25:28.239027-05', 12);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (138, 2, 'With the RSpec `-f` (format) and `-o` (out) flags, and you can generate HTML representations of your test suite.

```
$ rspec spec/features/my_spec.rb -f html -o test_run.html
$ open test_run.html
```

Ready for a presentation, email, or archiving.

', '2015-06-17 20:39:56.563805', '2016-04-03 17:30:47.265768', 8, 'RSpec to HTML', '78dec2d4c3', 3, true, '2015-06-17 15:39:56.563805-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (102, 2, 'Ruby''s `Hash` includes the method `invert`, which takes a hash and returns it with the keys and values reversed.

```ruby
2.2.2 :001 > {blackhawks: ''chicago''}.invert 
 => {"chicago"=>:blackhawks}
```
', '2015-06-02 22:30:33.41643', '2016-05-08 22:11:40.071719', 6, 'Invert a Hash', 'bfafbbcd07', 3, true, '2015-06-02 17:30:33.41643-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (171, 18, 'Sometimes you have multiple local commits and you want to push just part of them to the remote repo. Just specify the SHA1 for the revision you want and everything below it will be pushed.

```shell
git push <remote> <SHA1>:<branch>
```', '2015-07-01 20:31:11.418543', '2016-06-03 17:33:59.350603', 10, 'Push specific commit to remote repo', '7a17a43fb0', 6, true, '2015-07-01 15:31:11.418543-05', 6);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (114, 2, 'While looking at my git tree today, I noticed several stale git stashes hanging around. This command made them all go away:

```
git stash clear
```', '2015-06-08 21:42:50.707651', '2016-10-26 17:30:37.654803', 10, 'Clear your Git Stash', 'd9f129a6a8', 2, true, '2015-06-08 16:42:50.707651-05', 2);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (119, 2, 'Four posts have been created for ’Today I Learned’ since yesterday. This code looks like it would return that count, but it doesn’t.

```ruby
Post.where(''created_at between ? and ?'', Date.yesterday, Date.today).count              
   (0.8ms)  SELECT COUNT(*) FROM "posts" WHERE (created_at between ''2015-06-09'' and ''2015-06-10’)
=> 2
```

It returns `2`; the two posts from yesterday but not the posts from today.

This is because `Date.today` is a Ruby `Date` object, which represents midnight on the given date,  while `created_at` is a Rails `ActiveSupport::TimeWithZone` object, which includes time and zone details. Using `Date.today` as a comparator actually excludes any posts created after midnight today.

One solution is to cast `created_at` to a date:

```ruby
Post.where(''cast(created_at as date) between ? and ?'', Date.yesterday, Date.today).count
   (1.1ms)  SELECT COUNT(*) FROM "posts" WHERE (cast(created_at as date) between ''2015-06-09'' and ''2015-06-10'')
=> 4
```

In the scope of this query, `created_at` loses its time information, so a post created today will return true when compared to `Date.today`. This is the Rails equivalent:

```ruby
Post.last.created_at.to_date == Date.today
=> true
``` 

[More Info](http://stackoverflow.com/questions/16347649/sql-between-not-inclusive)', '2015-06-10 22:20:39.439873', '2016-06-26 17:33:35.307519', 6, 'Casting Created At', '45b39815ed', 3, true, '2015-06-10 17:20:39.439873-05', 3);
INSERT INTO posts (id, developer_id, body, created_at, updated_at, channel_id, title, slug, likes, tweeted, published_at, max_likes) VALUES (80, 8, 'Imagine you have a JavaScript function that makes a request to your server.
Perhaps it is sending user input from a `textarea` to be processed by the
server. You may want to wrap this function in a keyboard event listener so
that you are sure to react immediately to any user input. However, as the
user starts typing away into this text area you may find that way to many
requests are being fired off to the server. The request needs to be
*throttled*.

You can roll your own approach to sufficiently intermittent server calls.
Though, it turns out that [underscore.js](http://underscorejs.org/) comes
with two functions out of the box for this kind of behavior.

- [`throttle`](http://underscorejs.org/#throttle) will give you a function
  that wraps your function in a way that essentially rate-limits it to being
  called at most once every `N` milliseconds.

- [`debounce`](http://underscorejs.org/#debounce), on the other hand, will
  give you a function that only calls your function once `N` milliseconds
  has passed since it was last called.

These are two subtly different approaches to making sure a function gets
called, just not too often.

h/t [Jake Worth](https://twitter.com/jwworth)', '2015-05-27 03:58:40.844666', '2016-10-02 17:45:38.671688', 13, 'Throttling A Function Call', '64f01573bf', 3, true, '2015-05-26 22:58:40.844666-05', 3);


ALTER TABLE posts ENABLE TRIGGER ALL;

--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: jwworth
--

SELECT pg_catalog.setval('posts_id_seq', 1204, true);


--
-- Data for Name: schema_migrations; Type: TABLE DATA; Schema: public; Owner: jwworth
--

ALTER TABLE schema_migrations DISABLE TRIGGER ALL;

INSERT INTO schema_migrations (version) VALUES ('20150316165229');
INSERT INTO schema_migrations (version) VALUES ('20150316165241');
INSERT INTO schema_migrations (version) VALUES ('20150317204546');
INSERT INTO schema_migrations (version) VALUES ('20150319202107');
INSERT INTO schema_migrations (version) VALUES ('20150319204402');
INSERT INTO schema_migrations (version) VALUES ('20150324163219');
INSERT INTO schema_migrations (version) VALUES ('20150408210733');
INSERT INTO schema_migrations (version) VALUES ('20150414002719');
INSERT INTO schema_migrations (version) VALUES ('20150424190902');
INSERT INTO schema_migrations (version) VALUES ('20150430195052');
INSERT INTO schema_migrations (version) VALUES ('20150501143525');
INSERT INTO schema_migrations (version) VALUES ('20150501152953');
INSERT INTO schema_migrations (version) VALUES ('20150529183728');
INSERT INTO schema_migrations (version) VALUES ('20150529190009');
INSERT INTO schema_migrations (version) VALUES ('20150529190148');
INSERT INTO schema_migrations (version) VALUES ('20150601191337');
INSERT INTO schema_migrations (version) VALUES ('20150603155844');
INSERT INTO schema_migrations (version) VALUES ('20150610141445');
INSERT INTO schema_migrations (version) VALUES ('20150610145829');
INSERT INTO schema_migrations (version) VALUES ('20150825183004');
INSERT INTO schema_migrations (version) VALUES ('20150903191744');
INSERT INTO schema_migrations (version) VALUES ('20150922171442');
INSERT INTO schema_migrations (version) VALUES ('20150925155814');
INSERT INTO schema_migrations (version) VALUES ('20151001212705');
INSERT INTO schema_migrations (version) VALUES ('20160125205238');
INSERT INTO schema_migrations (version) VALUES ('20160205153837');
INSERT INTO schema_migrations (version) VALUES ('20160115214137');
INSERT INTO schema_migrations (version) VALUES ('20160115214650');
INSERT INTO schema_migrations (version) VALUES ('20160211043316');
INSERT INTO schema_migrations (version) VALUES ('20160223002123');
INSERT INTO schema_migrations (version) VALUES ('20160622144602');
INSERT INTO schema_migrations (version) VALUES ('20160622152349');
INSERT INTO schema_migrations (version) VALUES ('20160622154534');
INSERT INTO schema_migrations (version) VALUES ('20160701161129');


ALTER TABLE schema_migrations ENABLE TRIGGER ALL;

--
-- PostgreSQL database dump complete
--

