namespace :gold do
  desc "DATABASE will be used to generate the new gold test database"
  task :update_db do
    db_name = ENV.fetch('DATABASE')
    destination = Rails.root.join('spec/fixtures/gold_master.sql')
    sh "pg_dump #{db_name} --attribute-inserts --column-inserts --no-tablespaces --disable-triggers --data-only > #{destination}"
  end
end
