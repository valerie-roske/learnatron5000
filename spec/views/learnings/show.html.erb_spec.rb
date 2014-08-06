require 'rails_helper'

RSpec.describe "learnings/show", :type => :view do
  before(:each) do
    @learning = assign(:learning, Learning.create!(
      :learner_name => "Learner Name",
      :what_was_learned => "What Was Learned"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Learner Name/)
    expect(rendered).to match(/What Was Learned/)
  end
end
