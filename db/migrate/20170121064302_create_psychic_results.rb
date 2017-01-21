class CreatePsychicResults < ActiveRecord::Migration
  def change
    create_table :psychic_results do |t|
      t.integer :player_id
      t.string :results

      t.timestamps
    end
  end
end
