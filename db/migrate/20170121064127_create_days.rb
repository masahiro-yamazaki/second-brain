class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.integer :day_num
      t.string :guarded_player_id
      t.string :attacked_player_id

      t.timestamps
    end
  end
end
