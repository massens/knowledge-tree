require "rails_helper"

RSpec.describe WallsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/walls").to route_to("walls#index")
    end

    it "routes to #new" do
      expect(:get => "/walls/new").to route_to("walls#new")
    end

    it "routes to #show" do
      expect(:get => "/walls/1").to route_to("walls#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/walls/1/edit").to route_to("walls#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/walls").to route_to("walls#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/walls/1").to route_to("walls#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/walls/1").to route_to("walls#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/walls/1").to route_to("walls#destroy", :id => "1")
    end

  end
end
