require "rails_helper"

RSpec.describe FacultiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/faculties").to route_to("faculties#index")
    end

    it "routes to #new" do
      expect(:get => "/faculties/new").to route_to("faculties#new")
    end

    it "routes to #show" do
      expect(:get => "/faculties/1").to route_to("faculties#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/faculties/1/edit").to route_to("faculties#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/faculties").to route_to("faculties#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/faculties/1").to route_to("faculties#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/faculties/1").to route_to("faculties#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/faculties/1").to route_to("faculties#destroy", :id => "1")
    end

  end
end
