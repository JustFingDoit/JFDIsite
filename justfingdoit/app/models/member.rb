class Member < ActiveRecord::Base
  attr_accessible :description, :email, :fname, :lname, :password
  validates_length_of :password, :minimum => 6
  validates_presence_of :email
  has_many :proj_membs
  
  before_save :encrypt_password
  attr_accessor :password
  
  private
  
  def self.authenticate(email, password)
    user = find_by_email(email)
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
      user
    else
      nil
    end
  end
  
  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end
  
end
