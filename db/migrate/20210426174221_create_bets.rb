class CreateBets < ActiveRecord::Migration[6.1]
  def change
    create_table :bets do |t|
      t.float :amount
      t.datetime :date
      t.integer :game_id
      t.integer :user_id

      t.timestamps
    end
  end
end
