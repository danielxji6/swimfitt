require 'rails_helper'

RSpec.describe "workouts/show", type: :view do
  before(:each) do
    @workout = assign(:workout, Workout.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Level/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/S1 Type/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/S2 Type/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/S3 Type/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/S4 Type/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/S5 Type/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/S6 Type/)
    expect(rendered).to match(/7/)
  end
end
