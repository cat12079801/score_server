require "rails_helper"

RSpec.describe AdminProblemsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/admin_problems").to route_to("admin_problems#index")
    end

    it "routes to #new" do
      expect(:get => "/admin_problems/new").to route_to("admin_problems#new")
    end

    it "routes to #show" do
      expect(:get => "/admin_problems/1").to route_to("admin_problems#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/admin_problems/1/edit").to route_to("admin_problems#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/admin_problems").to route_to("admin_problems#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/admin_problems/1").to route_to("admin_problems#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/admin_problems/1").to route_to("admin_problems#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/admin_problems/1").to route_to("admin_problems#destroy", :id => "1")
    end

  end
end
