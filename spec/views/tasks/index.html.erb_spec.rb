require 'spec_helper'

describe "tasks/index" do
  before(:each) do
    assign(:tasks, [
      stub_model(Task,
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
      ),
      stub_model(Task,
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
      )
    ])
  end

  it "renders a list of tasks" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Baby Step".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Child Task Ids".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => 10.to_s, :count => 2
    assert_select "tr>td", :text => 11.to_s, :count => 2
    assert_select "tr>td", :text => 12.to_s, :count => 2
    assert_select "tr>td", :text => 13.to_s, :count => 2
    assert_select "tr>td", :text => 14.to_s, :count => 2
    assert_select "tr>td", :text => 15.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => "Created By".to_s, :count => 2
    assert_select "tr>td", :text => "Updated By".to_s, :count => 2
  end
end
