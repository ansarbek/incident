class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :task_type
      t.string :task_title
      t.text :task_description
      t.string :task_assigned_to_name
      t.string :task_assigned_to_email
      t.datetime :task_due_date
      t.string :task_finished_marker
      t.references :safety_report, index: true
      t.references :user, index: true
      t.binary :attachement
      t.references :safety_report, index: true

      t.timestamps
    end
  end
end
