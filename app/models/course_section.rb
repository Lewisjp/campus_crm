class CourseSection < ActiveRecord::Base
	attr_accessible :title, :lecture_notes, :lecture_url, :video, :video_file_name, :video_content_type, :video_file_size, :image, :section_questions_attributes, :section_choices_attributes

	belongs_to :course
	accepts_nested_attributes_for :course

	has_many :section_assessments
	accepts_nested_attributes_for :section_assessments, allow_destroy: true 

	has_many :section_questions
	accepts_nested_attributes_for :section_questions, allow_destroy: true 

	has_many :section_choices, through: :section_questions

	validates_presence_of :title 
end
