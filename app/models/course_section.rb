class CourseSection < ActiveRecord::Base
	attr_accessible :title, :lecture_notes, :lecture_url, :video, :video_file_name, :video_content_type, :video_file_size, :image
	belongs_to :course
	accepts_nested_attributes_for :course

	validates_presence_of :title 
end
