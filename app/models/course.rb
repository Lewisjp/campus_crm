class Course < ActiveRecord::Base
  attr_accessible :title, :coursesections_attributes
  has_many :coursesections
  accepts_nested_attributes_for :coursesections, allow_destroy: true 
end
