tags = %w(vim development design consulting rails
          ruby emberjs testing bash git html css
          javascript clojure postgres algorithms
          coffeescript reactjs assembly devops)

tags.each do |tag|
  puts "Finding or creating tag: #{tag}"
  Tag.find_or_create_by!(name: tag)
end
