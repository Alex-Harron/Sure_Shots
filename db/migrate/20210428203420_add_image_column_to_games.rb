class AddImageColumnToGames < ActiveRecord::Migration[6.1]
  def change
    add_column :games, :visitor_img, :string
    add_column :games, :home_img, :string
  end
end
