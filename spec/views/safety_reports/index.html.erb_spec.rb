require 'rails_helper'

RSpec.describe "safety_reports/index", type: :view do
  before(:each) do
    assign(:safety_reports, [
      SafetyReport.create!(
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
      ),
      SafetyReport.create!(
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
      )
    ])
  end

  it "renders a list of safety_reports" do
    render
    assert_select "tr>td", :text => "Report Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Incident Location".to_s, :count => 2
    assert_select "tr>td", :text => "Hazard Category".to_s, :count => 2
    assert_select "tr>td", :text => "Damage Category".to_s, :count => 2
    assert_select "tr>td", :text => "Third Party Type".to_s, :count => 2
    assert_select "tr>td", :text => "Third Party Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "Reported By".to_s, :count => 2
    assert_select "tr>td", :text => "Download Report".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
