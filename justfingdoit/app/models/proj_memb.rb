class ProjMemb < ActiveRecord::Base
  attr_accessible :details, :members_id, :projects_id
  has_many :members
  has_many :projects
end
