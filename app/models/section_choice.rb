class SectionChoice < ActiveRecord::Base
	attr_accessible :section_question_id, :content, :correct

	belongs_to :course_section
	belongs_to :section_assessment
	belongs_to :section_question
end
