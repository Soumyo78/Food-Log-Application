require "rails_helper"

RSpec.describe "Archives", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/archives/index"
      expect(response).to have_http_status(:success)
    end
  end

end
