class SectionQuestion < ActiveRecord::Base
	attr_accessible :section_id, :content, :sectionchoices_attributes


	belongs_to :section_assessment
	belongs_to :course_section

	has_many :section_choices
	accepts_nested_attributes_for :section_choices, allow_destroy: true


end
