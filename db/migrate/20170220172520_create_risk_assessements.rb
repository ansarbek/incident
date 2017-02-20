class CreateRiskAssessements < ActiveRecord::Migration
  def change
    create_table :risk_assessements do |t|
      t.integer :probability_risk
      t.integer :consequense_risk
      t.integer :risk_level
      t.references :task, index: true
      t.references :safety_report, index: true

      t.timestamps
    end
  end
end
