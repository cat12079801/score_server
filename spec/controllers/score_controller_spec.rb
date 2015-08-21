require 'rails_helper'

RSpec.describe ScoreController, type: :controller do

  describe "GET #score" do
    it "returns http success" do
      get :score
      expect(response).to have_http_status(:success)
    end
  end

end
