# HR-TIL

Welcome to the Hashrocket 'Today I Learned' repository. The purpose of this project is to document our learning and publish it to the world through concise blog posts.

### Installation

```
git clone https://github.com/hashrocket/hr-til.git
cd hr-til
bundle install
rake db:create db:migrate db:seed
rails s
```

### Hosting

Staging and production are hosted on Heroku.

* http://hr-til-staging.herokuapp.com
* http://til.hashrocket.com

Environmental variables of note:

```
google_client_id
google_client_secret
```
