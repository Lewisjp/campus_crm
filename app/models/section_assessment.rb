class SectionAssessment < ActiveRecord::Base
	attr_accessible :section_id, :assessment_id

	belongs_to :course_section

	has_many :section_questions
	accepts_nested_attributes_for :section_questions, allow_destroy: true 

end
