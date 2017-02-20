require 'rails_helper'

RSpec.describe "SafetyReports", type: :request do
  describe "GET /safety_reports" do
    it "works! (now write some real specs)" do
      get safety_reports_path
      expect(response).to have_http_status(200)
    end
  end
end
