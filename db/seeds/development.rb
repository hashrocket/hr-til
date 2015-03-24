# Use this post to measure the performance of posts#index at scale
body = <<-HEREDOC
Parameters Filtering

Rails logs your server's activity, which is useful for development and
debugging. However, often the server handles sensitive information that
should not be logged.

A few examples are authentication credentials, personal data, and financial
information.

To prevent Rails from logging such data, add this to your application
configuration:

```
config.filter_parameters << :sensitive_param
```

When the named parameter is handled by the server, it will be logged as
`[FILTERED]` instead of its actual value. Add this configuration by
environment if you want to keep the parameters unfiltered in development.
HEREDOC

tag = Tag.create!(name: 'perftest')
developer = Developer.create!(username: 'perftest', email: 'perf_test@example.com', password: 'password')

1000.times do |i|
  puts "Creating post: ##{i}"
  Post.create(body: body, tag: tag, developer: developer)
end
