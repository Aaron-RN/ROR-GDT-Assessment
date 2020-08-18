require 'rails_helper'

RSpec.describe "Musicians", type: :request do

  describe "GET /index" do
    it "returns http success" do
      get "/musicians/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/musicians/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /update" do
    it "returns http success" do
      get "/musicians/update"
      expect(response).to have_http_status(:success)
    end
  end

end
