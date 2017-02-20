FactoryGirl.define do
  factory :task do
    task_type "MyString"
    task_title "MyString"
    task_description "MyText"
    task_assigned_to_name "MyString"
    task_assigned_to_email "MyString"
    task_due_date "2017-02-20 17:25:23"
    task_finished_marker "MyString"
    safety_report nil
    user nil
    attachement ""
    safety_report nil
  end
end
