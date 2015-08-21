require 'rails_helper'

RSpec.describe AdminController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #flag" do
    it "returns http success" do
      get :flag
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #score" do
    it "returns http success" do
      get :score
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #genre" do
    it "returns http success" do
      get :genre
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #genre_post" do
    it "returns http success" do
      get :genre_post
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #team" do
    it "returns http success" do
      get :team
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #team_post" do
    it "returns http success" do
      get :team_post
      expect(response).to have_http_status(:success)
    end
  end

end
