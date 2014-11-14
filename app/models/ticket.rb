class Ticket < ActiveRecord::Base
  before_save { validate_user_role }
  after_save { update_assignment_status }
  attr_accessible :body, :status, :topic, :user_id, :assignment_status

  validates_presence_of :topic, :body
  validates :topic, :inclusion => { :in => %w(Management Finance Afsprakenbureau) }
  validate :validate_user_role

  belongs_to :user

def assigned?
  return true if !self.assignment_status = 'assigned'
end

# Possible ticket states:
# open (after creation), 
# closed (after marking as such by assigned user, only open tickets can be closed), 
# removed (after marking as such by administator, all tickets can be removed)
state_machine :status, :initial => :open do

  event :remove do
    transition any => :removed
  end

  event :close do
    transition :open => :closed
  end

  event :reopen do
    transition any => :open
  end

  state :open do
    validates_presence_of :topic, :body
    validates :topic, :inclusion => { :in => %w(Management Finance Afsprakenbureau) }
    validate :validate_user_role      
  end

  state :closed do
    validates_presence_of :topic, :body
    validates :topic, :inclusion => { :in => %w(Management Finance Afsprakenbureau) }
    validate :validate_user_role      
  end

  state :removed do
    validates_presence_of :topic, :body
    validates :topic, :inclusion => { :in => %w(Management Finance Afsprakenbureau) }
    validate :validate_user_role      
  end
end

def remove
  self.remove
end

def close
  self.close
end

def reopen
  self.open
end


private 

def validate_user_role
  if self.user.nil?
    return
  elsif [ 'Programmer', 'Administrator' ].include?(self.user.role)
    return
  else
    self.errors.add( :user, "role must be either programmer or administrator" )
  end
end

def update_assignment_status
  if self.user 
    update_column( :assignment_status, 'assigned' )
  else
    update_column( :assignment_status, 'unassigned' )
  end
end

end
