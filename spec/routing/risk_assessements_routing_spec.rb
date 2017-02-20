require "rails_helper"

RSpec.describe RiskAssessementsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/risk_assessements").to route_to("risk_assessements#index")
    end

    it "routes to #new" do
      expect(:get => "/risk_assessements/new").to route_to("risk_assessements#new")
    end

    it "routes to #show" do
      expect(:get => "/risk_assessements/1").to route_to("risk_assessements#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/risk_assessements/1/edit").to route_to("risk_assessements#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/risk_assessements").to route_to("risk_assessements#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/risk_assessements/1").to route_to("risk_assessements#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/risk_assessements/1").to route_to("risk_assessements#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/risk_assessements/1").to route_to("risk_assessements#destroy", :id => "1")
    end

  end
end
