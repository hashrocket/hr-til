class CreateDeveloperScores < ActiveRecord::Migration
  def change
    create_view :developer_scores
  end
end
