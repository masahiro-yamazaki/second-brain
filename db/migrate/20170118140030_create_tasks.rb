class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :baby_step
      t.text :description
      t.integer :project_id
      t.integer :sprint_id
      t.integer :group_id
      t.integer :sub_group_id
      t.integer :parent_task_id
      t.string :child_task_ids
      t.integer :expected_spended_hour
      t.integer :expected_spended_minute
      t.integer :actual_spended_hour
      t.integer :actual_spended_minute
      t.datetime :expected_start_date
      t.datetime :actual_start_date
      t.datetime :expected_end_date
      t.datetime :actual_end_date
      t.integer :rank
      t.integer :story_point
      t.integer :importance
      t.integer :urgency
      t.integer :clarity
      t.integer :difficulty
      t.integer :progress_status
      t.boolean :delete_flg
      t.string :created_by
      t.string :updated_by

      t.timestamps
    end
  end
end
