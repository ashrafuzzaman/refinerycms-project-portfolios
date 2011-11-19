class ProjectPortfolio < ActiveRecord::Base

  acts_as_indexed :fields => [:project_name, :title]

  validates :project_name, :presence => true, :uniqueness => true
  
  belongs_to :thumbnail, :class_name => 'Image'
  belongs_to :image, :class_name => 'Image'

  acts_as_taggable

end
