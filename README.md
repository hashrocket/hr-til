# HR-TIL

Welcome to the Hashrocket 'Today I Learned' repository. The purpose of this project is to document our learning and publish it to the world through concise blog posts.

### Install

```
hclone hr-til
rake db:setup
rails s
```

### Hosting

Staging and production are hosted on Heroku.

* http://hr-til-staging.herokuapp.com
* http://til.hashrocket.com

### Environmental Variables

```
google_client_id
google_client_secret
basic_auth
auth_name
auth_password
slack_token
```

Post creation will send a message via slack when then `slack_token` variable is set.
