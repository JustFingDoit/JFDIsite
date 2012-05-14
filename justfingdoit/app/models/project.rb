class Project < ActiveRecord::Base
  attr_accessible :description, :name, :source, :url
  has_many :blogs
  has_many :proj_membs
end
