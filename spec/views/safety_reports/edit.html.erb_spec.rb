require 'rails_helper'

RSpec.describe "safety_reports/edit", type: :view do
  before(:each) do
    @safety_report = assign(:safety_report, SafetyReport.create!(
      :report_title => "MyString",
      :report_description => "MyText",
      :incident_location => "MyString",
      :hazard_category => "MyString",
      :damage_category => "MyString",
      :third_party_type => "MyString",
      :third_party_name => "MyString",
      :risk_probability => 1,
      :risk_consequense => 1,
      :risk_level => 1,
      :reported_by => "MyString",
      :download_report => "MyString",
      :attachment => "",
      :user => nil
    ))
  end

  it "renders the edit safety_report form" do
    render

    assert_select "form[action=?][method=?]", safety_report_path(@safety_report), "post" do

      assert_select "input#safety_report_report_title[name=?]", "safety_report[report_title]"

      assert_select "textarea#safety_report_report_description[name=?]", "safety_report[report_description]"

      assert_select "input#safety_report_incident_location[name=?]", "safety_report[incident_location]"

      assert_select "input#safety_report_hazard_category[name=?]", "safety_report[hazard_category]"

      assert_select "input#safety_report_damage_category[name=?]", "safety_report[damage_category]"

      assert_select "input#safety_report_third_party_type[name=?]", "safety_report[third_party_type]"

      assert_select "input#safety_report_third_party_name[name=?]", "safety_report[third_party_name]"

      assert_select "input#safety_report_risk_probability[name=?]", "safety_report[risk_probability]"

      assert_select "input#safety_report_risk_consequense[name=?]", "safety_report[risk_consequense]"

      assert_select "input#safety_report_risk_level[name=?]", "safety_report[risk_level]"

      assert_select "input#safety_report_reported_by[name=?]", "safety_report[reported_by]"

      assert_select "input#safety_report_download_report[name=?]", "safety_report[download_report]"

      assert_select "input#safety_report_attachment[name=?]", "safety_report[attachment]"

      assert_select "input#safety_report_user_id[name=?]", "safety_report[user_id]"
    end
  end
end
