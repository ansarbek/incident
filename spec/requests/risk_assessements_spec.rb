require 'rails_helper'

RSpec.describe "RiskAssessements", type: :request do
  describe "GET /risk_assessements" do
    it "works! (now write some real specs)" do
      get risk_assessements_path
      expect(response).to have_http_status(200)
    end
  end
end
