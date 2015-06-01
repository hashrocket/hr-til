seed_file = Rails.root.join("db/seeds/#{Rails.env}.rb")
if seed_file.exist? && !ENV['NO_SEED_DATA']
  puts "*** Loading #{Rails.env} seed data"
  require seed_file
end

channels = %w(vim development design consulting rails
           ruby emberjs testing bash git html css
           javascript clojure postgres algorithms
           coffeescript reactjs assembly devops go
           internet android ios)

channels.each do |channel|
  puts "Finding or creating tag: #{channel}"
  Channel.find_or_create_by!(name: channel)
end
