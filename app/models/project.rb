class Project < ActiveRecord::Base
  belongs_to :coding_skill
  
  validates :name, :presence => true
end
