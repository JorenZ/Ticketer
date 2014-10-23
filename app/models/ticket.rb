class Ticket < ActiveRecord::Base
  before_save { validate_user_role }
  attr_accessible :body, :state, :topic, :removed, :user_id

  validates_presence_of :topic, :body
  validates :topic, :inclusion => { :in => %w(Management Finance Afsprakenbureau) }
  
scope :removed, where( removed: true )  

belongs_to :user

def remove
  self.removed = true
end

def removed?
  return self.removed
end

def assigned?
  return true if !self.programmer_id.nil
end

def validate_user_role
  @user = self.user
  if @user === nil 
    return
  elsif @user.role = 'Programmer' or @user.role = 'Administrator'
    return
  else
    raise "#{role} must be either programmer or administrator"
  end 
end

end
