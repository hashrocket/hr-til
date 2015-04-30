namespace :db do
  task :add_admin_flags => [:environment] do
    Developer.all.each do |developer|
      puts "Setting admin to false if unset for developer ##{developer.id}"
      developer.admin ||= false
      developer.save!
    end
  end
end
