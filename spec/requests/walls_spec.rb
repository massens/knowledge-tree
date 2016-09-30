require 'rails_helper'

RSpec.describe "Walls", type: :request do
  describe "GET /walls" do
    it "works! (now write some real specs)" do
      get walls_path
      expect(response).to have_http_status(200)
    end
  end
end
