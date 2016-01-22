# HR-TIL

Welcome to the Hashrocket 'Today I Learned' repository.

TIL is a project by Hashrocket to catalogue the sharing & accumulation of
knowledge as it happens day-to-day. Posts have a 200-word limit and any
Hashrocket team member can contribute.

This site was open sourced as a window into our development process, as well as
to allow people to experiment with the site on their own and contribute the
project.

### Install

If you are creating your own version of the site, fork the repository. Then,
follow these setup steps:

```
git clone https://github.com/hashrocket/hr-til
cd hr-til
rake db:setup
cp config/application.yml{,.example}
rails s
```

Authentication is managed by Omniauth and Google. Once you've set up an app in
the Google Developer's Console API manager, change `hashrocket.com` in the code
below to the domain of users you're allowing to post:

```ruby
# config/initializers/omniauth.rb

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2,
    ...
    hd: 'hashrocket.com',
    ...
end
```

With this in place, you can visit '/admin' and log in with an email address from
the domain you've allowed.

### Hosting

Staging and production for Hashrocket's TIL is located here:

* http://hr-til-staging.herokuapp.com
* http://til.hashrocket.com

### Environmental Variables

`basic_auth_credentials` toggles basic authentication:

```yml
# config/application.yml

basic_auth_credentials: username:password
```

`slack_post_endpoint` configures Slack integration:

```yml
# config/application.yml

slack_post_endpoint: /services/some/hashes
```

### Contributing

We welcome contributions and feedback! Please open an issue or submit a pull
request if you have something to add.

### License

TIL is released under the [MIT License](http://www.opensource.org/licenses/MIT).
