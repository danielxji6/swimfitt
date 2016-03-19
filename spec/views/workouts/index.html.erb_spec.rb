require 'rails_helper'

RSpec.describe "workouts/index", type: :view do
  before(:each) do
    assign(:workouts, [
      Workout.create!(
        :name => "Name",
        :level => "Level",
        :diff => 1,
        :s1_type => "S1 Type",
        :s1_dis => 2,
        :s2_type => "S2 Type",
        :s2_dis => 3,
        :s3_type => "S3 Type",
        :s3_dis => 4,
        :s4_type => "S4 Type",
        :s4_dis => 5,
        :s5_type => "S5 Type",
        :s5_dis => 6,
        :s6_type => "S6 Type",
        :s6_dis => 7
      ),
      Workout.create!(
        :name => "Name",
        :level => "Level",
        :diff => 1,
        :s1_type => "S1 Type",
        :s1_dis => 2,
        :s2_type => "S2 Type",
        :s2_dis => 3,
        :s3_type => "S3 Type",
        :s3_dis => 4,
        :s4_type => "S4 Type",
        :s4_dis => 5,
        :s5_type => "S5 Type",
        :s5_dis => 6,
        :s6_type => "S6 Type",
        :s6_dis => 7
      )
    ])
  end

  it "renders a list of workouts" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Level".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "S1 Type".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "S2 Type".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "S3 Type".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "S4 Type".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "S5 Type".to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => "S6 Type".to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
  end
end
