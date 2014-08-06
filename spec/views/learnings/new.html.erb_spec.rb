require 'rails_helper'

RSpec.describe "learnings/new", :type => :view do
  before(:each) do
    assign(:learning, Learning.new(
      :learner_name => "MyString",
      :what_was_learned => "MyString"
    ))
  end

  it "renders new learning form" do
    render

    assert_select "form[action=?][method=?]", learnings_path, "post" do

      assert_select "input#learning_learner_name[name=?]", "learning[learner_name]"

      assert_select "input#learning_what_was_learned[name=?]", "learning[what_was_learned]"
    end
  end
end
