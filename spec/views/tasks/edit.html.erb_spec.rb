require 'spec_helper'

describe "tasks/edit" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :name => "MyString",
      :baby_step => "MyString",
      :description => "MyText",
      :project_id => 1,
      :sprint_id => 1,
      :group_id => 1,
      :sub_group_id => 1,
      :parent_task_id => 1,
      :child_task_ids => "MyString",
      :expected_spended_hour => 1,
      :expected_spended_minute => 1,
      :actual_spended_hour => 1,
      :actual_spended_minute => 1,
      :rank => 1,
      :story_point => 1,
      :importance => 1,
      :urgency => 1,
      :clarity => 1,
      :difficulty => 1,
      :delete_flg => false,
      :created_by => "MyString",
      :updated_by => "MyString"
    ))
  end

  it "renders the edit task form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", task_path(@task), "post" do
      assert_select "input#task_name[name=?]", "task[name]"
      assert_select "input#task_baby_step[name=?]", "task[baby_step]"
      assert_select "textarea#task_description[name=?]", "task[description]"
      assert_select "input#task_project_id[name=?]", "task[project_id]"
      assert_select "input#task_sprint_id[name=?]", "task[sprint_id]"
      assert_select "input#task_group_id[name=?]", "task[group_id]"
      assert_select "input#task_sub_group_id[name=?]", "task[sub_group_id]"
      assert_select "input#task_parent_task_id[name=?]", "task[parent_task_id]"
      assert_select "input#task_child_task_ids[name=?]", "task[child_task_ids]"
      assert_select "input#task_expected_spended_hour[name=?]", "task[expected_spended_hour]"
      assert_select "input#task_expected_spended_minute[name=?]", "task[expected_spended_minute]"
      assert_select "input#task_actual_spended_hour[name=?]", "task[actual_spended_hour]"
      assert_select "input#task_actual_spended_minute[name=?]", "task[actual_spended_minute]"
      assert_select "input#task_rank[name=?]", "task[rank]"
      assert_select "input#task_story_point[name=?]", "task[story_point]"
      assert_select "input#task_importance[name=?]", "task[importance]"
      assert_select "input#task_urgency[name=?]", "task[urgency]"
      assert_select "input#task_clarity[name=?]", "task[clarity]"
      assert_select "input#task_difficulty[name=?]", "task[difficulty]"
      assert_select "input#task_delete_flg[name=?]", "task[delete_flg]"
      assert_select "input#task_created_by[name=?]", "task[created_by]"
      assert_select "input#task_updated_by[name=?]", "task[updated_by]"
    end
  end
end
