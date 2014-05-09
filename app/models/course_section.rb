class CourseSection < ActiveRecord::Base
  attr_accessible :title, :course_id, :sectionquestions_attributes
  belongs_to :course
  has_many :sectionquestions 
  accepts_nested_atrributes_for :sectionquestions, allow_destroy: true 
end
