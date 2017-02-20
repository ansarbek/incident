class Task < ActiveRecord::Base
  belongs_to :safety_report
  belongs_to :user
  belongs_to :safety_report
end
