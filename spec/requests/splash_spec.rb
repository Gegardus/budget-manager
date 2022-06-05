require 'rails_helper'

RSpec.describe "Splashes", type: :request do
  describe "GET /new" do
    it "returns http success" do
      get "/splash/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/splash/create"
      expect(response).to have_http_status(:success)
    end
  end

end
