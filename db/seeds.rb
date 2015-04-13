seed_file = Rails.root.join("db/seeds/#{Rails.env}.rb")
if seed_file.exist? && !ENV["NO_SEED_DATA"]
  puts "*** Loading #{Rails.env} seed data"
  require seed_file
end

tags = %w(vim development design consulting rails
          ruby emberjs testing bash git html css
          javascript clojure postgres algorithms
          coffeescript reactjs assembly devops go)

tags.each do |tag|
  puts "Finding or creating tag: #{tag}"
  Tag.find_or_create_by!(name: tag)
end
