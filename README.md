# HR-TIL

Welcome to the Hashrocket 'Today I Learned' repository.

TIL is a project by Hashrocket to catalogue the sharing & accumulation of knowledge as it happens day-to-day. Posts have a 200-word limit and any Hashrocket team member can contribute.

### Install

```
git clone https://github.com/hashrocket.com/hr-til
cd hr-til
rake db:setup
rails s
```

Authentication is managed by Omniauth and Google. Visit '/admin' and log in with your company email address.

### Hosting

Staging and production are hosted on Heroku.

* http://hr-til-staging.herokuapp.com
* http://til.hashrocket.com

### Environmental Variables

These environmental variables are needed in development for some features to work:

```
host: 'http://localhost:3000'
google_client_id:
google_client_secret:
slack_post_endpoint:
update_twitter_with_post: 'false'
twitter_consumer_key:
twitter_consumer_secret:
twitter_access_token:
twitter_access_token_secret:
```

And this variable toggles basic auth:

```
basic_auth_credentials # required format: username:password
```

### Slack Integration

Set `slack_post_endpoint` to the path of the webhook (e.g. the part after the domain) for the appropriate bot.

### Contributing

Please open an issue or submit a pull request if you'd like to contribute. Code should be accompanied by tests.
