class CreateSafetyReports < ActiveRecord::Migration
  def change
    create_table :safety_reports do |t|
      t.string :report_title
      t.text :report_description
      t.datetime :report_date
      t.string :incident_location
      t.string :hazard_category
      t.string :damage_category
      t.string :third_party_type
      t.string :third_party_name
      t.integer :risk_probability
      t.integer :risk_consequense
      t.integer :risk_level
      t.string :reported_by
      t.string :download_report
      t.binary :attachment
      t.references :user, index: true

      t.timestamps
    end
  end
end
