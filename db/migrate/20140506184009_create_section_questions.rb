class CreateSectionQuestions < ActiveRecord::Migration
  def change
    create_table :section_questions do |t|
      t.integer :section_id
      t.text :content

      t.timestamps
    end
  end
end
