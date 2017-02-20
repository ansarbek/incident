class Task < ActiveRecord::Base
  belongs_to :safety_report
  belongs_to :user
  belongs_to :safety_report
  has_many :risk_assessements
  validates_formatting_of :task_assigned_to_email, using: :email
end
