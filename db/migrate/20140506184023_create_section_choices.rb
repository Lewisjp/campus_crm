class CreateSectionChoices < ActiveRecord::Migration
  def change
    create_table :section_choices do |t|
      t.integer :section_question_id
      t.text :content
      t.boolean :correct

      t.timestamps
    end
  end
end
