class User < ActiveRecord::Base
  before_save { self.email = email.downcase }

  attr_accessible :name, :role, :email, :password, :password_confirmation, :password_digest

  validates_presence_of :name, :role, :email
  validates :name, length: { maximum: 50 }
  validates :role, :inclusion => { :in => %w( Programmer Administrator ) }
  validates :email, format: { with: /^[^\@\s]+\@{1}[^\@\s\.]+(\.{1}[^\@\s\.]+)+$/ }, uniqueness: { case_sensitive: false }

  has_secure_password
  validates :password, length: { minimum: 8 }

end