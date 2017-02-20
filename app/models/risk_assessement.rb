class RiskAssessement < ActiveRecord::Base
  belongs_to :task
  belongs_to :safety_report
end
