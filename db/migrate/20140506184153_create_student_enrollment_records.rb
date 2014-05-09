class CreateStudentEnrollmentRecords < ActiveRecord::Migration
  def change
    create_table :student_enrollment_records do |t|
      t.integer :user_id
      t.integer :course_id
      t.date :date_enrolled
      t.boolean :completed
      t.date :date_completed
      t.integer :completion_status
      t.integer :grade

      t.timestamps
    end
  end
end
