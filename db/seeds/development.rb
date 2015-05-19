# To download production data instead of these seeds, run
# rake db:restore_production_dump
title = '80 Chars'
body = <<-HEREDOC
Eighty characters is a standard limit for code line length.

Keeping your code below eighty characters makes it more readable and
encourages brevity.

This is what eighty characters looks like.

```
Process substitution feeds the output of a process (or processes) into the stdin
```

This is more than eighty characters (100 to be exact).

```
Process substitution feeds the output of a process (or processes) into the stdin of another process.
```
HEREDOC
tags = %w(rails ruby javascript go html css)

5.times do |i|
  puts "Creating post ##{i}"

  hex = SecureRandom.hex(5)
  developer = Developer.create!(username: "developer_#{hex}", email: "developer_#{hex}@hashrocket.com")
  tag = Tag.find_or_create_by!(name: tags.sample)

  Post.create!(body: body, tag: tag, developer: developer, title: title)
end
