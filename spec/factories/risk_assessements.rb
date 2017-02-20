FactoryGirl.define do
  factory :risk_assessement do
    probability_risk 1
    consequense_risk 1
    risk_level 1
    task nil
    safety_report nil
  end
end
