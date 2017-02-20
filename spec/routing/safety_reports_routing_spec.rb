require "rails_helper"

RSpec.describe SafetyReportsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/safety_reports").to route_to("safety_reports#index")
    end

    it "routes to #new" do
      expect(:get => "/safety_reports/new").to route_to("safety_reports#new")
    end

    it "routes to #show" do
      expect(:get => "/safety_reports/1").to route_to("safety_reports#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/safety_reports/1/edit").to route_to("safety_reports#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/safety_reports").to route_to("safety_reports#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/safety_reports/1").to route_to("safety_reports#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/safety_reports/1").to route_to("safety_reports#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/safety_reports/1").to route_to("safety_reports#destroy", :id => "1")
    end

  end
end
