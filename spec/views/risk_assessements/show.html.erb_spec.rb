require 'rails_helper'

RSpec.describe "risk_assessements/show", type: :view do
  before(:each) do
    @risk_assessement = assign(:risk_assessement, RiskAssessement.create!(
      :probability_risk => 2,
      :consequense_risk => 3,
      :risk_level => 4,
      :task => nil,
      :safety_report => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
