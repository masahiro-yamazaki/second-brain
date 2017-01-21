require 'spec_helper'

describe "tasks/show" do
  before(:each) do
    @task = assign(:task, stub_model(Task,
      :name => "Name",
      :baby_step => "Baby Step",
      :description => "MyText",
      :project_id => 1,
      :sprint_id => 2,
      :group_id => 3,
      :sub_group_id => 4,
      :parent_task_id => 5,
      :child_task_ids => "Child Task Ids",
      :expected_spended_hour => 6,
      :expected_spended_minute => 7,
      :actual_spended_hour => 8,
      :actual_spended_minute => 9,
      :rank => 10,
      :story_point => 11,
      :importance => 12,
      :urgency => 13,
      :clarity => 14,
      :difficulty => 15,
      :delete_flg => false,
      :created_by => "Created By",
      :updated_by => "Updated By"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    rendered.should match(/Baby Step/)
    rendered.should match(/MyText/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/Child Task Ids/)
    rendered.should match(/6/)
    rendered.should match(/7/)
    rendered.should match(/8/)
    rendered.should match(/9/)
    rendered.should match(/10/)
    rendered.should match(/11/)
    rendered.should match(/12/)
    rendered.should match(/13/)
    rendered.should match(/14/)
    rendered.should match(/15/)
    rendered.should match(/false/)
    rendered.should match(/Created By/)
    rendered.should match(/Updated By/)
  end
end
