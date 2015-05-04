# This task requires the heroku toolbelt and access to hr-til-production
namespace :db do
  task :restore_production_dump do
    def verify_exec(command)
      system(command)
      raise 'Command failed' unless $?.exitstatus.zero?
    end

    puts 'Restoring latest production data'
    verify_exec 'heroku pg:backups capture --app hr-til-production'
    verify_exec 'curl -o latest.dump `heroku pg:backups public-url -a hr-til-production`'
    verify_exec 'pg_restore --verbose --clean --no-acl --no-owner -h localhost -d hr-til_development latest.dump'
    verify_exec 'rm latest.dump'
    puts "Completed successfully!"
  end
end
