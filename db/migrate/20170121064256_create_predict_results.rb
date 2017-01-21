class CreatePredictResults < ActiveRecord::Migration
  def change
    create_table :predict_results do |t|
      t.integer :player_id
      t.string :results

      t.timestamps
    end
  end
end
