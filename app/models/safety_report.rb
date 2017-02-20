class SafetyReport < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
  has_many :risk_assessements
end
