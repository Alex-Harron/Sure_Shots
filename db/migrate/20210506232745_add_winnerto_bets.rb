class AddWinnertoBets < ActiveRecord::Migration[6.1]
  def change
    add_column :bets, :winner, :string
  end
end
