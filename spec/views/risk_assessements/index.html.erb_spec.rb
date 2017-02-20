require 'rails_helper'

RSpec.describe "risk_assessements/index", type: :view do
  before(:each) do
    assign(:risk_assessements, [
      RiskAssessement.create!(
        :probability_risk => 2,
        :consequense_risk => 3,
        :risk_level => 4,
        :task => nil,
        :safety_report => nil
      ),
      RiskAssessement.create!(
        :probability_risk => 2,
        :consequense_risk => 3,
        :risk_level => 4,
        :task => nil,
        :safety_report => nil
      )
    ])
  end

  it "renders a list of risk_assessements" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
