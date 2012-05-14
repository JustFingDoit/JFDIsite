class Blog < ActiveRecord::Base
  attr_accessible :post, :projects_id, :title
  belongs_to :projects
end
