class Course < ActiveRecord::Base
	attr_accessible :course_section, :title, :description, :video, :video_file_name, :video_content_type, :video_file_size, :image, :syllabus, :language, :hours, :prerequisites, :start_date, :end_date, :teacher_id

	has_many :course_sections

	accepts_nested_attributes_for :course_sections

	validates_presence_of :title
end
