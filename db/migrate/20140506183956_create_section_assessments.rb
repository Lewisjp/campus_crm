class CreateSectionAssessments < ActiveRecord::Migration
  def change
    create_table :section_assessments do |t|
      t.integer :section_id
      t.integer :assessment_id

      t.timestamps
    end
  end
end
