class CreateVoteResults < ActiveRecord::Migration
  def change
    create_table :vote_results do |t|
      t.string :player_id
      t.string :afternoon_id
      t.string :target_player_id

      t.timestamps
    end
  end
end
