class SectionChoice < ActiveRecord::Base
	attr_accessible :content, :sectionquestion_id, :section_question_id
	belongs_to :sectionquestion
end
