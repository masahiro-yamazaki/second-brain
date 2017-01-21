class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :real_role
      t.string :opened_role
      t.integer :role_opened_date
      t.boolean :is_living

      t.timestamps
    end
  end
end
