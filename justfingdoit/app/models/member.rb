class Member < ActiveRecord::Base
  attr_accessible :description, :email, :fname, :lname, :password
  validates_length_of :password, :minimum => 6
  has_many :proj_membs
end
