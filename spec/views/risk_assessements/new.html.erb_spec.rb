require 'rails_helper'

RSpec.describe "risk_assessements/new", type: :view do
  before(:each) do
    assign(:risk_assessement, RiskAssessement.new(
      :probability_risk => 1,
      :consequense_risk => 1,
      :risk_level => 1,
      :task => nil,
      :safety_report => nil
    ))
  end

  it "renders new risk_assessement form" do
    render

    assert_select "form[action=?][method=?]", risk_assessements_path, "post" do

      assert_select "input#risk_assessement_probability_risk[name=?]", "risk_assessement[probability_risk]"

      assert_select "input#risk_assessement_consequense_risk[name=?]", "risk_assessement[consequense_risk]"

      assert_select "input#risk_assessement_risk_level[name=?]", "risk_assessement[risk_level]"

      assert_select "input#risk_assessement_task_id[name=?]", "risk_assessement[task_id]"

      assert_select "input#risk_assessement_safety_report_id[name=?]", "risk_assessement[safety_report_id]"
    end
  end
end
