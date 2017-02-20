require 'rails_helper'

RSpec.describe "safety_reports/show", type: :view do
  before(:each) do
    @safety_report = assign(:safety_report, SafetyReport.create!(
      :report_title => "Report Title",
      :report_description => "MyText",
      :incident_location => "Incident Location",
      :hazard_category => "Hazard Category",
      :damage_category => "Damage Category",
      :third_party_type => "Third Party Type",
      :third_party_name => "Third Party Name",
      :risk_probability => 2,
      :risk_consequense => 3,
      :risk_level => 4,
      :reported_by => "Reported By",
      :download_report => "Download Report",
      :attachment => "",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Report Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Incident Location/)
    expect(rendered).to match(/Hazard Category/)
    expect(rendered).to match(/Damage Category/)
    expect(rendered).to match(/Third Party Type/)
    expect(rendered).to match(/Third Party Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/Reported By/)
    expect(rendered).to match(/Download Report/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
