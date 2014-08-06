require 'rails_helper'

RSpec.describe "Learnings", :type => :request do
  describe "GET /learnings" do
    it "works! (now write some real specs)" do
      get learnings_path
      expect(response.status).to be(200)
    end
  end
end
