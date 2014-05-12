class Course < ActiveRecord::Base
	attr_accessible :course_section, :title

	has_many :course_sections
	validates_presence_of :title
end
