ActiveAdmin.register Channel do
  permit_params :name, :twitter_hashtag, :ad

  index do
    selectable_column
    id_column
    column :name
    column :twitter_hashtag
    column "Ad" do |c|
      span(!c.ad.blank?)
    end
    column :created_at
    actions
  end


end
