class CourseSection < ActiveRecord::Base
	attr_accessible :title, :lecture_notes, :lecture_url, :video, :video_file_name, :image

	belongs_to :course

	# validates_presence_of :title 
end
