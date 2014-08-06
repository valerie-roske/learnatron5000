require 'rails_helper'

RSpec.describe "learnings/index", :type => :view do
  before(:each) do
    assign(:learnings, [
      Learning.create!(
        :learner_name => "Learner Name",
        :what_was_learned => "What Was Learned"
      ),
      Learning.create!(
        :learner_name => "Learner Name",
        :what_was_learned => "What Was Learned"
      )
    ])
  end

  it "renders a list of learnings" do
    render
    assert_select "tr>td", :text => "Learner Name".to_s, :count => 2
    assert_select "tr>td", :text => "What Was Learned".to_s, :count => 2
  end
end
