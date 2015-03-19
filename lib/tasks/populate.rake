namespace :db do
  task populate: :environment do

    Tag.destroy_all

    tags = %w(vim development design consulting rails
              ruby emberjs testing bash git html css
              javascript clojure postgres algorithms
              coffeescript reactjs assembly devops)

    tags.each do |tag|
      Tag.create(name: tag)
    end
  end
end
