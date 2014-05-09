class SectionQuestion < ActiveRecord::Base
	attr_accessible :content, :coursesection_id, :sectionchoices_attributes
  belongs_to :coursesection
  has_many :sectionchoices 
  accepts_nested_attributes_for :sectionchoices, allow_destroy: true 
end
