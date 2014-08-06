require 'rails_helper'

RSpec.describe "learnings/edit", :type => :view do
  before(:each) do
    @learning = assign(:learning, Learning.create!(
      :learner_name => "MyString",
      :what_was_learned => "MyString"
    ))
  end

  it "renders the edit learning form" do
    render

    assert_select "form[action=?][method=?]", learning_path(@learning), "post" do

      assert_select "input#learning_learner_name[name=?]", "learning[learner_name]"

      assert_select "input#learning_what_was_learned[name=?]", "learning[what_was_learned]"
    end
  end
end
