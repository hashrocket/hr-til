class RemoveNonAlphanumericCharsFromDeveloperUsername < ActiveRecord::Migration
  class Developer < ActiveRecord::Base
  end
  def up
    Developer.find_each do |developer|
      if developer.username != developer.username.gsub(/[^0-9a-z]/i, '')
        developer.username = developer.username.gsub(/[^0-9a-z]/i, '')
        developer.save!
      end
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
