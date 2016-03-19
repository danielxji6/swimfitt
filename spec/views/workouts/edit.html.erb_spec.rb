require 'rails_helper'

RSpec.describe "workouts/edit", type: :view do
  before(:each) do
    @workout = assign(:workout, Workout.create!(
      :name => "MyString",
      :level => "MyString",
      :diff => 1,
      :s1_type => "MyString",
      :s1_dis => 1,
      :s2_type => "MyString",
      :s2_dis => 1,
      :s3_type => "MyString",
      :s3_dis => 1,
      :s4_type => "MyString",
      :s4_dis => 1,
      :s5_type => "MyString",
      :s5_dis => 1,
      :s6_type => "MyString",
      :s6_dis => 1
    ))
  end

  it "renders the edit workout form" do
    render

    assert_select "form[action=?][method=?]", workout_path(@workout), "post" do

      assert_select "input#workout_name[name=?]", "workout[name]"

      assert_select "input#workout_level[name=?]", "workout[level]"

      assert_select "input#workout_diff[name=?]", "workout[diff]"

      assert_select "input#workout_s1_type[name=?]", "workout[s1_type]"

      assert_select "input#workout_s1_dis[name=?]", "workout[s1_dis]"

      assert_select "input#workout_s2_type[name=?]", "workout[s2_type]"

      assert_select "input#workout_s2_dis[name=?]", "workout[s2_dis]"

      assert_select "input#workout_s3_type[name=?]", "workout[s3_type]"

      assert_select "input#workout_s3_dis[name=?]", "workout[s3_dis]"

      assert_select "input#workout_s4_type[name=?]", "workout[s4_type]"

      assert_select "input#workout_s4_dis[name=?]", "workout[s4_dis]"

      assert_select "input#workout_s5_type[name=?]", "workout[s5_type]"

      assert_select "input#workout_s5_dis[name=?]", "workout[s5_dis]"

      assert_select "input#workout_s6_type[name=?]", "workout[s6_type]"

      assert_select "input#workout_s6_dis[name=?]", "workout[s6_dis]"
    end
  end
end
