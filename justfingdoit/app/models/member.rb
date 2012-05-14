class Member < ActiveRecord::Base
  attr_accessible :description, :email, :fname, :lname
  has_many :proj_membs
end
