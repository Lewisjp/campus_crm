class CreateStudentAnswerSectionQuestions < ActiveRecord::Migration
  def change
    create_table :student_answer_section_questions do |t|
      t.integer :user_id
      t.integer :section_question_id
      t.integer :section_choice_id
      t.boolean :correct

      t.timestamps
    end
  end
end
