json.array!(@tasks) do |task|
  json.extract! task, :name, :baby_step, :description, :project_id, :sprint_id, :group_id, :sub_group_id, :parent_task_id, :child_task_ids, :expected_spended_hour, :expected_spended_minute, :actual_spended_hour, :actual_spended_minute, :expected_start_date, :actual_start_date, :expected_end_date, :actual_end_date, :rank, :story_point, :importance, :urgency, :clarity, :difficulty, :delete_flg, :created_by, :updated_by
  json.url task_url(task, format: :json)
end