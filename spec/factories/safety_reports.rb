FactoryGirl.define do
  factory :safety_report do
    report_title "MyString"
    report_description "MyText"
    report_date "2017-02-20 17:25:27"
    incident_location "MyString"
    hazard_category "MyString"
    damage_category "MyString"
    third_party_type "MyString"
    third_party_name "MyString"
    risk_probability 1
    risk_consequense 1
    risk_level 1
    reported_by "MyString"
    download_report "MyString"
    attachment ""
    user nil
  end
end
